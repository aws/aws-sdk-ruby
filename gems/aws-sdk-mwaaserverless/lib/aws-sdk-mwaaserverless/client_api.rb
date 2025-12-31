# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MWAAServerless
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateWorkflowRequest = Shapes::StructureShape.new(name: 'CreateWorkflowRequest')
    CreateWorkflowResponse = Shapes::StructureShape.new(name: 'CreateWorkflowResponse')
    DefinitionS3Location = Shapes::StructureShape.new(name: 'DefinitionS3Location')
    DeleteWorkflowRequest = Shapes::StructureShape.new(name: 'DeleteWorkflowRequest')
    DeleteWorkflowResponse = Shapes::StructureShape.new(name: 'DeleteWorkflowResponse')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    EngineVersion = Shapes::IntegerShape.new(name: 'EngineVersion')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GenericMap = Shapes::MapShape.new(name: 'GenericMap')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GetTaskInstanceRequest = Shapes::StructureShape.new(name: 'GetTaskInstanceRequest')
    GetTaskInstanceResponse = Shapes::StructureShape.new(name: 'GetTaskInstanceResponse')
    GetWorkflowRequest = Shapes::StructureShape.new(name: 'GetWorkflowRequest')
    GetWorkflowResponse = Shapes::StructureShape.new(name: 'GetWorkflowResponse')
    GetWorkflowRunRequest = Shapes::StructureShape.new(name: 'GetWorkflowRunRequest')
    GetWorkflowRunResponse = Shapes::StructureShape.new(name: 'GetWorkflowRunResponse')
    IdString = Shapes::StringShape.new(name: 'IdString')
    IdempotencyTokenString = Shapes::StringShape.new(name: 'IdempotencyTokenString')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IsLatestVersion = Shapes::BooleanShape.new(name: 'IsLatestVersion')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTaskInstancesRequest = Shapes::StructureShape.new(name: 'ListTaskInstancesRequest')
    ListTaskInstancesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListTaskInstancesRequestMaxResultsInteger')
    ListTaskInstancesResponse = Shapes::StructureShape.new(name: 'ListTaskInstancesResponse')
    ListWorkflowRunsRequest = Shapes::StructureShape.new(name: 'ListWorkflowRunsRequest')
    ListWorkflowRunsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListWorkflowRunsRequestMaxResultsInteger')
    ListWorkflowRunsResponse = Shapes::StructureShape.new(name: 'ListWorkflowRunsResponse')
    ListWorkflowVersionsRequest = Shapes::StructureShape.new(name: 'ListWorkflowVersionsRequest')
    ListWorkflowVersionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListWorkflowVersionsRequestMaxResultsInteger')
    ListWorkflowVersionsResponse = Shapes::StructureShape.new(name: 'ListWorkflowVersionsResponse')
    ListWorkflowsRequest = Shapes::StructureShape.new(name: 'ListWorkflowsRequest')
    ListWorkflowsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListWorkflowsRequestMaxResultsInteger')
    ListWorkflowsResponse = Shapes::StructureShape.new(name: 'ListWorkflowsResponse')
    LoggingConfiguration = Shapes::StructureShape.new(name: 'LoggingConfiguration')
    NameString = Shapes::StringShape.new(name: 'NameString')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    ObjectMap = Shapes::MapShape.new(name: 'ObjectMap')
    OperationTimeoutException = Shapes::StructureShape.new(name: 'OperationTimeoutException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleARN = Shapes::StringShape.new(name: 'RoleARN')
    RunDetailSummary = Shapes::StructureShape.new(name: 'RunDetailSummary')
    RunType = Shapes::StringShape.new(name: 'RunType')
    ScheduleConfiguration = Shapes::StructureShape.new(name: 'ScheduleConfiguration')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SecurityGroupString = Shapes::StringShape.new(name: 'SecurityGroupString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartWorkflowRunRequest = Shapes::StructureShape.new(name: 'StartWorkflowRunRequest')
    StartWorkflowRunResponse = Shapes::StructureShape.new(name: 'StartWorkflowRunResponse')
    StopWorkflowRunRequest = Shapes::StructureShape.new(name: 'StopWorkflowRunRequest')
    StopWorkflowRunResponse = Shapes::StructureShape.new(name: 'StopWorkflowRunResponse')
    String = Shapes::StringShape.new(name: 'String')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    SubnetString = Shapes::StringShape.new(name: 'SubnetString')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourceArn = Shapes::StringShape.new(name: 'TaggableResourceArn')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TaskInstanceIds = Shapes::ListShape.new(name: 'TaskInstanceIds')
    TaskInstanceStatus = Shapes::StringShape.new(name: 'TaskInstanceStatus')
    TaskInstanceSummaries = Shapes::ListShape.new(name: 'TaskInstanceSummaries')
    TaskInstanceSummary = Shapes::StructureShape.new(name: 'TaskInstanceSummary')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimestampValue = Shapes::TimestampShape.new(name: 'TimestampValue', timestampFormat: "iso8601")
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateWorkflowRequest = Shapes::StructureShape.new(name: 'UpdateWorkflowRequest')
    UpdateWorkflowResponse = Shapes::StructureShape.new(name: 'UpdateWorkflowResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFields = Shapes::ListShape.new(name: 'ValidationExceptionFields')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VersionId = Shapes::StringShape.new(name: 'VersionId')
    WarningMessages = Shapes::ListShape.new(name: 'WarningMessages')
    WorkflowArn = Shapes::StringShape.new(name: 'WorkflowArn')
    WorkflowRunDetail = Shapes::StructureShape.new(name: 'WorkflowRunDetail')
    WorkflowRunStatus = Shapes::StringShape.new(name: 'WorkflowRunStatus')
    WorkflowRunSummaries = Shapes::ListShape.new(name: 'WorkflowRunSummaries')
    WorkflowRunSummary = Shapes::StructureShape.new(name: 'WorkflowRunSummary')
    WorkflowStatus = Shapes::StringShape.new(name: 'WorkflowStatus')
    WorkflowSummaries = Shapes::ListShape.new(name: 'WorkflowSummaries')
    WorkflowSummary = Shapes::StructureShape.new(name: 'WorkflowSummary')
    WorkflowVersion = Shapes::StringShape.new(name: 'WorkflowVersion')
    WorkflowVersionSummaries = Shapes::ListShape.new(name: 'WorkflowVersionSummaries')
    WorkflowVersionSummary = Shapes::StructureShape.new(name: 'WorkflowVersionSummary')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateWorkflowRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateWorkflowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyTokenString, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateWorkflowRequest.add_member(:definition_s3_location, Shapes::ShapeRef.new(shape: DefinitionS3Location, required: true, location_name: "DefinitionS3Location"))
    CreateWorkflowRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleArn"))
    CreateWorkflowRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateWorkflowRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    CreateWorkflowRequest.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    CreateWorkflowRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, location_name: "EngineVersion"))
    CreateWorkflowRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "NetworkConfiguration"))
    CreateWorkflowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateWorkflowRequest.add_member(:trigger_mode, Shapes::ShapeRef.new(shape: GenericString, location_name: "TriggerMode"))
    CreateWorkflowRequest.struct_class = Types::CreateWorkflowRequest

    CreateWorkflowResponse.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    CreateWorkflowResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedAt"))
    CreateWorkflowResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    CreateWorkflowResponse.add_member(:workflow_status, Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: "WorkflowStatus"))
    CreateWorkflowResponse.add_member(:workflow_version, Shapes::ShapeRef.new(shape: WorkflowVersion, location_name: "WorkflowVersion"))
    CreateWorkflowResponse.add_member(:is_latest_version, Shapes::ShapeRef.new(shape: IsLatestVersion, location_name: "IsLatestVersion"))
    CreateWorkflowResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: WarningMessages, location_name: "Warnings"))
    CreateWorkflowResponse.struct_class = Types::CreateWorkflowResponse

    DefinitionS3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Bucket"))
    DefinitionS3Location.add_member(:object_key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ObjectKey"))
    DefinitionS3Location.add_member(:version_id, Shapes::ShapeRef.new(shape: String, location_name: "VersionId"))
    DefinitionS3Location.struct_class = Types::DefinitionS3Location

    DeleteWorkflowRequest.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    DeleteWorkflowRequest.add_member(:workflow_version, Shapes::ShapeRef.new(shape: WorkflowVersion, location_name: "WorkflowVersion"))
    DeleteWorkflowRequest.struct_class = Types::DeleteWorkflowRequest

    DeleteWorkflowResponse.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    DeleteWorkflowResponse.add_member(:workflow_version, Shapes::ShapeRef.new(shape: WorkflowVersion, location_name: "WorkflowVersion"))
    DeleteWorkflowResponse.struct_class = Types::DeleteWorkflowResponse

    EncryptionConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "Type"))
    EncryptionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    GenericMap.key = Shapes::ShapeRef.new(shape: GenericString)
    GenericMap.value = Shapes::ShapeRef.new(shape: GenericString)

    GetTaskInstanceRequest.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    GetTaskInstanceRequest.add_member(:task_instance_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "TaskInstanceId"))
    GetTaskInstanceRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "RunId"))
    GetTaskInstanceRequest.struct_class = Types::GetTaskInstanceRequest

    GetTaskInstanceResponse.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    GetTaskInstanceResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "RunId"))
    GetTaskInstanceResponse.add_member(:task_instance_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "TaskInstanceId"))
    GetTaskInstanceResponse.add_member(:workflow_version, Shapes::ShapeRef.new(shape: VersionId, location_name: "WorkflowVersion"))
    GetTaskInstanceResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaskInstanceStatus, location_name: "Status"))
    GetTaskInstanceResponse.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "DurationInSeconds"))
    GetTaskInstanceResponse.add_member(:operator_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "OperatorName"))
    GetTaskInstanceResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "ModifiedAt"))
    GetTaskInstanceResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "EndedAt"))
    GetTaskInstanceResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "StartedAt"))
    GetTaskInstanceResponse.add_member(:attempt_number, Shapes::ShapeRef.new(shape: Integer, location_name: "AttemptNumber"))
    GetTaskInstanceResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: GenericString, location_name: "ErrorMessage"))
    GetTaskInstanceResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: IdString, location_name: "TaskId"))
    GetTaskInstanceResponse.add_member(:log_stream, Shapes::ShapeRef.new(shape: IdString, location_name: "LogStream"))
    GetTaskInstanceResponse.add_member(:xcom, Shapes::ShapeRef.new(shape: GenericMap, location_name: "Xcom"))
    GetTaskInstanceResponse.struct_class = Types::GetTaskInstanceResponse

    GetWorkflowRequest.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    GetWorkflowRequest.add_member(:workflow_version, Shapes::ShapeRef.new(shape: WorkflowVersion, location_name: "WorkflowVersion"))
    GetWorkflowRequest.struct_class = Types::GetWorkflowRequest

    GetWorkflowResponse.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    GetWorkflowResponse.add_member(:workflow_version, Shapes::ShapeRef.new(shape: WorkflowVersion, location_name: "WorkflowVersion"))
    GetWorkflowResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    GetWorkflowResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    GetWorkflowResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedAt"))
    GetWorkflowResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "ModifiedAt"))
    GetWorkflowResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    GetWorkflowResponse.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    GetWorkflowResponse.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, location_name: "EngineVersion"))
    GetWorkflowResponse.add_member(:workflow_status, Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: "WorkflowStatus"))
    GetWorkflowResponse.add_member(:definition_s3_location, Shapes::ShapeRef.new(shape: DefinitionS3Location, location_name: "DefinitionS3Location"))
    GetWorkflowResponse.add_member(:schedule_configuration, Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "ScheduleConfiguration"))
    GetWorkflowResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleArn"))
    GetWorkflowResponse.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "NetworkConfiguration"))
    GetWorkflowResponse.add_member(:trigger_mode, Shapes::ShapeRef.new(shape: GenericString, location_name: "TriggerMode"))
    GetWorkflowResponse.add_member(:workflow_definition, Shapes::ShapeRef.new(shape: GenericString, location_name: "WorkflowDefinition"))
    GetWorkflowResponse.struct_class = Types::GetWorkflowResponse

    GetWorkflowRunRequest.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    GetWorkflowRunRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "RunId"))
    GetWorkflowRunRequest.struct_class = Types::GetWorkflowRunRequest

    GetWorkflowRunResponse.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, location_name: "WorkflowArn"))
    GetWorkflowRunResponse.add_member(:workflow_version, Shapes::ShapeRef.new(shape: VersionId, location_name: "WorkflowVersion"))
    GetWorkflowRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "RunId"))
    GetWorkflowRunResponse.add_member(:run_type, Shapes::ShapeRef.new(shape: RunType, location_name: "RunType"))
    GetWorkflowRunResponse.add_member(:override_parameters, Shapes::ShapeRef.new(shape: ObjectMap, location_name: "OverrideParameters"))
    GetWorkflowRunResponse.add_member(:run_detail, Shapes::ShapeRef.new(shape: WorkflowRunDetail, location_name: "RunDetail"))
    GetWorkflowRunResponse.struct_class = Types::GetWorkflowRunResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "RetryAfterSeconds"))
    InternalServerException.struct_class = Types::InternalServerException

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTaskInstancesRequest.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    ListTaskInstancesRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "RunId"))
    ListTaskInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTaskInstancesRequestMaxResultsInteger, location_name: "MaxResults"))
    ListTaskInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTaskInstancesRequest.struct_class = Types::ListTaskInstancesRequest

    ListTaskInstancesResponse.add_member(:task_instances, Shapes::ShapeRef.new(shape: TaskInstanceSummaries, location_name: "TaskInstances"))
    ListTaskInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTaskInstancesResponse.struct_class = Types::ListTaskInstancesResponse

    ListWorkflowRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkflowRunsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListWorkflowRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListWorkflowRunsRequest.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    ListWorkflowRunsRequest.add_member(:workflow_version, Shapes::ShapeRef.new(shape: VersionId, location_name: "WorkflowVersion"))
    ListWorkflowRunsRequest.struct_class = Types::ListWorkflowRunsRequest

    ListWorkflowRunsResponse.add_member(:workflow_runs, Shapes::ShapeRef.new(shape: WorkflowRunSummaries, location_name: "WorkflowRuns"))
    ListWorkflowRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListWorkflowRunsResponse.struct_class = Types::ListWorkflowRunsResponse

    ListWorkflowVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkflowVersionsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListWorkflowVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListWorkflowVersionsRequest.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    ListWorkflowVersionsRequest.struct_class = Types::ListWorkflowVersionsRequest

    ListWorkflowVersionsResponse.add_member(:workflow_versions, Shapes::ShapeRef.new(shape: WorkflowVersionSummaries, location_name: "WorkflowVersions"))
    ListWorkflowVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListWorkflowVersionsResponse.struct_class = Types::ListWorkflowVersionsResponse

    ListWorkflowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkflowsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListWorkflowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListWorkflowsRequest.struct_class = Types::ListWorkflowsRequest

    ListWorkflowsResponse.add_member(:workflows, Shapes::ShapeRef.new(shape: WorkflowSummaries, required: true, location_name: "Workflows"))
    ListWorkflowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListWorkflowsResponse.struct_class = Types::ListWorkflowsResponse

    LoggingConfiguration.add_member(:log_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LogGroupName"))
    LoggingConfiguration.struct_class = Types::LoggingConfiguration

    NetworkConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    NetworkConfiguration.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    NetworkConfiguration.struct_class = Types::NetworkConfiguration

    ObjectMap.key = Shapes::ShapeRef.new(shape: String)
    ObjectMap.value = Shapes::ShapeRef.new(shape: Document)

    OperationTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    OperationTimeoutException.struct_class = Types::OperationTimeoutException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RunDetailSummary.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowRunStatus, location_name: "Status"))
    RunDetailSummary.add_member(:created_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedOn"))
    RunDetailSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "StartedAt"))
    RunDetailSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "EndedAt"))
    RunDetailSummary.struct_class = Types::RunDetailSummary

    ScheduleConfiguration.add_member(:cron_expression, Shapes::ShapeRef.new(shape: String, location_name: "CronExpression"))
    ScheduleConfiguration.struct_class = Types::ScheduleConfiguration

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupString)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QuotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartWorkflowRunRequest.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    StartWorkflowRunRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyTokenString, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartWorkflowRunRequest.add_member(:override_parameters, Shapes::ShapeRef.new(shape: ObjectMap, location_name: "OverrideParameters"))
    StartWorkflowRunRequest.add_member(:workflow_version, Shapes::ShapeRef.new(shape: VersionId, location_name: "WorkflowVersion"))
    StartWorkflowRunRequest.struct_class = Types::StartWorkflowRunRequest

    StartWorkflowRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "RunId"))
    StartWorkflowRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowRunStatus, location_name: "Status"))
    StartWorkflowRunResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "StartedAt"))
    StartWorkflowRunResponse.struct_class = Types::StartWorkflowRunResponse

    StopWorkflowRunRequest.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    StopWorkflowRunRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, required: true, location_name: "RunId"))
    StopWorkflowRunRequest.struct_class = Types::StopWorkflowRunRequest

    StopWorkflowRunResponse.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, location_name: "WorkflowArn"))
    StopWorkflowRunResponse.add_member(:workflow_version, Shapes::ShapeRef.new(shape: VersionId, location_name: "WorkflowVersion"))
    StopWorkflowRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "RunId"))
    StopWorkflowRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowRunStatus, location_name: "Status"))
    StopWorkflowRunResponse.struct_class = Types::StopWorkflowRunResponse

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetString)

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TaskInstanceIds.member = Shapes::ShapeRef.new(shape: IdString)

    TaskInstanceSummaries.member = Shapes::ShapeRef.new(shape: TaskInstanceSummary)

    TaskInstanceSummary.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, location_name: "WorkflowArn"))
    TaskInstanceSummary.add_member(:workflow_version, Shapes::ShapeRef.new(shape: VersionId, location_name: "WorkflowVersion"))
    TaskInstanceSummary.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "RunId"))
    TaskInstanceSummary.add_member(:task_instance_id, Shapes::ShapeRef.new(shape: IdString, location_name: "TaskInstanceId"))
    TaskInstanceSummary.add_member(:status, Shapes::ShapeRef.new(shape: TaskInstanceStatus, location_name: "Status"))
    TaskInstanceSummary.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "DurationInSeconds"))
    TaskInstanceSummary.add_member(:operator_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "OperatorName"))
    TaskInstanceSummary.struct_class = Types::TaskInstanceSummary

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QuotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "RetryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateWorkflowRequest.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    UpdateWorkflowRequest.add_member(:definition_s3_location, Shapes::ShapeRef.new(shape: DefinitionS3Location, required: true, location_name: "DefinitionS3Location"))
    UpdateWorkflowRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleArn"))
    UpdateWorkflowRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    UpdateWorkflowRequest.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    UpdateWorkflowRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, location_name: "EngineVersion"))
    UpdateWorkflowRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "NetworkConfiguration"))
    UpdateWorkflowRequest.add_member(:trigger_mode, Shapes::ShapeRef.new(shape: GenericString, location_name: "TriggerMode"))
    UpdateWorkflowRequest.struct_class = Types::UpdateWorkflowRequest

    UpdateWorkflowResponse.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    UpdateWorkflowResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "ModifiedAt"))
    UpdateWorkflowResponse.add_member(:workflow_version, Shapes::ShapeRef.new(shape: WorkflowVersion, location_name: "WorkflowVersion"))
    UpdateWorkflowResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: WarningMessages, location_name: "Warnings"))
    UpdateWorkflowResponse.struct_class = Types::UpdateWorkflowResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "Reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFields, location_name: "FieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFields.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WarningMessages.member = Shapes::ShapeRef.new(shape: String)

    WorkflowRunDetail.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, location_name: "WorkflowArn"))
    WorkflowRunDetail.add_member(:workflow_version, Shapes::ShapeRef.new(shape: VersionId, location_name: "WorkflowVersion"))
    WorkflowRunDetail.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "RunId"))
    WorkflowRunDetail.add_member(:run_type, Shapes::ShapeRef.new(shape: RunType, location_name: "RunType"))
    WorkflowRunDetail.add_member(:started_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "StartedOn"))
    WorkflowRunDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedAt"))
    WorkflowRunDetail.add_member(:completed_on, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CompletedOn"))
    WorkflowRunDetail.add_member(:modified_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "ModifiedAt"))
    WorkflowRunDetail.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "Duration"))
    WorkflowRunDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: GenericString, location_name: "ErrorMessage"))
    WorkflowRunDetail.add_member(:task_instances, Shapes::ShapeRef.new(shape: TaskInstanceIds, location_name: "TaskInstances"))
    WorkflowRunDetail.add_member(:run_state, Shapes::ShapeRef.new(shape: WorkflowRunStatus, location_name: "RunState"))
    WorkflowRunDetail.struct_class = Types::WorkflowRunDetail

    WorkflowRunSummaries.member = Shapes::ShapeRef.new(shape: WorkflowRunSummary)

    WorkflowRunSummary.add_member(:run_id, Shapes::ShapeRef.new(shape: IdString, location_name: "RunId"))
    WorkflowRunSummary.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, location_name: "WorkflowArn"))
    WorkflowRunSummary.add_member(:workflow_version, Shapes::ShapeRef.new(shape: VersionId, location_name: "WorkflowVersion"))
    WorkflowRunSummary.add_member(:run_type, Shapes::ShapeRef.new(shape: RunType, location_name: "RunType"))
    WorkflowRunSummary.add_member(:run_detail_summary, Shapes::ShapeRef.new(shape: RunDetailSummary, location_name: "RunDetailSummary"))
    WorkflowRunSummary.struct_class = Types::WorkflowRunSummary

    WorkflowSummaries.member = Shapes::ShapeRef.new(shape: WorkflowSummary)

    WorkflowSummary.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    WorkflowSummary.add_member(:workflow_version, Shapes::ShapeRef.new(shape: WorkflowVersion, location_name: "WorkflowVersion"))
    WorkflowSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    WorkflowSummary.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    WorkflowSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedAt"))
    WorkflowSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "ModifiedAt"))
    WorkflowSummary.add_member(:workflow_status, Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: "WorkflowStatus"))
    WorkflowSummary.add_member(:trigger_mode, Shapes::ShapeRef.new(shape: GenericString, location_name: "TriggerMode"))
    WorkflowSummary.struct_class = Types::WorkflowSummary

    WorkflowVersionSummaries.member = Shapes::ShapeRef.new(shape: WorkflowVersionSummary)

    WorkflowVersionSummary.add_member(:workflow_version, Shapes::ShapeRef.new(shape: WorkflowVersion, required: true, location_name: "WorkflowVersion"))
    WorkflowVersionSummary.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowArn, required: true, location_name: "WorkflowArn"))
    WorkflowVersionSummary.add_member(:is_latest_version, Shapes::ShapeRef.new(shape: IsLatestVersion, location_name: "IsLatestVersion"))
    WorkflowVersionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "CreatedAt"))
    WorkflowVersionSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "ModifiedAt"))
    WorkflowVersionSummary.add_member(:definition_s3_location, Shapes::ShapeRef.new(shape: DefinitionS3Location, location_name: "DefinitionS3Location"))
    WorkflowVersionSummary.add_member(:schedule_configuration, Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "ScheduleConfiguration"))
    WorkflowVersionSummary.add_member(:trigger_mode, Shapes::ShapeRef.new(shape: GenericString, location_name: "TriggerMode"))
    WorkflowVersionSummary.struct_class = Types::WorkflowVersionSummary


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-07-26"

      api.metadata = {
        "apiVersion" => "2024-07-26",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "airflow-serverless",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AmazonMWAAServerless",
        "serviceId" => "MWAA Serverless",
        "signatureVersion" => "v4",
        "signingName" => "airflow-serverless",
        "targetPrefix" => "AmazonMWAAServerless",
        "uid" => "mwaa-serverless-2024-07-26",
      }

      api.add_operation(:create_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_task_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTaskInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTaskInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTaskInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:get_workflow_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflowRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowRunRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:list_task_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTaskInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTaskInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTaskInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workflow_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflowRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workflow_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflowVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workflows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflows"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_workflow_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartWorkflowRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartWorkflowRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartWorkflowRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:stop_workflow_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopWorkflowRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopWorkflowRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StopWorkflowRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:update_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
