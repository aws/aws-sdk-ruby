# frozen_string_literal: true

# This is generated code!

module Aws::SSOOIDC
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccessDeniedExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssooidc#AccessDeniedExceptionReason", name: "AccessDeniedExceptionReason")
    AccessToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#AccessToken", name: "AccessToken", traits: {"smithy.api#sensitive" => {}})
    ArnType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#ArnType", name: "ArnType")
    Assertion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#Assertion", name: "Assertion", traits: {"smithy.api#sensitive" => {}})
    AuthCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#AuthCode", name: "AuthCode")
    AuthorizationPendingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#AuthorizationPendingException", name: "AuthorizationPendingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AwsAdditionalDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#AwsAdditionalDetails", name: "AwsAdditionalDetails")
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#ClientId", name: "ClientId")
    ClientName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#ClientName", name: "ClientName")
    ClientSecret = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#ClientSecret", name: "ClientSecret", traits: {"smithy.api#sensitive" => {}})
    ClientType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#ClientType", name: "ClientType")
    CodeVerifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#CodeVerifier", name: "CodeVerifier", traits: {"smithy.api#sensitive" => {}})
    CreateTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#CreateTokenRequest", name: "CreateTokenRequest")
    CreateTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#CreateTokenResponse", name: "CreateTokenResponse")
    CreateTokenWithIAMRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#CreateTokenWithIAMRequest", name: "CreateTokenWithIAMRequest")
    CreateTokenWithIAMResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#CreateTokenWithIAMResponse", name: "CreateTokenWithIAMResponse")
    DeviceCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#DeviceCode", name: "DeviceCode")
    Error = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#Error", name: "Error")
    ErrorDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#ErrorDescription", name: "ErrorDescription")
    ExpirationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssooidc#ExpirationInSeconds", name: "ExpirationInSeconds", traits: {"smithy.api#default" => 0})
    ExpiredTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#ExpiredTokenException", name: "ExpiredTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GrantType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#GrantType", name: "GrantType")
    GrantTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssooidc#GrantTypes", name: "GrantTypes")
    IdToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#IdToken", name: "IdToken", traits: {"smithy.api#sensitive" => {}})
    IdentityContext = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#IdentityContext", name: "IdentityContext")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IntervalInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssooidc#IntervalInSeconds", name: "IntervalInSeconds", traits: {"smithy.api#default" => 0})
    InvalidClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#InvalidClientException", name: "InvalidClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    InvalidClientMetadataException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#InvalidClientMetadataException", name: "InvalidClientMetadataException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidGrantException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#InvalidGrantException", name: "InvalidGrantException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRedirectUriException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#InvalidRedirectUriException", name: "InvalidRedirectUriException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssooidc#InvalidRequestExceptionReason", name: "InvalidRequestExceptionReason")
    InvalidRequestRegionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#InvalidRequestRegionException", name: "InvalidRequestRegionException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidScopeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#InvalidScopeException", name: "InvalidScopeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#Location", name: "Location")
    LongTimeStampType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssooidc#LongTimeStampType", name: "LongTimeStampType", traits: {"smithy.api#default" => 0})
    RedirectUris = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssooidc#RedirectUris", name: "RedirectUris")
    RefreshToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#RefreshToken", name: "RefreshToken", traits: {"smithy.api#sensitive" => {}})
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#Region", name: "Region")
    RegisterClientRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#RegisterClientRequest", name: "RegisterClientRequest")
    RegisterClientResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#RegisterClientResponse", name: "RegisterClientResponse")
    Scope = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#Scope", name: "Scope")
    Scopes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssooidc#Scopes", name: "Scopes")
    SlowDownException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#SlowDownException", name: "SlowDownException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StartDeviceAuthorizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#StartDeviceAuthorizationRequest", name: "StartDeviceAuthorizationRequest")
    StartDeviceAuthorizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#StartDeviceAuthorizationResponse", name: "StartDeviceAuthorizationResponse")
    SubjectToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#SubjectToken", name: "SubjectToken", traits: {"smithy.api#sensitive" => {}})
    TokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#TokenType", name: "TokenType")
    TokenTypeURI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#TokenTypeURI", name: "TokenTypeURI")
    URI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#URI", name: "URI")
    UnauthorizedClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#UnauthorizedClientException", name: "UnauthorizedClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedGrantTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssooidc#UnsupportedGrantTypeException", name: "UnsupportedGrantTypeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssooidc#UserCode", name: "UserCode")

    AccessDeniedException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: "error"))
    AccessDeniedException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedExceptionReason, location_name: "reason"))
    AccessDeniedException.add_member(:error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "error_description"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedExceptionReason.add_member(:kms_access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KMS_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "KMS_AccessDeniedException"}))
    AuthorizationPendingException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: "error"))
    AuthorizationPendingException.add_member(:error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "error_description"))
    AuthorizationPendingException.type = Types::AuthorizationPendingException
    AwsAdditionalDetails.add_member(:identity_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityContext, location_name: "identityContext"))
    AwsAdditionalDetails.type = Types::AwsAdditionalDetails
    CreateTokenRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: "clientId", traits: {"smithy.api#required" => {}}))
    CreateTokenRequest.add_member(:client_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecret, location_name: "clientSecret", traits: {"smithy.api#required" => {}}))
    CreateTokenRequest.add_member(:grant_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantType, location_name: "grantType", traits: {"smithy.api#required" => {}}))
    CreateTokenRequest.add_member(:device_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceCode, location_name: "deviceCode"))
    CreateTokenRequest.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthCode, location_name: "code"))
    CreateTokenRequest.add_member(:refresh_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshToken, location_name: "refreshToken"))
    CreateTokenRequest.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scopes, location_name: "scope"))
    CreateTokenRequest.add_member(:redirect_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: "redirectUri"))
    CreateTokenRequest.add_member(:code_verifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeVerifier, location_name: "codeVerifier"))
    CreateTokenRequest.type = Types::CreateTokenRequest
    CreateTokenResponse.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    CreateTokenResponse.add_member(:token_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenType, location_name: "tokenType"))
    CreateTokenResponse.add_member(:expires_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationInSeconds, location_name: "expiresIn", traits: {"smithy.api#default" => 0}))
    CreateTokenResponse.add_member(:refresh_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshToken, location_name: "refreshToken"))
    CreateTokenResponse.add_member(:id_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdToken, location_name: "idToken"))
    CreateTokenResponse.type = Types::CreateTokenResponse
    CreateTokenWithIAMRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: "clientId", traits: {"smithy.api#required" => {}}))
    CreateTokenWithIAMRequest.add_member(:grant_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantType, location_name: "grantType", traits: {"smithy.api#required" => {}}))
    CreateTokenWithIAMRequest.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthCode, location_name: "code"))
    CreateTokenWithIAMRequest.add_member(:refresh_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshToken, location_name: "refreshToken"))
    CreateTokenWithIAMRequest.add_member(:assertion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Assertion, location_name: "assertion"))
    CreateTokenWithIAMRequest.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scopes, location_name: "scope"))
    CreateTokenWithIAMRequest.add_member(:redirect_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: "redirectUri"))
    CreateTokenWithIAMRequest.add_member(:subject_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectToken, location_name: "subjectToken"))
    CreateTokenWithIAMRequest.add_member(:subject_token_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenTypeURI, location_name: "subjectTokenType"))
    CreateTokenWithIAMRequest.add_member(:requested_token_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenTypeURI, location_name: "requestedTokenType"))
    CreateTokenWithIAMRequest.add_member(:code_verifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeVerifier, location_name: "codeVerifier"))
    CreateTokenWithIAMRequest.type = Types::CreateTokenWithIAMRequest
    CreateTokenWithIAMResponse.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    CreateTokenWithIAMResponse.add_member(:token_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenType, location_name: "tokenType"))
    CreateTokenWithIAMResponse.add_member(:expires_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationInSeconds, location_name: "expiresIn", traits: {"smithy.api#default" => 0}))
    CreateTokenWithIAMResponse.add_member(:refresh_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshToken, location_name: "refreshToken"))
    CreateTokenWithIAMResponse.add_member(:id_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdToken, location_name: "idToken"))
    CreateTokenWithIAMResponse.add_member(:issued_token_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenTypeURI, location_name: "issuedTokenType"))
    CreateTokenWithIAMResponse.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scopes, location_name: "scope"))
    CreateTokenWithIAMResponse.add_member(:aws_additional_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAdditionalDetails, location_name: "awsAdditionalDetails"))
    CreateTokenWithIAMResponse.type = Types::CreateTokenWithIAMResponse
    ExpiredTokenException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: "error"))
    ExpiredTokenException.add_member(:error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "error_description"))
    ExpiredTokenException.type = Types::ExpiredTokenException
    GrantTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantType)
    InternalServerException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: "error"))
    InternalServerException.add_member(:error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "error_description"))
    InternalServerException.type = Types::InternalServerException
    InvalidClientException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: "error"))
    InvalidClientException.add_member(:error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "error_description"))
    InvalidClientException.type = Types::InvalidClientException
    InvalidClientMetadataException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: "error"))
    InvalidClientMetadataException.add_member(:error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "error_description"))
    InvalidClientMetadataException.type = Types::InvalidClientMetadataException
    InvalidGrantException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: "error"))
    InvalidGrantException.add_member(:error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "error_description"))
    InvalidGrantException.type = Types::InvalidGrantException
    InvalidRedirectUriException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: "error"))
    InvalidRedirectUriException.add_member(:error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "error_description"))
    InvalidRedirectUriException.type = Types::InvalidRedirectUriException
    InvalidRequestException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: "error"))
    InvalidRequestException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestExceptionReason, location_name: "reason"))
    InvalidRequestException.add_member(:error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "error_description"))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidRequestExceptionReason.add_member(:kms_key_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KMS_KEY_NOT_FOUND", traits: {"smithy.api#enumValue" => "KMS_NotFoundException"}))
    InvalidRequestExceptionReason.add_member(:kms_invalid_key_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KMS_INVALID_KEY_USAGE", traits: {"smithy.api#enumValue" => "KMS_InvalidKeyUsageException"}))
    InvalidRequestExceptionReason.add_member(:kms_invalid_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KMS_INVALID_STATE", traits: {"smithy.api#enumValue" => "KMS_InvalidStateException"}))
    InvalidRequestExceptionReason.add_member(:kms_disabled_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KMS_DISABLED_KEY", traits: {"smithy.api#enumValue" => "KMS_DisabledException"}))
    InvalidRequestRegionException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: "error"))
    InvalidRequestRegionException.add_member(:error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "error_description"))
    InvalidRequestRegionException.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: "endpoint"))
    InvalidRequestRegionException.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    InvalidRequestRegionException.type = Types::InvalidRequestRegionException
    InvalidScopeException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: "error"))
    InvalidScopeException.add_member(:error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "error_description"))
    InvalidScopeException.type = Types::InvalidScopeException
    RedirectUris.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: URI)
    RegisterClientRequest.add_member(:client_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientName, location_name: "clientName", traits: {"smithy.api#required" => {}}))
    RegisterClientRequest.add_member(:client_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientType, location_name: "clientType", traits: {"smithy.api#required" => {}}))
    RegisterClientRequest.add_member(:scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scopes, location_name: "scopes"))
    RegisterClientRequest.add_member(:redirect_uris, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectUris, location_name: "redirectUris"))
    RegisterClientRequest.add_member(:grant_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTypes, location_name: "grantTypes"))
    RegisterClientRequest.add_member(:issuer_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: "issuerUrl"))
    RegisterClientRequest.add_member(:entitled_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: "entitledApplicationArn"))
    RegisterClientRequest.type = Types::RegisterClientRequest
    RegisterClientResponse.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: "clientId"))
    RegisterClientResponse.add_member(:client_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecret, location_name: "clientSecret"))
    RegisterClientResponse.add_member(:client_id_issued_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongTimeStampType, location_name: "clientIdIssuedAt", traits: {"smithy.api#default" => 0}))
    RegisterClientResponse.add_member(:client_secret_expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongTimeStampType, location_name: "clientSecretExpiresAt", traits: {"smithy.api#default" => 0}))
    RegisterClientResponse.add_member(:authorization_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: "authorizationEndpoint"))
    RegisterClientResponse.add_member(:token_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: "tokenEndpoint"))
    RegisterClientResponse.type = Types::RegisterClientResponse
    Scopes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scope)
    SlowDownException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: "error"))
    SlowDownException.add_member(:error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "error_description"))
    SlowDownException.type = Types::SlowDownException
    StartDeviceAuthorizationRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: "clientId", traits: {"smithy.api#required" => {}}))
    StartDeviceAuthorizationRequest.add_member(:client_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecret, location_name: "clientSecret", traits: {"smithy.api#required" => {}}))
    StartDeviceAuthorizationRequest.add_member(:start_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: "startUrl", traits: {"smithy.api#required" => {}}))
    StartDeviceAuthorizationRequest.type = Types::StartDeviceAuthorizationRequest
    StartDeviceAuthorizationResponse.add_member(:device_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceCode, location_name: "deviceCode"))
    StartDeviceAuthorizationResponse.add_member(:user_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserCode, location_name: "userCode"))
    StartDeviceAuthorizationResponse.add_member(:verification_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: "verificationUri"))
    StartDeviceAuthorizationResponse.add_member(:verification_uri_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: "verificationUriComplete"))
    StartDeviceAuthorizationResponse.add_member(:expires_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationInSeconds, location_name: "expiresIn", traits: {"smithy.api#default" => 0}))
    StartDeviceAuthorizationResponse.add_member(:interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntervalInSeconds, location_name: "interval", traits: {"smithy.api#default" => 0}))
    StartDeviceAuthorizationResponse.type = Types::StartDeviceAuthorizationResponse
    UnauthorizedClientException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: "error"))
    UnauthorizedClientException.add_member(:error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "error_description"))
    UnauthorizedClientException.type = Types::UnauthorizedClientException
    UnsupportedGrantTypeException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: "error"))
    UnsupportedGrantTypeException.add_member(:error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "error_description"))
    UnsupportedGrantTypeException.type = Types::UnsupportedGrantTypeException

    AWSSSOOIDCService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ssooidc#AWSSSOOIDCService"
      service.name = "AWSSSOOIDCService"
      service.version = "2019-06-10"
      service.traits = {"aws.api#service" => {"sdkId" => "SSO OIDC", "arnNamespace" => "sso-oauth", "cloudFormationName" => "SSOOIDC", "cloudTrailEventSource" => "ssooidc.amazonaws.com", "endpointPrefix" => "oidc"}, "aws.auth#sigv4" => {"name" => "sso-oauth"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS SSO OIDC"}
      service.add_operation(:create_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssooidc#CreateToken"
        operation.name = "CreateToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationPendingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScopeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlowDownException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedGrantTypeException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "POST", "uri" => "/token", "code" => 200}, "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:create_token_with_iam, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssooidc#CreateTokenWithIAM"
        operation.name = "CreateTokenWithIAM"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTokenWithIAMRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTokenWithIAMResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationPendingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestRegionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScopeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlowDownException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedGrantTypeException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/token?aws_iam=t", "code" => 200}}
      end)
      service.add_operation(:register_client, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssooidc#RegisterClient"
        operation.name = "RegisterClient"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterClientRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterClientResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientMetadataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRedirectUriException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScopeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlowDownException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedGrantTypeException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "POST", "uri" => "/client/register", "code" => 200}, "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:start_device_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssooidc#StartDeviceAuthorization"
        operation.name = "StartDeviceAuthorization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDeviceAuthorizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDeviceAuthorizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlowDownException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "POST", "uri" => "/device_authorization", "code" => 200}, "smithy.api#optionalAuth" => {}}
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
