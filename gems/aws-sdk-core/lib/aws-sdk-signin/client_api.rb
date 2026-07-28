# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Signin
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessToken = Shapes::StructureShape.new(name: 'AccessToken')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AuthorizationCode = Shapes::StringShape.new(name: 'AuthorizationCode')
    BearerTokenType = Shapes::StringShape.new(name: 'BearerTokenType')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientCredentialsGrantType = Shapes::StringShape.new(name: 'ClientCredentialsGrantType')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CodeVerifier = Shapes::StringShape.new(name: 'CodeVerifier')
    Condition = Shapes::MapShape.new(name: 'Condition')
    ConditionBlock = Shapes::MapShape.new(name: 'ConditionBlock')
    ConditionType = Shapes::StringShape.new(name: 'ConditionType')
    ConditionValues = Shapes::ListShape.new(name: 'ConditionValues')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConsolePermissionMaxResults = Shapes::IntegerShape.new(name: 'ConsolePermissionMaxResults')
    CreateOAuth2TokenRequest = Shapes::StructureShape.new(name: 'CreateOAuth2TokenRequest')
    CreateOAuth2TokenRequestBody = Shapes::StructureShape.new(name: 'CreateOAuth2TokenRequestBody')
    CreateOAuth2TokenResponse = Shapes::StructureShape.new(name: 'CreateOAuth2TokenResponse')
    CreateOAuth2TokenResponseBody = Shapes::StructureShape.new(name: 'CreateOAuth2TokenResponseBody')
    CreateOAuth2TokenWithIAMRequest = Shapes::StructureShape.new(name: 'CreateOAuth2TokenWithIAMRequest')
    CreateOAuth2TokenWithIAMRequestResourceString = Shapes::StringShape.new(name: 'CreateOAuth2TokenWithIAMRequestResourceString')
    CreateOAuth2TokenWithIAMResponse = Shapes::StructureShape.new(name: 'CreateOAuth2TokenWithIAMResponse')
    DeleteConsoleAuthorizationConfigurationInput = Shapes::StructureShape.new(name: 'DeleteConsoleAuthorizationConfigurationInput')
    DeleteConsoleAuthorizationConfigurationOutput = Shapes::StructureShape.new(name: 'DeleteConsoleAuthorizationConfigurationOutput')
    DeleteResourcePermissionStatementInput = Shapes::StructureShape.new(name: 'DeleteResourcePermissionStatementInput')
    DeleteResourcePermissionStatementOutput = Shapes::StructureShape.new(name: 'DeleteResourcePermissionStatementOutput')
    ExcludedPrincipal = Shapes::StringShape.new(name: 'ExcludedPrincipal')
    ExpiresIn = Shapes::IntegerShape.new(name: 'ExpiresIn')
    GetConsoleAuthorizationConfigurationInput = Shapes::StructureShape.new(name: 'GetConsoleAuthorizationConfigurationInput')
    GetConsoleAuthorizationConfigurationOutput = Shapes::StructureShape.new(name: 'GetConsoleAuthorizationConfigurationOutput')
    GetResourcePolicyInput = Shapes::StructureShape.new(name: 'GetResourcePolicyInput')
    GetResourcePolicyOutput = Shapes::StructureShape.new(name: 'GetResourcePolicyOutput')
    GrantType = Shapes::StringShape.new(name: 'GrantType')
    IdToken = Shapes::StringShape.new(name: 'IdToken')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IntrospectOAuth2TokenWithIAMRequest = Shapes::StructureShape.new(name: 'IntrospectOAuth2TokenWithIAMRequest')
    IntrospectOAuth2TokenWithIAMResponse = Shapes::StructureShape.new(name: 'IntrospectOAuth2TokenWithIAMResponse')
    IntrospectedTokenType = Shapes::StringShape.new(name: 'IntrospectedTokenType')
    IntrospectionToken = Shapes::StringShape.new(name: 'IntrospectionToken')
    ListResourcePermissionStatementsInput = Shapes::StructureShape.new(name: 'ListResourcePermissionStatementsInput')
    ListResourcePermissionStatementsOutput = Shapes::StructureShape.new(name: 'ListResourcePermissionStatementsOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OAuth2ErrorCode = Shapes::StringShape.new(name: 'OAuth2ErrorCode')
    OAuthAccessToken = Shapes::StringShape.new(name: 'OAuthAccessToken')
    PermissionStatementSummaries = Shapes::ListShape.new(name: 'PermissionStatementSummaries')
    PermissionStatementSummary = Shapes::StructureShape.new(name: 'PermissionStatementSummary')
    PolicyActions = Shapes::ListShape.new(name: 'PolicyActions')
    PolicyStatement = Shapes::StructureShape.new(name: 'PolicyStatement')
    PolicyStatements = Shapes::ListShape.new(name: 'PolicyStatements')
    Principal = Shapes::MapShape.new(name: 'Principal')
    PutConsoleAuthorizationConfigurationInput = Shapes::StructureShape.new(name: 'PutConsoleAuthorizationConfigurationInput')
    PutConsoleAuthorizationConfigurationOutput = Shapes::StructureShape.new(name: 'PutConsoleAuthorizationConfigurationOutput')
    PutResourcePermissionStatementInput = Shapes::StructureShape.new(name: 'PutResourcePermissionStatementInput')
    PutResourcePermissionStatementOutput = Shapes::StructureShape.new(name: 'PutResourcePermissionStatementOutput')
    RedirectUri = Shapes::StringShape.new(name: 'RedirectUri')
    RefreshToken = Shapes::StringShape.new(name: 'RefreshToken')
    RequestedRegion = Shapes::StringShape.new(name: 'RequestedRegion')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RevocationToken = Shapes::StringShape.new(name: 'RevocationToken')
    RevokeOAuth2TokenWithIAMRequest = Shapes::StructureShape.new(name: 'RevokeOAuth2TokenWithIAMRequest')
    RevokeOAuth2TokenWithIAMResponse = Shapes::StructureShape.new(name: 'RevokeOAuth2TokenWithIAMResponse')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SigninResourceBasedPolicy = Shapes::StructureShape.new(name: 'SigninResourceBasedPolicy')
    SourceIp = Shapes::StringShape.new(name: 'SourceIp')
    SourceVpc = Shapes::StringShape.new(name: 'SourceVpc')
    SourceVpce = Shapes::StringShape.new(name: 'SourceVpce')
    StatementId = Shapes::StringShape.new(name: 'StatementId')
    String = Shapes::StringShape.new(name: 'String')
    TargetId = Shapes::StringShape.new(name: 'TargetId')
    TokenExpiresIn = Shapes::IntegerShape.new(name: 'TokenExpiresIn')
    TokenType = Shapes::StringShape.new(name: 'TokenType')
    TokenTypeHint = Shapes::StringShape.new(name: 'TokenTypeHint')
    TooManyRequestsError = Shapes::StructureShape.new(name: 'TooManyRequestsError')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VpcSourceIp = Shapes::StringShape.new(name: 'VpcSourceIp')

    AccessDeniedException.add_member(:error, Shapes::ShapeRef.new(shape: OAuth2ErrorCode, required: true, location_name: "error"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessToken.add_member(:access_key_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "accessKeyId"))
    AccessToken.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "secretAccessKey"))
    AccessToken.add_member(:session_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sessionToken"))
    AccessToken.struct_class = Types::AccessToken

    Condition.key = Shapes::ShapeRef.new(shape: String)
    Condition.value = Shapes::ShapeRef.new(shape: ConditionValues)

    ConditionBlock.key = Shapes::ShapeRef.new(shape: ConditionType)
    ConditionBlock.value = Shapes::ShapeRef.new(shape: Condition)

    ConditionValues.member = Shapes::ShapeRef.new(shape: String)

    ConflictException.add_member(:error, Shapes::ShapeRef.new(shape: OAuth2ErrorCode, required: true, location_name: "error"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateOAuth2TokenRequest.add_member(:token_input, Shapes::ShapeRef.new(shape: CreateOAuth2TokenRequestBody, required: true, location_name: "tokenInput"))
    CreateOAuth2TokenRequest.struct_class = Types::CreateOAuth2TokenRequest
    CreateOAuth2TokenRequest[:payload] = :token_input
    CreateOAuth2TokenRequest[:payload_member] = CreateOAuth2TokenRequest.member(:token_input)

    CreateOAuth2TokenRequestBody.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "clientId"))
    CreateOAuth2TokenRequestBody.add_member(:grant_type, Shapes::ShapeRef.new(shape: GrantType, required: true, location_name: "grantType"))
    CreateOAuth2TokenRequestBody.add_member(:code, Shapes::ShapeRef.new(shape: AuthorizationCode, location_name: "code"))
    CreateOAuth2TokenRequestBody.add_member(:redirect_uri, Shapes::ShapeRef.new(shape: RedirectUri, location_name: "redirectUri"))
    CreateOAuth2TokenRequestBody.add_member(:code_verifier, Shapes::ShapeRef.new(shape: CodeVerifier, location_name: "codeVerifier"))
    CreateOAuth2TokenRequestBody.add_member(:refresh_token, Shapes::ShapeRef.new(shape: RefreshToken, location_name: "refreshToken"))
    CreateOAuth2TokenRequestBody.struct_class = Types::CreateOAuth2TokenRequestBody

    CreateOAuth2TokenResponse.add_member(:token_output, Shapes::ShapeRef.new(shape: CreateOAuth2TokenResponseBody, required: true, location_name: "tokenOutput"))
    CreateOAuth2TokenResponse.struct_class = Types::CreateOAuth2TokenResponse
    CreateOAuth2TokenResponse[:payload] = :token_output
    CreateOAuth2TokenResponse[:payload_member] = CreateOAuth2TokenResponse.member(:token_output)

    CreateOAuth2TokenResponseBody.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, required: true, location_name: "accessToken"))
    CreateOAuth2TokenResponseBody.add_member(:token_type, Shapes::ShapeRef.new(shape: TokenType, required: true, location_name: "tokenType"))
    CreateOAuth2TokenResponseBody.add_member(:expires_in, Shapes::ShapeRef.new(shape: ExpiresIn, required: true, location_name: "expiresIn"))
    CreateOAuth2TokenResponseBody.add_member(:refresh_token, Shapes::ShapeRef.new(shape: RefreshToken, required: true, location_name: "refreshToken"))
    CreateOAuth2TokenResponseBody.add_member(:id_token, Shapes::ShapeRef.new(shape: IdToken, location_name: "idToken"))
    CreateOAuth2TokenResponseBody.struct_class = Types::CreateOAuth2TokenResponseBody

    CreateOAuth2TokenWithIAMRequest.add_member(:grant_type, Shapes::ShapeRef.new(shape: ClientCredentialsGrantType, required: true, location_name: "grant_type"))
    CreateOAuth2TokenWithIAMRequest.add_member(:resource, Shapes::ShapeRef.new(shape: CreateOAuth2TokenWithIAMRequestResourceString, required: true, location_name: "resource"))
    CreateOAuth2TokenWithIAMRequest.struct_class = Types::CreateOAuth2TokenWithIAMRequest

    CreateOAuth2TokenWithIAMResponse.add_member(:access_token, Shapes::ShapeRef.new(shape: OAuthAccessToken, required: true, location_name: "access_token"))
    CreateOAuth2TokenWithIAMResponse.add_member(:token_type, Shapes::ShapeRef.new(shape: BearerTokenType, required: true, location_name: "token_type"))
    CreateOAuth2TokenWithIAMResponse.add_member(:expires_in, Shapes::ShapeRef.new(shape: TokenExpiresIn, required: true, location_name: "expires_in"))
    CreateOAuth2TokenWithIAMResponse.struct_class = Types::CreateOAuth2TokenWithIAMResponse

    DeleteConsoleAuthorizationConfigurationInput.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "targetId"))
    DeleteConsoleAuthorizationConfigurationInput.struct_class = Types::DeleteConsoleAuthorizationConfigurationInput

    DeleteConsoleAuthorizationConfigurationOutput.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "targetId"))
    DeleteConsoleAuthorizationConfigurationOutput.add_member(:scope, Shapes::ShapeRef.new(shape: String, required: true, location_name: "scope"))
    DeleteConsoleAuthorizationConfigurationOutput.add_member(:console_authorization_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "consoleAuthorizationEnabled"))
    DeleteConsoleAuthorizationConfigurationOutput.struct_class = Types::DeleteConsoleAuthorizationConfigurationOutput

    DeleteResourcePermissionStatementInput.add_member(:statement_id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "statementId"))
    DeleteResourcePermissionStatementInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteResourcePermissionStatementInput.struct_class = Types::DeleteResourcePermissionStatementInput

    DeleteResourcePermissionStatementOutput.struct_class = Types::DeleteResourcePermissionStatementOutput

    GetConsoleAuthorizationConfigurationInput.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "targetId"))
    GetConsoleAuthorizationConfigurationInput.struct_class = Types::GetConsoleAuthorizationConfigurationInput

    GetConsoleAuthorizationConfigurationOutput.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "targetId"))
    GetConsoleAuthorizationConfigurationOutput.add_member(:scope, Shapes::ShapeRef.new(shape: String, required: true, location_name: "scope"))
    GetConsoleAuthorizationConfigurationOutput.add_member(:console_authorization_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "consoleAuthorizationEnabled"))
    GetConsoleAuthorizationConfigurationOutput.struct_class = Types::GetConsoleAuthorizationConfigurationOutput

    GetResourcePolicyInput.struct_class = Types::GetResourcePolicyInput

    GetResourcePolicyOutput.add_member(:signin_resource_based_policy, Shapes::ShapeRef.new(shape: SigninResourceBasedPolicy, required: true, location_name: "signinResourceBasedPolicy"))
    GetResourcePolicyOutput.struct_class = Types::GetResourcePolicyOutput

    InternalServerException.add_member(:error, Shapes::ShapeRef.new(shape: OAuth2ErrorCode, required: true, location_name: "error"))
    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    IntrospectOAuth2TokenWithIAMRequest.add_member(:token, Shapes::ShapeRef.new(shape: IntrospectionToken, required: true, location_name: "token"))
    IntrospectOAuth2TokenWithIAMRequest.add_member(:token_type_hint, Shapes::ShapeRef.new(shape: TokenTypeHint, location_name: "token_type_hint"))
    IntrospectOAuth2TokenWithIAMRequest.struct_class = Types::IntrospectOAuth2TokenWithIAMRequest

    IntrospectOAuth2TokenWithIAMResponse.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "active"))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:client_id, Shapes::ShapeRef.new(shape: String, location_name: "client_id"))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: String, location_name: "user_id"))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:token_type, Shapes::ShapeRef.new(shape: IntrospectedTokenType, location_name: "token_type"))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:exp, Shapes::ShapeRef.new(shape: Long, location_name: "exp"))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:iat, Shapes::ShapeRef.new(shape: Long, location_name: "iat"))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:nbf, Shapes::ShapeRef.new(shape: Long, location_name: "nbf"))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:sub, Shapes::ShapeRef.new(shape: String, location_name: "sub"))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:aud, Shapes::ShapeRef.new(shape: String, location_name: "aud"))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:iss, Shapes::ShapeRef.new(shape: String, location_name: "iss"))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:jti, Shapes::ShapeRef.new(shape: String, location_name: "jti"))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "account_id"))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:signin_session, Shapes::ShapeRef.new(shape: String, location_name: "signin_session"))
    IntrospectOAuth2TokenWithIAMResponse.add_member(:resource, Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    IntrospectOAuth2TokenWithIAMResponse.struct_class = Types::IntrospectOAuth2TokenWithIAMResponse

    ListResourcePermissionStatementsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ConsolePermissionMaxResults, location_name: "maxResults"))
    ListResourcePermissionStatementsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListResourcePermissionStatementsInput.struct_class = Types::ListResourcePermissionStatementsInput

    ListResourcePermissionStatementsOutput.add_member(:permission_statements, Shapes::ShapeRef.new(shape: PermissionStatementSummaries, required: true, location_name: "permissionStatements"))
    ListResourcePermissionStatementsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListResourcePermissionStatementsOutput.struct_class = Types::ListResourcePermissionStatementsOutput

    PermissionStatementSummaries.member = Shapes::ShapeRef.new(shape: PermissionStatementSummary)

    PermissionStatementSummary.add_member(:sid, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "sid"))
    PermissionStatementSummary.add_member(:condition, Shapes::ShapeRef.new(shape: ConditionBlock, location_name: "condition"))
    PermissionStatementSummary.struct_class = Types::PermissionStatementSummary

    PolicyActions.member = Shapes::ShapeRef.new(shape: String)

    PolicyStatement.add_member(:effect, Shapes::ShapeRef.new(shape: String, location_name: "Effect"))
    PolicyStatement.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, location_name: "Principal"))
    PolicyStatement.add_member(:action, Shapes::ShapeRef.new(shape: PolicyActions, location_name: "Action"))
    PolicyStatement.add_member(:resource, Shapes::ShapeRef.new(shape: String, location_name: "Resource"))
    PolicyStatement.add_member(:condition, Shapes::ShapeRef.new(shape: ConditionBlock, location_name: "Condition"))
    PolicyStatement.struct_class = Types::PolicyStatement

    PolicyStatements.member = Shapes::ShapeRef.new(shape: PolicyStatement)

    Principal.key = Shapes::ShapeRef.new(shape: String)
    Principal.value = Shapes::ShapeRef.new(shape: String)

    PutConsoleAuthorizationConfigurationInput.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "targetId"))
    PutConsoleAuthorizationConfigurationInput.struct_class = Types::PutConsoleAuthorizationConfigurationInput

    PutConsoleAuthorizationConfigurationOutput.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "targetId"))
    PutConsoleAuthorizationConfigurationOutput.add_member(:scope, Shapes::ShapeRef.new(shape: String, required: true, location_name: "scope"))
    PutConsoleAuthorizationConfigurationOutput.add_member(:console_authorization_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "consoleAuthorizationEnabled"))
    PutConsoleAuthorizationConfigurationOutput.struct_class = Types::PutConsoleAuthorizationConfigurationOutput

    PutResourcePermissionStatementInput.add_member(:source_vpc, Shapes::ShapeRef.new(shape: SourceVpc, location_name: "sourceVpc"))
    PutResourcePermissionStatementInput.add_member(:signin_source_vpce, Shapes::ShapeRef.new(shape: SourceVpce, location_name: "signinSourceVpce"))
    PutResourcePermissionStatementInput.add_member(:console_source_vpce, Shapes::ShapeRef.new(shape: SourceVpce, location_name: "consoleSourceVpce"))
    PutResourcePermissionStatementInput.add_member(:vpc_source_ip, Shapes::ShapeRef.new(shape: VpcSourceIp, location_name: "vpcSourceIp"))
    PutResourcePermissionStatementInput.add_member(:source_ip, Shapes::ShapeRef.new(shape: SourceIp, location_name: "sourceIp"))
    PutResourcePermissionStatementInput.add_member(:requested_region, Shapes::ShapeRef.new(shape: RequestedRegion, location_name: "requestedRegion"))
    PutResourcePermissionStatementInput.add_member(:excluded_principal, Shapes::ShapeRef.new(shape: ExcludedPrincipal, location_name: "excludedPrincipal"))
    PutResourcePermissionStatementInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    PutResourcePermissionStatementInput.struct_class = Types::PutResourcePermissionStatementInput

    PutResourcePermissionStatementOutput.add_member(:statement_id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "statementId"))
    PutResourcePermissionStatementOutput.struct_class = Types::PutResourcePermissionStatementOutput

    ResourceNotFoundException.add_member(:error, Shapes::ShapeRef.new(shape: OAuth2ErrorCode, required: true, location_name: "error"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RevokeOAuth2TokenWithIAMRequest.add_member(:token, Shapes::ShapeRef.new(shape: RevocationToken, required: true, location_name: "token"))
    RevokeOAuth2TokenWithIAMRequest.struct_class = Types::RevokeOAuth2TokenWithIAMRequest

    RevokeOAuth2TokenWithIAMResponse.struct_class = Types::RevokeOAuth2TokenWithIAMResponse

    ServiceQuotaExceededException.add_member(:error, Shapes::ShapeRef.new(shape: OAuth2ErrorCode, required: true, location_name: "error"))
    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SigninResourceBasedPolicy.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    SigninResourceBasedPolicy.add_member(:statement, Shapes::ShapeRef.new(shape: PolicyStatements, location_name: "Statement"))
    SigninResourceBasedPolicy.struct_class = Types::SigninResourceBasedPolicy

    TooManyRequestsError.add_member(:error, Shapes::ShapeRef.new(shape: OAuth2ErrorCode, required: true, location_name: "error"))
    TooManyRequestsError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    TooManyRequestsError.struct_class = Types::TooManyRequestsError

    ValidationException.add_member(:error, Shapes::ShapeRef.new(shape: OAuth2ErrorCode, required: true, location_name: "error"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-01-01"

      api.metadata = {
        "apiVersion" => "2023-01-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "signin",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Sign-In Service",
        "serviceId" => "Signin",
        "signatureVersion" => "v4",
        "signingName" => "signin",
        "uid" => "signin-2023-01-01",
      }

      api.add_operation(:create_o_auth_2_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOAuth2Token"
        o.http_method = "POST"
        o.http_request_uri = "/v1/token"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: CreateOAuth2TokenRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOAuth2TokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_o_auth_2_token_with_iam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOAuth2TokenWithIAM"
        o.http_method = "POST"
        o.http_request_uri = "/v1/token?x-amz-client-auth-method=iam"
        o.input = Shapes::ShapeRef.new(shape: CreateOAuth2TokenWithIAMRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOAuth2TokenWithIAMResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_console_authorization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConsoleAuthorizationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/delete-console-authorization-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteConsoleAuthorizationConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteConsoleAuthorizationConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_resource_permission_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePermissionStatement"
        o.http_method = "POST"
        o.http_request_uri = "/delete-resource-permission-statement"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePermissionStatementInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePermissionStatementOutput)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_console_authorization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConsoleAuthorizationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/get-console-authorization-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetConsoleAuthorizationConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: GetConsoleAuthorizationConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/get-resource-policy"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:introspect_o_auth_2_token_with_iam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "IntrospectOAuth2TokenWithIAM"
        o.http_method = "POST"
        o.http_request_uri = "/v1/introspect?x-amz-client-auth-method=iam"
        o.input = Shapes::ShapeRef.new(shape: IntrospectOAuth2TokenWithIAMRequest)
        o.output = Shapes::ShapeRef.new(shape: IntrospectOAuth2TokenWithIAMResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_resource_permission_statements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourcePermissionStatements"
        o.http_method = "POST"
        o.http_request_uri = "/list-resource-permission-statements"
        o.input = Shapes::ShapeRef.new(shape: ListResourcePermissionStatementsInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourcePermissionStatementsOutput)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_console_authorization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConsoleAuthorizationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/put-console-authorization-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutConsoleAuthorizationConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: PutConsoleAuthorizationConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsError)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_resource_permission_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePermissionStatement"
        o.http_method = "POST"
        o.http_request_uri = "/put-resource-permission-statement"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePermissionStatementInput)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePermissionStatementOutput)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsError)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:revoke_o_auth_2_token_with_iam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeOAuth2TokenWithIAM"
        o.http_method = "POST"
        o.http_request_uri = "/v1/revoke?x-amz-client-auth-method=iam"
        o.input = Shapes::ShapeRef.new(shape: RevokeOAuth2TokenWithIAMRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokeOAuth2TokenWithIAMResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
