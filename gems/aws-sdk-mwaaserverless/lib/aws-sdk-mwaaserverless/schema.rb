# frozen_string_literal: true

# This is generated code!

module Aws::MWAAServerless
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Code = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mwaaserverless#Code", name: "Code")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#CreateWorkflowRequest", name: "CreateWorkflowRequest")
    CreateWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#CreateWorkflowResponse", name: "CreateWorkflowResponse")
    DefinitionS3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#DefinitionS3Location", name: "DefinitionS3Location")
    DeleteWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#DeleteWorkflowRequest", name: "DeleteWorkflowRequest")
    DeleteWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#DeleteWorkflowResponse", name: "DeleteWorkflowResponse")
    DescriptionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#DescriptionString", name: "DescriptionString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.+$"})
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#EncryptionConfiguration", name: "EncryptionConfiguration")
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mwaaserverless#EncryptionType", name: "EncryptionType")
    EngineVersion = ::Smithy::Schema::Shapes::IntEnumShape.new(id: "com.amazonaws.mwaaserverless#EngineVersion", name: "EngineVersion")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.*$"})
    GenericMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mwaaserverless#GenericMap", name: "GenericMap")
    GenericString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#GenericString", name: "GenericString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    GetTaskInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#GetTaskInstanceRequest", name: "GetTaskInstanceRequest")
    GetTaskInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#GetTaskInstanceResponse", name: "GetTaskInstanceResponse")
    GetWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#GetWorkflowRequest", name: "GetWorkflowRequest")
    GetWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#GetWorkflowResponse", name: "GetWorkflowResponse")
    GetWorkflowRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#GetWorkflowRunRequest", name: "GetWorkflowRunRequest")
    GetWorkflowRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#GetWorkflowRunResponse", name: "GetWorkflowRunResponse")
    IdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#IdString", name: "IdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9]+[a-zA-Z0-9\\.\\-_]*$"})
    IdempotencyTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#IdempotencyTokenString", name: "IdempotencyTokenString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\x21-\\x7E]+$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IsLatestVersion = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.mwaaserverless#IsLatestVersion", name: "IsLatestVersion")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTaskInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ListTaskInstancesRequest", name: "ListTaskInstancesRequest")
    ListTaskInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ListTaskInstancesResponse", name: "ListTaskInstancesResponse")
    ListWorkflowRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ListWorkflowRunsRequest", name: "ListWorkflowRunsRequest")
    ListWorkflowRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ListWorkflowRunsResponse", name: "ListWorkflowRunsResponse")
    ListWorkflowVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ListWorkflowVersionsRequest", name: "ListWorkflowVersionsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mwaaserverless#WorkflowResource"}]})
    ListWorkflowVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ListWorkflowVersionsResponse", name: "ListWorkflowVersionsResponse")
    ListWorkflowsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ListWorkflowsRequest", name: "ListWorkflowsRequest")
    ListWorkflowsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ListWorkflowsResponse", name: "ListWorkflowsResponse")
    LoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#LoggingConfiguration", name: "LoggingConfiguration")
    NameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#NameString", name: "NameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9]+[a-zA-Z0-9\\.\\-_]*$"})
    NetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#NetworkConfiguration", name: "NetworkConfiguration")
    ObjectMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mwaaserverless#ObjectMap", name: "ObjectMap", traits: {"smithy.api#sensitive" => {}})
    OperationTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#OperationTimeoutException", name: "OperationTimeoutException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 504})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#RoleARN", name: "RoleARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(?:-(?:cn|us-gov|iso|iso-b|iso-e|iso-f))?:iam::[0-9]{12}:role(/[a-zA-Z0-9+=,.@_\\-]{1,512})*?/[a-zA-Z0-9+=,.@_\\-]{1,64}$"})
    RunDetailSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#RunDetailSummary", name: "RunDetailSummary")
    RunType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mwaaserverless#RunType", name: "RunType")
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#S3Location", name: "S3Location")
    ScheduleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ScheduleConfiguration", name: "ScheduleConfiguration")
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mwaaserverless#SecurityGroupIds", name: "SecurityGroupIds")
    SecurityGroupString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#SecurityGroupString", name: "SecurityGroupString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^sg-[a-z0-9]*$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartWorkflowRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#StartWorkflowRunRequest", name: "StartWorkflowRunRequest")
    StartWorkflowRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#StartWorkflowRunResponse", name: "StartWorkflowRunResponse")
    StopWorkflowRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#StopWorkflowRunRequest", name: "StopWorkflowRunRequest")
    StopWorkflowRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#StopWorkflowRunResponse", name: "StopWorkflowRunResponse")
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mwaaserverless#SubnetIds", name: "SubnetIds")
    SubnetString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#SubnetString", name: "SubnetString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^subnet-[a-z0-9]*$"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.*$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mwaaserverless#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^.*$"})
    TaggableResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#TaggableResourceArn", name: "TaggableResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(?:-(?:cn|us-gov|iso|iso-b|iso-e|iso-f))?:airflow-serverless:([a-z]{2}-[a-z]+-[0-9]{1}):([0-9]{12}):workflow/([a-zA-Z0-9][a-zA-Z0-9\\.\\-_]{0,254}-[a-zA-Z0-9]{10})$"})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mwaaserverless#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TaskInstanceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mwaaserverless#TaskInstanceIds", name: "TaskInstanceIds")
    TaskInstanceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mwaaserverless#TaskInstanceStatus", name: "TaskInstanceStatus")
    TaskInstanceSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mwaaserverless#TaskInstanceSummaries", name: "TaskInstanceSummaries")
    TaskInstanceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#TaskInstanceSummary", name: "TaskInstanceSummary")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TimestampValue = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.mwaaserverless#TimestampValue", name: "TimestampValue", traits: {"smithy.api#timestampFormat" => "date-time"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#UpdateWorkflowRequest", name: "UpdateWorkflowRequest")
    UpdateWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#UpdateWorkflowResponse", name: "UpdateWorkflowResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mwaaserverless#ValidationExceptionFields", name: "ValidationExceptionFields")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mwaaserverless#ValidationExceptionReason", name: "ValidationExceptionReason")
    VersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#VersionId", name: "VersionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.+$"})
    WarningMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mwaaserverless#WarningMessages", name: "WarningMessages")
    WorkflowArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#WorkflowArn", name: "WorkflowArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(?:-(?:cn|us-gov|iso|iso-b|iso-e|iso-f))?:airflow-serverless:([a-z]{2}-[a-z]+-[0-9]{1}):([0-9]{12}):workflow/([a-zA-Z0-9][a-zA-Z0-9\\.\\-_]{0,254}-[a-zA-Z0-9]{10})$"})
    WorkflowRunDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#WorkflowRunDetail", name: "WorkflowRunDetail")
    WorkflowRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mwaaserverless#WorkflowRunStatus", name: "WorkflowRunStatus")
    WorkflowRunSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mwaaserverless#WorkflowRunSummaries", name: "WorkflowRunSummaries")
    WorkflowRunSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#WorkflowRunSummary", name: "WorkflowRunSummary")
    WorkflowStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mwaaserverless#WorkflowStatus", name: "WorkflowStatus")
    WorkflowSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mwaaserverless#WorkflowSummaries", name: "WorkflowSummaries")
    WorkflowSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#WorkflowSummary", name: "WorkflowSummary")
    WorkflowVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mwaaserverless#WorkflowVersion", name: "WorkflowVersion", traits: {"smithy.api#length" => {"min" => 32, "max" => 32}, "smithy.api#pattern" => "^[a-z0-9]{32}$"})
    WorkflowVersionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mwaaserverless#WorkflowVersionSummaries", name: "WorkflowVersionSummaries")
    WorkflowVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mwaaserverless#WorkflowVersionSummary", name: "WorkflowVersionSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mwaaserverless#WorkflowResource"}]})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Code.add_member(:s3_location, Types::Code::S3Location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "S3Location"))
    Code.add_member(:unknown, Types::Code::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Code.type = Types::Code
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateWorkflowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateWorkflowRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyTokenString, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWorkflowRequest.add_member(:definition_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionS3Location, name: "DefinitionS3Location", traits: {"smithy.api#required" => {}}))
    CreateWorkflowRequest.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "Code"))
    CreateWorkflowRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateWorkflowRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    CreateWorkflowRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    CreateWorkflowRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration"))
    CreateWorkflowRequest.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersion, name: "EngineVersion"))
    CreateWorkflowRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "NetworkConfiguration"))
    CreateWorkflowRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateWorkflowRequest.add_member(:trigger_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "TriggerMode"))
    CreateWorkflowRequest.type = Types::CreateWorkflowRequest
    CreateWorkflowResponse.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    CreateWorkflowResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "CreatedAt"))
    CreateWorkflowResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RevisionId"))
    CreateWorkflowResponse.add_member(:workflow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStatus, name: "WorkflowStatus"))
    CreateWorkflowResponse.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersion, name: "WorkflowVersion"))
    CreateWorkflowResponse.add_member(:is_latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: IsLatestVersion, name: "IsLatestVersion"))
    CreateWorkflowResponse.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: WarningMessages, name: "Warnings", traits: {"smithy.api#notProperty" => {}}))
    CreateWorkflowResponse.type = Types::CreateWorkflowResponse
    DefinitionS3Location.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Bucket", traits: {"smithy.api#required" => {}}))
    DefinitionS3Location.add_member(:object_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ObjectKey", traits: {"smithy.api#required" => {}}))
    DefinitionS3Location.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VersionId"))
    DefinitionS3Location.type = Types::DefinitionS3Location
    DeleteWorkflowRequest.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    DeleteWorkflowRequest.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersion, name: "WorkflowVersion", traits: {"smithy.api#httpQuery" => "workflowVersion"}))
    DeleteWorkflowRequest.type = Types::DeleteWorkflowRequest
    DeleteWorkflowResponse.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    DeleteWorkflowResponse.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersion, name: "WorkflowVersion"))
    DeleteWorkflowResponse.type = Types::DeleteWorkflowResponse
    EncryptionConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "Type", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "KmsKeyId"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionType.add_member(:aws_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MANAGED_KEY", traits: {"smithy.api#enumValue" => "AWS_MANAGED_KEY"}))
    EncryptionType.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED_KEY", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KEY"}))
    EngineVersion.add_member(:one, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE", traits: {"smithy.api#enumValue" => 1}))
    GenericMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "key"))
    GenericMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "value"))
    GetTaskInstanceRequest.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    GetTaskInstanceRequest.add_member(:task_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "TaskInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTaskInstanceRequest.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "RunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    GetTaskInstanceRequest.type = Types::GetTaskInstanceRequest
    GetTaskInstanceResponse.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    GetTaskInstanceResponse.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "RunId", traits: {"smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    GetTaskInstanceResponse.add_member(:task_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "TaskInstanceId", traits: {"smithy.api#required" => {}}))
    GetTaskInstanceResponse.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionId, name: "WorkflowVersion"))
    GetTaskInstanceResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskInstanceStatus, name: "Status"))
    GetTaskInstanceResponse.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DurationInSeconds"))
    GetTaskInstanceResponse.add_member(:operator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "OperatorName"))
    GetTaskInstanceResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "ModifiedAt"))
    GetTaskInstanceResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "EndedAt"))
    GetTaskInstanceResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "StartedAt"))
    GetTaskInstanceResponse.add_member(:attempt_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "AttemptNumber"))
    GetTaskInstanceResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "ErrorMessage"))
    GetTaskInstanceResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "TaskId"))
    GetTaskInstanceResponse.add_member(:log_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "LogStream"))
    GetTaskInstanceResponse.add_member(:xcom, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericMap, name: "Xcom"))
    GetTaskInstanceResponse.type = Types::GetTaskInstanceResponse
    GetWorkflowRequest.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    GetWorkflowRequest.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersion, name: "WorkflowVersion", traits: {"smithy.api#httpQuery" => "workflowVersion"}))
    GetWorkflowRequest.type = Types::GetWorkflowRequest
    GetWorkflowResponse.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    GetWorkflowResponse.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersion, name: "WorkflowVersion"))
    GetWorkflowResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name"))
    GetWorkflowResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    GetWorkflowResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "CreatedAt"))
    GetWorkflowResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "ModifiedAt"))
    GetWorkflowResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    GetWorkflowResponse.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration"))
    GetWorkflowResponse.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersion, name: "EngineVersion"))
    GetWorkflowResponse.add_member(:workflow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStatus, name: "WorkflowStatus"))
    GetWorkflowResponse.add_member(:definition_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionS3Location, name: "DefinitionS3Location"))
    GetWorkflowResponse.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "Code"))
    GetWorkflowResponse.add_member(:code_snapshotted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "CodeSnapshottedAt"))
    GetWorkflowResponse.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleConfiguration, name: "ScheduleConfiguration"))
    GetWorkflowResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleArn"))
    GetWorkflowResponse.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "NetworkConfiguration"))
    GetWorkflowResponse.add_member(:trigger_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "TriggerMode"))
    GetWorkflowResponse.add_member(:workflow_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "WorkflowDefinition"))
    GetWorkflowResponse.type = Types::GetWorkflowResponse
    GetWorkflowRunRequest.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    GetWorkflowRunRequest.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "RunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    GetWorkflowRunRequest.type = Types::GetWorkflowRunRequest
    GetWorkflowRunResponse.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    GetWorkflowRunResponse.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionId, name: "WorkflowVersion"))
    GetWorkflowRunResponse.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "RunId", traits: {"smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    GetWorkflowRunResponse.add_member(:run_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RunType, name: "RunType"))
    GetWorkflowRunResponse.add_member(:override_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectMap, name: "OverrideParameters"))
    GetWorkflowRunResponse.add_member(:run_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunDetail, name: "RunDetail"))
    GetWorkflowRunResponse.type = Types::GetWorkflowRunResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "RetryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTaskInstancesRequest.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    ListTaskInstancesRequest.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "RunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    ListTaskInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListTaskInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTaskInstancesRequest.type = Types::ListTaskInstancesRequest
    ListTaskInstancesResponse.add_member(:task_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskInstanceSummaries, name: "TaskInstances"))
    ListTaskInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListTaskInstancesResponse.type = Types::ListTaskInstancesResponse
    ListWorkflowRunsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkflowRunsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkflowRunsRequest.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    ListWorkflowRunsRequest.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionId, name: "WorkflowVersion", traits: {"smithy.api#httpQuery" => "workflowVersion"}))
    ListWorkflowRunsRequest.type = Types::ListWorkflowRunsRequest
    ListWorkflowRunsResponse.add_member(:workflow_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunSummaries, name: "WorkflowRuns"))
    ListWorkflowRunsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListWorkflowRunsResponse.type = Types::ListWorkflowRunsResponse
    ListWorkflowVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkflowVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkflowVersionsRequest.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    ListWorkflowVersionsRequest.type = Types::ListWorkflowVersionsRequest
    ListWorkflowVersionsResponse.add_member(:workflow_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionSummaries, name: "WorkflowVersions"))
    ListWorkflowVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListWorkflowVersionsResponse.type = Types::ListWorkflowVersionsResponse
    ListWorkflowsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkflowsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkflowsRequest.type = Types::ListWorkflowsRequest
    ListWorkflowsResponse.add_member(:workflows, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowSummaries, name: "Workflows", traits: {"smithy.api#required" => {}}))
    ListWorkflowsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListWorkflowsResponse.type = Types::ListWorkflowsResponse
    LoggingConfiguration.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LogGroupName", traits: {"smithy.api#required" => {}}))
    LoggingConfiguration.type = Types::LoggingConfiguration
    NetworkConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds"))
    NetworkConfiguration.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds"))
    NetworkConfiguration.type = Types::NetworkConfiguration
    ObjectMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    ObjectMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "value"))
    OperationTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    OperationTimeoutException.type = Types::OperationTimeoutException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RunDetailSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunStatus, name: "Status"))
    RunDetailSummary.add_member(:created_on, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "CreatedOn"))
    RunDetailSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "StartedAt"))
    RunDetailSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "EndedAt"))
    RunDetailSummary.type = Types::RunDetailSummary
    RunType.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    RunType.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    S3Location.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#required" => {}}))
    S3Location.add_member(:object_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ObjectKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    S3Location.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VersionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}}))
    S3Location.type = Types::S3Location
    ScheduleConfiguration.add_member(:cron_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CronExpression"))
    ScheduleConfiguration.type = Types::ScheduleConfiguration
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupString, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartWorkflowRunRequest.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    StartWorkflowRunRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyTokenString, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartWorkflowRunRequest.add_member(:override_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectMap, name: "OverrideParameters"))
    StartWorkflowRunRequest.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionId, name: "WorkflowVersion"))
    StartWorkflowRunRequest.type = Types::StartWorkflowRunRequest
    StartWorkflowRunResponse.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "RunId", traits: {"smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    StartWorkflowRunResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunStatus, name: "Status"))
    StartWorkflowRunResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "StartedAt"))
    StartWorkflowRunResponse.type = Types::StartWorkflowRunResponse
    StopWorkflowRunRequest.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    StopWorkflowRunRequest.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "RunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    StopWorkflowRunRequest.type = Types::StopWorkflowRunRequest
    StopWorkflowRunResponse.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    StopWorkflowRunResponse.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionId, name: "WorkflowVersion"))
    StopWorkflowRunResponse.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "RunId", traits: {"smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    StopWorkflowRunResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunStatus, name: "Status"))
    StopWorkflowRunResponse.type = Types::StopWorkflowRunResponse
    SubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetString, name: "member"))
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TaskInstanceIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "member"))
    TaskInstanceStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    TaskInstanceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TaskInstanceStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    TaskInstanceStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    TaskInstanceStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    TaskInstanceStatus.add_member(:up_for_reschedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UP_FOR_RESCHEDULE", traits: {"smithy.api#enumValue" => "UP_FOR_RESCHEDULE"}))
    TaskInstanceStatus.add_member(:up_for_retry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UP_FOR_RETRY", traits: {"smithy.api#enumValue" => "UP_FOR_RETRY"}))
    TaskInstanceStatus.add_member(:upstream_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPSTREAM_FAILED", traits: {"smithy.api#enumValue" => "UPSTREAM_FAILED"}))
    TaskInstanceStatus.add_member(:removed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVED", traits: {"smithy.api#enumValue" => "REMOVED"}))
    TaskInstanceStatus.add_member(:restarting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTARTING", traits: {"smithy.api#enumValue" => "RESTARTING"}))
    TaskInstanceStatus.add_member(:deferred, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFERRED", traits: {"smithy.api#enumValue" => "DEFERRED"}))
    TaskInstanceStatus.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    TaskInstanceStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    TaskInstanceStatus.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMEOUT", traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    TaskInstanceSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskInstanceSummary, name: "member"))
    TaskInstanceSummary.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    TaskInstanceSummary.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionId, name: "WorkflowVersion"))
    TaskInstanceSummary.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "RunId", traits: {"smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    TaskInstanceSummary.add_member(:task_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "TaskInstanceId"))
    TaskInstanceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskInstanceStatus, name: "Status"))
    TaskInstanceSummary.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DurationInSeconds"))
    TaskInstanceSummary.add_member(:operator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "OperatorName"))
    TaskInstanceSummary.type = Types::TaskInstanceSummary
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "RetryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateWorkflowRequest.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    UpdateWorkflowRequest.add_member(:definition_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionS3Location, name: "DefinitionS3Location", traits: {"smithy.api#required" => {}}))
    UpdateWorkflowRequest.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "Code"))
    UpdateWorkflowRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    UpdateWorkflowRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    UpdateWorkflowRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration"))
    UpdateWorkflowRequest.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersion, name: "EngineVersion"))
    UpdateWorkflowRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "NetworkConfiguration"))
    UpdateWorkflowRequest.add_member(:trigger_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "TriggerMode"))
    UpdateWorkflowRequest.type = Types::UpdateWorkflowRequest
    UpdateWorkflowResponse.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    UpdateWorkflowResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "ModifiedAt"))
    UpdateWorkflowResponse.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersion, name: "WorkflowVersion"))
    UpdateWorkflowResponse.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: WarningMessages, name: "Warnings", traits: {"smithy.api#notProperty" => {}}))
    UpdateWorkflowResponse.type = Types::UpdateWorkflowResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFields, name: "FieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))
    WarningMessages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    WorkflowRunDetail.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    WorkflowRunDetail.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionId, name: "WorkflowVersion"))
    WorkflowRunDetail.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "RunId", traits: {"smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    WorkflowRunDetail.add_member(:run_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RunType, name: "RunType"))
    WorkflowRunDetail.add_member(:started_on, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "StartedOn"))
    WorkflowRunDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "CreatedAt"))
    WorkflowRunDetail.add_member(:completed_on, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "CompletedOn"))
    WorkflowRunDetail.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "ModifiedAt"))
    WorkflowRunDetail.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Duration"))
    WorkflowRunDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "ErrorMessage"))
    WorkflowRunDetail.add_member(:task_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskInstanceIds, name: "TaskInstances"))
    WorkflowRunDetail.add_member(:run_state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunStatus, name: "RunState"))
    WorkflowRunDetail.type = Types::WorkflowRunDetail
    WorkflowRunStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    WorkflowRunStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    WorkflowRunStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    WorkflowRunStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    WorkflowRunStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    WorkflowRunStatus.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMEOUT", traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    WorkflowRunStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    WorkflowRunStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    WorkflowRunSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunSummary, name: "member"))
    WorkflowRunSummary.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdString, name: "RunId", traits: {"smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    WorkflowRunSummary.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    WorkflowRunSummary.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionId, name: "WorkflowVersion"))
    WorkflowRunSummary.add_member(:run_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RunType, name: "RunType"))
    WorkflowRunSummary.add_member(:run_detail_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: RunDetailSummary, name: "RunDetailSummary"))
    WorkflowRunSummary.type = Types::WorkflowRunSummary
    WorkflowStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    WorkflowStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    WorkflowSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowSummary, name: "member"))
    WorkflowSummary.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    WorkflowSummary.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersion, name: "WorkflowVersion"))
    WorkflowSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name"))
    WorkflowSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    WorkflowSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "CreatedAt"))
    WorkflowSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "ModifiedAt"))
    WorkflowSummary.add_member(:workflow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStatus, name: "WorkflowStatus"))
    WorkflowSummary.add_member(:trigger_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "TriggerMode"))
    WorkflowSummary.type = Types::WorkflowSummary
    WorkflowVersionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionSummary, name: "member"))
    WorkflowVersionSummary.add_member(:workflow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersion, name: "WorkflowVersion", traits: {"smithy.api#required" => {}}))
    WorkflowVersionSummary.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, name: "WorkflowArn", traits: {"smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    WorkflowVersionSummary.add_member(:is_latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: IsLatestVersion, name: "IsLatestVersion"))
    WorkflowVersionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "CreatedAt"))
    WorkflowVersionSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "ModifiedAt"))
    WorkflowVersionSummary.add_member(:definition_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionS3Location, name: "DefinitionS3Location"))
    WorkflowVersionSummary.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleConfiguration, name: "ScheduleConfiguration"))
    WorkflowVersionSummary.add_member(:trigger_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "TriggerMode"))
    WorkflowVersionSummary.type = Types::WorkflowVersionSummary

    AmazonMWAAServerless = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mwaaserverless#AmazonMWAAServerless"
      service.name = "AmazonMWAAServerless"
      service.version = "2024-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "MWAA Serverless", "arnNamespace" => "airflow-serverless", "endpointPrefix" => "airflow-serverless"}, "aws.auth#sigv4" => {"name" => "airflow-serverless"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AmazonMWAAServerless", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://airflow-serverless-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://airflow-serverless.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:create_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#CreateWorkflow"
        operation.name = "CreateWorkflow"
        operation.input = CreateWorkflowRequest
        operation.output = CreateWorkflowResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workflows"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#DeleteWorkflow"
        operation.name = "DeleteWorkflow"
        operation.input = DeleteWorkflowRequest
        operation.output = DeleteWorkflowResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/workflows/{WorkflowArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_task_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#GetTaskInstance"
        operation.name = "GetTaskInstance"
        operation.input = GetTaskInstanceRequest
        operation.output = GetTaskInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflows/{WorkflowArn}/runs/{RunId}/tasks/{TaskInstanceId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#GetWorkflow"
        operation.name = "GetWorkflow"
        operation.input = GetWorkflowRequest
        operation.output = GetWorkflowResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflows/{WorkflowArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#GetWorkflowRun"
        operation.name = "GetWorkflowRun"
        operation.input = GetWorkflowRunRequest
        operation.output = GetWorkflowRunResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflows/{WorkflowArn}/runs/{RunId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_task_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#ListTaskInstances"
        operation.name = "ListTaskInstances"
        operation.input = ListTaskInstancesRequest
        operation.output = ListTaskInstancesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflows/{WorkflowArn}/runs/{RunId}/tasks"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTaskInstances.new
      end)
      service.add_operation(:list_workflow_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#ListWorkflowRuns"
        operation.name = "ListWorkflowRuns"
        operation.input = ListWorkflowRunsRequest
        operation.output = ListWorkflowRunsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflows/{WorkflowArn}/runs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflowRuns.new
      end)
      service.add_operation(:list_workflow_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#ListWorkflowVersions"
        operation.name = "ListWorkflowVersions"
        operation.input = ListWorkflowVersionsRequest
        operation.output = ListWorkflowVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflows/{WorkflowArn}/versions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflowVersions.new
      end)
      service.add_operation(:list_workflows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#ListWorkflows"
        operation.name = "ListWorkflows"
        operation.input = ListWorkflowsRequest
        operation.output = ListWorkflowsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflows"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListWorkflowsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListWorkflowsWithMaxResultsSuccess", "params" => {"MaxResults" => 10}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListWorkflowsInvalidPaginationToken", "params" => {"NextToken" => "123"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.mwaaserverless#ValidationException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListWorkflows.new
      end)
      service.add_operation(:start_workflow_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#StartWorkflowRun"
        operation.name = "StartWorkflowRun"
        operation.input = StartWorkflowRunRequest
        operation.output = StartWorkflowRunResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workflows/{WorkflowArn}/runs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_workflow_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#StopWorkflowRun"
        operation.name = "StopWorkflowRun"
        operation.input = StopWorkflowRunRequest
        operation.output = StopWorkflowRunResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/workflows/{WorkflowArn}/runs/{RunId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaaserverless#UpdateWorkflow"
        operation.name = "UpdateWorkflow"
        operation.input = UpdateWorkflowRequest
        operation.output = UpdateWorkflowResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << OperationTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/workflows/{WorkflowArn}"}}
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
