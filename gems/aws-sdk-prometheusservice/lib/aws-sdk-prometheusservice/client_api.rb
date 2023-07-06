# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PrometheusService
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AlertManagerDefinitionData = Shapes::BlobShape.new(name: 'AlertManagerDefinitionData')
    AlertManagerDefinitionDescription = Shapes::StructureShape.new(name: 'AlertManagerDefinitionDescription')
    AlertManagerDefinitionStatus = Shapes::StructureShape.new(name: 'AlertManagerDefinitionStatus')
    AlertManagerDefinitionStatusCode = Shapes::StringShape.new(name: 'AlertManagerDefinitionStatusCode')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAlertManagerDefinitionRequest = Shapes::StructureShape.new(name: 'CreateAlertManagerDefinitionRequest')
    CreateAlertManagerDefinitionResponse = Shapes::StructureShape.new(name: 'CreateAlertManagerDefinitionResponse')
    CreateLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'CreateLoggingConfigurationRequest')
    CreateLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'CreateLoggingConfigurationResponse')
    CreateRuleGroupsNamespaceRequest = Shapes::StructureShape.new(name: 'CreateRuleGroupsNamespaceRequest')
    CreateRuleGroupsNamespaceResponse = Shapes::StructureShape.new(name: 'CreateRuleGroupsNamespaceResponse')
    CreateWorkspaceRequest = Shapes::StructureShape.new(name: 'CreateWorkspaceRequest')
    CreateWorkspaceResponse = Shapes::StructureShape.new(name: 'CreateWorkspaceResponse')
    DeleteAlertManagerDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteAlertManagerDefinitionRequest')
    DeleteLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteLoggingConfigurationRequest')
    DeleteRuleGroupsNamespaceRequest = Shapes::StructureShape.new(name: 'DeleteRuleGroupsNamespaceRequest')
    DeleteWorkspaceRequest = Shapes::StructureShape.new(name: 'DeleteWorkspaceRequest')
    DescribeAlertManagerDefinitionRequest = Shapes::StructureShape.new(name: 'DescribeAlertManagerDefinitionRequest')
    DescribeAlertManagerDefinitionResponse = Shapes::StructureShape.new(name: 'DescribeAlertManagerDefinitionResponse')
    DescribeLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeLoggingConfigurationRequest')
    DescribeLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeLoggingConfigurationResponse')
    DescribeRuleGroupsNamespaceRequest = Shapes::StructureShape.new(name: 'DescribeRuleGroupsNamespaceRequest')
    DescribeRuleGroupsNamespaceResponse = Shapes::StructureShape.new(name: 'DescribeRuleGroupsNamespaceResponse')
    DescribeWorkspaceRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceRequest')
    DescribeWorkspaceResponse = Shapes::StructureShape.new(name: 'DescribeWorkspaceResponse')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListRuleGroupsNamespacesRequest = Shapes::StructureShape.new(name: 'ListRuleGroupsNamespacesRequest')
    ListRuleGroupsNamespacesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRuleGroupsNamespacesRequestMaxResultsInteger')
    ListRuleGroupsNamespacesResponse = Shapes::StructureShape.new(name: 'ListRuleGroupsNamespacesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWorkspacesRequest = Shapes::StructureShape.new(name: 'ListWorkspacesRequest')
    ListWorkspacesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListWorkspacesRequestMaxResultsInteger')
    ListWorkspacesResponse = Shapes::StructureShape.new(name: 'ListWorkspacesResponse')
    LogGroupArn = Shapes::StringShape.new(name: 'LogGroupArn')
    LoggingConfigurationMetadata = Shapes::StructureShape.new(name: 'LoggingConfigurationMetadata')
    LoggingConfigurationStatus = Shapes::StructureShape.new(name: 'LoggingConfigurationStatus')
    LoggingConfigurationStatusCode = Shapes::StringShape.new(name: 'LoggingConfigurationStatusCode')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PutAlertManagerDefinitionRequest = Shapes::StructureShape.new(name: 'PutAlertManagerDefinitionRequest')
    PutAlertManagerDefinitionResponse = Shapes::StructureShape.new(name: 'PutAlertManagerDefinitionResponse')
    PutRuleGroupsNamespaceRequest = Shapes::StructureShape.new(name: 'PutRuleGroupsNamespaceRequest')
    PutRuleGroupsNamespaceResponse = Shapes::StructureShape.new(name: 'PutRuleGroupsNamespaceResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RuleGroupsNamespaceArn = Shapes::StringShape.new(name: 'RuleGroupsNamespaceArn')
    RuleGroupsNamespaceData = Shapes::BlobShape.new(name: 'RuleGroupsNamespaceData')
    RuleGroupsNamespaceDescription = Shapes::StructureShape.new(name: 'RuleGroupsNamespaceDescription')
    RuleGroupsNamespaceName = Shapes::StringShape.new(name: 'RuleGroupsNamespaceName')
    RuleGroupsNamespaceStatus = Shapes::StructureShape.new(name: 'RuleGroupsNamespaceStatus')
    RuleGroupsNamespaceStatusCode = Shapes::StringShape.new(name: 'RuleGroupsNamespaceStatusCode')
    RuleGroupsNamespaceSummary = Shapes::StructureShape.new(name: 'RuleGroupsNamespaceSummary')
    RuleGroupsNamespaceSummaryList = Shapes::ListShape.new(name: 'RuleGroupsNamespaceSummaryList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateLoggingConfigurationRequest')
    UpdateLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateLoggingConfigurationResponse')
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

    AlertManagerDefinitionDescription.add_member(:status, Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatus, required: true, location_name: "status"))
    AlertManagerDefinitionDescription.add_member(:data, Shapes::ShapeRef.new(shape: AlertManagerDefinitionData, required: true, location_name: "data"))
    AlertManagerDefinitionDescription.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AlertManagerDefinitionDescription.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "modifiedAt"))
    AlertManagerDefinitionDescription.struct_class = Types::AlertManagerDefinitionDescription

    AlertManagerDefinitionStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatusCode, required: true, location_name: "statusCode"))
    AlertManagerDefinitionStatus.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    AlertManagerDefinitionStatus.struct_class = Types::AlertManagerDefinitionStatus

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateAlertManagerDefinitionRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    CreateAlertManagerDefinitionRequest.add_member(:data, Shapes::ShapeRef.new(shape: AlertManagerDefinitionData, required: true, location_name: "data"))
    CreateAlertManagerDefinitionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAlertManagerDefinitionRequest.struct_class = Types::CreateAlertManagerDefinitionRequest

    CreateAlertManagerDefinitionResponse.add_member(:status, Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatus, required: true, location_name: "status"))
    CreateAlertManagerDefinitionResponse.struct_class = Types::CreateAlertManagerDefinitionResponse

    CreateLoggingConfigurationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    CreateLoggingConfigurationRequest.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, required: true, location_name: "logGroupArn"))
    CreateLoggingConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateLoggingConfigurationRequest.struct_class = Types::CreateLoggingConfigurationRequest

    CreateLoggingConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: LoggingConfigurationStatus, required: true, location_name: "status"))
    CreateLoggingConfigurationResponse.struct_class = Types::CreateLoggingConfigurationResponse

    CreateRuleGroupsNamespaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    CreateRuleGroupsNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location_name: "name"))
    CreateRuleGroupsNamespaceRequest.add_member(:data, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceData, required: true, location_name: "data"))
    CreateRuleGroupsNamespaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateRuleGroupsNamespaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRuleGroupsNamespaceRequest.struct_class = Types::CreateRuleGroupsNamespaceRequest

    CreateRuleGroupsNamespaceResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location_name: "name"))
    CreateRuleGroupsNamespaceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, required: true, location_name: "arn"))
    CreateRuleGroupsNamespaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, required: true, location_name: "status"))
    CreateRuleGroupsNamespaceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRuleGroupsNamespaceResponse.struct_class = Types::CreateRuleGroupsNamespaceResponse

    CreateWorkspaceRequest.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: "alias"))
    CreateWorkspaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateWorkspaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateWorkspaceRequest.struct_class = Types::CreateWorkspaceRequest

    CreateWorkspaceResponse.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "workspaceId"))
    CreateWorkspaceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WorkspaceArn, required: true, location_name: "arn"))
    CreateWorkspaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "status"))
    CreateWorkspaceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateWorkspaceResponse.struct_class = Types::CreateWorkspaceResponse

    DeleteAlertManagerDefinitionRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DeleteAlertManagerDefinitionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteAlertManagerDefinitionRequest.struct_class = Types::DeleteAlertManagerDefinitionRequest

    DeleteLoggingConfigurationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DeleteLoggingConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteLoggingConfigurationRequest.struct_class = Types::DeleteLoggingConfigurationRequest

    DeleteRuleGroupsNamespaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DeleteRuleGroupsNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location: "uri", location_name: "name"))
    DeleteRuleGroupsNamespaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteRuleGroupsNamespaceRequest.struct_class = Types::DeleteRuleGroupsNamespaceRequest

    DeleteWorkspaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DeleteWorkspaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteWorkspaceRequest.struct_class = Types::DeleteWorkspaceRequest

    DescribeAlertManagerDefinitionRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DescribeAlertManagerDefinitionRequest.struct_class = Types::DescribeAlertManagerDefinitionRequest

    DescribeAlertManagerDefinitionResponse.add_member(:alert_manager_definition, Shapes::ShapeRef.new(shape: AlertManagerDefinitionDescription, required: true, location_name: "alertManagerDefinition"))
    DescribeAlertManagerDefinitionResponse.struct_class = Types::DescribeAlertManagerDefinitionResponse

    DescribeLoggingConfigurationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DescribeLoggingConfigurationRequest.struct_class = Types::DescribeLoggingConfigurationRequest

    DescribeLoggingConfigurationResponse.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfigurationMetadata, required: true, location_name: "loggingConfiguration"))
    DescribeLoggingConfigurationResponse.struct_class = Types::DescribeLoggingConfigurationResponse

    DescribeRuleGroupsNamespaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DescribeRuleGroupsNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location: "uri", location_name: "name"))
    DescribeRuleGroupsNamespaceRequest.struct_class = Types::DescribeRuleGroupsNamespaceRequest

    DescribeRuleGroupsNamespaceResponse.add_member(:rule_groups_namespace, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceDescription, required: true, location_name: "ruleGroupsNamespace"))
    DescribeRuleGroupsNamespaceResponse.struct_class = Types::DescribeRuleGroupsNamespaceResponse

    DescribeWorkspaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DescribeWorkspaceRequest.struct_class = Types::DescribeWorkspaceRequest

    DescribeWorkspaceResponse.add_member(:workspace, Shapes::ShapeRef.new(shape: WorkspaceDescription, required: true, location_name: "workspace"))
    DescribeWorkspaceResponse.struct_class = Types::DescribeWorkspaceResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListRuleGroupsNamespacesRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    ListRuleGroupsNamespacesRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location: "querystring", location_name: "name"))
    ListRuleGroupsNamespacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListRuleGroupsNamespacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRuleGroupsNamespacesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRuleGroupsNamespacesRequest.struct_class = Types::ListRuleGroupsNamespacesRequest

    ListRuleGroupsNamespacesResponse.add_member(:rule_groups_namespaces, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceSummaryList, required: true, location_name: "ruleGroupsNamespaces"))
    ListRuleGroupsNamespacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRuleGroupsNamespacesResponse.struct_class = Types::ListRuleGroupsNamespacesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListWorkspacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListWorkspacesRequest.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location: "querystring", location_name: "alias"))
    ListWorkspacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkspacesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListWorkspacesRequest.struct_class = Types::ListWorkspacesRequest

    ListWorkspacesResponse.add_member(:workspaces, Shapes::ShapeRef.new(shape: WorkspaceSummaryList, required: true, location_name: "workspaces"))
    ListWorkspacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWorkspacesResponse.struct_class = Types::ListWorkspacesResponse

    LoggingConfigurationMetadata.add_member(:status, Shapes::ShapeRef.new(shape: LoggingConfigurationStatus, required: true, location_name: "status"))
    LoggingConfigurationMetadata.add_member(:workspace, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "workspace"))
    LoggingConfigurationMetadata.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, required: true, location_name: "logGroupArn"))
    LoggingConfigurationMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    LoggingConfigurationMetadata.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "modifiedAt"))
    LoggingConfigurationMetadata.struct_class = Types::LoggingConfigurationMetadata

    LoggingConfigurationStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: LoggingConfigurationStatusCode, required: true, location_name: "statusCode"))
    LoggingConfigurationStatus.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    LoggingConfigurationStatus.struct_class = Types::LoggingConfigurationStatus

    PutAlertManagerDefinitionRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    PutAlertManagerDefinitionRequest.add_member(:data, Shapes::ShapeRef.new(shape: AlertManagerDefinitionData, required: true, location_name: "data"))
    PutAlertManagerDefinitionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    PutAlertManagerDefinitionRequest.struct_class = Types::PutAlertManagerDefinitionRequest

    PutAlertManagerDefinitionResponse.add_member(:status, Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatus, required: true, location_name: "status"))
    PutAlertManagerDefinitionResponse.struct_class = Types::PutAlertManagerDefinitionResponse

    PutRuleGroupsNamespaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    PutRuleGroupsNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location: "uri", location_name: "name"))
    PutRuleGroupsNamespaceRequest.add_member(:data, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceData, required: true, location_name: "data"))
    PutRuleGroupsNamespaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    PutRuleGroupsNamespaceRequest.struct_class = Types::PutRuleGroupsNamespaceRequest

    PutRuleGroupsNamespaceResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location_name: "name"))
    PutRuleGroupsNamespaceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, required: true, location_name: "arn"))
    PutRuleGroupsNamespaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, required: true, location_name: "status"))
    PutRuleGroupsNamespaceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    PutRuleGroupsNamespaceResponse.struct_class = Types::PutRuleGroupsNamespaceResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RuleGroupsNamespaceDescription.add_member(:arn, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, required: true, location_name: "arn"))
    RuleGroupsNamespaceDescription.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location_name: "name"))
    RuleGroupsNamespaceDescription.add_member(:status, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, required: true, location_name: "status"))
    RuleGroupsNamespaceDescription.add_member(:data, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceData, required: true, location_name: "data"))
    RuleGroupsNamespaceDescription.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    RuleGroupsNamespaceDescription.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "modifiedAt"))
    RuleGroupsNamespaceDescription.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    RuleGroupsNamespaceDescription.struct_class = Types::RuleGroupsNamespaceDescription

    RuleGroupsNamespaceStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatusCode, required: true, location_name: "statusCode"))
    RuleGroupsNamespaceStatus.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    RuleGroupsNamespaceStatus.struct_class = Types::RuleGroupsNamespaceStatus

    RuleGroupsNamespaceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, required: true, location_name: "arn"))
    RuleGroupsNamespaceSummary.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location_name: "name"))
    RuleGroupsNamespaceSummary.add_member(:status, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, required: true, location_name: "status"))
    RuleGroupsNamespaceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    RuleGroupsNamespaceSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "modifiedAt"))
    RuleGroupsNamespaceSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    RuleGroupsNamespaceSummary.struct_class = Types::RuleGroupsNamespaceSummary

    RuleGroupsNamespaceSummaryList.member = Shapes::ShapeRef.new(shape: RuleGroupsNamespaceSummary)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateLoggingConfigurationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    UpdateLoggingConfigurationRequest.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, required: true, location_name: "logGroupArn"))
    UpdateLoggingConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateLoggingConfigurationRequest.struct_class = Types::UpdateLoggingConfigurationRequest

    UpdateLoggingConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: LoggingConfigurationStatus, required: true, location_name: "status"))
    UpdateLoggingConfigurationResponse.struct_class = Types::UpdateLoggingConfigurationResponse

    UpdateWorkspaceAliasRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    UpdateWorkspaceAliasRequest.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: "alias"))
    UpdateWorkspaceAliasRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateWorkspaceAliasRequest.struct_class = Types::UpdateWorkspaceAliasRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WorkspaceDescription.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "workspaceId"))
    WorkspaceDescription.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: "alias"))
    WorkspaceDescription.add_member(:arn, Shapes::ShapeRef.new(shape: WorkspaceArn, required: true, location_name: "arn"))
    WorkspaceDescription.add_member(:status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "status"))
    WorkspaceDescription.add_member(:prometheus_endpoint, Shapes::ShapeRef.new(shape: Uri, location_name: "prometheusEndpoint"))
    WorkspaceDescription.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    WorkspaceDescription.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    WorkspaceDescription.struct_class = Types::WorkspaceDescription

    WorkspaceStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: WorkspaceStatusCode, required: true, location_name: "statusCode"))
    WorkspaceStatus.struct_class = Types::WorkspaceStatus

    WorkspaceSummary.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "workspaceId"))
    WorkspaceSummary.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: "alias"))
    WorkspaceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: WorkspaceArn, required: true, location_name: "arn"))
    WorkspaceSummary.add_member(:status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "status"))
    WorkspaceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    WorkspaceSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
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

      api.add_operation(:create_alert_manager_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAlertManagerDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/alertmanager/definition"
        o.input = Shapes::ShapeRef.new(shape: CreateAlertManagerDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAlertManagerDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/logging"
        o.input = Shapes::ShapeRef.new(shape: CreateLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_rule_groups_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRuleGroupsNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/rulegroupsnamespaces"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleGroupsNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleGroupsNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

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

      api.add_operation(:delete_alert_manager_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlertManagerDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}/alertmanager/definition"
        o.input = Shapes::ShapeRef.new(shape: DeleteAlertManagerDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLoggingConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}/logging"
        o.input = Shapes::ShapeRef.new(shape: DeleteLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_rule_groups_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRuleGroupsNamespace"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleGroupsNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkspace"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_alert_manager_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAlertManagerDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/alertmanager/definition"
        o.input = Shapes::ShapeRef.new(shape: DescribeAlertManagerDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAlertManagerDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoggingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/logging"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_rule_groups_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRuleGroupsNamespace"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRuleGroupsNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRuleGroupsNamespaceResponse)
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

      api.add_operation(:list_rule_groups_namespaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuleGroupsNamespaces"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/rulegroupsnamespaces"
        o.input = Shapes::ShapeRef.new(shape: ListRuleGroupsNamespacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRuleGroupsNamespacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
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

      api.add_operation(:put_alert_manager_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAlertManagerDefinition"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceId}/alertmanager/definition"
        o.input = Shapes::ShapeRef.new(shape: PutAlertManagerDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAlertManagerDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:put_rule_groups_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRuleGroupsNamespace"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"
        o.input = Shapes::ShapeRef.new(shape: PutRuleGroupsNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRuleGroupsNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLoggingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceId}/logging"
        o.input = Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
