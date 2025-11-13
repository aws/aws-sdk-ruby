# frozen_string_literal: true

# This is generated code!

module Aws::Signin
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    AccessToken = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#AccessToken", name: "AccessToken", traits: {"smithy.api#sensitive" => {}})
    AuthorizationCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#AuthorizationCode", name: "AuthorizationCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#ClientId", name: "ClientId", traits: {"smithy.api#pattern" => "^aws:signin:::cli/(same-device|cross-device|in-band|out-of-band)$"})
    CodeVerifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#CodeVerifier", name: "CodeVerifier", traits: {"smithy.api#length" => {"min" => 43, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9\\-._~]+$"})
    CreateOAuth2TokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#CreateOAuth2TokenRequest", name: "CreateOAuth2TokenRequest")
    CreateOAuth2TokenRequestBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#CreateOAuth2TokenRequestBody", name: "CreateOAuth2TokenRequestBody")
    CreateOAuth2TokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#CreateOAuth2TokenResponse", name: "CreateOAuth2TokenResponse")
    CreateOAuth2TokenResponseBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#CreateOAuth2TokenResponseBody", name: "CreateOAuth2TokenResponseBody")
    ExpiresIn = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.signin#ExpiresIn", name: "ExpiresIn", traits: {"smithy.api#range" => {"min" => 1, "max" => 900}})
    GrantType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#GrantType", name: "GrantType", traits: {"smithy.api#pattern" => "^(authorization_code|refresh_token)$"})
    IdToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#IdToken", name: "IdToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    OAuth2ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.signin#OAuth2ErrorCode", name: "OAuth2ErrorCode")
    RedirectUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#RedirectUri", name: "RedirectUri", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    RefreshToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#RefreshToken", name: "RefreshToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    TokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signin#TokenType", name: "TokenType", traits: {"smithy.api#pattern" => "^aws_sigv4$"})
    TooManyRequestsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#TooManyRequestsError", name: "TooManyRequestsError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signin#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuth2ErrorCode, location_name: "error", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessToken.add_member(:access_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "accessKeyId", traits: {"smithy.api#jsonName" => "accessKeyId", "smithy.api#required" => {}}))
    AccessToken.add_member(:secret_access_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "secretAccessKey", traits: {"smithy.api#jsonName" => "secretAccessKey", "smithy.api#required" => {}}))
    AccessToken.add_member(:session_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "sessionToken", traits: {"smithy.api#jsonName" => "sessionToken", "smithy.api#required" => {}}))
    AccessToken.type = Types::AccessToken
    CreateOAuth2TokenRequest.add_member(:token_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOAuth2TokenRequestBody, location_name: "tokenInput", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateOAuth2TokenRequest[:http_payload] = :token_input
    CreateOAuth2TokenRequest[:http_payload_member] = CreateOAuth2TokenRequest.member(:token_input)
    CreateOAuth2TokenRequest.type = Types::CreateOAuth2TokenRequest
    CreateOAuth2TokenRequestBody.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: "clientId", traits: {"smithy.api#jsonName" => "clientId", "smithy.api#required" => {}}))
    CreateOAuth2TokenRequestBody.add_member(:grant_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantType, location_name: "grantType", traits: {"smithy.api#jsonName" => "grantType", "smithy.api#required" => {}}))
    CreateOAuth2TokenRequestBody.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationCode, location_name: "code"))
    CreateOAuth2TokenRequestBody.add_member(:redirect_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectUri, location_name: "redirectUri", traits: {"smithy.api#jsonName" => "redirectUri"}))
    CreateOAuth2TokenRequestBody.add_member(:code_verifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeVerifier, location_name: "codeVerifier", traits: {"smithy.api#jsonName" => "codeVerifier"}))
    CreateOAuth2TokenRequestBody.add_member(:refresh_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshToken, location_name: "refreshToken", traits: {"smithy.api#jsonName" => "refreshToken"}))
    CreateOAuth2TokenRequestBody.type = Types::CreateOAuth2TokenRequestBody
    CreateOAuth2TokenResponse.add_member(:token_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOAuth2TokenResponseBody, location_name: "tokenOutput", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateOAuth2TokenResponse[:http_payload] = :token_output
    CreateOAuth2TokenResponse[:http_payload_member] = CreateOAuth2TokenResponse.member(:token_output)
    CreateOAuth2TokenResponse.type = Types::CreateOAuth2TokenResponse
    CreateOAuth2TokenResponseBody.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken", traits: {"smithy.api#jsonName" => "accessToken", "smithy.api#required" => {}}))
    CreateOAuth2TokenResponseBody.add_member(:token_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenType, location_name: "tokenType", traits: {"smithy.api#jsonName" => "tokenType", "smithy.api#required" => {}}))
    CreateOAuth2TokenResponseBody.add_member(:expires_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiresIn, location_name: "expiresIn", traits: {"smithy.api#jsonName" => "expiresIn", "smithy.api#required" => {}}))
    CreateOAuth2TokenResponseBody.add_member(:refresh_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshToken, location_name: "refreshToken", traits: {"smithy.api#jsonName" => "refreshToken", "smithy.api#required" => {}}))
    CreateOAuth2TokenResponseBody.add_member(:id_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdToken, location_name: "idToken", traits: {"smithy.api#jsonName" => "idToken"}))
    CreateOAuth2TokenResponseBody.type = Types::CreateOAuth2TokenResponseBody
    InternalServerException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuth2ErrorCode, location_name: "error", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    OAuth2ErrorCode.add_member(:token_expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TOKEN_EXPIRED", traits: {"smithy.api#enumValue" => "TOKEN_EXPIRED"}))
    OAuth2ErrorCode.add_member(:user_credentials_changed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USER_CREDENTIALS_CHANGED", traits: {"smithy.api#enumValue" => "USER_CREDENTIALS_CHANGED"}))
    OAuth2ErrorCode.add_member(:insufficient_permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSUFFICIENT_PERMISSIONS", traits: {"smithy.api#enumValue" => "INSUFFICIENT_PERMISSIONS"}))
    OAuth2ErrorCode.add_member(:authcode_expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTHCODE_EXPIRED", traits: {"smithy.api#enumValue" => "AUTHCODE_EXPIRED"}))
    OAuth2ErrorCode.add_member(:server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER_ERROR", traits: {"smithy.api#enumValue" => "server_error"}))
    OAuth2ErrorCode.add_member(:invalid_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_REQUEST", traits: {"smithy.api#enumValue" => "INVALID_REQUEST"}))
    TooManyRequestsError.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuth2ErrorCode, location_name: "error", traits: {"smithy.api#required" => {}}))
    TooManyRequestsError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    TooManyRequestsError.type = Types::TooManyRequestsError
    ValidationException.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuth2ErrorCode, location_name: "error", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    Signin = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.signin#Signin"
      service.name = "Signin"
      service.version = "2023-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Signin", "arnNamespace" => "signin", "endpointPrefix" => "signin"}, "aws.auth#sigv4" => {"name" => "signin"}, "aws.endpoints#standardRegionalEndpoints" => {"partitionSpecialCases" => {"aws" => [{"endpoint" => "https://{region}.signin.aws.amazon.com"}], "aws-cn" => [{"endpoint" => "https://{region}.signin.amazonaws.cn"}], "aws-us-gov" => [{"endpoint" => "https://{region}.signin.amazonaws-us-gov.com"}]}}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "AWS Sign-In Data Plane"}
      service.add_operation(:create_o_auth2_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signin#CreateOAuth2Token"
        operation.name = "CreateOAuth2Token"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOAuth2TokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOAuth2TokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/token"}, "smithy.test#smokeTests" => [{"id" => "TokenOperationSmokeTest", "params" => {"tokenInput" => {"clientId" => "aws:signin:::cli/same-device", "grantType" => "authorization_code", "code" => "test-code", "redirectUri" => "https://example.com", "codeVerifier" => "test-code-verifier-1234567890abcdefghijklmnop"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {}, "expect" => {"failure" => {}}}]}
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
