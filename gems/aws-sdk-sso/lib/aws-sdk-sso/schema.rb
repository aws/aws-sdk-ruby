# frozen_string_literal: true

# This is generated code!

module Aws::SSO
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sso#AccessKeyType", name: "AccessKeyType")
    AccessTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sso#AccessTokenType", name: "AccessTokenType", traits: {"smithy.api#sensitive" => {}})
    AccountIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sso#AccountIdType", name: "AccountIdType")
    AccountInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sso#AccountInfo", name: "AccountInfo")
    AccountListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sso#AccountListType", name: "AccountListType")
    AccountNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sso#AccountNameType", name: "AccountNameType")
    EmailAddressType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sso#EmailAddressType", name: "EmailAddressType", traits: {"smithy.api#length" => {"min" => 1, "max" => 254}})
    ErrorDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sso#ErrorDescription", name: "ErrorDescription")
    ExpirationTimestampType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sso#ExpirationTimestampType", name: "ExpirationTimestampType", traits: {"smithy.api#default" => 0})
    GetRoleCredentialsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sso#GetRoleCredentialsRequest", name: "GetRoleCredentialsRequest")
    GetRoleCredentialsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sso#GetRoleCredentialsResponse", name: "GetRoleCredentialsResponse")
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sso#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListAccountRolesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sso#ListAccountRolesRequest", name: "ListAccountRolesRequest")
    ListAccountRolesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sso#ListAccountRolesResponse", name: "ListAccountRolesResponse")
    ListAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sso#ListAccountsRequest", name: "ListAccountsRequest")
    ListAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sso#ListAccountsResponse", name: "ListAccountsResponse")
    LogoutRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sso#LogoutRequest", name: "LogoutRequest")
    MaxResultType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sso#MaxResultType", name: "MaxResultType", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sso#NextTokenType", name: "NextTokenType")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sso#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sso#RoleCredentials", name: "RoleCredentials")
    RoleInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sso#RoleInfo", name: "RoleInfo")
    RoleListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sso#RoleListType", name: "RoleListType")
    RoleNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sso#RoleNameType", name: "RoleNameType")
    SecretAccessKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sso#SecretAccessKeyType", name: "SecretAccessKeyType", traits: {"smithy.api#sensitive" => {}})
    SessionTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sso#SessionTokenType", name: "SessionTokenType", traits: {"smithy.api#sensitive" => {}})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sso#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sso#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})

    AccountInfo.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdType, name: "accountId"))
    AccountInfo.add_member(:account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountNameType, name: "accountName"))
    AccountInfo.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressType, name: "emailAddress"))
    AccountInfo.type = Types::AccountInfo
    AccountListType.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountInfo, name: "member")
    GetRoleCredentialsRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "roleName", traits: {"smithy.api#httpQuery" => "role_name", "smithy.api#required" => {}}))
    GetRoleCredentialsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdType, name: "accountId", traits: {"smithy.api#httpQuery" => "account_id", "smithy.api#required" => {}}))
    GetRoleCredentialsRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessTokenType, name: "accessToken", traits: {"smithy.api#httpHeader" => "x-amz-sso_bearer_token", "smithy.api#required" => {}}))
    GetRoleCredentialsRequest.type = Types::GetRoleCredentialsRequest
    GetRoleCredentialsResponse.add_member(:role_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleCredentials, name: "roleCredentials"))
    GetRoleCredentialsResponse.type = Types::GetRoleCredentialsResponse
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    ListAccountRolesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenType, name: "nextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListAccountRolesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultType, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_result"}))
    ListAccountRolesRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessTokenType, name: "accessToken", traits: {"smithy.api#httpHeader" => "x-amz-sso_bearer_token", "smithy.api#required" => {}}))
    ListAccountRolesRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdType, name: "accountId", traits: {"smithy.api#httpQuery" => "account_id", "smithy.api#required" => {}}))
    ListAccountRolesRequest.type = Types::ListAccountRolesRequest
    ListAccountRolesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenType, name: "nextToken"))
    ListAccountRolesResponse.add_member(:role_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleListType, name: "roleList"))
    ListAccountRolesResponse.type = Types::ListAccountRolesResponse
    ListAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenType, name: "nextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultType, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_result"}))
    ListAccountsRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessTokenType, name: "accessToken", traits: {"smithy.api#httpHeader" => "x-amz-sso_bearer_token", "smithy.api#required" => {}}))
    ListAccountsRequest.type = Types::ListAccountsRequest
    ListAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenType, name: "nextToken"))
    ListAccountsResponse.add_member(:account_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountListType, name: "accountList"))
    ListAccountsResponse.type = Types::ListAccountsResponse
    LogoutRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessTokenType, name: "accessToken", traits: {"smithy.api#httpHeader" => "x-amz-sso_bearer_token", "smithy.api#required" => {}}))
    LogoutRequest.type = Types::LogoutRequest
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoleCredentials.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyType, name: "accessKeyId"))
    RoleCredentials.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretAccessKeyType, name: "secretAccessKey"))
    RoleCredentials.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTokenType, name: "sessionToken"))
    RoleCredentials.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationTimestampType, name: "expiration", traits: {"smithy.api#default" => 0}))
    RoleCredentials.type = Types::RoleCredentials
    RoleInfo.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "roleName"))
    RoleInfo.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdType, name: "accountId"))
    RoleInfo.type = Types::RoleInfo
    RoleListType.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RoleInfo, name: "member")
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "message"))
    UnauthorizedException.type = Types::UnauthorizedException

    SWBPortalService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sso#SWBPortalService"
      service.name = "SWBPortalService"
      service.version = "2019-06-10"
      service.traits = {"aws.api#service" => {"sdkId" => "SSO", "arnNamespace" => "awsssoportal", "cloudFormationName" => "SSO", "cloudTrailEventSource" => "sso.amazonaws.com", "endpointPrefix" => "portal.sso"}, "aws.auth#sigv4" => {"name" => "awsssoportal"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Single Sign-On"}
      service.add_operation(:get_role_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sso#GetRoleCredentials"
        operation.name = "GetRoleCredentials"
        operation.input = GetRoleCredentialsRequest
        operation.output = GetRoleCredentialsResponse
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "GET", "uri" => "/federation/credentials", "code" => 200}, "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:list_account_roles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sso#ListAccountRoles"
        operation.name = "ListAccountRoles"
        operation.input = ListAccountRolesRequest
        operation.output = ListAccountRolesResponse
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "GET", "uri" => "/assignment/roles", "code" => 200}, "smithy.api#optionalAuth" => {}}
        operation[:paginator] = Paginators::ListAccountRoles.new
      end)
      service.add_operation(:list_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sso#ListAccounts"
        operation.name = "ListAccounts"
        operation.input = ListAccountsRequest
        operation.output = ListAccountsResponse
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "GET", "uri" => "/assignment/accounts", "code" => 200}, "smithy.api#optionalAuth" => {}}
        operation[:paginator] = Paginators::ListAccounts.new
      end)
      service.add_operation(:logout, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sso#Logout"
        operation.name = "Logout"
        operation.input = LogoutRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#http" => {"method" => "POST", "uri" => "/logout", "code" => 200}, "smithy.api#optionalAuth" => {}}
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
