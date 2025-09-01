# frozen_string_literal: true

# This is generated code!

module Aws::SSOOIDC
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccessToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#AccessToken', name: 'AccessToken', traits: {"smithy.api#sensitive" => {}})
    ArnType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#ArnType', name: 'ArnType')
    Assertion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#Assertion', name: 'Assertion', traits: {"smithy.api#sensitive" => {}})
    AuthCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#AuthCode', name: 'AuthCode')
    AuthorizationPendingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#AuthorizationPendingException', name: 'AuthorizationPendingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AwsAdditionalDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#AwsAdditionalDetails', name: 'AwsAdditionalDetails')
    ClientId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#ClientId', name: 'ClientId')
    ClientName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#ClientName', name: 'ClientName')
    ClientSecret = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#ClientSecret', name: 'ClientSecret', traits: {"smithy.api#sensitive" => {}})
    ClientType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#ClientType', name: 'ClientType')
    CodeVerifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#CodeVerifier', name: 'CodeVerifier', traits: {"smithy.api#sensitive" => {}})
    CreateTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#CreateTokenRequest', name: 'CreateTokenRequest')
    CreateTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#CreateTokenResponse', name: 'CreateTokenResponse')
    CreateTokenWithIAMRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#CreateTokenWithIAMRequest', name: 'CreateTokenWithIAMRequest')
    CreateTokenWithIAMResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#CreateTokenWithIAMResponse', name: 'CreateTokenWithIAMResponse')
    DeviceCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#DeviceCode', name: 'DeviceCode')
    Error = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#Error', name: 'Error')
    ErrorDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#ErrorDescription', name: 'ErrorDescription')
    ExpirationInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssooidc#ExpirationInSeconds', name: 'ExpirationInSeconds', traits: {"smithy.api#default" => 0})
    ExpiredTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#ExpiredTokenException', name: 'ExpiredTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GrantType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#GrantType', name: 'GrantType')
    GrantTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssooidc#GrantTypes', name: 'GrantTypes')
    IdToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#IdToken', name: 'IdToken', traits: {"smithy.api#sensitive" => {}})
    IdentityContext = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#IdentityContext', name: 'IdentityContext')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IntervalInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssooidc#IntervalInSeconds', name: 'IntervalInSeconds', traits: {"smithy.api#default" => 0})
    InvalidClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#InvalidClientException', name: 'InvalidClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    InvalidClientMetadataException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#InvalidClientMetadataException', name: 'InvalidClientMetadataException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidGrantException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#InvalidGrantException', name: 'InvalidGrantException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRedirectUriException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#InvalidRedirectUriException', name: 'InvalidRedirectUriException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestRegionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#InvalidRequestRegionException', name: 'InvalidRequestRegionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidScopeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#InvalidScopeException', name: 'InvalidScopeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Location = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#Location', name: 'Location')
    LongTimeStampType = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssooidc#LongTimeStampType', name: 'LongTimeStampType', traits: {"smithy.api#default" => 0})
    RedirectUris = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssooidc#RedirectUris', name: 'RedirectUris')
    RefreshToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#RefreshToken', name: 'RefreshToken', traits: {"smithy.api#sensitive" => {}})
    Region = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#Region', name: 'Region')
    RegisterClientRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#RegisterClientRequest', name: 'RegisterClientRequest')
    RegisterClientResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#RegisterClientResponse', name: 'RegisterClientResponse')
    Scope = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#Scope', name: 'Scope')
    Scopes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssooidc#Scopes', name: 'Scopes')
    SlowDownException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#SlowDownException', name: 'SlowDownException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StartDeviceAuthorizationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#StartDeviceAuthorizationRequest', name: 'StartDeviceAuthorizationRequest')
    StartDeviceAuthorizationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#StartDeviceAuthorizationResponse', name: 'StartDeviceAuthorizationResponse')
    SubjectToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#SubjectToken', name: 'SubjectToken', traits: {"smithy.api#sensitive" => {}})
    TokenType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#TokenType', name: 'TokenType')
    TokenTypeURI = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#TokenTypeURI', name: 'TokenTypeURI')
    URI = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#URI', name: 'URI')
    UnauthorizedClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#UnauthorizedClientException', name: 'UnauthorizedClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedGrantTypeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssooidc#UnsupportedGrantTypeException', name: 'UnsupportedGrantTypeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssooidc#UserCode', name: 'UserCode')

    AccessDeniedException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Single error code. For this exception the value will be <code>access_denied</code>.</p>"}))
    AccessDeniedException.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'error_description', traits: {"smithy.api#documentation" => "<p>Human-readable text providing additional information, used to assist the client developer\n      in understanding the error that occurred.</p>"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AuthorizationPendingException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Single error code. For this exception the value will be\n      <code>authorization_pending</code>.</p>"}))
    AuthorizationPendingException.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'error_description', traits: {"smithy.api#documentation" => "<p>Human-readable text providing additional information, used to assist the client developer\n      in understanding the error that occurred.</p>"}))
    AuthorizationPendingException.type = Types::AuthorizationPendingException
    AwsAdditionalDetails.add_member(:identity_context, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityContext, location_name: 'identityContext', traits: {"smithy.api#documentation" => "<p>STS context assertion that carries a user identifier to the Amazon Web Services service that it calls\n      and can be used to obtain an identity-enhanced IAM role session. This value corresponds to\n      the <code>sts:identity_context</code> claim in the ID token.</p>"}))
    AwsAdditionalDetails.type = Types::AwsAdditionalDetails
    CreateTokenRequest.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'clientId', traits: {"smithy.api#documentation" => "<p>The unique identifier string for the client or application. This value comes from the\n      result of the <a>RegisterClient</a> API.</p>", "smithy.api#required" => {}}))
    CreateTokenRequest.add_member(:client_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecret, location_name: 'clientSecret', traits: {"smithy.api#documentation" => "<p>A secret string generated for the client. This value should come from the persisted result\n      of the <a>RegisterClient</a> API.</p>", "smithy.api#required" => {}}))
    CreateTokenRequest.add_member(:grant_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantType, location_name: 'grantType', traits: {"smithy.api#documentation" => "<p>Supports the following OAuth grant types: Authorization Code, Device Code, and Refresh\n      Token. Specify one of the following values, depending on the grant type that you want:</p>\n         <p>* Authorization Code - <code>authorization_code</code>\n         </p>\n         <p>* Device Code - <code>urn:ietf:params:oauth:grant-type:device_code</code>\n         </p>\n         <p>* Refresh Token - <code>refresh_token</code>\n         </p>", "smithy.api#required" => {}}))
    CreateTokenRequest.add_member(:device_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceCode, location_name: 'deviceCode', traits: {"smithy.api#documentation" => "<p>Used only when calling this API for the Device Code grant type. This short-lived code is\n      used to identify this authorization request. This comes from the result of the <a>StartDeviceAuthorization</a> API.</p>"}))
    CreateTokenRequest.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>Used only when calling this API for the Authorization Code grant type. The short-lived\n      code is used to identify this authorization request.</p>"}))
    CreateTokenRequest.add_member(:refresh_token, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshToken, location_name: 'refreshToken', traits: {"smithy.api#documentation" => "<p>Used only when calling this API for the Refresh Token grant type. This token is used to\n      refresh short-lived tokens, such as the access token, that might expire.</p>\n         <p>For more information about the features and limitations of the current IAM Identity Center OIDC\n      implementation, see <i>Considerations for Using this Guide</i> in the <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html\">IAM Identity Center\n        OIDC API Reference</a>.</p>"}))
    CreateTokenRequest.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Scopes, location_name: 'scope', traits: {"smithy.api#documentation" => "<p>The list of scopes for which authorization is requested. The access token that is issued\n      is limited to the scopes that are granted. If this value is not specified, IAM Identity Center authorizes\n      all scopes that are configured for the client during the call to <a>RegisterClient</a>.</p>"}))
    CreateTokenRequest.add_member(:redirect_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: 'redirectUri', traits: {"smithy.api#documentation" => "<p>Used only when calling this API for the Authorization Code grant type. This value\n      specifies the location of the client or application that has registered to receive the\n      authorization code.</p>"}))
    CreateTokenRequest.add_member(:code_verifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeVerifier, location_name: 'codeVerifier', traits: {"smithy.api#documentation" => "<p>Used only when calling this API for the Authorization Code grant type. This value is\n      generated by the client and presented to validate the original code challenge value the client\n      passed at authorization time.</p>"}))
    CreateTokenRequest.type = Types::CreateTokenRequest
    CreateTokenResponse.add_member(:access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToken, location_name: 'accessToken', traits: {"smithy.api#documentation" => "<p>A bearer token to access Amazon Web Services accounts and applications assigned to a user.</p>"}))
    CreateTokenResponse.add_member(:token_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenType, location_name: 'tokenType', traits: {"smithy.api#documentation" => "<p>Used to notify the client that the returned token is an access token. The supported token\n      type is <code>Bearer</code>.</p>"}))
    CreateTokenResponse.add_member(:expires_in, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationInSeconds, location_name: 'expiresIn', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Indicates the time in seconds when an access token will expire.</p>"}))
    CreateTokenResponse.add_member(:refresh_token, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshToken, location_name: 'refreshToken', traits: {"smithy.api#documentation" => "<p>A token that, if present, can be used to refresh a previously issued access token that\n      might have expired.</p>\n         <p>For more information about the features and limitations of the current IAM Identity Center OIDC\n      implementation, see <i>Considerations for Using this Guide</i> in the <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html\">IAM Identity Center\n        OIDC API Reference</a>.</p>"}))
    CreateTokenResponse.add_member(:id_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdToken, location_name: 'idToken', traits: {"smithy.api#documentation" => "<p>The <code>idToken</code> is not implemented or supported. For more information about the\n      features and limitations of the current IAM Identity Center OIDC implementation, see\n        <i>Considerations for Using this Guide</i> in the <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html\">IAM Identity Center\n        OIDC API Reference</a>.</p>\n         <p>A JSON Web Token (JWT) that identifies who is associated with the issued access token.\n    </p>"}))
    CreateTokenResponse.type = Types::CreateTokenResponse
    CreateTokenWithIAMRequest.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'clientId', traits: {"smithy.api#documentation" => "<p>The unique identifier string for the client or application. This value is an application\n      ARN that has OAuth grants configured.</p>", "smithy.api#required" => {}}))
    CreateTokenWithIAMRequest.add_member(:grant_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantType, location_name: 'grantType', traits: {"smithy.api#documentation" => "<p>Supports the following OAuth grant types: Authorization Code, Refresh Token, JWT Bearer,\n      and Token Exchange. Specify one of the following values, depending on the grant type that you\n      want:</p>\n         <p>* Authorization Code - <code>authorization_code</code>\n         </p>\n         <p>* Refresh Token - <code>refresh_token</code>\n         </p>\n         <p>* JWT Bearer - <code>urn:ietf:params:oauth:grant-type:jwt-bearer</code>\n         </p>\n         <p>* Token Exchange - <code>urn:ietf:params:oauth:grant-type:token-exchange</code>\n         </p>", "smithy.api#required" => {}}))
    CreateTokenWithIAMRequest.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>Used only when calling this API for the Authorization Code grant type. This short-lived\n      code is used to identify this authorization request. The code is obtained through a redirect\n      from IAM Identity Center to a redirect URI persisted in the Authorization Code GrantOptions for the\n      application.</p>"}))
    CreateTokenWithIAMRequest.add_member(:refresh_token, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshToken, location_name: 'refreshToken', traits: {"smithy.api#documentation" => "<p>Used only when calling this API for the Refresh Token grant type. This token is used to\n      refresh short-lived tokens, such as the access token, that might expire.</p>\n         <p>For more information about the features and limitations of the current IAM Identity Center OIDC\n      implementation, see <i>Considerations for Using this Guide</i> in the <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html\">IAM Identity Center\n        OIDC API Reference</a>.</p>"}))
    CreateTokenWithIAMRequest.add_member(:assertion, Smithy::Schema::Shapes::ShapeRef.new(shape: Assertion, location_name: 'assertion', traits: {"smithy.api#documentation" => "<p>Used only when calling this API for the JWT Bearer grant type. This value specifies the\n      JSON Web Token (JWT) issued by a trusted token issuer. To authorize a trusted token issuer,\n      configure the JWT Bearer GrantOptions for the application.</p>"}))
    CreateTokenWithIAMRequest.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Scopes, location_name: 'scope', traits: {"smithy.api#documentation" => "<p>The list of scopes for which authorization is requested. The access token that is issued\n      is limited to the scopes that are granted. If the value is not specified, IAM Identity Center authorizes all\n      scopes configured for the application, including the following default scopes:\n        <code>openid</code>, <code>aws</code>, <code>sts:identity_context</code>.</p>"}))
    CreateTokenWithIAMRequest.add_member(:redirect_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: 'redirectUri', traits: {"smithy.api#documentation" => "<p>Used only when calling this API for the Authorization Code grant type. This value\n      specifies the location of the client or application that has registered to receive the\n      authorization code. </p>"}))
    CreateTokenWithIAMRequest.add_member(:subject_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectToken, location_name: 'subjectToken', traits: {"smithy.api#documentation" => "<p>Used only when calling this API for the Token Exchange grant type. This value specifies\n      the subject of the exchange. The value of the subject token must be an access token issued by\n      IAM Identity Center to a different client or application. The access token must have authorized scopes that\n      indicate the requested application as a target audience.</p>"}))
    CreateTokenWithIAMRequest.add_member(:subject_token_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenTypeURI, location_name: 'subjectTokenType', traits: {"smithy.api#documentation" => "<p>Used only when calling this API for the Token Exchange grant type. This value specifies\n      the type of token that is passed as the subject of the exchange. The following value is\n      supported:</p>\n         <p>* Access Token - <code>urn:ietf:params:oauth:token-type:access_token</code>\n         </p>"}))
    CreateTokenWithIAMRequest.add_member(:requested_token_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenTypeURI, location_name: 'requestedTokenType', traits: {"smithy.api#documentation" => "<p>Used only when calling this API for the Token Exchange grant type. This value specifies\n      the type of token that the requester can receive. The following values are supported:</p>\n         <p>* Access Token - <code>urn:ietf:params:oauth:token-type:access_token</code>\n         </p>\n         <p>* Refresh Token - <code>urn:ietf:params:oauth:token-type:refresh_token</code>\n         </p>"}))
    CreateTokenWithIAMRequest.add_member(:code_verifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeVerifier, location_name: 'codeVerifier', traits: {"smithy.api#documentation" => "<p>Used only when calling this API for the Authorization Code grant type. This value is\n      generated by the client and presented to validate the original code challenge value the client\n      passed at authorization time.</p>"}))
    CreateTokenWithIAMRequest.type = Types::CreateTokenWithIAMRequest
    CreateTokenWithIAMResponse.add_member(:access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToken, location_name: 'accessToken', traits: {"smithy.api#documentation" => "<p>A bearer token to access Amazon Web Services accounts and applications assigned to a user.</p>"}))
    CreateTokenWithIAMResponse.add_member(:token_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenType, location_name: 'tokenType', traits: {"smithy.api#documentation" => "<p>Used to notify the requester that the returned token is an access token. The supported\n      token type is <code>Bearer</code>.</p>"}))
    CreateTokenWithIAMResponse.add_member(:expires_in, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationInSeconds, location_name: 'expiresIn', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Indicates the time in seconds when an access token will expire.</p>"}))
    CreateTokenWithIAMResponse.add_member(:refresh_token, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshToken, location_name: 'refreshToken', traits: {"smithy.api#documentation" => "<p>A token that, if present, can be used to refresh a previously issued access token that\n      might have expired.</p>\n         <p>For more information about the features and limitations of the current IAM Identity Center OIDC\n      implementation, see <i>Considerations for Using this Guide</i> in the <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html\">IAM Identity Center\n        OIDC API Reference</a>.</p>"}))
    CreateTokenWithIAMResponse.add_member(:id_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdToken, location_name: 'idToken', traits: {"smithy.api#documentation" => "<p>A JSON Web Token (JWT) that identifies the user associated with the issued access token.\n    </p>"}))
    CreateTokenWithIAMResponse.add_member(:issued_token_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenTypeURI, location_name: 'issuedTokenType', traits: {"smithy.api#documentation" => "<p>Indicates the type of tokens that are issued by IAM Identity Center. The following values are supported: </p>\n         <p>* Access Token - <code>urn:ietf:params:oauth:token-type:access_token</code>\n         </p>\n         <p>* Refresh Token - <code>urn:ietf:params:oauth:token-type:refresh_token</code>\n         </p>"}))
    CreateTokenWithIAMResponse.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Scopes, location_name: 'scope', traits: {"smithy.api#documentation" => "<p>The list of scopes for which authorization is granted. The access token that is issued is\n      limited to the scopes that are granted.</p>"}))
    CreateTokenWithIAMResponse.add_member(:aws_additional_details, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAdditionalDetails, location_name: 'awsAdditionalDetails', traits: {"smithy.api#documentation" => "<p>A structure containing information from the <code>idToken</code>. Only the\n        <code>identityContext</code> is in it, which is a value extracted from the\n        <code>idToken</code>. This provides direct access to identity information without requiring\n      JWT parsing.</p>"}))
    CreateTokenWithIAMResponse.type = Types::CreateTokenWithIAMResponse
    ExpiredTokenException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Single error code. For this exception the value will be <code>expired_token</code>.</p>"}))
    ExpiredTokenException.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'error_description', traits: {"smithy.api#documentation" => "<p>Human-readable text providing additional information, used to assist the client developer\n      in understanding the error that occurred.</p>"}))
    ExpiredTokenException.type = Types::ExpiredTokenException
    GrantTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GrantType)
    InternalServerException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Single error code. For this exception the value will be <code>server_error</code>.</p>"}))
    InternalServerException.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'error_description', traits: {"smithy.api#documentation" => "<p>Human-readable text providing additional information, used to assist the client developer\n      in understanding the error that occurred.</p>"}))
    InternalServerException.type = Types::InternalServerException
    InvalidClientException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Single error code. For this exception the value will be\n      <code>invalid_client</code>.</p>"}))
    InvalidClientException.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'error_description', traits: {"smithy.api#documentation" => "<p>Human-readable text providing additional information, used to assist the client developer\n      in understanding the error that occurred.</p>"}))
    InvalidClientException.type = Types::InvalidClientException
    InvalidClientMetadataException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Single error code. For this exception the value will be\n        <code>invalid_client_metadata</code>.</p>"}))
    InvalidClientMetadataException.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'error_description', traits: {"smithy.api#documentation" => "<p>Human-readable text providing additional information, used to assist the client developer\n      in understanding the error that occurred.</p>"}))
    InvalidClientMetadataException.type = Types::InvalidClientMetadataException
    InvalidGrantException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Single error code. For this exception the value will be <code>invalid_grant</code>.</p>"}))
    InvalidGrantException.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'error_description', traits: {"smithy.api#documentation" => "<p>Human-readable text providing additional information, used to assist the client developer\n      in understanding the error that occurred.</p>"}))
    InvalidGrantException.type = Types::InvalidGrantException
    InvalidRedirectUriException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Single error code. For this exception the value will be\n      <code>invalid_redirect_uri</code>.</p>"}))
    InvalidRedirectUriException.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'error_description', traits: {"smithy.api#documentation" => "<p>Human-readable text providing additional information, used to assist the client developer\n      in understanding the error that occurred.</p>"}))
    InvalidRedirectUriException.type = Types::InvalidRedirectUriException
    InvalidRequestException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Single error code. For this exception the value will be\n      <code>invalid_request</code>.</p>"}))
    InvalidRequestException.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'error_description', traits: {"smithy.api#documentation" => "<p>Human-readable text providing additional information, used to assist the client developer\n      in understanding the error that occurred.</p>"}))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidRequestRegionException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Single error code. For this exception the value will be\n      <code>invalid_request</code>.</p>"}))
    InvalidRequestRegionException.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'error_description', traits: {"smithy.api#documentation" => "<p>Human-readable text providing additional information, used to assist the client developer\n      in understanding the error that occurred.</p>"}))
    InvalidRequestRegionException.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>Indicates the IAM Identity Center endpoint which the requester may call with this token.</p>"}))
    InvalidRequestRegionException.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region', traits: {"smithy.api#documentation" => "<p>Indicates the region which the requester may call with this token.</p>"}))
    InvalidRequestRegionException.type = Types::InvalidRequestRegionException
    InvalidScopeException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Single error code. For this exception the value will be <code>invalid_scope</code>.</p>"}))
    InvalidScopeException.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'error_description', traits: {"smithy.api#documentation" => "<p>Human-readable text providing additional information, used to assist the client developer\n      in understanding the error that occurred.</p>"}))
    InvalidScopeException.type = Types::InvalidScopeException
    RedirectUris.member = Smithy::Schema::Shapes::ShapeRef.new(shape: URI)
    RegisterClientRequest.add_member(:client_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientName, location_name: 'clientName', traits: {"smithy.api#documentation" => "<p>The friendly name of the client.</p>", "smithy.api#required" => {}}))
    RegisterClientRequest.add_member(:client_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientType, location_name: 'clientType', traits: {"smithy.api#documentation" => "<p>The type of client. The service supports only <code>public</code> as a client type.\n      Anything other than public will be rejected by the service.</p>", "smithy.api#required" => {}}))
    RegisterClientRequest.add_member(:scopes, Smithy::Schema::Shapes::ShapeRef.new(shape: Scopes, location_name: 'scopes', traits: {"smithy.api#documentation" => "<p>The list of scopes that are defined by the client. Upon authorization, this list is used\n      to restrict permissions when granting an access token.</p>"}))
    RegisterClientRequest.add_member(:redirect_uris, Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectUris, location_name: 'redirectUris', traits: {"smithy.api#documentation" => "<p>The list of redirect URI that are defined by the client. At completion of authorization,\n      this list is used to restrict what locations the user agent can be redirected back to.</p>"}))
    RegisterClientRequest.add_member(:grant_types, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTypes, location_name: 'grantTypes', traits: {"smithy.api#documentation" => "<p>The list of OAuth 2.0 grant types that are defined by the client. This list is used to\n      restrict the token granting flows available to the client. Supports the following OAuth 2.0\n      grant types: Authorization Code, Device Code, and Refresh Token. </p>\n         <p>* Authorization Code - <code>authorization_code</code>\n         </p>\n         <p>* Device Code - <code>urn:ietf:params:oauth:grant-type:device_code</code>\n         </p>\n         <p>* Refresh Token - <code>refresh_token</code>\n         </p>"}))
    RegisterClientRequest.add_member(:issuer_url, Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: 'issuerUrl', traits: {"smithy.api#documentation" => "<p>The IAM Identity Center Issuer URL associated with an instance of IAM Identity Center. This value is needed for user\n      access to resources through the client.</p>"}))
    RegisterClientRequest.add_member(:entitled_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'entitledApplicationArn', traits: {"smithy.api#documentation" => "<p>This IAM Identity Center application ARN is used to define administrator-managed configuration for\n      public client access to resources. At authorization, the scopes, grants, and redirect URI\n      available to this client will be restricted by this application resource.</p>"}))
    RegisterClientRequest.type = Types::RegisterClientRequest
    RegisterClientResponse.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'clientId', traits: {"smithy.api#documentation" => "<p>The unique identifier string for each client. This client uses this identifier to get\n      authenticated by the service in subsequent calls.</p>"}))
    RegisterClientResponse.add_member(:client_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecret, location_name: 'clientSecret', traits: {"smithy.api#documentation" => "<p>A secret string generated for the client. The client will use this string to get\n      authenticated by the service in subsequent calls.</p>"}))
    RegisterClientResponse.add_member(:client_id_issued_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LongTimeStampType, location_name: 'clientIdIssuedAt', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Indicates the time at which the <code>clientId</code> and <code>clientSecret</code> were\n      issued.</p>"}))
    RegisterClientResponse.add_member(:client_secret_expires_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LongTimeStampType, location_name: 'clientSecretExpiresAt', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Indicates the time at which the <code>clientId</code> and <code>clientSecret</code> will\n      become invalid.</p>"}))
    RegisterClientResponse.add_member(:authorization_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: 'authorizationEndpoint', traits: {"smithy.api#documentation" => "<p>An endpoint that the client can use to request authorization.</p>"}))
    RegisterClientResponse.add_member(:token_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: 'tokenEndpoint', traits: {"smithy.api#documentation" => "<p>An endpoint that the client can use to create tokens.</p>"}))
    RegisterClientResponse.type = Types::RegisterClientResponse
    Scopes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Scope)
    SlowDownException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Single error code. For this exception the value will be <code>slow_down</code>.</p>"}))
    SlowDownException.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'error_description', traits: {"smithy.api#documentation" => "<p>Human-readable text providing additional information, used to assist the client developer\n      in understanding the error that occurred.</p>"}))
    SlowDownException.type = Types::SlowDownException
    StartDeviceAuthorizationRequest.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'clientId', traits: {"smithy.api#documentation" => "<p>The unique identifier string for the client that is registered with IAM Identity Center. This value\n      should come from the persisted result of the <a>RegisterClient</a> API\n      operation.</p>", "smithy.api#required" => {}}))
    StartDeviceAuthorizationRequest.add_member(:client_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecret, location_name: 'clientSecret', traits: {"smithy.api#documentation" => "<p>A secret string that is generated for the client. This value should come from the\n      persisted result of the <a>RegisterClient</a> API operation.</p>", "smithy.api#required" => {}}))
    StartDeviceAuthorizationRequest.add_member(:start_url, Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: 'startUrl', traits: {"smithy.api#documentation" => "<p>The URL for the Amazon Web Services access portal. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/userguide/using-the-portal.html\">Using\n        the Amazon Web Services access portal</a> in the <i>IAM Identity Center User Guide</i>.</p>", "smithy.api#required" => {}}))
    StartDeviceAuthorizationRequest.type = Types::StartDeviceAuthorizationRequest
    StartDeviceAuthorizationResponse.add_member(:device_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceCode, location_name: 'deviceCode', traits: {"smithy.api#documentation" => "<p>The short-lived code that is used by the device when polling for a session token.</p>"}))
    StartDeviceAuthorizationResponse.add_member(:user_code, Smithy::Schema::Shapes::ShapeRef.new(shape: UserCode, location_name: 'userCode', traits: {"smithy.api#documentation" => "<p>A one-time user verification code. This is needed to authorize an in-use device.</p>"}))
    StartDeviceAuthorizationResponse.add_member(:verification_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: 'verificationUri', traits: {"smithy.api#documentation" => "<p>The URI of the verification page that takes the <code>userCode</code> to authorize the\n      device.</p>"}))
    StartDeviceAuthorizationResponse.add_member(:verification_uri_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: 'verificationUriComplete', traits: {"smithy.api#documentation" => "<p>An alternate URL that the client can use to automatically launch a browser. This process\n      skips the manual step in which the user visits the verification page and enters their\n      code.</p>"}))
    StartDeviceAuthorizationResponse.add_member(:expires_in, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationInSeconds, location_name: 'expiresIn', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Indicates the number of seconds in which the verification code will become invalid.</p>"}))
    StartDeviceAuthorizationResponse.add_member(:interval, Smithy::Schema::Shapes::ShapeRef.new(shape: IntervalInSeconds, location_name: 'interval', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Indicates the number of seconds the client must wait between attempts when polling for a\n      session.</p>"}))
    StartDeviceAuthorizationResponse.type = Types::StartDeviceAuthorizationResponse
    UnauthorizedClientException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Single error code. For this exception the value will be\n      <code>unauthorized_client</code>.</p>"}))
    UnauthorizedClientException.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'error_description', traits: {"smithy.api#documentation" => "<p>Human-readable text providing additional information, used to assist the client developer\n      in understanding the error that occurred.</p>"}))
    UnauthorizedClientException.type = Types::UnauthorizedClientException
    UnsupportedGrantTypeException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Error, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Single error code. For this exception the value will be\n        <code>unsupported_grant_type</code>.</p>"}))
    UnsupportedGrantTypeException.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'error_description', traits: {"smithy.api#documentation" => "<p>Human-readable text providing additional information, used to assist the client developer\n      in understanding the error that occurred.</p>"}))
    UnsupportedGrantTypeException.type = Types::UnsupportedGrantTypeException

    AWSSSOOIDCService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ssooidc#AWSSSOOIDCService"
      service.name = "AWSSSOOIDCService"
      service.version = "2019-06-10"
      service.traits = {"aws.api#service" => {"sdkId" => "SSO OIDC", "arnNamespace" => "sso-oauth", "cloudFormationName" => "SSOOIDC", "cloudTrailEventSource" => "ssooidc.amazonaws.com", "endpointPrefix" => "oidc"}, "aws.auth#sigv4" => {"name" => "sso-oauth"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS SSO OIDC"}
      service.add_operation(:create_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssooidc#CreateToken"
        operation.name = "CreateToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationPendingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScopeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SlowDownException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedGrantTypeException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "POST", "uri" => "/token", "code" => 200}, "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:create_token_with_iam, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssooidc#CreateTokenWithIAM"
        operation.name = "CreateTokenWithIAM"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTokenWithIAMRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTokenWithIAMResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationPendingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScopeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SlowDownException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedGrantTypeException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/token?aws_iam=t", "code" => 200}}
      end)
      service.add_operation(:register_client, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssooidc#RegisterClient"
        operation.name = "RegisterClient"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterClientRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterClientResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientMetadataException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRedirectUriException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScopeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedGrantTypeException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "POST", "uri" => "/client/register", "code" => 200}, "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:start_device_authorization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssooidc#StartDeviceAuthorization"
        operation.name = "StartDeviceAuthorization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDeviceAuthorizationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDeviceAuthorizationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SlowDownException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "POST", "uri" => "/device_authorization", "code" => 200}, "smithy.api#optionalAuth" => {}}
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
