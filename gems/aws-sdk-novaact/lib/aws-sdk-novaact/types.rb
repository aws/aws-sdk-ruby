# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NovaAct
  module Types

    # You don't have sufficient permissions to perform this action.
    #
    # @!attribute [rw] message
    #   You don't have sufficient permissions to perform this action.
    #   Verify your IAM permissions and try again.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information when an act fails to execute successfully.
    #
    # @!attribute [rw] message
    #   A human-readable description of the error that occurred.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type or category of error that occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ActError AWS API Documentation
    #
    class ActError < Struct.new(
      :message,
      :type)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # Summary information about an act, including its status and execution
    # timing.
    #
    # @!attribute [rw] workflow_run_id
    #   The unique identifier of the workflow run containing this act.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session containing this act.
    #   @return [String]
    #
    # @!attribute [rw] act_id
    #   The unique identifier of the act.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current execution status of the act.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the act started execution.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The timestamp when the act completed execution, if applicable.
    #   @return [Time]
    #
    # @!attribute [rw] trace_location
    #   The location where trace information for this act is stored.
    #   @return [Types::TraceLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ActSummary AWS API Documentation
    #
    class ActSummary < Struct.new(
      :workflow_run_id,
      :session_id,
      :act_id,
      :status,
      :started_at,
      :ended_at,
      :trace_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request for the client to execute a specific tool with given
    # parameters.
    #
    # @!attribute [rw] call_id
    #   A unique identifier for this tool call, used to match results back
    #   to requests.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The input parameters for the tool call, formatted according to the
    #   tool's schema.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] name
    #   The name of the tool to invoke, following the pattern
    #   'tool.\{toolName}' or 'browser.\{browserAction}'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/Call AWS API Documentation
    #
    class Call < Struct.new(
      :call_id,
      :input,
      :name)
      SENSITIVE = [:input]
      include Aws::Structure
    end

    # The result returned from executing a tool call.
    #
    # @!attribute [rw] call_id
    #   The identifier of the tool call that this result corresponds to.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content returned by the tool execution, which can include text
    #   or other media types.
    #   @return [Array<Types::CallResultContent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CallResult AWS API Documentation
    #
    class CallResult < Struct.new(
      :call_id,
      :content)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # Content returned from a tool call execution.
    #
    # @note CallResultContent is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] text
    #   Text content returned from the tool execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CallResultContent AWS API Documentation
    #
    class CallResultContent < Struct.new(
      :text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < CallResultContent; end
      class Unknown < CallResultContent; end
    end

    # Information about the client making API requests, used for
    # compatibility checking.
    #
    # @!attribute [rw] compatibility_version
    #   The compatibility version of the client, used to ensure API
    #   compatibility.
    #   @return [Integer]
    #
    # @!attribute [rw] sdk_version
    #   The version of the SDK being used by the client.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ClientInfo AWS API Documentation
    #
    class ClientInfo < Struct.new(
      :compatibility_version,
      :sdk_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about client compatibility and supported model versions.
    #
    # @!attribute [rw] client_compatibility_version
    #   The client compatibility version that was requested.
    #   @return [Integer]
    #
    # @!attribute [rw] supported_model_ids
    #   A list of model IDs that are supported for the client compatibility
    #   version.
    #   @return [Array<String>]
    #
    # @!attribute [rw] message
    #   Additional information about compatibility requirements or
    #   recommendations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CompatibilityInformation AWS API Documentation
    #
    class CompatibilityInformation < Struct.new(
      :client_compatibility_version,
      :supported_model_ids,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed due to a conflict with the current
    # state of the resource.
    #
    # @!attribute [rw] message
    #   The requested operation conflicts with the current state of the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that caused the conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that caused the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_definition_name
    #   The name of the workflow definition containing the session.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_id
    #   The unique identifier of the workflow run containing the session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session to create the act in.
    #   @return [String]
    #
    # @!attribute [rw] task
    #   The task description that defines what the act should accomplish.
    #   @return [String]
    #
    # @!attribute [rw] tool_specs
    #   A list of tool specifications that the act can invoke to complete
    #   its task.
    #   @return [Array<Types::ToolSpec>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CreateActRequest AWS API Documentation
    #
    class CreateActRequest < Struct.new(
      :workflow_definition_name,
      :workflow_run_id,
      :session_id,
      :task,
      :tool_specs,
      :client_token)
      SENSITIVE = [:task]
      include Aws::Structure
    end

    # @!attribute [rw] act_id
    #   The unique identifier for the created act.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The initial status of the act after creation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CreateActResponse AWS API Documentation
    #
    class CreateActResponse < Struct.new(
      :act_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_definition_name
    #   The name of the workflow definition containing the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_id
    #   The unique identifier of the workflow run to create the session in.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CreateSessionRequest AWS API Documentation
    #
    class CreateSessionRequest < Struct.new(
      :workflow_definition_name,
      :workflow_run_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The unique identifier for the created session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CreateSessionResponse AWS API Documentation
    #
    class CreateSessionResponse < Struct.new(
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workflow definition. Must be unique within your
    #   account and region.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the workflow definition's purpose and
    #   functionality.
    #   @return [String]
    #
    # @!attribute [rw] export_config
    #   Configuration for exporting workflow execution data to Amazon Simple
    #   Storage Service.
    #   @return [Types::WorkflowExportConfig]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CreateWorkflowDefinitionRequest AWS API Documentation
    #
    class CreateWorkflowDefinitionRequest < Struct.new(
      :name,
      :description,
      :export_config,
      :client_token)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the workflow definition after creation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CreateWorkflowDefinitionResponse AWS API Documentation
    #
    class CreateWorkflowDefinitionResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_definition_name
    #   The name of the workflow definition to execute.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The ID of the AI model to use for workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The CloudWatch log group name for storing workflow execution logs.
    #   @return [String]
    #
    # @!attribute [rw] client_info
    #   Information about the client making the request, including
    #   compatibility version and SDK version.
    #   @return [Types::ClientInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CreateWorkflowRunRequest AWS API Documentation
    #
    class CreateWorkflowRunRequest < Struct.new(
      :workflow_definition_name,
      :model_id,
      :client_token,
      :log_group_name,
      :client_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_run_id
    #   The unique identifier for the created workflow run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The initial status of the workflow run after creation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CreateWorkflowRunResponse AWS API Documentation
    #
    class CreateWorkflowRunResponse < Struct.new(
      :workflow_run_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_definition_name
    #   The name of the workflow definition to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/DeleteWorkflowDefinitionRequest AWS API Documentation
    #
    class DeleteWorkflowDefinitionRequest < Struct.new(
      :workflow_definition_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the workflow definition after deletion request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/DeleteWorkflowDefinitionResponse AWS API Documentation
    #
    class DeleteWorkflowDefinitionResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_definition_name
    #   The name of the workflow definition containing the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_id
    #   The unique identifier of the workflow run to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/DeleteWorkflowRunRequest AWS API Documentation
    #
    class DeleteWorkflowRunRequest < Struct.new(
      :workflow_definition_name,
      :workflow_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the workflow run after deletion request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/DeleteWorkflowRunResponse AWS API Documentation
    #
    class DeleteWorkflowRunResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_definition_name
    #   The name of the workflow definition to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/GetWorkflowDefinitionRequest AWS API Documentation
    #
    class GetWorkflowDefinitionRequest < Struct.new(
      :workflow_definition_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workflow definition.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the workflow definition.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the workflow definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the workflow definition.
    #   @return [String]
    #
    # @!attribute [rw] export_config
    #   The export configuration for the workflow definition.
    #   @return [Types::WorkflowExportConfig]
    #
    # @!attribute [rw] status
    #   The current status of the workflow definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/GetWorkflowDefinitionResponse AWS API Documentation
    #
    class GetWorkflowDefinitionResponse < Struct.new(
      :name,
      :arn,
      :created_at,
      :description,
      :export_config,
      :status)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] workflow_definition_name
    #   The name of the workflow definition containing the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_id
    #   The unique identifier of the workflow run to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/GetWorkflowRunRequest AWS API Documentation
    #
    class GetWorkflowRunRequest < Struct.new(
      :workflow_definition_name,
      :workflow_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_run_arn
    #   The Amazon Resource Name (ARN) of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_id
    #   The unique identifier of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current execution status of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the workflow run started execution.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The timestamp when the workflow run completed execution, if
    #   applicable.
    #   @return [Time]
    #
    # @!attribute [rw] model_id
    #   The ID of the AI model being used for this workflow run.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The CloudWatch log group name for this workflow run's logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/GetWorkflowRunResponse AWS API Documentation
    #
    class GetWorkflowRunResponse < Struct.new(
      :workflow_run_arn,
      :workflow_run_id,
      :status,
      :started_at,
      :ended_at,
      :model_id,
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. Please try again later.
    #
    # @!attribute [rw] message
    #   The service encountered an internal error. Try again later.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   The reason for the internal server error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_definition_name
    #   The name of the workflow definition containing the act.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_id
    #   The unique identifier of the workflow run containing the act.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session containing the act.
    #   @return [String]
    #
    # @!attribute [rw] act_id
    #   The unique identifier of the act to invoke the next step for.
    #   @return [String]
    #
    # @!attribute [rw] call_results
    #   The results from previous tool calls that the act requested.
    #   @return [Array<Types::CallResult>]
    #
    # @!attribute [rw] previous_step_id
    #   The identifier of the previous step, used for tracking execution
    #   flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/InvokeActStepRequest AWS API Documentation
    #
    class InvokeActStepRequest < Struct.new(
      :workflow_definition_name,
      :workflow_run_id,
      :session_id,
      :act_id,
      :call_results,
      :previous_step_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calls
    #   A list of tool calls that the act wants to execute in this step.
    #   @return [Array<Types::Call>]
    #
    # @!attribute [rw] step_id
    #   The unique identifier for this execution step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/InvokeActStepResponse AWS API Documentation
    #
    class InvokeActStepResponse < Struct.new(
      :calls,
      :step_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_definition_name
    #   The name of the workflow definition containing the session.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_id
    #   The unique identifier of the workflow run containing the session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session to list acts for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of acts to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for the returned acts (ascending or descending).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListActsRequest AWS API Documentation
    #
    class ListActsRequest < Struct.new(
      :workflow_definition_name,
      :workflow_run_id,
      :session_id,
      :max_results,
      :next_token,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] act_summaries
    #   A list of summary information for acts in the session.
    #   @return [Array<Types::ActSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results, if available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListActsResponse AWS API Documentation
    #
    class ListActsResponse < Struct.new(
      :act_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_compatibility_version
    #   The client compatibility version to filter models by compatibility.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListModelsRequest AWS API Documentation
    #
    class ListModelsRequest < Struct.new(
      :client_compatibility_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_summaries
    #   A list of available AI models with their status and compatibility
    #   information.
    #   @return [Array<Types::ModelSummary>]
    #
    # @!attribute [rw] model_aliases
    #   A list of model aliases that provide stable references to model
    #   versions.
    #   @return [Array<Types::ModelAlias>]
    #
    # @!attribute [rw] compatibility_information
    #   Information about client compatibility and supported models.
    #   @return [Types::CompatibilityInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListModelsResponse AWS API Documentation
    #
    class ListModelsResponse < Struct.new(
      :model_summaries,
      :model_aliases,
      :compatibility_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_definition_name
    #   The name of the workflow definition containing the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_id
    #   The unique identifier of the workflow run to list sessions for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of sessions to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for the returned sessions (ascending or descending).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListSessionsRequest AWS API Documentation
    #
    class ListSessionsRequest < Struct.new(
      :workflow_definition_name,
      :workflow_run_id,
      :max_results,
      :next_token,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_summaries
    #   A list of summary information for sessions in the workflow run.
    #   @return [Array<Types::SessionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results, if available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListSessionsResponse AWS API Documentation
    #
    class ListSessionsResponse < Struct.new(
      :session_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of workflow definitions to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for the returned workflow definitions (ascending or
    #   descending).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListWorkflowDefinitionsRequest AWS API Documentation
    #
    class ListWorkflowDefinitionsRequest < Struct.new(
      :max_results,
      :next_token,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_definition_summaries
    #   A list of summary information for workflow definitions.
    #   @return [Array<Types::WorkflowDefinitionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results, if available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListWorkflowDefinitionsResponse AWS API Documentation
    #
    class ListWorkflowDefinitionsResponse < Struct.new(
      :workflow_definition_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_definition_name
    #   The name of the workflow definition to list workflow runs for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of workflow runs to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for the returned workflow runs (ascending or
    #   descending).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListWorkflowRunsRequest AWS API Documentation
    #
    class ListWorkflowRunsRequest < Struct.new(
      :workflow_definition_name,
      :max_results,
      :next_token,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_run_summaries
    #   A list of summary information for workflow runs.
    #   @return [Array<Types::WorkflowRunSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results, if available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListWorkflowRunsResponse AWS API Documentation
    #
    class ListWorkflowRunsResponse < Struct.new(
      :workflow_run_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An alias that provides a stable reference to a model version.
    #
    # @!attribute [rw] alias_name
    #   The name of the model alias.
    #   @return [String]
    #
    # @!attribute [rw] latest_model_id
    #   The model ID that this alias currently points to.
    #   @return [String]
    #
    # @!attribute [rw] resolved_model_id
    #   The resolved model ID after alias resolution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ModelAlias AWS API Documentation
    #
    class ModelAlias < Struct.new(
      :alias_name,
      :latest_model_id,
      :resolved_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lifecycle information for an AI model.
    #
    # @!attribute [rw] status
    #   The current lifecycle status of the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ModelLifecycle AWS API Documentation
    #
    class ModelLifecycle < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an available AI model.
    #
    # @!attribute [rw] model_id
    #   The unique identifier of the model.
    #   @return [String]
    #
    # @!attribute [rw] model_lifecycle
    #   The lifecycle information for the model.
    #   @return [Types::ModelLifecycle]
    #
    # @!attribute [rw] minimum_compatibility_version
    #   The minimum client compatibility version required to use this model.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ModelSummary AWS API Documentation
    #
    class ModelSummary < Struct.new(
      :model_id,
      :model_lifecycle,
      :minimum_compatibility_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource was not found.
    #
    # @!attribute [rw] message
    #   The specified resource was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that wasn't found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that wasn't found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would exceed a service quota limit.
    #
    # @!attribute [rw] message
    #   The request would exceed one or more service quotas for your
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that exceeded the quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that exceeded the quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code for the quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code for the specific quota that was exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a session within a workflow run.
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/SessionSummary AWS API Documentation
    #
    class SessionSummary < Struct.new(
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was throttled due to too many requests. Please try again
    # later.
    #
    # @!attribute [rw] message
    #   The request was denied due to request throttling.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code where throttling occurred.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code related to the throttling.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the throttled request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The schema definition for tool input parameters.
    #
    # @note ToolInputSchema is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] json
    #   The JSON schema that defines the expected input format for the tool.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ToolInputSchema AWS API Documentation
    #
    class ToolInputSchema < Struct.new(
      :json,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Json < ToolInputSchema; end
      class Unknown < ToolInputSchema; end
    end

    # Specification for a tool that acts can invoke, including its name,
    # description, and input schema.
    #
    # @!attribute [rw] name
    #   The unique name of the tool that acts will use to invoke it.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of what the tool does and how it should be used.
    #   @return [String]
    #
    # @!attribute [rw] input_schema
    #   The JSON schema that defines the expected input format for the tool.
    #   @return [Types::ToolInputSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ToolSpec AWS API Documentation
    #
    class ToolSpec < Struct.new(
      :name,
      :description,
      :input_schema)
      SENSITIVE = [:description, :input_schema]
      include Aws::Structure
    end

    # Information about where trace data is stored for debugging and
    # monitoring.
    #
    # @!attribute [rw] location_type
    #   The type of storage location for the trace data.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The specific location where the trace data is stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/TraceLocation AWS API Documentation
    #
    class TraceLocation < Struct.new(
      :location_type,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_definition_name
    #   The name of the workflow definition containing the act.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_id
    #   The unique identifier of the workflow run containing the act.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session containing the act.
    #   @return [String]
    #
    # @!attribute [rw] act_id
    #   The unique identifier of the act to update.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new status to set for the act.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Error information to associate with the act, if applicable.
    #   @return [Types::ActError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/UpdateActRequest AWS API Documentation
    #
    class UpdateActRequest < Struct.new(
      :workflow_definition_name,
      :workflow_run_id,
      :session_id,
      :act_id,
      :status,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/UpdateActResponse AWS API Documentation
    #
    class UpdateActResponse < Aws::EmptyStructure; end

    # @!attribute [rw] workflow_definition_name
    #   The name of the workflow definition containing the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_id
    #   The unique identifier of the workflow run to update.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new status to set for the workflow run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/UpdateWorkflowRunRequest AWS API Documentation
    #
    class UpdateWorkflowRunRequest < Struct.new(
      :workflow_definition_name,
      :workflow_run_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/UpdateWorkflowRunResponse AWS API Documentation
    #
    class UpdateWorkflowRunResponse < Aws::EmptyStructure; end

    # The input parameters for the request are invalid.
    #
    # @!attribute [rw] message
    #   The input fails to satisfy the constraints specified by the service.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The list of fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a field that failed validation.
    #
    # @!attribute [rw] name
    #   The name of the field that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the validation error for this field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a workflow definition, used in list
    # operations.
    #
    # @!attribute [rw] workflow_definition_arn
    #   The Amazon Resource Name (ARN) of the workflow definition.
    #   @return [String]
    #
    # @!attribute [rw] workflow_definition_name
    #   The name of the workflow definition.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the workflow definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the workflow definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/WorkflowDefinitionSummary AWS API Documentation
    #
    class WorkflowDefinitionSummary < Struct.new(
      :workflow_definition_arn,
      :workflow_definition_name,
      :created_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for exporting workflow execution data and logs
    # to Amazon Simple Storage Service (Amazon S3).
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of your Amazon S3 bucket, that Nova Act uses to export your
    #   workflow data. Note that the IAM role used to access Nova Act must
    #   also have write permissions to this bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   An optional prefix for Amazon S3 object keys to organize exported
    #   data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/WorkflowExportConfig AWS API Documentation
    #
    class WorkflowExportConfig < Struct.new(
      :s3_bucket_name,
      :s3_key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a workflow run, including execution status
    # and timing.
    #
    # @!attribute [rw] workflow_run_arn
    #   The Amazon Resource Name (ARN) of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_id
    #   The unique identifier of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current execution status of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the workflow run started execution.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The timestamp when the workflow run completed execution, if
    #   applicable.
    #   @return [Time]
    #
    # @!attribute [rw] trace_location
    #   The location where trace information for this workflow run is
    #   stored.
    #   @return [Types::TraceLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/WorkflowRunSummary AWS API Documentation
    #
    class WorkflowRunSummary < Struct.new(
      :workflow_run_arn,
      :workflow_run_id,
      :status,
      :started_at,
      :ended_at,
      :trace_location)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

