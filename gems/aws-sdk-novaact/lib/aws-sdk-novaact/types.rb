# frozen_string_literal: true

# This is generated code!

module Aws::NovaAct
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient permissions to perform this action.</p>
    # @!attribute message
    #   <p>You don't have sufficient permissions to perform this action. Verify your IAM permissions and try again.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error information when an act fails to execute successfully.</p>
    # @!attribute message
    #   <p>A human-readable description of the error that occurred.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type or category of error that occurred.</p>
    #   @return [String]
    class ActError < Struct.new(
      nil,
      :message,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an act, including its status and execution timing.</p>
    # @!attribute workflow_run_id
    #   <p>The unique identifier of the workflow run containing this act.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the session containing this act.</p>
    #   @return [String]
    # @!attribute act_id
    #   <p>The unique identifier of the act.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current execution status of the act.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The timestamp when the act started execution.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The timestamp when the act completed execution, if applicable.</p>
    #   @return [Time]
    # @!attribute trace_location
    #   <p>The location where trace information for this act is stored.</p>
    #   @return [Types::TraceLocation]
    class ActSummary < Struct.new(
      nil,
      :workflow_run_id,
      :session_id,
      :act_id,
      :status,
      :started_at,
      :ended_at,
      :trace_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request for the client to execute a specific tool with given parameters.</p>
    # @!attribute call_id
    #   <p>A unique identifier for this tool call, used to match results back to requests.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The input parameters for the tool call, formatted according to the tool's schema.</p>
    #   @return [JSON]
    # @!attribute name
    #   <p>The name of the tool to invoke, following the pattern 'tool.{toolName}' or 'browser.{browserAction}'.</p>
    #   @return [String]
    class Call < Struct.new(
      nil,
      :call_id,
      :input,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result returned from executing a tool call.</p>
    # @!attribute call_id
    #   <p>The identifier of the tool call that this result corresponds to.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content returned by the tool execution, which can include text or other media types.</p>
    #   @return [Array<Types::CallResultContent>]
    class CallResult < Struct.new(
      nil,
      :call_id,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Content returned from a tool call execution.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>Text content returned from the tool execution.</p>
    #   @return [String]
    class CallResultContent < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < CallResultContent; end
      class Unknown < CallResultContent; end
    end

    # <p>Information about the client making API requests, used for compatibility checking.</p>
    # @!attribute compatibility_version
    #   <p>The compatibility version of the client, used to ensure API compatibility.</p>
    #   @return [Integer]
    # @!attribute sdk_version
    #   <p>The version of the SDK being used by the client.</p>
    #   @return [String]
    class ClientInfo < Struct.new(
      nil,
      :compatibility_version,
      :sdk_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about client compatibility and supported model versions.</p>
    # @!attribute client_compatibility_version
    #   <p>The client compatibility version that was requested.</p>
    #   @return [Integer]
    # @!attribute supported_model_ids
    #   <p>A list of model IDs that are supported for the client compatibility version.</p>
    #   @return [Array<String>]
    # @!attribute message
    #   <p>Additional information about compatibility requirements or recommendations.</p>
    #   @return [String]
    class CompatibilityInformation < Struct.new(
      nil,
      :client_compatibility_version,
      :supported_model_ids,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed due to a conflict with the current state of the resource.</p>
    # @!attribute message
    #   <p>The requested operation conflicts with the current state of the resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that caused the conflict.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that caused the conflict.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_definition_name
    #   <p>The name of the workflow definition containing the session.</p>
    #   @return [String]
    # @!attribute workflow_run_id
    #   <p>The unique identifier of the workflow run containing the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the session to create the act in.</p>
    #   @return [String]
    # @!attribute task
    #   <p>The task description that defines what the act should accomplish.</p>
    #   @return [String]
    # @!attribute tool_specs
    #   <p>A list of tool specifications that the act can invoke to complete its task.</p>
    #   @return [Array<Types::ToolSpec>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class CreateActRequest < Struct.new(
      nil,
      :workflow_definition_name,
      :workflow_run_id,
      :session_id,
      :task,
      :tool_specs,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute act_id
    #   <p>The unique identifier for the created act.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The initial status of the act after creation.</p>
    #   @return [String]
    class CreateActResponse < Struct.new(
      nil,
      :act_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_definition_name
    #   <p>The name of the workflow definition containing the workflow run.</p>
    #   @return [String]
    # @!attribute workflow_run_id
    #   <p>The unique identifier of the workflow run to create the session in.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class CreateSessionRequest < Struct.new(
      nil,
      :workflow_definition_name,
      :workflow_run_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier for the created session.</p>
    #   @return [String]
    class CreateSessionResponse < Struct.new(
      nil,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow definition. Must be unique within your account and region.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the workflow definition's purpose and functionality.</p>
    #   @return [String]
    # @!attribute export_config
    #   <p>Configuration for exporting workflow execution data to Amazon Simple Storage Service.</p>
    #   @return [Types::WorkflowExportConfig]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class CreateWorkflowDefinitionRequest < Struct.new(
      nil,
      :name,
      :description,
      :export_config,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current status of the workflow definition after creation.</p>
    #   @return [String]
    class CreateWorkflowDefinitionResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_definition_name
    #   <p>The name of the workflow definition to execute.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The ID of the AI model to use for workflow execution.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>The CloudWatch log group name for storing workflow execution logs.</p>
    #   @return [String]
    # @!attribute client_info
    #   <p>Information about the client making the request, including compatibility version and SDK version.</p>
    #   @return [Types::ClientInfo]
    class CreateWorkflowRunRequest < Struct.new(
      nil,
      :workflow_definition_name,
      :model_id,
      :client_token,
      :log_group_name,
      :client_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_run_id
    #   <p>The unique identifier for the created workflow run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The initial status of the workflow run after creation.</p>
    #   @return [String]
    class CreateWorkflowRunResponse < Struct.new(
      nil,
      :workflow_run_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_definition_name
    #   <p>The name of the workflow definition to delete.</p>
    #   @return [String]
    class DeleteWorkflowDefinitionRequest < Struct.new(
      nil,
      :workflow_definition_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the workflow definition after deletion request.</p>
    #   @return [String]
    class DeleteWorkflowDefinitionResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_definition_name
    #   <p>The name of the workflow definition containing the workflow run.</p>
    #   @return [String]
    # @!attribute workflow_run_id
    #   <p>The unique identifier of the workflow run to delete.</p>
    #   @return [String]
    class DeleteWorkflowRunRequest < Struct.new(
      nil,
      :workflow_definition_name,
      :workflow_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the workflow run after deletion request.</p>
    #   @return [String]
    class DeleteWorkflowRunResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_definition_name
    #   <p>The name of the workflow definition to retrieve.</p>
    #   @return [String]
    class GetWorkflowDefinitionRequest < Struct.new(
      nil,
      :workflow_definition_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow definition.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the workflow definition.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the workflow definition was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the workflow definition.</p>
    #   @return [String]
    # @!attribute export_config
    #   <p>The export configuration for the workflow definition.</p>
    #   @return [Types::WorkflowExportConfig]
    # @!attribute status
    #   <p>The current status of the workflow definition.</p>
    #   @return [String]
    class GetWorkflowDefinitionResponse < Struct.new(
      nil,
      :name,
      :arn,
      :created_at,
      :description,
      :export_config,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_definition_name
    #   <p>The name of the workflow definition containing the workflow run.</p>
    #   @return [String]
    # @!attribute workflow_run_id
    #   <p>The unique identifier of the workflow run to retrieve.</p>
    #   @return [String]
    class GetWorkflowRunRequest < Struct.new(
      nil,
      :workflow_definition_name,
      :workflow_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_run_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow run.</p>
    #   @return [String]
    # @!attribute workflow_run_id
    #   <p>The unique identifier of the workflow run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current execution status of the workflow run.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The timestamp when the workflow run started execution.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The timestamp when the workflow run completed execution, if applicable.</p>
    #   @return [Time]
    # @!attribute model_id
    #   <p>The ID of the AI model being used for this workflow run.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>The CloudWatch log group name for this workflow run's logs.</p>
    #   @return [String]
    class GetWorkflowRunResponse < Struct.new(
      nil,
      :workflow_run_arn,
      :workflow_run_id,
      :status,
      :started_at,
      :ended_at,
      :model_id,
      :log_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred. Please try again later.</p>
    # @!attribute message
    #   <p>The service encountered an internal error. Try again later.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    # @!attribute reason
    #   <p>The reason for the internal server error.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_definition_name
    #   <p>The name of the workflow definition containing the act.</p>
    #   @return [String]
    # @!attribute workflow_run_id
    #   <p>The unique identifier of the workflow run containing the act.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the session containing the act.</p>
    #   @return [String]
    # @!attribute act_id
    #   <p>The unique identifier of the act to invoke the next step for.</p>
    #   @return [String]
    # @!attribute call_results
    #   <p>The results from previous tool calls that the act requested.</p>
    #   @return [Array<Types::CallResult>]
    # @!attribute previous_step_id
    #   <p>The identifier of the previous step, used for tracking execution flow.</p>
    #   @return [String]
    class InvokeActStepRequest < Struct.new(
      nil,
      :workflow_definition_name,
      :workflow_run_id,
      :session_id,
      :act_id,
      :call_results,
      :previous_step_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute calls
    #   <p>A list of tool calls that the act wants to execute in this step.</p>
    #   @return [Array<Types::Call>]
    # @!attribute step_id
    #   <p>The unique identifier for this execution step.</p>
    #   @return [String]
    class InvokeActStepResponse < Struct.new(
      nil,
      :calls,
      :step_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_definition_name
    #   <p>The name of the workflow definition containing the session.</p>
    #   @return [String]
    # @!attribute workflow_run_id
    #   <p>The unique identifier of the workflow run containing the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the session to list acts for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of acts to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order for the returned acts (ascending or descending).</p>
    #   @return [String]
    class ListActsRequest < Struct.new(
      nil,
      :workflow_definition_name,
      :workflow_run_id,
      :session_id,
      :max_results,
      :next_token,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute act_summaries
    #   <p>A list of summary information for acts in the session.</p>
    #   @return [Array<Types::ActSummary>]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results, if available.</p>
    #   @return [String]
    class ListActsResponse < Struct.new(
      nil,
      :act_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_compatibility_version
    #   <p>The client compatibility version to filter models by compatibility.</p>
    #   @return [Integer]
    class ListModelsRequest < Struct.new(
      nil,
      :client_compatibility_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_summaries
    #   <p>A list of available AI models with their status and compatibility information.</p>
    #   @return [Array<Types::ModelSummary>]
    # @!attribute model_aliases
    #   <p>A list of model aliases that provide stable references to model versions.</p>
    #   @return [Array<Types::ModelAlias>]
    # @!attribute compatibility_information
    #   <p>Information about client compatibility and supported models.</p>
    #   @return [Types::CompatibilityInformation]
    class ListModelsResponse < Struct.new(
      nil,
      :model_summaries,
      :model_aliases,
      :compatibility_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_definition_name
    #   <p>The name of the workflow definition containing the workflow run.</p>
    #   @return [String]
    # @!attribute workflow_run_id
    #   <p>The unique identifier of the workflow run to list sessions for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of sessions to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order for the returned sessions (ascending or descending).</p>
    #   @return [String]
    class ListSessionsRequest < Struct.new(
      nil,
      :workflow_definition_name,
      :workflow_run_id,
      :max_results,
      :next_token,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_summaries
    #   <p>A list of summary information for sessions in the workflow run.</p>
    #   @return [Array<Types::SessionSummary>]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results, if available.</p>
    #   @return [String]
    class ListSessionsResponse < Struct.new(
      nil,
      :session_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of workflow definitions to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order for the returned workflow definitions (ascending or descending).</p>
    #   @return [String]
    class ListWorkflowDefinitionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_definition_summaries
    #   <p>A list of summary information for workflow definitions.</p>
    #   @return [Array<Types::WorkflowDefinitionSummary>]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results, if available.</p>
    #   @return [String]
    class ListWorkflowDefinitionsResponse < Struct.new(
      nil,
      :workflow_definition_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_definition_name
    #   <p>The name of the workflow definition to list workflow runs for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of workflow runs to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order for the returned workflow runs (ascending or descending).</p>
    #   @return [String]
    class ListWorkflowRunsRequest < Struct.new(
      nil,
      :workflow_definition_name,
      :max_results,
      :next_token,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_run_summaries
    #   <p>A list of summary information for workflow runs.</p>
    #   @return [Array<Types::WorkflowRunSummary>]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results, if available.</p>
    #   @return [String]
    class ListWorkflowRunsResponse < Struct.new(
      nil,
      :workflow_run_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An alias that provides a stable reference to a model version.</p>
    # @!attribute alias_name
    #   <p>The name of the model alias.</p>
    #   @return [String]
    # @!attribute latest_model_id
    #   <p>The model ID that this alias currently points to.</p>
    #   @return [String]
    # @!attribute resolved_model_id
    #   <p>The resolved model ID after alias resolution.</p>
    #   @return [String]
    class ModelAlias < Struct.new(
      nil,
      :alias_name,
      :latest_model_id,
      :resolved_model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lifecycle information for an AI model.</p>
    # @!attribute status
    #   <p>The current lifecycle status of the model.</p>
    #   @return [String]
    class ModelLifecycle < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an available AI model.</p>
    # @!attribute model_id
    #   <p>The unique identifier of the model.</p>
    #   @return [String]
    # @!attribute model_lifecycle
    #   <p>The lifecycle information for the model.</p>
    #   @return [Types::ModelLifecycle]
    # @!attribute minimum_compatibility_version
    #   <p>The minimum client compatibility version required to use this model.</p>
    #   @return [Integer]
    class ModelSummary < Struct.new(
      nil,
      :model_id,
      :model_lifecycle,
      :minimum_compatibility_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource was not found.</p>
    # @!attribute message
    #   <p>The specified resource was not found.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that wasn't found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that wasn't found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would exceed a service quota limit.</p>
    # @!attribute message
    #   <p>The request would exceed one or more service quotas for your account.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that exceeded the quota.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that exceeded the quota.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code for the quota that was exceeded.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code for the specific quota that was exceeded.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a session within a workflow run.</p>
    # @!attribute session_id
    #   <p>The unique identifier of the session.</p>
    #   @return [String]
    class SessionSummary < Struct.new(
      nil,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was throttled due to too many requests. Please try again later.</p>
    # @!attribute message
    #   <p>The request was denied due to request throttling.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code where throttling occurred.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code related to the throttling.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the throttled request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The schema definition for tool input parameters.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute json
    #   <p>The JSON schema that defines the expected input format for the tool.</p>
    #   @return [JSON]
    class ToolInputSchema < Struct.new(
      :json,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Json < ToolInputSchema; end
      class Unknown < ToolInputSchema; end
    end

    # <p>Specification for a tool that acts can invoke, including its name, description, and input schema.</p>
    # @!attribute name
    #   <p>The unique name of the tool that acts will use to invoke it.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of what the tool does and how it should be used.</p>
    #   @return [String]
    # @!attribute input_schema
    #   <p>The JSON schema that defines the expected input format for the tool.</p>
    #   @return [Types::ToolInputSchema]
    class ToolSpec < Struct.new(
      nil,
      :name,
      :description,
      :input_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about where trace data is stored for debugging and monitoring.</p>
    # @!attribute location_type
    #   <p>The type of storage location for the trace data.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The specific location where the trace data is stored.</p>
    #   @return [String]
    class TraceLocation < Struct.new(
      nil,
      :location_type,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_definition_name
    #   <p>The name of the workflow definition containing the act.</p>
    #   @return [String]
    # @!attribute workflow_run_id
    #   <p>The unique identifier of the workflow run containing the act.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the session containing the act.</p>
    #   @return [String]
    # @!attribute act_id
    #   <p>The unique identifier of the act to update.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The new status to set for the act.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Error information to associate with the act, if applicable.</p>
    #   @return [Types::ActError]
    class UpdateActRequest < Struct.new(
      nil,
      :workflow_definition_name,
      :workflow_run_id,
      :session_id,
      :act_id,
      :status,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateActResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_definition_name
    #   <p>The name of the workflow definition containing the workflow run.</p>
    #   @return [String]
    # @!attribute workflow_run_id
    #   <p>The unique identifier of the workflow run to update.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The new status to set for the workflow run.</p>
    #   @return [String]
    class UpdateWorkflowRunRequest < Struct.new(
      nil,
      :workflow_definition_name,
      :workflow_run_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateWorkflowRunResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input parameters for the request are invalid.</p>
    # @!attribute message
    #   <p>The input fails to satisfy the constraints specified by the service.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation failure.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The list of fields that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a field that failed validation.</p>
    # @!attribute name
    #   <p>The name of the field that failed validation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the validation error for this field.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a workflow definition, used in list operations.</p>
    # @!attribute workflow_definition_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow definition.</p>
    #   @return [String]
    # @!attribute workflow_definition_name
    #   <p>The name of the workflow definition.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the workflow definition was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the workflow definition.</p>
    #   @return [String]
    class WorkflowDefinitionSummary < Struct.new(
      nil,
      :workflow_definition_arn,
      :workflow_definition_name,
      :created_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for exporting workflow execution data and logs to Amazon Simple Storage Service (Amazon S3).</p>
    # @!attribute s3_bucket_name
    #   <p>The name of your Amazon S3 bucket, that Nova Act uses to export your workflow data. Note that the IAM role used to access Nova Act must also have write permissions to this bucket.</p>
    #   @return [String]
    # @!attribute s3_key_prefix
    #   <p>An optional prefix for Amazon S3 object keys to organize exported data.</p>
    #   @return [String]
    class WorkflowExportConfig < Struct.new(
      nil,
      :s3_bucket_name,
      :s3_key_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a workflow run, including execution status and timing.</p>
    # @!attribute workflow_run_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow run.</p>
    #   @return [String]
    # @!attribute workflow_run_id
    #   <p>The unique identifier of the workflow run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current execution status of the workflow run.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The timestamp when the workflow run started execution.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The timestamp when the workflow run completed execution, if applicable.</p>
    #   @return [Time]
    # @!attribute trace_location
    #   <p>The location where trace information for this workflow run is stored.</p>
    #   @return [Types::TraceLocation]
    class WorkflowRunSummary < Struct.new(
      nil,
      :workflow_run_arn,
      :workflow_run_id,
      :status,
      :started_at,
      :ended_at,
      :trace_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
