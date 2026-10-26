# frozen_string_literal: true

# This is generated code!

module Aws::Signin
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    AccessToken = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#AccessToken", name: "AccessToken", traits: {"smithy.api#sensitive" => {}})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AuthorizationCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#AuthorizationCode", name: "AuthorizationCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    BearerTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#BearerTokenType", name: "BearerTokenType", traits: {"smithy.api#pattern" => "^Bearer$"})
    ClientCredentialsGrantType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#ClientCredentialsGrantType", name: "ClientCredentialsGrantType", traits: {"smithy.api#pattern" => "^client_credentials$"})
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#ClientId", name: "ClientId", traits: {"smithy.api#pattern" => "^arn:aws:signin:::devtools/(cross-device|same-device)$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    CodeVerifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#CodeVerifier", name: "CodeVerifier", traits: {"smithy.api#length" => {"min" => 43, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9\\-._~]+$"})
    Condition = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.signin#Condition", name: "Condition")
    ConditionBlock = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.signin#ConditionBlock", name: "ConditionBlock")
    ConditionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#ConditionType", name: "ConditionType")
    ConditionValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signin#ConditionValues", name: "ConditionValues")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConsolePermissionMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.signin#ConsolePermissionMaxResults", name: "ConsolePermissionMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    CreateOAuth2TokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#CreateOAuth2TokenRequest", name: "CreateOAuth2TokenRequest")
    CreateOAuth2TokenRequestBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#CreateOAuth2TokenRequestBody", name: "CreateOAuth2TokenRequestBody")
    CreateOAuth2TokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#CreateOAuth2TokenResponse", name: "CreateOAuth2TokenResponse")
    CreateOAuth2TokenResponseBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#CreateOAuth2TokenResponseBody", name: "CreateOAuth2TokenResponseBody")
    CreateOAuth2TokenWithIAMRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#CreateOAuth2TokenWithIAMRequest", name: "CreateOAuth2TokenWithIAMRequest")
    CreateOAuth2TokenWithIAMResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#CreateOAuth2TokenWithIAMResponse", name: "CreateOAuth2TokenWithIAMResponse")
    DeleteConsoleAuthorizationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#DeleteConsoleAuthorizationConfigurationInput", name: "DeleteConsoleAuthorizationConfigurationInput")
    DeleteConsoleAuthorizationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#DeleteConsoleAuthorizationConfigurationOutput", name: "DeleteConsoleAuthorizationConfigurationOutput")
    DeleteResourcePermissionStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#DeleteResourcePermissionStatementInput", name: "DeleteResourcePermissionStatementInput")
    DeleteResourcePermissionStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#DeleteResourcePermissionStatementOutput", name: "DeleteResourcePermissionStatementOutput")
    ExcludedPrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#ExcludedPrincipal", name: "ExcludedPrincipal", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:((iam::[0-9]{12}:role/[a-zA-Z0-9_+=,.@-]{1,64})|(iam::[0-9]{12}:user/[a-zA-Z0-9_+=,.@-]{1,64})|(sts::[0-9]{12}:federated-user/[a-zA-Z0-9_+=,.@-]{2,193})|(iam::[0-9]{12}:root))$"})
    ExpiresIn = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.signin#ExpiresIn", name: "ExpiresIn", traits: {"smithy.api#range" => {"min" => 1, "max" => 900}})
    GetConsoleAuthorizationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#GetConsoleAuthorizationConfigurationInput", name: "GetConsoleAuthorizationConfigurationInput")
    GetConsoleAuthorizationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#GetConsoleAuthorizationConfigurationOutput", name: "GetConsoleAuthorizationConfigurationOutput")
    GetResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#GetResourcePolicyInput", name: "GetResourcePolicyInput")
    GetResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#GetResourcePolicyOutput", name: "GetResourcePolicyOutput")
    GrantType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#GrantType", name: "GrantType", traits: {"smithy.api#pattern" => "^(authorization_code|refresh_token)$"})
    IdToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#IdToken", name: "IdToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IntrospectOAuth2TokenWithIAMRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#IntrospectOAuth2TokenWithIAMRequest", name: "IntrospectOAuth2TokenWithIAMRequest")
    IntrospectOAuth2TokenWithIAMResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#IntrospectOAuth2TokenWithIAMResponse", name: "IntrospectOAuth2TokenWithIAMResponse")
    IntrospectedTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#IntrospectedTokenType", name: "IntrospectedTokenType", traits: {"smithy.api#pattern" => "^(access_token|refresh_token)$"})
    IntrospectionToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#IntrospectionToken", name: "IntrospectionToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^ASO[AR][A-Za-z0-9+/=_\\-]+$", "smithy.api#sensitive" => {}})
    ListResourcePermissionStatementsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#ListResourcePermissionStatementsInput", name: "ListResourcePermissionStatementsInput")
    ListResourcePermissionStatementsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#ListResourcePermissionStatementsOutput", name: "ListResourcePermissionStatementsOutput")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[-a-zA-Z0-9+=/_]*$"})
    OAuth2ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.signin#OAuth2ErrorCode", name: "OAuth2ErrorCode")
    OAuthAccessToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#OAuthAccessToken", name: "OAuthAccessToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    PermissionStatementSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signin#PermissionStatementSummaries", name: "PermissionStatementSummaries")
    PermissionStatementSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#PermissionStatementSummary", name: "PermissionStatementSummary")
    PolicyActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signin#PolicyActions", name: "PolicyActions")
    PolicyStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#PolicyStatement", name: "PolicyStatement")
    PolicyStatements = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signin#PolicyStatements", name: "PolicyStatements")
    Principal = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.signin#Principal", name: "Principal")
    PutConsoleAuthorizationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#PutConsoleAuthorizationConfigurationInput", name: "PutConsoleAuthorizationConfigurationInput")
    PutConsoleAuthorizationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#PutConsoleAuthorizationConfigurationOutput", name: "PutConsoleAuthorizationConfigurationOutput")
    PutResourcePermissionStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#PutResourcePermissionStatementInput", name: "PutResourcePermissionStatementInput")
    PutResourcePermissionStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#PutResourcePermissionStatementOutput", name: "PutResourcePermissionStatementOutput")
    RedirectUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#RedirectUri", name: "RedirectUri", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    RefreshToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#RefreshToken", name: "RefreshToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    RequestedRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#RequestedRegion", name: "RequestedRegion", traits: {"smithy.api#pattern" => "^[a-z]{2}(-[a-z]+)+-\\d+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RevocationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#RevocationToken", name: "RevocationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^ASOR[A-Za-z0-9+/=_\\-]+$", "smithy.api#sensitive" => {}})
    RevokeOAuth2TokenWithIAMRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#RevokeOAuth2TokenWithIAMRequest", name: "RevokeOAuth2TokenWithIAMRequest")
    RevokeOAuth2TokenWithIAMResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#RevokeOAuth2TokenWithIAMResponse", name: "RevokeOAuth2TokenWithIAMResponse")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SigninResourceBasedPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#SigninResourceBasedPolicy", name: "SigninResourceBasedPolicy")
    SourceIp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#SourceIp", name: "SourceIp")
    SourceVpc = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#SourceVpc", name: "SourceVpc", traits: {"smithy.api#pattern" => "^vpc-([0-9a-f]{8}|[0-9a-f]{17})$"})
    SourceVpce = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#SourceVpce", name: "SourceVpce", traits: {"smithy.api#pattern" => "^vpce-[a-z0-9]{8,20}$"})
    StatementId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#StatementId", name: "StatementId", traits: {"smithy.api#pattern" => "^[A-Za-z0-9+/]{64}=?$"})
    TargetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#TargetId", name: "TargetId", traits: {"smithy.api#length" => {"min" => 12, "max" => 32}, "smithy.api#pattern" => "^(\\d{12}|o-[a-z0-9]{10}|r-[0-9a-z]{4,32})$"})
    TokenExpiresIn = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.signin#TokenExpiresIn", name: "TokenExpiresIn", traits: {"smithy.api#range" => {"min" => 1, "max" => 3600}})
    TokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#TokenType", name: "TokenType", traits: {"smithy.api#pattern" => "^aws_sigv4$"})
    TokenTypeHint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#TokenTypeHint", name: "TokenTypeHint", traits: {"smithy.api#pattern" => "^(access_token|refresh_token)$"})
    TooManyRequestsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#TooManyRequestsError", name: "TooManyRequestsError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcSourceIp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#VpcSourceIp", name: "VpcSourceIp")

    AccessDeniedException.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2ErrorCode, name: "error", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessToken.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accessKeyId", traits: {"smithy.api#jsonName" => "accessKeyId", "smithy.api#required" => {}}))
    AccessToken.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "secretAccessKey", traits: {"smithy.api#jsonName" => "secretAccessKey", "smithy.api#required" => {}}))
    AccessToken.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionToken", traits: {"smithy.api#jsonName" => "sessionToken", "smithy.api#required" => {}}))
    AccessToken.type = Types::AccessToken
    Condition.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    Condition.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionValues, name: "value"))
    ConditionBlock.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionType, name: "key"))
    ConditionBlock.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "value"))
    ConditionValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ConflictException.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2ErrorCode, name: "error", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateOAuth2TokenRequest.add_member(:token_input, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateOAuth2TokenRequestBody, name: "tokenInput", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateOAuth2TokenRequest[:http_payload] = :token_input
    CreateOAuth2TokenRequest[:http_payload_member] = CreateOAuth2TokenRequest.member(:token_input)
    CreateOAuth2TokenRequest.type = Types::CreateOAuth2TokenRequest
    CreateOAuth2TokenRequestBody.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "clientId", traits: {"smithy.api#jsonName" => "clientId", "smithy.api#required" => {}}))
    CreateOAuth2TokenRequestBody.add_member(:grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantType, name: "grantType", traits: {"smithy.api#jsonName" => "grantType", "smithy.api#required" => {}}))
    CreateOAuth2TokenRequestBody.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationCode, name: "code"))
    CreateOAuth2TokenRequestBody.add_member(:redirect_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectUri, name: "redirectUri", traits: {"smithy.api#jsonName" => "redirectUri"}))
    CreateOAuth2TokenRequestBody.add_member(:code_verifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeVerifier, name: "codeVerifier", traits: {"smithy.api#jsonName" => "codeVerifier"}))
    CreateOAuth2TokenRequestBody.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshToken, name: "refreshToken", traits: {"smithy.api#jsonName" => "refreshToken"}))
    CreateOAuth2TokenRequestBody.type = Types::CreateOAuth2TokenRequestBody
    CreateOAuth2TokenResponse.add_member(:token_output, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateOAuth2TokenResponseBody, name: "tokenOutput", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateOAuth2TokenResponse[:http_payload] = :token_output
    CreateOAuth2TokenResponse[:http_payload_member] = CreateOAuth2TokenResponse.member(:token_output)
    CreateOAuth2TokenResponse.type = Types::CreateOAuth2TokenResponse
    CreateOAuth2TokenResponseBody.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessToken, name: "accessToken", traits: {"smithy.api#jsonName" => "accessToken", "smithy.api#required" => {}}))
    CreateOAuth2TokenResponseBody.add_member(:token_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenType, name: "tokenType", traits: {"smithy.api#jsonName" => "tokenType", "smithy.api#required" => {}}))
    CreateOAuth2TokenResponseBody.add_member(:expires_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiresIn, name: "expiresIn", traits: {"smithy.api#jsonName" => "expiresIn", "smithy.api#required" => {}}))
    CreateOAuth2TokenResponseBody.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshToken, name: "refreshToken", traits: {"smithy.api#jsonName" => "refreshToken", "smithy.api#required" => {}}))
    CreateOAuth2TokenResponseBody.add_member(:id_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdToken, name: "idToken", traits: {"smithy.api#jsonName" => "idToken"}))
    CreateOAuth2TokenResponseBody.type = Types::CreateOAuth2TokenResponseBody
    CreateOAuth2TokenWithIAMRequest.add_member(:grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientCredentialsGrantType, name: "grantType", traits: {"smithy.api#jsonName" => "grant_type", "smithy.api#required" => {}}))
    CreateOAuth2TokenWithIAMRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resource", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    CreateOAuth2TokenWithIAMRequest.type = Types::CreateOAuth2TokenWithIAMRequest
    CreateOAuth2TokenWithIAMResponse.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthAccessToken, name: "accessToken", traits: {"smithy.api#jsonName" => "access_token", "smithy.api#required" => {}}))
    CreateOAuth2TokenWithIAMResponse.add_member(:token_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BearerTokenType, name: "tokenType", traits: {"smithy.api#jsonName" => "token_type", "smithy.api#required" => {}}))
    CreateOAuth2TokenWithIAMResponse.add_member(:expires_in, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenExpiresIn, name: "expiresIn", traits: {"smithy.api#jsonName" => "expires_in", "smithy.api#required" => {}}))
    CreateOAuth2TokenWithIAMResponse.type = Types::CreateOAuth2TokenWithIAMResponse
    DeleteConsoleAuthorizationConfigurationInput.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "targetId"))
    DeleteConsoleAuthorizationConfigurationInput.type = Types::DeleteConsoleAuthorizationConfigurationInput
    DeleteConsoleAuthorizationConfigurationOutput.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "targetId", traits: {"smithy.api#required" => {}}))
    DeleteConsoleAuthorizationConfigurationOutput.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scope", traits: {"smithy.api#required" => {}}))
    DeleteConsoleAuthorizationConfigurationOutput.add_member(:console_authorization_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "consoleAuthorizationEnabled", traits: {"smithy.api#required" => {}}))
    DeleteConsoleAuthorizationConfigurationOutput.type = Types::DeleteConsoleAuthorizationConfigurationOutput
    DeleteResourcePermissionStatementInput.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementId, name: "statementId", traits: {"smithy.api#required" => {}}))
    DeleteResourcePermissionStatementInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteResourcePermissionStatementInput.type = Types::DeleteResourcePermissionStatementInput
    DeleteResourcePermissionStatementOutput.type = Types::DeleteResourcePermissionStatementOutput
    GetConsoleAuthorizationConfigurationInput.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "targetId"))
    GetConsoleAuthorizationConfigurationInput.type = Types::GetConsoleAuthorizationConfigurationInput
    GetConsoleAuthorizationConfigurationOutput.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "targetId", traits: {"smithy.api#required" => {}}))
    GetConsoleAuthorizationConfigurationOutput.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scope", traits: {"smithy.api#required" => {}}))
    GetConsoleAuthorizationConfigurationOutput.add_member(:console_authorization_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "consoleAuthorizationEnabled", traits: {"smithy.api#required" => {}}))
    GetConsoleAuthorizationConfigurationOutput.type = Types::GetConsoleAuthorizationConfigurationOutput
    GetResourcePolicyInput.type = Types::GetResourcePolicyInput
    GetResourcePolicyOutput.add_member(:signin_resource_based_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SigninResourceBasedPolicy, name: "signinResourceBasedPolicy", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyOutput.type = Types::GetResourcePolicyOutput
    InternalServerException.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2ErrorCode, name: "error", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    IntrospectOAuth2TokenWithIAMRequest.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: IntrospectionToken, name: "token", traits: {"smithy.api#jsonName" => "token", "smithy.api#required" => {}}))
    IntrospectOAuth2TokenWithIAMRequest.add_member(:token_type_hint, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenTypeHint, name: "tokenTypeHint", traits: {"smithy.api#jsonName" => "token_type_hint"}))
    IntrospectOAuth2TokenWithIAMRequest.type = Types::IntrospectOAuth2TokenWithIAMRequest
    IntrospectOAuth2TokenWithIAMResponse.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "active", traits: {"smithy.api#required" => {}}))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientId", traits: {"smithy.api#jsonName" => "client_id"}))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "userId", traits: {"smithy.api#jsonName" => "user_id"}))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:token_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntrospectedTokenType, name: "tokenType", traits: {"smithy.api#jsonName" => "token_type"}))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:exp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "exp", traits: {"smithy.api#jsonName" => "exp"}))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:iat, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "iat", traits: {"smithy.api#jsonName" => "iat"}))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:nbf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "nbf", traits: {"smithy.api#jsonName" => "nbf"}))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:sub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sub", traits: {"smithy.api#jsonName" => "sub"}))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:aud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "aud", traits: {"smithy.api#jsonName" => "aud"}))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:iss, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "iss", traits: {"smithy.api#jsonName" => "iss"}))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:jti, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "jti", traits: {"smithy.api#jsonName" => "jti"}))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#jsonName" => "account_id"}))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:signin_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "signinSession", traits: {"smithy.api#jsonName" => "signin_session"}))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resource", traits: {"smithy.api#jsonName" => "resource"}))
    IntrospectOAuth2TokenWithIAMResponse.type = Types::IntrospectOAuth2TokenWithIAMResponse
    ListResourcePermissionStatementsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsolePermissionMaxResults, name: "maxResults"))
    ListResourcePermissionStatementsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListResourcePermissionStatementsInput.type = Types::ListResourcePermissionStatementsInput
    ListResourcePermissionStatementsOutput.add_member(:permission_statements, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionStatementSummaries, name: "permissionStatements", traits: {"smithy.api#required" => {}}))
    ListResourcePermissionStatementsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListResourcePermissionStatementsOutput.type = Types::ListResourcePermissionStatementsOutput
    OAuth2ErrorCode.add_member(:token_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOKEN_EXPIRED", traits: {"smithy.api#enumValue" => "TOKEN_EXPIRED"}))
    OAuth2ErrorCode.add_member(:user_credentials_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_CREDENTIALS_CHANGED", traits: {"smithy.api#enumValue" => "USER_CREDENTIALS_CHANGED"}))
    OAuth2ErrorCode.add_member(:insufficient_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_PERMISSIONS", traits: {"smithy.api#enumValue" => "INSUFFICIENT_PERMISSIONS"}))
    OAuth2ErrorCode.add_member(:authcode_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHCODE_EXPIRED", traits: {"smithy.api#enumValue" => "AUTHCODE_EXPIRED"}))
    OAuth2ErrorCode.add_member(:server_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER_ERROR", traits: {"smithy.api#enumValue" => "server_error"}))
    OAuth2ErrorCode.add_member(:invalid_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_REQUEST", traits: {"smithy.api#enumValue" => "INVALID_REQUEST"}))
    OAuth2ErrorCode.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    OAuth2ErrorCode.add_member(:conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFLICT", traits: {"smithy.api#enumValue" => "CONFLICT"}))
    OAuth2ErrorCode.add_member(:service_quota_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_QUOTA_EXCEEDED", traits: {"smithy.api#enumValue" => "SERVICE_QUOTA_EXCEEDED"}))
    PermissionStatementSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionStatementSummary, name: "member"))
    PermissionStatementSummary.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementId, name: "sid", traits: {"smithy.api#required" => {}}))
    PermissionStatementSummary.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionBlock, name: "condition"))
    PermissionStatementSummary.type = Types::PermissionStatementSummary
    PolicyActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    PolicyStatement.add_member(:effect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "effect", traits: {"smithy.api#jsonName" => "Effect"}))
    PolicyStatement.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "principal", traits: {"smithy.api#jsonName" => "Principal"}))
    PolicyStatement.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyActions, name: "action", traits: {"smithy.api#jsonName" => "Action"}))
    PolicyStatement.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resource", traits: {"smithy.api#jsonName" => "Resource"}))
    PolicyStatement.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionBlock, name: "condition", traits: {"smithy.api#jsonName" => "Condition"}))
    PolicyStatement.type = Types::PolicyStatement
    PolicyStatements.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatement, name: "member"))
    Principal.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    Principal.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    PutConsoleAuthorizationConfigurationInput.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "targetId"))
    PutConsoleAuthorizationConfigurationInput.type = Types::PutConsoleAuthorizationConfigurationInput
    PutConsoleAuthorizationConfigurationOutput.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "targetId", traits: {"smithy.api#required" => {}}))
    PutConsoleAuthorizationConfigurationOutput.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scope", traits: {"smithy.api#required" => {}}))
    PutConsoleAuthorizationConfigurationOutput.add_member(:console_authorization_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "consoleAuthorizationEnabled", traits: {"smithy.api#required" => {}}))
    PutConsoleAuthorizationConfigurationOutput.type = Types::PutConsoleAuthorizationConfigurationOutput
    PutResourcePermissionStatementInput.add_member(:source_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceVpc, name: "sourceVpc"))
    PutResourcePermissionStatementInput.add_member(:signin_source_vpce, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceVpce, name: "signinSourceVpce"))
    PutResourcePermissionStatementInput.add_member(:console_source_vpce, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceVpce, name: "consoleSourceVpce"))
    PutResourcePermissionStatementInput.add_member(:vpc_source_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSourceIp, name: "vpcSourceIp"))
    PutResourcePermissionStatementInput.add_member(:source_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIp, name: "sourceIp"))
    PutResourcePermissionStatementInput.add_member(:requested_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedRegion, name: "requestedRegion"))
    PutResourcePermissionStatementInput.add_member(:excluded_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedPrincipal, name: "excludedPrincipal"))
    PutResourcePermissionStatementInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    PutResourcePermissionStatementInput.type = Types::PutResourcePermissionStatementInput
    PutResourcePermissionStatementOutput.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementId, name: "statementId", traits: {"smithy.api#required" => {}}))
    PutResourcePermissionStatementOutput.type = Types::PutResourcePermissionStatementOutput
    ResourceNotFoundException.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2ErrorCode, name: "error", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RevokeOAuth2TokenWithIAMRequest.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationToken, name: "token", traits: {"smithy.api#jsonName" => "token", "smithy.api#required" => {}}))
    RevokeOAuth2TokenWithIAMRequest.type = Types::RevokeOAuth2TokenWithIAMRequest
    RevokeOAuth2TokenWithIAMResponse.type = Types::RevokeOAuth2TokenWithIAMResponse
    ServiceQuotaExceededException.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2ErrorCode, name: "error", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SigninResourceBasedPolicy.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "version", traits: {"smithy.api#jsonName" => "Version"}))
    SigninResourceBasedPolicy.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatements, name: "statement", traits: {"smithy.api#jsonName" => "Statement"}))
    SigninResourceBasedPolicy.type = Types::SigninResourceBasedPolicy
    TooManyRequestsError.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2ErrorCode, name: "error", traits: {"smithy.api#required" => {}}))
    TooManyRequestsError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    TooManyRequestsError.type = Types::TooManyRequestsError
    ValidationException.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2ErrorCode, name: "error", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    Signin = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.signin#Signin"
      service.name = "Signin"
      service.version = "2023-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Signin", "arnNamespace" => "signin", "endpointPrefix" => "signin"}, "aws.auth#sigv4" => {"name" => "signin"}, "aws.endpoints#rulesBasedEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {"partitionSpecialCases" => {"aws" => [{"endpoint" => "https://{region}.signin.aws.amazon.com"}], "aws-cn" => [{"endpoint" => "https://{region}.signin.amazonaws.cn"}], "aws-us-gov" => [{"endpoint" => "https://{region}.signin.amazonaws-us-gov.com"}]}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "AWS Sign-In Service", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "IsControlPlane" => {"required" => false, "documentation" => "Indicates if the operation targets the control plane endpoint", "type" => "boolean"}, "IsOAuthEndpoint" => {"required" => false, "documentation" => "Indicates if the operation targets the OAuth token endpoint", "type" => "boolean"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "coalesce", "argv" => [{"ref" => "IsControlPlane"}, false]}, true]}, {"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "coalesce", "argv" => [{"ref" => "IsOAuthEndpoint"}, false]}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-cn"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "us-gov-west-1"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-iso"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-iso-b"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-iso-f"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-iso-e"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-eusc"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}], "results" => [{"conditions" => [], "endpoint" => {"url" => "https://signin.{Region}.api.aws", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "signin", "signingRegion" => "{Region}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://signin.{Region}.api.amazonwebservices.com.cn", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "signin", "signingRegion" => "{Region}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://signin.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "signin", "signingRegion" => "{Region}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS endpoints are not supported for OAuth operations. Disable FIPS or use a non-OAuth operation.", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{Region}.oauth.signin.aws", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "signin", "signingRegion" => "{Region}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{Region}.signin.aws.amazon.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{Region}.signin.amazonaws.cn", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{Region}.signin.amazonaws-us-gov.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{Region}.signin.c2shome.ic.gov", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{Region}.signin.sc2shome.sgov.gov", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{Region}.signin.csphome.hci.ic.gov", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{Region}.signin.csphome.adc-e.uk", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{Region}.signin.amazonaws-eusc.eu", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://signin-fips.amazonaws-us-gov.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{Region}.signin-fips.amazonaws-us-gov.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{Region}.signin.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://signin-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://signin-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://signin.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://signin.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 40, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAgAAACQAAAAEAAAABAAAAAUF9eEbAAAABgX14QQF9eEbAAAAAQAAAB0AAAAHAAAAAgAAACQAAAAIAAAAAwAAAAkAAAAfAAAABAAAABYAAAAKAAAABQAAABMAAAALAAAABwAAABUAAAAMAAAACAX14QcAAAANAAAACgX14QgAAAAOAAAADAX14QkAAAAPAAAADQX14QoAAAAQAAAADgX14QsAAAARAAAADwX14QwAAAASAAAAEAX14Q0F9eEQAAAABgX14QUAAAAUAAAABwAAABUF9eEGAAAAEQX14RgF9eEZAAAABgX14QQAAAAXAAAABwAAABsAAAAYAAAACQX14Q4AAAAZAAAACgX14Q8AAAAaAAAACwX14RYF9eEXAAAACwAAABwF9eEVAAAAEQX14RQF9eEVAAAAAgAAACMAAAAeAAAAAwAAACcAAAAfAAAABAAAACAF9eEbAAAABgX14QQAAAAhAAAABwX14RsAAAAiAAAACQX14Q4F9eEbAAAAAwAAACcAAAAkAAAABAAAACYAAAAlAAAABwX14RIF9eETAAAABgX14QQF9eERAAAABQX14QEAAAAoAAAACAX14QIF9eED"}}
      service.add_operation(:create_o_auth2_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signin#CreateOAuth2Token"
        operation.name = "CreateOAuth2Token"
        operation.input = CreateOAuth2TokenRequest
        operation.output = CreateOAuth2TokenResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsError
        operation.errors << ValidationException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/token"}, "smithy.rules#staticContextParams" => {"IsControlPlane" => {"value" => false}}, "smithy.test#smokeTests" => [{"id" => "TokenOperationSmokeTest", "params" => {"tokenInput" => {"clientId" => "arn:aws:signin:::devtools/same-device", "grantType" => "authorization_code", "code" => "test-code", "redirectUri" => "https://example.com", "codeVerifier" => "test-code-verifier-1234567890abcdefghijklmnop"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {}, "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:create_o_auth2_token_with_iam, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signin#CreateOAuth2TokenWithIAM"
        operation.name = "CreateOAuth2TokenWithIAM"
        operation.input = CreateOAuth2TokenWithIAMRequest
        operation.output = CreateOAuth2TokenWithIAMResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsError
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateOAuth2Token", "documentation" => "Exchange client credentials for an OAuth 2.0 access token scoped to a resource"}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/token?x-amz-client-auth-method=iam"}, "smithy.rules#staticContextParams" => {"IsOAuthEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_console_authorization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signin#DeleteConsoleAuthorizationConfiguration"
        operation.name = "DeleteConsoleAuthorizationConfiguration"
        operation.input = DeleteConsoleAuthorizationConfigurationInput
        operation.output = DeleteConsoleAuthorizationConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsError
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Delete console authorization configuration with automatic scope detection"}, "smithy.api#http" => {"method" => "POST", "uri" => "/delete-console-authorization-configuration"}, "smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"IsControlPlane" => {"value" => true}}}
      end)
      service.add_operation(:delete_resource_permission_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signin#DeleteResourcePermissionStatement"
        operation.name = "DeleteResourcePermissionStatement"
        operation.input = DeleteResourcePermissionStatementInput
        operation.output = DeleteResourcePermissionStatementOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsError
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Remove a permission statement from the account's SignIn resource-based policy"}, "smithy.api#http" => {"method" => "POST", "uri" => "/delete-resource-permission-statement"}, "smithy.rules#staticContextParams" => {"IsControlPlane" => {"value" => true}}}
      end)
      service.add_operation(:get_console_authorization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signin#GetConsoleAuthorizationConfiguration"
        operation.name = "GetConsoleAuthorizationConfiguration"
        operation.input = GetConsoleAuthorizationConfigurationInput
        operation.output = GetConsoleAuthorizationConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsError
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Get console authorization configuration with automatic scope detection"}, "smithy.api#http" => {"method" => "POST", "uri" => "/get-console-authorization-configuration"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"IsControlPlane" => {"value" => true}}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signin#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyInput
        operation.output = GetResourcePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsError
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Retrieve the account's consolidated SignIn resource-based policy"}, "smithy.api#http" => {"method" => "POST", "uri" => "/get-resource-policy"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"IsControlPlane" => {"value" => true}}}
      end)
      service.add_operation(:introspect_o_auth2_token_with_iam, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signin#IntrospectOAuth2TokenWithIAM"
        operation.name = "IntrospectOAuth2TokenWithIAM"
        operation.input = IntrospectOAuth2TokenWithIAMRequest
        operation.output = IntrospectOAuth2TokenWithIAMResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsError
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "IntrospectOAuth2Token", "documentation" => "Inspect the metadata of an AWS Sign-In OAuth 2.0 access_token or refresh_token"}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/introspect?x-amz-client-auth-method=iam"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"IsOAuthEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:list_resource_permission_statements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signin#ListResourcePermissionStatements"
        operation.name = "ListResourcePermissionStatements"
        operation.input = ListResourcePermissionStatementsInput
        operation.output = ListResourcePermissionStatementsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsError
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Retrieve all permission statements in the account's SignIn resource-based policy"}, "smithy.api#http" => {"method" => "POST", "uri" => "/list-resource-permission-statements"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"IsControlPlane" => {"value" => true}}}
        operation[:paginator] = Paginators::ListResourcePermissionStatements.new
      end)
      service.add_operation(:put_console_authorization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signin#PutConsoleAuthorizationConfiguration"
        operation.name = "PutConsoleAuthorizationConfiguration"
        operation.input = PutConsoleAuthorizationConfigurationInput
        operation.output = PutConsoleAuthorizationConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsError
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Enable console authorization configuration with automatic scope detection"}, "smithy.api#http" => {"method" => "POST", "uri" => "/put-console-authorization-configuration"}, "smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"IsControlPlane" => {"value" => true}}}
      end)
      service.add_operation(:put_resource_permission_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signin#PutResourcePermissionStatement"
        operation.name = "PutResourcePermissionStatement"
        operation.input = PutResourcePermissionStatementInput
        operation.output = PutResourcePermissionStatementOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestsError
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Create a permission statement in the account's SignIn resource-based policy"}, "smithy.api#http" => {"method" => "POST", "uri" => "/put-resource-permission-statement"}, "smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"IsControlPlane" => {"value" => true}}}
      end)
      service.add_operation(:revoke_o_auth2_token_with_iam, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signin#RevokeOAuth2TokenWithIAM"
        operation.name = "RevokeOAuth2TokenWithIAM"
        operation.input = RevokeOAuth2TokenWithIAMRequest
        operation.output = RevokeOAuth2TokenWithIAMResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsError
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "RevokeOAuth2Token", "documentation" => "Revoke an AWS Sign-In OAuth 2.0 refresh_token and its associated token chain"}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/revoke?x-amz-client-auth-method=iam"}, "smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"IsOAuthEndpoint" => {"value" => true}}}
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
