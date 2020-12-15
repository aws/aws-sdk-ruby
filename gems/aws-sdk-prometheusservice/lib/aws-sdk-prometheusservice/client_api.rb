# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PrometheusService
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateWorkspaceRequest = Shapes::StructureShape.new(name: 'CreateWorkspaceRequest')
    CreateWorkspaceResponse = Shapes::StructureShape.new(name: 'CreateWorkspaceResponse')
    DeleteWorkspaceRequest = Shapes::StructureShape.new(name: 'DeleteWorkspaceRequest')
    DescribeWorkspaceRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceRequest')
    DescribeWorkspaceResponse = Shapes::StructureShape.new(name: 'DescribeWorkspaceResponse')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListWorkspacesRequest = Shapes::StructureShape.new(name: 'ListWorkspacesRequest')
    ListWorkspacesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListWorkspacesRequestMaxResultsInteger')
    ListWorkspacesResponse = Shapes::StructureShape.new(name: 'ListWorkspacesResponse')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UpdateWorkspaceAliasRequest = Shapes::StructureShape.new(name: 'UpdateWorkspaceAliasRequest')
    Uri = Shapes::StringShape.new(name: 'Uri')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    WorkspaceAlias = Shapes::StringShape.new(name: 'WorkspaceAlias')
    WorkspaceArn = Shapes::StringShape.new(name: 'WorkspaceArn')
    WorkspaceDescription = Shapes::StructureShape.new(name: 'WorkspaceDescription')
    WorkspaceId = Shapes::StringShape.new(name: 'WorkspaceId')
    WorkspaceStatus = Shapes::StructureShape.new(name: 'WorkspaceStatus')
    WorkspaceStatusCode = Shapes::StringShape.new(name: 'WorkspaceStatusCode')
    WorkspaceSummary = Shapes::StructureShape.new(name: 'WorkspaceSummary')
    WorkspaceSummaryList = Shapes::ListShape.new(name: 'WorkspaceSummaryList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateWorkspaceRequest.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: "alias"))
    CreateWorkspaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateWorkspaceRequest.struct_class = Types::CreateWorkspaceRequest

    CreateWorkspaceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WorkspaceArn, required: true, location_name: "arn"))
    CreateWorkspaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "status"))
    CreateWorkspaceResponse.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "workspaceId"))
    CreateWorkspaceResponse.struct_class = Types::CreateWorkspaceResponse

    DeleteWorkspaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteWorkspaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DeleteWorkspaceRequest.struct_class = Types::DeleteWorkspaceRequest

    DescribeWorkspaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DescribeWorkspaceRequest.struct_class = Types::DescribeWorkspaceRequest

    DescribeWorkspaceResponse.add_member(:workspace, Shapes::ShapeRef.new(shape: WorkspaceDescription, required: true, location_name: "workspace"))
    DescribeWorkspaceResponse.struct_class = Types::DescribeWorkspaceResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListWorkspacesRequest.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location: "querystring", location_name: "alias"))
    ListWorkspacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkspacesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListWorkspacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListWorkspacesRequest.struct_class = Types::ListWorkspacesRequest

    ListWorkspacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWorkspacesResponse.add_member(:workspaces, Shapes::ShapeRef.new(shape: WorkspaceSummaryList, required: true, location_name: "workspaces"))
    ListWorkspacesResponse.struct_class = Types::ListWorkspacesResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateWorkspaceAliasRequest.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: "alias"))
    UpdateWorkspaceAliasRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateWorkspaceAliasRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    UpdateWorkspaceAliasRequest.struct_class = Types::UpdateWorkspaceAliasRequest

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WorkspaceDescription.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: "alias"))
    WorkspaceDescription.add_member(:arn, Shapes::ShapeRef.new(shape: WorkspaceArn, required: true, location_name: "arn"))
    WorkspaceDescription.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    WorkspaceDescription.add_member(:prometheus_endpoint, Shapes::ShapeRef.new(shape: Uri, location_name: "prometheusEndpoint"))
    WorkspaceDescription.add_member(:status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "status"))
    WorkspaceDescription.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "workspaceId"))
    WorkspaceDescription.struct_class = Types::WorkspaceDescription

    WorkspaceStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: WorkspaceStatusCode, required: true, location_name: "statusCode"))
    WorkspaceStatus.struct_class = Types::WorkspaceStatus

    WorkspaceSummary.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: "alias"))
    WorkspaceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: WorkspaceArn, required: true, location_name: "arn"))
    WorkspaceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    WorkspaceSummary.add_member(:status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "status"))
    WorkspaceSummary.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "workspaceId"))
    WorkspaceSummary.struct_class = Types::WorkspaceSummary

    WorkspaceSummaryList.member = Shapes::ShapeRef.new(shape: WorkspaceSummary)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-08-01"

      api.metadata = {
        "apiVersion" => "2020-08-01",
        "endpointPrefix" => "aps",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Prometheus Service",
        "serviceId" => "amp",
        "signatureVersion" => "v4",
        "signingName" => "aps",
        "uid" => "amp-2020-08-01",
      }

      api.add_operation(:create_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkspace"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkspace"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspace"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkspaces"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces"
        o.input = Shapes::ShapeRef.new(shape: ListWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkspacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_workspace_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkspaceAlias"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/alias"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkspaceAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
