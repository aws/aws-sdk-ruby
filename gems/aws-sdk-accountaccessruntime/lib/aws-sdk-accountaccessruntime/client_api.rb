# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AccountAccessRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDetails = Shapes::StructureShape.new(name: 'AccessDetails')
    AccessDetailsList = Shapes::ListShape.new(name: 'AccessDetailsList')
    AccessType = Shapes::StringShape.new(name: 'AccessType')
    Account = Shapes::StringShape.new(name: 'Account')
    CredentialsDetails = Shapes::UnionShape.new(name: 'CredentialsDetails')
    GetRoleCredentialsRequest = Shapes::StructureShape.new(name: 'GetRoleCredentialsRequest')
    GetRoleCredentialsResponse = Shapes::StructureShape.new(name: 'GetRoleCredentialsResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListRolesRequest = Shapes::StructureShape.new(name: 'ListRolesRequest')
    ListRolesResponse = Shapes::StructureShape.new(name: 'ListRolesResponse')
    ProgrammaticAccessDetails = Shapes::StructureShape.new(name: 'ProgrammaticAccessDetails')
    SessionName = Shapes::StringShape.new(name: 'SessionName')
    String = Shapes::StringShape.new(name: 'String')
    TenantId = Shapes::StringShape.new(name: 'TenantId')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Token = Shapes::StringShape.new(name: 'Token')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessDetails.add_member(:account_id, Shapes::ShapeRef.new(shape: Account, required: true, location_name: "accountId"))
    AccessDetails.add_member(:account_name, Shapes::ShapeRef.new(shape: String, location_name: "accountName"))
    AccessDetails.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    AccessDetails.struct_class = Types::AccessDetails

    AccessDetailsList.member = Shapes::ShapeRef.new(shape: AccessDetails)

    CredentialsDetails.add_member(:programmatic_access, Shapes::ShapeRef.new(shape: ProgrammaticAccessDetails, location_name: "programmaticAccess"))
    CredentialsDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CredentialsDetails.add_member_subclass(:programmatic_access, Types::CredentialsDetails::ProgrammaticAccess)
    CredentialsDetails.add_member_subclass(:unknown, Types::CredentialsDetails::Unknown)
    CredentialsDetails.struct_class = Types::CredentialsDetails

    GetRoleCredentialsRequest.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantId, required: true, location: "querystring", location_name: "tenantId"))
    GetRoleCredentialsRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "roleArn"))
    GetRoleCredentialsRequest.add_member(:access_type, Shapes::ShapeRef.new(shape: AccessType, required: true, location: "querystring", location_name: "accessType"))
    GetRoleCredentialsRequest.add_member(:session_name, Shapes::ShapeRef.new(shape: SessionName, location: "querystring", location_name: "sessionName"))
    GetRoleCredentialsRequest.add_member(:session_duration, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "sessionDuration"))
    GetRoleCredentialsRequest.struct_class = Types::GetRoleCredentialsRequest

    GetRoleCredentialsResponse.add_member(:credentials_details, Shapes::ShapeRef.new(shape: CredentialsDetails, location_name: "credentialsDetails"))
    GetRoleCredentialsResponse.struct_class = Types::GetRoleCredentialsResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListRolesRequest.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantId, required: true, location: "querystring", location_name: "tenantId"))
    ListRolesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListRolesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListRolesRequest.struct_class = Types::ListRolesRequest

    ListRolesResponse.add_member(:roles, Shapes::ShapeRef.new(shape: AccessDetailsList, required: true, location_name: "roles"))
    ListRolesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListRolesResponse.struct_class = Types::ListRolesResponse

    ProgrammaticAccessDetails.add_member(:access_key_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "accessKeyId"))
    ProgrammaticAccessDetails.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "secretAccessKey"))
    ProgrammaticAccessDetails.add_member(:session_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sessionToken"))
    ProgrammaticAccessDetails.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "expiresAt"))
    ProgrammaticAccessDetails.struct_class = Types::ProgrammaticAccessDetails

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["smithy.api#httpBearerAuth"],
        "endpointPrefix" => "account-access-runtime",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Account Access Runtime",
        "serviceId" => "Account Access Runtime",
        "signatureVersion" => "bearer",
        "signingName" => "account-access",
        "uid" => "account-access-runtime-2018-05-10",
      }

      api.add_operation(:get_role_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRoleCredentials"
        o.http_method = "GET"
        o.http_request_uri = "/access/credentials"
        o.input = Shapes::ShapeRef.new(shape: GetRoleCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRoleCredentialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_roles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoles"
        o.http_method = "GET"
        o.http_request_uri = "/access"
        o.input = Shapes::ShapeRef.new(shape: ListRolesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRolesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
