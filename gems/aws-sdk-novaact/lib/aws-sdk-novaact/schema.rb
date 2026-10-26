# frozen_string_literal: true

# This is generated code!

module Aws::NovaAct
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ActError", name: "ActError")
    ActStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.novaact#ActStatus", name: "ActStatus")
    ActSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.novaact#ActSummaries", name: "ActSummaries")
    ActSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ActSummary", name: "ActSummary")
    Call = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#Call", name: "Call")
    CallId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#CallId", name: "CallId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CallResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#CallResult", name: "CallResult")
    CallResultContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.novaact#CallResultContent", name: "CallResultContent", traits: {"smithy.api#sensitive" => {}})
    CallResultContents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.novaact#CallResultContents", name: "CallResultContents", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CallResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.novaact#CallResults", name: "CallResults", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Calls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.novaact#Calls", name: "Calls")
    ClientInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ClientInfo", name: "ClientInfo")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 33, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,256}$"})
    CloudWatchLogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#CloudWatchLogGroupName", name: "CloudWatchLogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9_/.-]+$"})
    CompatibilityInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#CompatibilityInformation", name: "CompatibilityInformation")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateActRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#CreateActRequest", name: "CreateActRequest")
    CreateActResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#CreateActResponse", name: "CreateActResponse")
    CreateSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#CreateSessionRequest", name: "CreateSessionRequest")
    CreateSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#CreateSessionResponse", name: "CreateSessionResponse")
    CreateWorkflowDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#CreateWorkflowDefinitionRequest", name: "CreateWorkflowDefinitionRequest")
    CreateWorkflowDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#CreateWorkflowDefinitionResponse", name: "CreateWorkflowDefinitionResponse")
    CreateWorkflowRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#CreateWorkflowRunRequest", name: "CreateWorkflowRunRequest")
    CreateWorkflowRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#CreateWorkflowRunResponse", name: "CreateWorkflowRunResponse")
    DateTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.novaact#DateTimestamp", name: "DateTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteWorkflowDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#DeleteWorkflowDefinitionRequest", name: "DeleteWorkflowDefinitionRequest")
    DeleteWorkflowDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#DeleteWorkflowDefinitionResponse", name: "DeleteWorkflowDefinitionResponse")
    DeleteWorkflowRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#DeleteWorkflowRunRequest", name: "DeleteWorkflowRunRequest")
    DeleteWorkflowRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#DeleteWorkflowRunResponse", name: "DeleteWorkflowRunResponse")
    GetWorkflowDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#GetWorkflowDefinitionRequest", name: "GetWorkflowDefinitionRequest")
    GetWorkflowDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#GetWorkflowDefinitionResponse", name: "GetWorkflowDefinitionResponse")
    GetWorkflowRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#GetWorkflowRunRequest", name: "GetWorkflowRunRequest")
    GetWorkflowRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#GetWorkflowRunResponse", name: "GetWorkflowRunResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InternalServerExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.novaact#InternalServerExceptionReason", name: "InternalServerExceptionReason")
    InvokeActStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#InvokeActStepRequest", name: "InvokeActStepRequest")
    InvokeActStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#InvokeActStepResponse", name: "InvokeActStepResponse")
    ListActsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ListActsRequest", name: "ListActsRequest")
    ListActsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ListActsResponse", name: "ListActsResponse")
    ListModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ListModelsRequest", name: "ListModelsRequest")
    ListModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ListModelsResponse", name: "ListModelsResponse")
    ListSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ListSessionsRequest", name: "ListSessionsRequest")
    ListSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ListSessionsResponse", name: "ListSessionsResponse")
    ListWorkflowDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ListWorkflowDefinitionsRequest", name: "ListWorkflowDefinitionsRequest")
    ListWorkflowDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ListWorkflowDefinitionsResponse", name: "ListWorkflowDefinitionsResponse")
    ListWorkflowRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ListWorkflowRunsRequest", name: "ListWorkflowRunsRequest")
    ListWorkflowRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ListWorkflowRunsResponse", name: "ListWorkflowRunsResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.novaact#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ModelAlias = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ModelAlias", name: "ModelAlias")
    ModelAliases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.novaact#ModelAliases", name: "ModelAliases")
    ModelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#ModelId", name: "ModelId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ModelIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.novaact#ModelIdList", name: "ModelIdList")
    ModelLifecycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ModelLifecycle", name: "ModelLifecycle")
    ModelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.novaact#ModelStatus", name: "ModelStatus")
    ModelSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.novaact#ModelSummaries", name: "ModelSummaries")
    ModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ModelSummary", name: "ModelSummary")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    NonBlankString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#NonBlankString", name: "NonBlankString", traits: {"smithy.api#pattern" => "^[\\s\\S]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][a-z0-9.-]*[a-z0-9]$"})
    S3KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#S3KeyPrefix", name: "S3KeyPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9!\\-_.*'()]+(?:/[a-zA-Z0-9!\\-_.*'()]+)*$"})
    SensitiveDocument = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.novaact#SensitiveDocument", name: "SensitiveDocument", traits: {"smithy.api#sensitive" => {}})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.novaact#SessionSummaries", name: "SessionSummaries")
    SessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#SessionSummary", name: "SessionSummary")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.novaact#SortOrder", name: "SortOrder")
    Task = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#Task", name: "Task", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#sensitive" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    ToolDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#ToolDescription", name: "ToolDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#sensitive" => {}})
    ToolInputSchema = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.novaact#ToolInputSchema", name: "ToolInputSchema", traits: {"smithy.api#sensitive" => {}})
    ToolInputSchemaDocument = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.novaact#ToolInputSchemaDocument", name: "ToolInputSchemaDocument")
    ToolName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#ToolName", name: "ToolName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ToolSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ToolSpec", name: "ToolSpec")
    ToolSpecs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.novaact#ToolSpecs", name: "ToolSpecs", traits: {"smithy.api#length" => {"max" => 100}})
    TraceLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#TraceLocation", name: "TraceLocation")
    TraceLocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.novaact#TraceLocationType", name: "TraceLocationType")
    UpdateActRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#UpdateActRequest", name: "UpdateActRequest")
    UpdateActResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#UpdateActResponse", name: "UpdateActResponse")
    UpdateWorkflowRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#UpdateWorkflowRunRequest", name: "UpdateWorkflowRunRequest")
    UpdateWorkflowRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#UpdateWorkflowRunResponse", name: "UpdateWorkflowRunResponse")
    UuidString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#UuidString", name: "UuidString", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.novaact#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.novaact#ValidationExceptionReason", name: "ValidationExceptionReason")
    WorkflowDefinitionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#WorkflowDefinitionArn", name: "WorkflowDefinitionArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):nova-act:[a-z0-9-]+:[0-9]{12}:workflow-definition/[a-zA-Z0-9_-]{1,40}$"})
    WorkflowDefinitionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#WorkflowDefinitionName", name: "WorkflowDefinitionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]{1,40}$"})
    WorkflowDefinitionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.novaact#WorkflowDefinitionStatus", name: "WorkflowDefinitionStatus")
    WorkflowDefinitionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.novaact#WorkflowDefinitionSummaries", name: "WorkflowDefinitionSummaries")
    WorkflowDefinitionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#WorkflowDefinitionSummary", name: "WorkflowDefinitionSummary")
    WorkflowDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#WorkflowDescription", name: "WorkflowDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 4000}, "smithy.api#sensitive" => {}})
    WorkflowExportConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#WorkflowExportConfig", name: "WorkflowExportConfig")
    WorkflowRunArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.novaact#WorkflowRunArn", name: "WorkflowRunArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):nova-act:[a-z0-9-]+:[0-9]{12}:workflow-definition/[a-zA-Z0-9_-]{1,40}/workflow-run/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    WorkflowRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.novaact#WorkflowRunStatus", name: "WorkflowRunStatus")
    WorkflowRunSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.novaact#WorkflowRunSummaries", name: "WorkflowRunSummaries")
    WorkflowRunSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.novaact#WorkflowRunSummary", name: "WorkflowRunSummary")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "message", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#required" => {}}))
    ActError.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    ActError.type = Types::ActError
    ActStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ActStatus.add_member(:pending_client_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CLIENT_ACTION", traits: {"smithy.api#enumValue" => "PENDING_CLIENT_ACTION"}))
    ActStatus.add_member(:pending_human_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_HUMAN_ACTION", traits: {"smithy.api#enumValue" => "PENDING_HUMAN_ACTION"}))
    ActStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ActStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ActStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    ActSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActSummary, name: "member"))
    ActSummary.add_member(:workflow_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "workflowRunId", traits: {"smithy.api#required" => {}}))
    ActSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "sessionId", traits: {"smithy.api#required" => {}}))
    ActSummary.add_member(:act_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "actId", traits: {"smithy.api#required" => {}}))
    ActSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ActSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "startedAt", traits: {"smithy.api#required" => {}}))
    ActSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "endedAt"))
    ActSummary.add_member(:trace_location, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceLocation, name: "traceLocation"))
    ActSummary.type = Types::ActSummary
    Call.add_member(:call_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CallId, name: "callId", traits: {"smithy.api#required" => {}}))
    Call.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveDocument, name: "input", traits: {"smithy.api#required" => {}}))
    Call.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    Call.type = Types::Call
    CallResult.add_member(:call_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CallId, name: "callId"))
    CallResult.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: CallResultContents, name: "content", traits: {"smithy.api#required" => {}}))
    CallResult.type = Types::CallResult
    CallResultContent.add_member(:text, Types::CallResultContent::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    CallResultContent.add_member(:unknown, Types::CallResultContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CallResultContent.type = Types::CallResultContent
    CallResultContents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CallResultContent, name: "member"))
    CallResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CallResult, name: "member"))
    Calls.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Call, name: "member"))
    ClientInfo.add_member(:compatibility_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "compatibilityVersion", traits: {"smithy.api#required" => {}}))
    ClientInfo.add_member(:sdk_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "sdkVersion"))
    ClientInfo.type = Types::ClientInfo
    CompatibilityInformation.add_member(:client_compatibility_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "clientCompatibilityVersion", traits: {"smithy.api#required" => {}}))
    CompatibilityInformation.add_member(:supported_model_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelIdList, name: "supportedModelIds", traits: {"smithy.api#required" => {}}))
    CompatibilityInformation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    CompatibilityInformation.type = Types::CompatibilityInformation
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateActRequest.add_member(:workflow_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "workflowDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateActRequest.add_member(:workflow_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "workflowRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateActRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateActRequest.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: Task, name: "task", traits: {"smithy.api#required" => {}}))
    CreateActRequest.add_member(:tool_specs, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolSpecs, name: "toolSpecs"))
    CreateActRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateActRequest.type = Types::CreateActRequest
    CreateActResponse.add_member(:act_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "actId", traits: {"smithy.api#required" => {}}))
    CreateActResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateActResponse.type = Types::CreateActResponse
    CreateSessionRequest.add_member(:workflow_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "workflowDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSessionRequest.add_member(:workflow_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "workflowRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSessionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSessionRequest.type = Types::CreateSessionRequest
    CreateSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "sessionId", traits: {"smithy.api#required" => {}}))
    CreateSessionResponse.type = Types::CreateSessionResponse
    CreateWorkflowDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateWorkflowDefinitionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDescription, name: "description"))
    CreateWorkflowDefinitionRequest.add_member(:export_config, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExportConfig, name: "exportConfig"))
    CreateWorkflowDefinitionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWorkflowDefinitionRequest.type = Types::CreateWorkflowDefinitionRequest
    CreateWorkflowDefinitionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateWorkflowDefinitionResponse.type = Types::CreateWorkflowDefinitionResponse
    CreateWorkflowRunRequest.add_member(:workflow_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "workflowDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkflowRunRequest.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelId, name: "modelId", traits: {"smithy.api#required" => {}}))
    CreateWorkflowRunRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWorkflowRunRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupName, name: "logGroupName"))
    CreateWorkflowRunRequest.add_member(:client_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientInfo, name: "clientInfo", traits: {"smithy.api#required" => {}}))
    CreateWorkflowRunRequest.type = Types::CreateWorkflowRunRequest
    CreateWorkflowRunResponse.add_member(:workflow_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "workflowRunId", traits: {"smithy.api#required" => {}}))
    CreateWorkflowRunResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateWorkflowRunResponse.type = Types::CreateWorkflowRunResponse
    DeleteWorkflowDefinitionRequest.add_member(:workflow_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "workflowDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowDefinitionRequest.type = Types::DeleteWorkflowDefinitionRequest
    DeleteWorkflowDefinitionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteWorkflowDefinitionResponse.type = Types::DeleteWorkflowDefinitionResponse
    DeleteWorkflowRunRequest.add_member(:workflow_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "workflowDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowRunRequest.add_member(:workflow_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "workflowRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowRunRequest.type = Types::DeleteWorkflowRunRequest
    DeleteWorkflowRunResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteWorkflowRunResponse.type = Types::DeleteWorkflowRunResponse
    GetWorkflowDefinitionRequest.add_member(:workflow_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "workflowDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowDefinitionRequest.type = Types::GetWorkflowDefinitionRequest
    GetWorkflowDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "name", traits: {"smithy.api#required" => {}}))
    GetWorkflowDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetWorkflowDefinitionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetWorkflowDefinitionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDescription, name: "description"))
    GetWorkflowDefinitionResponse.add_member(:export_config, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExportConfig, name: "exportConfig"))
    GetWorkflowDefinitionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetWorkflowDefinitionResponse.type = Types::GetWorkflowDefinitionResponse
    GetWorkflowRunRequest.add_member(:workflow_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "workflowDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowRunRequest.add_member(:workflow_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "workflowRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowRunRequest.type = Types::GetWorkflowRunRequest
    GetWorkflowRunResponse.add_member(:workflow_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunArn, name: "workflowRunArn", traits: {"smithy.api#required" => {}}))
    GetWorkflowRunResponse.add_member(:workflow_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "workflowRunId", traits: {"smithy.api#required" => {}}))
    GetWorkflowRunResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetWorkflowRunResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "startedAt", traits: {"smithy.api#required" => {}}))
    GetWorkflowRunResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "endedAt"))
    GetWorkflowRunResponse.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelId, name: "modelId", traits: {"smithy.api#required" => {}}))
    GetWorkflowRunResponse.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupName, name: "logGroupName"))
    GetWorkflowRunResponse.type = Types::GetWorkflowRunResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerExceptionReason, name: "reason"))
    InternalServerException.type = Types::InternalServerException
    InternalServerExceptionReason.add_member(:invalid_model_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_MODEL_GENERATION", traits: {"smithy.api#enumValue" => "InvalidModelGeneration"}))
    InternalServerExceptionReason.add_member(:token_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOKEN_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "RequestTokenLimitExceeded"}))
    InvokeActStepRequest.add_member(:workflow_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "workflowDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeActStepRequest.add_member(:workflow_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "workflowRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeActStepRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeActStepRequest.add_member(:act_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "actId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeActStepRequest.add_member(:call_results, ::Smithy::Schema::Shapes::MemberShape.new(target: CallResults, name: "callResults", traits: {"smithy.api#required" => {}}))
    InvokeActStepRequest.add_member(:previous_step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "previousStepId"))
    InvokeActStepRequest.type = Types::InvokeActStepRequest
    InvokeActStepResponse.add_member(:calls, ::Smithy::Schema::Shapes::MemberShape.new(target: Calls, name: "calls", traits: {"smithy.api#required" => {}}))
    InvokeActStepResponse.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "stepId", traits: {"smithy.api#required" => {}}))
    InvokeActStepResponse.type = Types::InvokeActStepResponse
    ListActsRequest.add_member(:workflow_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "workflowDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListActsRequest.add_member(:workflow_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "workflowRunId", traits: {"smithy.api#httpQuery" => "workflowRunId"}))
    ListActsRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "sessionId", traits: {"smithy.api#httpQuery" => "sessionId"}))
    ListActsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListActsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListActsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    ListActsRequest.type = Types::ListActsRequest
    ListActsResponse.add_member(:act_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ActSummaries, name: "actSummaries", traits: {"smithy.api#required" => {}}))
    ListActsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListActsResponse.type = Types::ListActsResponse
    ListModelsRequest.add_member(:client_compatibility_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "clientCompatibilityVersion", traits: {"smithy.api#httpQuery" => "clientCompatibilityVersion", "smithy.api#required" => {}}))
    ListModelsRequest.type = Types::ListModelsRequest
    ListModelsResponse.add_member(:model_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelSummaries, name: "modelSummaries", traits: {"smithy.api#required" => {}}))
    ListModelsResponse.add_member(:model_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelAliases, name: "modelAliases", traits: {"smithy.api#required" => {}}))
    ListModelsResponse.add_member(:compatibility_information, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibilityInformation, name: "compatibilityInformation", traits: {"smithy.api#required" => {}}))
    ListModelsResponse.type = Types::ListModelsResponse
    ListSessionsRequest.add_member(:workflow_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "workflowDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:workflow_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "workflowRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSessionsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    ListSessionsRequest.type = Types::ListSessionsRequest
    ListSessionsResponse.add_member(:session_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummaries, name: "sessionSummaries", traits: {"smithy.api#required" => {}}))
    ListSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSessionsResponse.type = Types::ListSessionsResponse
    ListWorkflowDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListWorkflowDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkflowDefinitionsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    ListWorkflowDefinitionsRequest.type = Types::ListWorkflowDefinitionsRequest
    ListWorkflowDefinitionsResponse.add_member(:workflow_definition_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionSummaries, name: "workflowDefinitionSummaries", traits: {"smithy.api#required" => {}}))
    ListWorkflowDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWorkflowDefinitionsResponse.type = Types::ListWorkflowDefinitionsResponse
    ListWorkflowRunsRequest.add_member(:workflow_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "workflowDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkflowRunsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListWorkflowRunsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkflowRunsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    ListWorkflowRunsRequest.type = Types::ListWorkflowRunsRequest
    ListWorkflowRunsResponse.add_member(:workflow_run_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunSummaries, name: "workflowRunSummaries", traits: {"smithy.api#required" => {}}))
    ListWorkflowRunsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWorkflowRunsResponse.type = Types::ListWorkflowRunsResponse
    ModelAlias.add_member(:alias_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelId, name: "aliasName", traits: {"smithy.api#required" => {}}))
    ModelAlias.add_member(:latest_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelId, name: "latestModelId", traits: {"smithy.api#required" => {}}))
    ModelAlias.add_member(:resolved_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelId, name: "resolvedModelId"))
    ModelAlias.type = Types::ModelAlias
    ModelAliases.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelAlias, name: "member"))
    ModelIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelId, name: "member"))
    ModelLifecycle.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ModelLifecycle.type = Types::ModelLifecycle
    ModelStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ModelStatus.add_member(:legacy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEGACY", traits: {"smithy.api#enumValue" => "LEGACY"}))
    ModelStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    ModelStatus.add_member(:preview, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREVIEW", traits: {"smithy.api#enumValue" => "PREVIEW"}))
    ModelSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelSummary, name: "member"))
    ModelSummary.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelId, name: "modelId", traits: {"smithy.api#required" => {}}))
    ModelSummary.add_member(:model_lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelLifecycle, name: "modelLifecycle", traits: {"smithy.api#required" => {}}))
    ModelSummary.add_member(:minimum_compatibility_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minimumCompatibilityVersion", traits: {"smithy.api#required" => {}}))
    ModelSummary.type = Types::ModelSummary
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummary, name: "member"))
    SessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "sessionId", traits: {"smithy.api#required" => {}}))
    SessionSummary.type = Types::SessionSummary
    SortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "Ascending"}))
    SortOrder.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "Descending"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    ToolInputSchema.add_member(:json, Types::ToolInputSchema::Json, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolInputSchemaDocument, name: "json"))
    ToolInputSchema.add_member(:unknown, Types::ToolInputSchema::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ToolInputSchema.type = Types::ToolInputSchema
    ToolSpec.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolName, name: "name", traits: {"smithy.api#required" => {}}))
    ToolSpec.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolDescription, name: "description", traits: {"smithy.api#required" => {}}))
    ToolSpec.add_member(:input_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolInputSchema, name: "inputSchema", traits: {"smithy.api#required" => {}}))
    ToolSpec.type = Types::ToolSpec
    ToolSpecs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolSpec, name: "member"))
    TraceLocation.add_member(:location_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceLocationType, name: "locationType", traits: {"smithy.api#required" => {}}))
    TraceLocation.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "location", traits: {"smithy.api#required" => {}}))
    TraceLocation.type = Types::TraceLocation
    TraceLocationType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    UpdateActRequest.add_member(:workflow_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "workflowDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateActRequest.add_member(:workflow_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "workflowRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateActRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateActRequest.add_member(:act_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "actId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateActRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateActRequest.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ActError, name: "error"))
    UpdateActRequest.type = Types::UpdateActRequest
    UpdateActResponse.type = Types::UpdateActResponse
    UpdateWorkflowRunRequest.add_member(:workflow_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "workflowDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkflowRunRequest.add_member(:workflow_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "workflowRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkflowRunRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateWorkflowRunRequest.type = Types::UpdateWorkflowRunRequest
    UpdateWorkflowRunResponse.type = Types::UpdateWorkflowRunResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FieldValidationFailed"}))
    ValidationExceptionReason.add_member(:invalid_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_STATUS", traits: {"smithy.api#enumValue" => "InvalidStatus"}))
    ValidationExceptionReason.add_member(:guardrail_intervened, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARDRAIL_INTERVENED", traits: {"smithy.api#enumValue" => "GuardrailIntervened"}))
    WorkflowDefinitionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    WorkflowDefinitionStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    WorkflowDefinitionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionSummary, name: "member"))
    WorkflowDefinitionSummary.add_member(:workflow_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionArn, name: "workflowDefinitionArn", traits: {"smithy.api#required" => {}}))
    WorkflowDefinitionSummary.add_member(:workflow_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionName, name: "workflowDefinitionName", traits: {"smithy.api#required" => {}}))
    WorkflowDefinitionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    WorkflowDefinitionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinitionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    WorkflowDefinitionSummary.type = Types::WorkflowDefinitionSummary
    WorkflowExportConfig.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3BucketName", traits: {"smithy.api#required" => {}}))
    WorkflowExportConfig.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "s3KeyPrefix"))
    WorkflowExportConfig.type = Types::WorkflowExportConfig
    WorkflowRunStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    WorkflowRunStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    WorkflowRunStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    WorkflowRunStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    WorkflowRunStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    WorkflowRunSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunSummary, name: "member"))
    WorkflowRunSummary.add_member(:workflow_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunArn, name: "workflowRunArn", traits: {"smithy.api#required" => {}}))
    WorkflowRunSummary.add_member(:workflow_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, name: "workflowRunId", traits: {"smithy.api#required" => {}}))
    WorkflowRunSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunStatus, name: "status", traits: {"smithy.api#required" => {}}))
    WorkflowRunSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "startedAt", traits: {"smithy.api#required" => {}}))
    WorkflowRunSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "endedAt"))
    WorkflowRunSummary.add_member(:trace_location, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceLocation, name: "traceLocation"))
    WorkflowRunSummary.type = Types::WorkflowRunSummary

    AmazonNovaAgentsDataPlane = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.novaact#AmazonNovaAgentsDataPlane"
      service.name = "AmazonNovaAgentsDataPlane"
      service.version = "2025-08-22"
      service.traits = {"aws.api#service" => {"sdkId" => "Nova Act", "arnNamespace" => "nova-act", "endpointPrefix" => "nova-act"}, "aws.auth#sigv4" => {"name" => "nova-act"}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Nova Act Service", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://nova-act-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://nova-act-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://nova-act.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://nova-act.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_act, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#CreateAct"
        operation.name = "CreateAct"
        operation.input = CreateActRequest
        operation.output = CreateActResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}/sessions/{sessionId}/acts", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#CreateSession"
        operation.name = "CreateSession"
        operation.input = CreateSessionRequest
        operation.output = CreateSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}/sessions", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_workflow_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#CreateWorkflowDefinition"
        operation.name = "CreateWorkflowDefinition"
        operation.input = CreateWorkflowDefinitionRequest
        operation.output = CreateWorkflowDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/workflow-definitions", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_workflow_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#CreateWorkflowRun"
        operation.name = "CreateWorkflowRun"
        operation.input = CreateWorkflowRunRequest
        operation.output = CreateWorkflowRunResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/workflow-definitions/{workflowDefinitionName}/workflow-runs", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#DeleteWorkflowDefinition"
        operation.name = "DeleteWorkflowDefinition"
        operation.input = DeleteWorkflowDefinitionRequest
        operation.output = DeleteWorkflowDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/workflow-definitions/{workflowDefinitionName}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#DeleteWorkflowRun"
        operation.name = "DeleteWorkflowRun"
        operation.input = DeleteWorkflowRunRequest
        operation.output = DeleteWorkflowRunResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_workflow_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#GetWorkflowDefinition"
        operation.name = "GetWorkflowDefinition"
        operation.input = GetWorkflowDefinitionRequest
        operation.output = GetWorkflowDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflow-definitions/{workflowDefinitionName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#GetWorkflowRun"
        operation.name = "GetWorkflowRun"
        operation.input = GetWorkflowRunRequest
        operation.output = GetWorkflowRunResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:invoke_act_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#InvokeActStep"
        operation.name = "InvokeActStep"
        operation.input = InvokeActStepRequest
        operation.output = InvokeActStepResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}/sessions/{sessionId}/acts/{actId}/invoke-step/", "code" => 200}}
      end)
      service.add_operation(:list_acts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#ListActs"
        operation.name = "ListActs"
        operation.input = ListActsRequest
        operation.output = ListActsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workflow-definitions/{workflowDefinitionName}/acts", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListActs.new
      end)
      service.add_operation(:list_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#ListModels"
        operation.name = "ListModels"
        operation.input = ListModelsRequest
        operation.output = ListModelsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/models", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListModelsSuccess", "params" => {"clientCompatibilityVersion" => 1}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:list_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#ListSessions"
        operation.name = "ListSessions"
        operation.input = ListSessionsRequest
        operation.output = ListSessionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessions.new
      end)
      service.add_operation(:list_workflow_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#ListWorkflowDefinitions"
        operation.name = "ListWorkflowDefinitions"
        operation.input = ListWorkflowDefinitionsRequest
        operation.output = ListWorkflowDefinitionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workflow-definitions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflowDefinitions.new
      end)
      service.add_operation(:list_workflow_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#ListWorkflowRuns"
        operation.name = "ListWorkflowRuns"
        operation.input = ListWorkflowRunsRequest
        operation.output = ListWorkflowRunsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/workflow-definitions/{workflowDefinitionName}/workflow-runs", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflowRuns.new
      end)
      service.add_operation(:update_act, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#UpdateAct"
        operation.name = "UpdateAct"
        operation.input = UpdateActRequest
        operation.output = UpdateActResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}/sessions/{sessionId}/acts/{actId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_workflow_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.novaact#UpdateWorkflowRun"
        operation.name = "UpdateWorkflowRun"
        operation.input = UpdateWorkflowRunRequest
        operation.output = UpdateWorkflowRunResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}", "code" => 200}, "smithy.api#idempotent" => {}}
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
