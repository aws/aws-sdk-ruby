# frozen_string_literal: true

# This is generated code!

module Aws::SSO
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessKeyType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sso#AccessKeyType', name: 'AccessKeyType')
    AccessTokenType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sso#AccessTokenType', name: 'AccessTokenType', traits: {"smithy.api#sensitive" => {}})
    AccountIdType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sso#AccountIdType', name: 'AccountIdType')
    AccountInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sso#AccountInfo', name: 'AccountInfo')
    AccountListType = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sso#AccountListType', name: 'AccountListType')
    AccountNameType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sso#AccountNameType', name: 'AccountNameType')
    EmailAddressType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sso#EmailAddressType', name: 'EmailAddressType', traits: {"smithy.api#length" => {"min" => 1, "max" => 254}})
    ErrorDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sso#ErrorDescription', name: 'ErrorDescription')
    ExpirationTimestampType = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sso#ExpirationTimestampType', name: 'ExpirationTimestampType', traits: {"smithy.api#default" => 0})
    GetRoleCredentialsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sso#GetRoleCredentialsRequest', name: 'GetRoleCredentialsRequest')
    GetRoleCredentialsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sso#GetRoleCredentialsResponse', name: 'GetRoleCredentialsResponse')
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sso#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListAccountRolesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sso#ListAccountRolesRequest', name: 'ListAccountRolesRequest')
    ListAccountRolesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sso#ListAccountRolesResponse', name: 'ListAccountRolesResponse')
    ListAccountsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sso#ListAccountsRequest', name: 'ListAccountsRequest')
    ListAccountsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sso#ListAccountsResponse', name: 'ListAccountsResponse')
    LogoutRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sso#LogoutRequest', name: 'LogoutRequest')
    MaxResultType = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sso#MaxResultType', name: 'MaxResultType', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextTokenType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sso#NextTokenType', name: 'NextTokenType')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sso#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleCredentials = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sso#RoleCredentials', name: 'RoleCredentials')
    RoleInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sso#RoleInfo', name: 'RoleInfo')
    RoleListType = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sso#RoleListType', name: 'RoleListType')
    RoleNameType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sso#RoleNameType', name: 'RoleNameType')
    SecretAccessKeyType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sso#SecretAccessKeyType', name: 'SecretAccessKeyType', traits: {"smithy.api#sensitive" => {}})
    SessionTokenType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sso#SessionTokenType', name: 'SessionTokenType', traits: {"smithy.api#sensitive" => {}})
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sso#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sso#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})

    AccountInfo.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdType, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The identifier of the AWS account that is assigned to the user.</p>"}))
    AccountInfo.add_member(:account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNameType, location_name: 'accountName', traits: {"smithy.api#documentation" => "<p>The display name of the AWS account that is assigned to the user.</p>"}))
    AccountInfo.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressType, location_name: 'emailAddress', traits: {"smithy.api#documentation" => "<p>The email address of the AWS account that is assigned to the user.</p>"}))
    AccountInfo.type = Types::AccountInfo
    AccountListType.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountInfo)
    GetRoleCredentialsRequest.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleNameType, location_name: 'roleName', traits: {"smithy.api#documentation" => "<p>The friendly name of the role that is assigned to the user.</p>", "smithy.api#httpQuery" => "role_name", "smithy.api#required" => {}}))
    GetRoleCredentialsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdType, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The identifier for the AWS account that is assigned to the user.</p>", "smithy.api#httpQuery" => "account_id", "smithy.api#required" => {}}))
    GetRoleCredentialsRequest.add_member(:access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenType, location_name: 'accessToken', traits: {"smithy.api#documentation" => "<p>The token issued by the <code>CreateToken</code> API call. For more information, see\n        <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html\">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>", "smithy.api#httpHeader" => "x-amz-sso_bearer_token", "smithy.api#required" => {}}))
    GetRoleCredentialsRequest.type = Types::GetRoleCredentialsRequest
    GetRoleCredentialsResponse.add_member(:role_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleCredentials, location_name: 'roleCredentials', traits: {"smithy.api#documentation" => "<p>The credentials for the role that is assigned to the user.</p>"}))
    GetRoleCredentialsResponse.type = Types::GetRoleCredentialsResponse
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'message'))
    InvalidRequestException.type = Types::InvalidRequestException
    ListAccountRolesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenType, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The page token from the previous response output when you request subsequent pages.</p>", "smithy.api#httpQuery" => "next_token"}))
    ListAccountRolesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The number of items that clients can request per page.</p>", "smithy.api#httpQuery" => "max_result"}))
    ListAccountRolesRequest.add_member(:access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenType, location_name: 'accessToken', traits: {"smithy.api#documentation" => "<p>The token issued by the <code>CreateToken</code> API call. For more information, see\n        <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html\">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>", "smithy.api#httpHeader" => "x-amz-sso_bearer_token", "smithy.api#required" => {}}))
    ListAccountRolesRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdType, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The identifier for the AWS account that is assigned to the user.</p>", "smithy.api#httpQuery" => "account_id", "smithy.api#required" => {}}))
    ListAccountRolesRequest.type = Types::ListAccountRolesRequest
    ListAccountRolesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenType, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The page token client that is used to retrieve the list of accounts.</p>"}))
    ListAccountRolesResponse.add_member(:role_list, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleListType, location_name: 'roleList', traits: {"smithy.api#documentation" => "<p>A paginated response with the list of roles and the next token if more results are\n      available.</p>"}))
    ListAccountRolesResponse.type = Types::ListAccountRolesResponse
    ListAccountsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenType, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>(Optional) When requesting subsequent pages, this is the page token from the previous\n      response output.</p>", "smithy.api#httpQuery" => "next_token"}))
    ListAccountsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>This is the number of items clients can request per page.</p>", "smithy.api#httpQuery" => "max_result"}))
    ListAccountsRequest.add_member(:access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenType, location_name: 'accessToken', traits: {"smithy.api#documentation" => "<p>The token issued by the <code>CreateToken</code> API call. For more information, see\n        <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html\">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>", "smithy.api#httpHeader" => "x-amz-sso_bearer_token", "smithy.api#required" => {}}))
    ListAccountsRequest.type = Types::ListAccountsRequest
    ListAccountsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenType, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The page token client that is used to retrieve the list of accounts.</p>"}))
    ListAccountsResponse.add_member(:account_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountListType, location_name: 'accountList', traits: {"smithy.api#documentation" => "<p>A paginated response with the list of account information and the next token if more\n      results are available.</p>"}))
    ListAccountsResponse.type = Types::ListAccountsResponse
    LogoutRequest.add_member(:access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenType, location_name: 'accessToken', traits: {"smithy.api#documentation" => "<p>The token issued by the <code>CreateToken</code> API call. For more information, see\n        <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html\">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>", "smithy.api#httpHeader" => "x-amz-sso_bearer_token", "smithy.api#required" => {}}))
    LogoutRequest.type = Types::LogoutRequest
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoleCredentials.add_member(:access_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessKeyType, location_name: 'accessKeyId', traits: {"smithy.api#documentation" => "<p>The identifier used for the temporary security credentials. For more information, see\n        <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html\">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the\n        <i>AWS IAM User Guide</i>.</p>"}))
    RoleCredentials.add_member(:secret_access_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretAccessKeyType, location_name: 'secretAccessKey', traits: {"smithy.api#documentation" => "<p>The key that is used to sign the request. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html\">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the\n        <i>AWS IAM User Guide</i>.</p>"}))
    RoleCredentials.add_member(:session_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTokenType, location_name: 'sessionToken', traits: {"smithy.api#documentation" => "<p>The token used for temporary credentials. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html\">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the\n        <i>AWS IAM User Guide</i>.</p>"}))
    RoleCredentials.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationTimestampType, location_name: 'expiration', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The date on which temporary security credentials expire.</p>"}))
    RoleCredentials.type = Types::RoleCredentials
    RoleInfo.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleNameType, location_name: 'roleName', traits: {"smithy.api#documentation" => "<p>The friendly name of the role that is assigned to the user.</p>"}))
    RoleInfo.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdType, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The identifier of the AWS account assigned to the user.</p>"}))
    RoleInfo.type = Types::RoleInfo
    RoleListType.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RoleInfo)
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'message'))
    UnauthorizedException.type = Types::UnauthorizedException

    SWBPortalService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sso#SWBPortalService"
      service.name = "SWBPortalService"
      service.version = "2019-06-10"
      service.traits = {"aws.api#service" => {"sdkId" => "SSO", "arnNamespace" => "awsssoportal", "cloudFormationName" => "SSO", "cloudTrailEventSource" => "sso.amazonaws.com", "endpointPrefix" => "portal.sso"}, "aws.auth#sigv4" => {"name" => "awsssoportal"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Single Sign-On"}
      service.add_operation(:get_role_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sso#GetRoleCredentials"
        operation.name = "GetRoleCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRoleCredentialsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRoleCredentialsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "GET", "uri" => "/federation/credentials", "code" => 200}, "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:list_account_roles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sso#ListAccountRoles"
        operation.name = "ListAccountRoles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountRolesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountRolesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "GET", "uri" => "/assignment/roles", "code" => 200}, "smithy.api#optionalAuth" => {}}
        operation[:paginator] = Paginators::ListAccountRoles.new
      end)
      service.add_operation(:list_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sso#ListAccounts"
        operation.name = "ListAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "GET", "uri" => "/assignment/accounts", "code" => 200}, "smithy.api#optionalAuth" => {}}
        operation[:paginator] = Paginators::ListAccounts.new
      end)
      service.add_operation(:logout, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sso#Logout"
        operation.name = "Logout"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: LogoutRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "POST", "uri" => "/logout", "code" => 200}, "smithy.api#optionalAuth" => {}}
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
