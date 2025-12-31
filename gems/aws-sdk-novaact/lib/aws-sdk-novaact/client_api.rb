# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::NovaAct
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActError = Shapes::StructureShape.new(name: 'ActError')
    ActErrorMessageString = Shapes::StringShape.new(name: 'ActErrorMessageString')
    ActErrorTypeString = Shapes::StringShape.new(name: 'ActErrorTypeString')
    ActStatus = Shapes::StringShape.new(name: 'ActStatus')
    ActSummaries = Shapes::ListShape.new(name: 'ActSummaries')
    ActSummary = Shapes::StructureShape.new(name: 'ActSummary')
    Call = Shapes::StructureShape.new(name: 'Call')
    CallId = Shapes::StringShape.new(name: 'CallId')
    CallResult = Shapes::StructureShape.new(name: 'CallResult')
    CallResultContent = Shapes::UnionShape.new(name: 'CallResultContent')
    CallResultContents = Shapes::ListShape.new(name: 'CallResultContents')
    CallResults = Shapes::ListShape.new(name: 'CallResults')
    Calls = Shapes::ListShape.new(name: 'Calls')
    ClientInfo = Shapes::StructureShape.new(name: 'ClientInfo')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudWatchLogGroupName = Shapes::StringShape.new(name: 'CloudWatchLogGroupName')
    CompatibilityInformation = Shapes::StructureShape.new(name: 'CompatibilityInformation')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateActRequest = Shapes::StructureShape.new(name: 'CreateActRequest')
    CreateActResponse = Shapes::StructureShape.new(name: 'CreateActResponse')
    CreateSessionRequest = Shapes::StructureShape.new(name: 'CreateSessionRequest')
    CreateSessionResponse = Shapes::StructureShape.new(name: 'CreateSessionResponse')
    CreateWorkflowDefinitionRequest = Shapes::StructureShape.new(name: 'CreateWorkflowDefinitionRequest')
    CreateWorkflowDefinitionResponse = Shapes::StructureShape.new(name: 'CreateWorkflowDefinitionResponse')
    CreateWorkflowRunRequest = Shapes::StructureShape.new(name: 'CreateWorkflowRunRequest')
    CreateWorkflowRunResponse = Shapes::StructureShape.new(name: 'CreateWorkflowRunResponse')
    DateTimestamp = Shapes::TimestampShape.new(name: 'DateTimestamp', timestampFormat: "iso8601")
    DeleteWorkflowDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteWorkflowDefinitionRequest')
    DeleteWorkflowDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteWorkflowDefinitionResponse')
    DeleteWorkflowRunRequest = Shapes::StructureShape.new(name: 'DeleteWorkflowRunRequest')
    DeleteWorkflowRunResponse = Shapes::StructureShape.new(name: 'DeleteWorkflowRunResponse')
    GetWorkflowDefinitionRequest = Shapes::StructureShape.new(name: 'GetWorkflowDefinitionRequest')
    GetWorkflowDefinitionResponse = Shapes::StructureShape.new(name: 'GetWorkflowDefinitionResponse')
    GetWorkflowRunRequest = Shapes::StructureShape.new(name: 'GetWorkflowRunRequest')
    GetWorkflowRunResponse = Shapes::StructureShape.new(name: 'GetWorkflowRunResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InternalServerExceptionReason = Shapes::StringShape.new(name: 'InternalServerExceptionReason')
    InvokeActStepRequest = Shapes::StructureShape.new(name: 'InvokeActStepRequest')
    InvokeActStepResponse = Shapes::StructureShape.new(name: 'InvokeActStepResponse')
    ListActsRequest = Shapes::StructureShape.new(name: 'ListActsRequest')
    ListActsResponse = Shapes::StructureShape.new(name: 'ListActsResponse')
    ListModelsRequest = Shapes::StructureShape.new(name: 'ListModelsRequest')
    ListModelsResponse = Shapes::StructureShape.new(name: 'ListModelsResponse')
    ListSessionsRequest = Shapes::StructureShape.new(name: 'ListSessionsRequest')
    ListSessionsResponse = Shapes::StructureShape.new(name: 'ListSessionsResponse')
    ListWorkflowDefinitionsRequest = Shapes::StructureShape.new(name: 'ListWorkflowDefinitionsRequest')
    ListWorkflowDefinitionsResponse = Shapes::StructureShape.new(name: 'ListWorkflowDefinitionsResponse')
    ListWorkflowRunsRequest = Shapes::StructureShape.new(name: 'ListWorkflowRunsRequest')
    ListWorkflowRunsResponse = Shapes::StructureShape.new(name: 'ListWorkflowRunsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    ModelAlias = Shapes::StructureShape.new(name: 'ModelAlias')
    ModelAliases = Shapes::ListShape.new(name: 'ModelAliases')
    ModelId = Shapes::StringShape.new(name: 'ModelId')
    ModelIdList = Shapes::ListShape.new(name: 'ModelIdList')
    ModelLifecycle = Shapes::StructureShape.new(name: 'ModelLifecycle')
    ModelStatus = Shapes::StringShape.new(name: 'ModelStatus')
    ModelSummaries = Shapes::ListShape.new(name: 'ModelSummaries')
    ModelSummary = Shapes::StructureShape.new(name: 'ModelSummary')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3KeyPrefix = Shapes::StringShape.new(name: 'S3KeyPrefix')
    SensitiveDocument = Shapes::DocumentShape.new(name: 'SensitiveDocument', document: true)
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionSummaries = Shapes::ListShape.new(name: 'SessionSummaries')
    SessionSummary = Shapes::StructureShape.new(name: 'SessionSummary')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    String = Shapes::StringShape.new(name: 'String')
    Task = Shapes::StringShape.new(name: 'Task')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ToolDescription = Shapes::StringShape.new(name: 'ToolDescription')
    ToolInputSchema = Shapes::UnionShape.new(name: 'ToolInputSchema')
    ToolInputSchemaDocument = Shapes::DocumentShape.new(name: 'ToolInputSchemaDocument', document: true)
    ToolName = Shapes::StringShape.new(name: 'ToolName')
    ToolSpec = Shapes::StructureShape.new(name: 'ToolSpec')
    ToolSpecs = Shapes::ListShape.new(name: 'ToolSpecs')
    TraceLocation = Shapes::StructureShape.new(name: 'TraceLocation')
    TraceLocationType = Shapes::StringShape.new(name: 'TraceLocationType')
    UpdateActRequest = Shapes::StructureShape.new(name: 'UpdateActRequest')
    UpdateActResponse = Shapes::StructureShape.new(name: 'UpdateActResponse')
    UpdateWorkflowRunRequest = Shapes::StructureShape.new(name: 'UpdateWorkflowRunRequest')
    UpdateWorkflowRunResponse = Shapes::StructureShape.new(name: 'UpdateWorkflowRunResponse')
    UuidString = Shapes::StringShape.new(name: 'UuidString')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    WorkflowDefinitionArn = Shapes::StringShape.new(name: 'WorkflowDefinitionArn')
    WorkflowDefinitionName = Shapes::StringShape.new(name: 'WorkflowDefinitionName')
    WorkflowDefinitionStatus = Shapes::StringShape.new(name: 'WorkflowDefinitionStatus')
    WorkflowDefinitionSummaries = Shapes::ListShape.new(name: 'WorkflowDefinitionSummaries')
    WorkflowDefinitionSummary = Shapes::StructureShape.new(name: 'WorkflowDefinitionSummary')
    WorkflowDescription = Shapes::StringShape.new(name: 'WorkflowDescription')
    WorkflowExportConfig = Shapes::StructureShape.new(name: 'WorkflowExportConfig')
    WorkflowRunArn = Shapes::StringShape.new(name: 'WorkflowRunArn')
    WorkflowRunStatus = Shapes::StringShape.new(name: 'WorkflowRunStatus')
    WorkflowRunSummaries = Shapes::ListShape.new(name: 'WorkflowRunSummaries')
    WorkflowRunSummary = Shapes::StructureShape.new(name: 'WorkflowRunSummary')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActError.add_member(:message, Shapes::ShapeRef.new(shape: ActErrorMessageString, required: true, location_name: "message"))
    ActError.add_member(:type, Shapes::ShapeRef.new(shape: ActErrorTypeString, location_name: "type"))
    ActError.struct_class = Types::ActError

    ActSummaries.member = Shapes::ShapeRef.new(shape: ActSummary)

    ActSummary.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location_name: "workflowRunId"))
    ActSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location_name: "sessionId"))
    ActSummary.add_member(:act_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location_name: "actId"))
    ActSummary.add_member(:status, Shapes::ShapeRef.new(shape: ActStatus, required: true, location_name: "status"))
    ActSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "startedAt"))
    ActSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "endedAt"))
    ActSummary.add_member(:trace_location, Shapes::ShapeRef.new(shape: TraceLocation, location_name: "traceLocation"))
    ActSummary.struct_class = Types::ActSummary

    Call.add_member(:call_id, Shapes::ShapeRef.new(shape: CallId, required: true, location_name: "callId"))
    Call.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveDocument, required: true, location_name: "input"))
    Call.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Call.struct_class = Types::Call

    CallResult.add_member(:call_id, Shapes::ShapeRef.new(shape: CallId, location_name: "callId"))
    CallResult.add_member(:content, Shapes::ShapeRef.new(shape: CallResultContents, required: true, location_name: "content"))
    CallResult.struct_class = Types::CallResult

    CallResultContent.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    CallResultContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CallResultContent.add_member_subclass(:text, Types::CallResultContent::Text)
    CallResultContent.add_member_subclass(:unknown, Types::CallResultContent::Unknown)
    CallResultContent.struct_class = Types::CallResultContent

    CallResultContents.member = Shapes::ShapeRef.new(shape: CallResultContent)

    CallResults.member = Shapes::ShapeRef.new(shape: CallResult)

    Calls.member = Shapes::ShapeRef.new(shape: Call)

    ClientInfo.add_member(:compatibility_version, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "compatibilityVersion"))
    ClientInfo.add_member(:sdk_version, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "sdkVersion"))
    ClientInfo.struct_class = Types::ClientInfo

    CompatibilityInformation.add_member(:client_compatibility_version, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "clientCompatibilityVersion"))
    CompatibilityInformation.add_member(:supported_model_ids, Shapes::ShapeRef.new(shape: ModelIdList, required: true, location_name: "supportedModelIds"))
    CompatibilityInformation.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    CompatibilityInformation.struct_class = Types::CompatibilityInformation

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateActRequest.add_member(:workflow_definition_name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location: "uri", location_name: "workflowDefinitionName"))
    CreateActRequest.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location: "uri", location_name: "workflowRunId"))
    CreateActRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location: "uri", location_name: "sessionId"))
    CreateActRequest.add_member(:task, Shapes::ShapeRef.new(shape: Task, required: true, location_name: "task"))
    CreateActRequest.add_member(:tool_specs, Shapes::ShapeRef.new(shape: ToolSpecs, location_name: "toolSpecs"))
    CreateActRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateActRequest.struct_class = Types::CreateActRequest

    CreateActResponse.add_member(:act_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location_name: "actId"))
    CreateActResponse.add_member(:status, Shapes::ShapeRef.new(shape: ActStatus, required: true, location_name: "status"))
    CreateActResponse.struct_class = Types::CreateActResponse

    CreateSessionRequest.add_member(:workflow_definition_name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location: "uri", location_name: "workflowDefinitionName"))
    CreateSessionRequest.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location: "uri", location_name: "workflowRunId"))
    CreateSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateSessionRequest.struct_class = Types::CreateSessionRequest

    CreateSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location_name: "sessionId"))
    CreateSessionResponse.struct_class = Types::CreateSessionResponse

    CreateWorkflowDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location_name: "name"))
    CreateWorkflowDefinitionRequest.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowDescription, location_name: "description"))
    CreateWorkflowDefinitionRequest.add_member(:export_config, Shapes::ShapeRef.new(shape: WorkflowExportConfig, location_name: "exportConfig"))
    CreateWorkflowDefinitionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateWorkflowDefinitionRequest.struct_class = Types::CreateWorkflowDefinitionRequest

    CreateWorkflowDefinitionResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowDefinitionStatus, required: true, location_name: "status"))
    CreateWorkflowDefinitionResponse.struct_class = Types::CreateWorkflowDefinitionResponse

    CreateWorkflowRunRequest.add_member(:workflow_definition_name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location: "uri", location_name: "workflowDefinitionName"))
    CreateWorkflowRunRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    CreateWorkflowRunRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateWorkflowRunRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: CloudWatchLogGroupName, location_name: "logGroupName"))
    CreateWorkflowRunRequest.add_member(:client_info, Shapes::ShapeRef.new(shape: ClientInfo, required: true, location_name: "clientInfo"))
    CreateWorkflowRunRequest.struct_class = Types::CreateWorkflowRunRequest

    CreateWorkflowRunResponse.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location_name: "workflowRunId"))
    CreateWorkflowRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowRunStatus, required: true, location_name: "status"))
    CreateWorkflowRunResponse.struct_class = Types::CreateWorkflowRunResponse

    DeleteWorkflowDefinitionRequest.add_member(:workflow_definition_name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location: "uri", location_name: "workflowDefinitionName"))
    DeleteWorkflowDefinitionRequest.struct_class = Types::DeleteWorkflowDefinitionRequest

    DeleteWorkflowDefinitionResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowDefinitionStatus, required: true, location_name: "status"))
    DeleteWorkflowDefinitionResponse.struct_class = Types::DeleteWorkflowDefinitionResponse

    DeleteWorkflowRunRequest.add_member(:workflow_definition_name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location: "uri", location_name: "workflowDefinitionName"))
    DeleteWorkflowRunRequest.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location: "uri", location_name: "workflowRunId"))
    DeleteWorkflowRunRequest.struct_class = Types::DeleteWorkflowRunRequest

    DeleteWorkflowRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowRunStatus, required: true, location_name: "status"))
    DeleteWorkflowRunResponse.struct_class = Types::DeleteWorkflowRunResponse

    GetWorkflowDefinitionRequest.add_member(:workflow_definition_name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location: "uri", location_name: "workflowDefinitionName"))
    GetWorkflowDefinitionRequest.struct_class = Types::GetWorkflowDefinitionRequest

    GetWorkflowDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location_name: "name"))
    GetWorkflowDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WorkflowDefinitionArn, required: true, location_name: "arn"))
    GetWorkflowDefinitionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetWorkflowDefinitionResponse.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowDescription, location_name: "description"))
    GetWorkflowDefinitionResponse.add_member(:export_config, Shapes::ShapeRef.new(shape: WorkflowExportConfig, location_name: "exportConfig"))
    GetWorkflowDefinitionResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowDefinitionStatus, required: true, location_name: "status"))
    GetWorkflowDefinitionResponse.struct_class = Types::GetWorkflowDefinitionResponse

    GetWorkflowRunRequest.add_member(:workflow_definition_name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location: "uri", location_name: "workflowDefinitionName"))
    GetWorkflowRunRequest.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location: "uri", location_name: "workflowRunId"))
    GetWorkflowRunRequest.struct_class = Types::GetWorkflowRunRequest

    GetWorkflowRunResponse.add_member(:workflow_run_arn, Shapes::ShapeRef.new(shape: WorkflowRunArn, required: true, location_name: "workflowRunArn"))
    GetWorkflowRunResponse.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location_name: "workflowRunId"))
    GetWorkflowRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowRunStatus, required: true, location_name: "status"))
    GetWorkflowRunResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "startedAt"))
    GetWorkflowRunResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "endedAt"))
    GetWorkflowRunResponse.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    GetWorkflowRunResponse.add_member(:log_group_name, Shapes::ShapeRef.new(shape: CloudWatchLogGroupName, location_name: "logGroupName"))
    GetWorkflowRunResponse.struct_class = Types::GetWorkflowRunResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.add_member(:reason, Shapes::ShapeRef.new(shape: InternalServerExceptionReason, location_name: "reason"))
    InternalServerException.struct_class = Types::InternalServerException

    InvokeActStepRequest.add_member(:workflow_definition_name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location: "uri", location_name: "workflowDefinitionName"))
    InvokeActStepRequest.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location: "uri", location_name: "workflowRunId"))
    InvokeActStepRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location: "uri", location_name: "sessionId"))
    InvokeActStepRequest.add_member(:act_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location: "uri", location_name: "actId"))
    InvokeActStepRequest.add_member(:call_results, Shapes::ShapeRef.new(shape: CallResults, required: true, location_name: "callResults"))
    InvokeActStepRequest.add_member(:previous_step_id, Shapes::ShapeRef.new(shape: UuidString, location_name: "previousStepId"))
    InvokeActStepRequest.struct_class = Types::InvokeActStepRequest

    InvokeActStepResponse.add_member(:calls, Shapes::ShapeRef.new(shape: Calls, required: true, location_name: "calls"))
    InvokeActStepResponse.add_member(:step_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location_name: "stepId"))
    InvokeActStepResponse.struct_class = Types::InvokeActStepResponse

    ListActsRequest.add_member(:workflow_definition_name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location: "uri", location_name: "workflowDefinitionName"))
    ListActsRequest.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: UuidString, location: "querystring", location_name: "workflowRunId"))
    ListActsRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: UuidString, location: "querystring", location_name: "sessionId"))
    ListActsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListActsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListActsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    ListActsRequest.struct_class = Types::ListActsRequest

    ListActsResponse.add_member(:act_summaries, Shapes::ShapeRef.new(shape: ActSummaries, required: true, location_name: "actSummaries"))
    ListActsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListActsResponse.struct_class = Types::ListActsResponse

    ListModelsRequest.add_member(:client_compatibility_version, Shapes::ShapeRef.new(shape: Integer, required: true, location: "querystring", location_name: "clientCompatibilityVersion"))
    ListModelsRequest.struct_class = Types::ListModelsRequest

    ListModelsResponse.add_member(:model_summaries, Shapes::ShapeRef.new(shape: ModelSummaries, required: true, location_name: "modelSummaries"))
    ListModelsResponse.add_member(:model_aliases, Shapes::ShapeRef.new(shape: ModelAliases, required: true, location_name: "modelAliases"))
    ListModelsResponse.add_member(:compatibility_information, Shapes::ShapeRef.new(shape: CompatibilityInformation, required: true, location_name: "compatibilityInformation"))
    ListModelsResponse.struct_class = Types::ListModelsResponse

    ListSessionsRequest.add_member(:workflow_definition_name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location: "uri", location_name: "workflowDefinitionName"))
    ListSessionsRequest.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location: "uri", location_name: "workflowRunId"))
    ListSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSessionsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    ListSessionsRequest.struct_class = Types::ListSessionsRequest

    ListSessionsResponse.add_member(:session_summaries, Shapes::ShapeRef.new(shape: SessionSummaries, required: true, location_name: "sessionSummaries"))
    ListSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSessionsResponse.struct_class = Types::ListSessionsResponse

    ListWorkflowDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListWorkflowDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListWorkflowDefinitionsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    ListWorkflowDefinitionsRequest.struct_class = Types::ListWorkflowDefinitionsRequest

    ListWorkflowDefinitionsResponse.add_member(:workflow_definition_summaries, Shapes::ShapeRef.new(shape: WorkflowDefinitionSummaries, required: true, location_name: "workflowDefinitionSummaries"))
    ListWorkflowDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkflowDefinitionsResponse.struct_class = Types::ListWorkflowDefinitionsResponse

    ListWorkflowRunsRequest.add_member(:workflow_definition_name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location: "uri", location_name: "workflowDefinitionName"))
    ListWorkflowRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListWorkflowRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListWorkflowRunsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    ListWorkflowRunsRequest.struct_class = Types::ListWorkflowRunsRequest

    ListWorkflowRunsResponse.add_member(:workflow_run_summaries, Shapes::ShapeRef.new(shape: WorkflowRunSummaries, required: true, location_name: "workflowRunSummaries"))
    ListWorkflowRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkflowRunsResponse.struct_class = Types::ListWorkflowRunsResponse

    ModelAlias.add_member(:alias_name, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "aliasName"))
    ModelAlias.add_member(:latest_model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "latestModelId"))
    ModelAlias.add_member(:resolved_model_id, Shapes::ShapeRef.new(shape: ModelId, location_name: "resolvedModelId"))
    ModelAlias.struct_class = Types::ModelAlias

    ModelAliases.member = Shapes::ShapeRef.new(shape: ModelAlias)

    ModelIdList.member = Shapes::ShapeRef.new(shape: ModelId)

    ModelLifecycle.add_member(:status, Shapes::ShapeRef.new(shape: ModelStatus, required: true, location_name: "status"))
    ModelLifecycle.struct_class = Types::ModelLifecycle

    ModelSummaries.member = Shapes::ShapeRef.new(shape: ModelSummary)

    ModelSummary.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    ModelSummary.add_member(:model_lifecycle, Shapes::ShapeRef.new(shape: ModelLifecycle, required: true, location_name: "modelLifecycle"))
    ModelSummary.add_member(:minimum_compatibility_version, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "minimumCompatibilityVersion"))
    ModelSummary.struct_class = Types::ModelSummary

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SessionSummaries.member = Shapes::ShapeRef.new(shape: SessionSummary)

    SessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location_name: "sessionId"))
    SessionSummary.struct_class = Types::SessionSummary

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ToolInputSchema.add_member(:json, Shapes::ShapeRef.new(shape: ToolInputSchemaDocument, location_name: "json"))
    ToolInputSchema.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ToolInputSchema.add_member_subclass(:json, Types::ToolInputSchema::Json)
    ToolInputSchema.add_member_subclass(:unknown, Types::ToolInputSchema::Unknown)
    ToolInputSchema.struct_class = Types::ToolInputSchema

    ToolSpec.add_member(:name, Shapes::ShapeRef.new(shape: ToolName, required: true, location_name: "name"))
    ToolSpec.add_member(:description, Shapes::ShapeRef.new(shape: ToolDescription, required: true, location_name: "description"))
    ToolSpec.add_member(:input_schema, Shapes::ShapeRef.new(shape: ToolInputSchema, required: true, location_name: "inputSchema"))
    ToolSpec.struct_class = Types::ToolSpec

    ToolSpecs.member = Shapes::ShapeRef.new(shape: ToolSpec)

    TraceLocation.add_member(:location_type, Shapes::ShapeRef.new(shape: TraceLocationType, required: true, location_name: "locationType"))
    TraceLocation.add_member(:location, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "location"))
    TraceLocation.struct_class = Types::TraceLocation

    UpdateActRequest.add_member(:workflow_definition_name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location: "uri", location_name: "workflowDefinitionName"))
    UpdateActRequest.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location: "uri", location_name: "workflowRunId"))
    UpdateActRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location: "uri", location_name: "sessionId"))
    UpdateActRequest.add_member(:act_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location: "uri", location_name: "actId"))
    UpdateActRequest.add_member(:status, Shapes::ShapeRef.new(shape: ActStatus, required: true, location_name: "status"))
    UpdateActRequest.add_member(:error, Shapes::ShapeRef.new(shape: ActError, location_name: "error"))
    UpdateActRequest.struct_class = Types::UpdateActRequest

    UpdateActResponse.struct_class = Types::UpdateActResponse

    UpdateWorkflowRunRequest.add_member(:workflow_definition_name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location: "uri", location_name: "workflowDefinitionName"))
    UpdateWorkflowRunRequest.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location: "uri", location_name: "workflowRunId"))
    UpdateWorkflowRunRequest.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowRunStatus, required: true, location_name: "status"))
    UpdateWorkflowRunRequest.struct_class = Types::UpdateWorkflowRunRequest

    UpdateWorkflowRunResponse.struct_class = Types::UpdateWorkflowRunResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WorkflowDefinitionSummaries.member = Shapes::ShapeRef.new(shape: WorkflowDefinitionSummary)

    WorkflowDefinitionSummary.add_member(:workflow_definition_arn, Shapes::ShapeRef.new(shape: WorkflowDefinitionArn, required: true, location_name: "workflowDefinitionArn"))
    WorkflowDefinitionSummary.add_member(:workflow_definition_name, Shapes::ShapeRef.new(shape: WorkflowDefinitionName, required: true, location_name: "workflowDefinitionName"))
    WorkflowDefinitionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    WorkflowDefinitionSummary.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowDefinitionStatus, required: true, location_name: "status"))
    WorkflowDefinitionSummary.struct_class = Types::WorkflowDefinitionSummary

    WorkflowExportConfig.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3BucketName"))
    WorkflowExportConfig.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "s3KeyPrefix"))
    WorkflowExportConfig.struct_class = Types::WorkflowExportConfig

    WorkflowRunSummaries.member = Shapes::ShapeRef.new(shape: WorkflowRunSummary)

    WorkflowRunSummary.add_member(:workflow_run_arn, Shapes::ShapeRef.new(shape: WorkflowRunArn, required: true, location_name: "workflowRunArn"))
    WorkflowRunSummary.add_member(:workflow_run_id, Shapes::ShapeRef.new(shape: UuidString, required: true, location_name: "workflowRunId"))
    WorkflowRunSummary.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowRunStatus, required: true, location_name: "status"))
    WorkflowRunSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "startedAt"))
    WorkflowRunSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "endedAt"))
    WorkflowRunSummary.add_member(:trace_location, Shapes::ShapeRef.new(shape: TraceLocation, location_name: "traceLocation"))
    WorkflowRunSummary.struct_class = Types::WorkflowRunSummary


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-08-22"

      api.metadata = {
        "apiVersion" => "2025-08-22",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "nova-act",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Nova Act Service",
        "serviceId" => "Nova Act",
        "signatureVersion" => "v4",
        "signingName" => "nova-act",
        "uid" => "nova-act-2025-08-22",
      }

      api.add_operation(:create_act, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAct"
        o.http_method = "PUT"
        o.http_request_uri = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}/sessions/{sessionId}/acts"
        o.input = Shapes::ShapeRef.new(shape: CreateActRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateActResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSession"
        o.http_method = "PUT"
        o.http_request_uri = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}/sessions"
        o.input = Shapes::ShapeRef.new(shape: CreateSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_workflow_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkflowDefinition"
        o.http_method = "PUT"
        o.http_request_uri = "/workflow-definitions"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkflowDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkflowDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_workflow_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkflowRun"
        o.http_method = "PUT"
        o.http_request_uri = "/workflow-definitions/{workflowDefinitionName}/workflow-runs"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkflowRunRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkflowRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_workflow_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkflowDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/workflow-definitions/{workflowDefinitionName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkflowDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkflowDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_workflow_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkflowRun"
        o.http_method = "DELETE"
        o.http_request_uri = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkflowRunRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkflowRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_workflow_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflowDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/workflow-definitions/{workflowDefinitionName}"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_workflow_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflowRun"
        o.http_method = "GET"
        o.http_request_uri = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowRunRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:invoke_act_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeActStep"
        o.http_method = "PUT"
        o.http_request_uri = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}/sessions/{sessionId}/acts/{actId}/invoke-step/"
        o.input = Shapes::ShapeRef.new(shape: InvokeActStepRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeActStepResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_acts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListActs"
        o.http_method = "POST"
        o.http_request_uri = "/workflow-definitions/{workflowDefinitionName}/acts"
        o.input = Shapes::ShapeRef.new(shape: ListActsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListActsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModels"
        o.http_method = "POST"
        o.http_request_uri = "/models"
        o.input = Shapes::ShapeRef.new(shape: ListModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSessions"
        o.http_method = "POST"
        o.http_request_uri = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}"
        o.input = Shapes::ShapeRef.new(shape: ListSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workflow_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflowDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/workflow-definitions"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.http_request_uri = "/workflow-definitions/{workflowDefinitionName}/workflow-runs"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_act, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAct"
        o.http_method = "PUT"
        o.http_request_uri = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}/sessions/{sessionId}/acts/{actId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateActRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateActResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_workflow_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkflowRun"
        o.http_method = "PUT"
        o.http_request_uri = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkflowRunRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkflowRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
