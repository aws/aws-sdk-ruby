# frozen_string_literal: true

# This is generated code!

module Aws::BedrockAgentRuntime
  # This module contains the types returned by client operations.
  module Types

    # <p> Contains details about the OpenAPI schema for the action group. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html">Action group OpenAPI schemas</a>. You can either include the schema directly in the payload field or you can upload it to an S3 bucket and specify the S3 bucket location in the s3 field. </p>
    # @!attribute s3
    #   <p> Contains details about the S3 object containing the OpenAPI schema for the action group. </p>
    #   @return [Types::S3Identifier]
    # @!attribute payload
    #   <p> The JSON or YAML-formatted payload defining the OpenAPI schema for the action group. </p>
    #   @return [String]
    class APISchema < Struct.new(
      :s3,
      :payload,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < APISchema; end
      class Payload < APISchema; end
      class Unknown < APISchema; end
    end

    # <p>The request is denied because of missing access permissions. Check your permissions and retry your request.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains details about the Lambda function containing the business logic that is carried out upon invoking the action or the custom control method for handling the information elicited from the user. </p>
    # @!attribute lambda
    #   <p> The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action. </p>
    #   @return [String]
    # @!attribute custom_control
    #   <p> To return the action group invocation results directly in the <code>InvokeInlineAgent</code> response, specify <code>RETURN_CONTROL</code>. </p>
    #   @return [String]
    class ActionGroupExecutor < Struct.new(
      :lambda,
      :custom_control,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Lambda < ActionGroupExecutor; end
      class CustomControl < ActionGroupExecutor; end
      class Unknown < ActionGroupExecutor; end
    end

    # <p>Contains information about the action group being invoked. For more information about the possible structures, see the InvocationInput tab in <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/trace-orchestration.html">OrchestrationTrace</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @!attribute action_group_name
    #   <p>The name of the action group.</p>
    #   @return [String]
    # @!attribute verb
    #   <p>The API method being used, based off the action group.</p>
    #   @return [String]
    # @!attribute api_path
    #   <p>The path to the API to call, based off the action group.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters in the Lambda input event.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute request_body
    #   <p>The parameters in the request body for the Lambda input event.</p>
    #   @return [Types::RequestBody]
    # @!attribute function
    #   <p>The function in the action group to call.</p>
    #   @return [String]
    # @!attribute execution_type
    #   <p>How fulfillment of the action is handled. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/action-handle.html">Handling fulfillment of the action</a>.</p>
    #   @return [String]
    # @!attribute invocation_id
    #   <p>The unique identifier of the invocation. Only returned if the <code>executionType</code> is <code>RETURN_CONTROL</code>.</p>
    #   @return [String]
    class ActionGroupInvocationInput < Struct.new(
      :action_group_name,
      :verb,
      :api_path,
      :parameters,
      :request_body,
      :function,
      :execution_type,
      :invocation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the JSON-formatted string returned by the API invoked by the action group.</p>
    # @!attribute text
    #   <p>The JSON-formatted string returned by the API invoked by the action group.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Contains information about the action group output.</p>
    #   @return [Types::Metadata]
    class ActionGroupInvocationOutput < Struct.new(
      :text,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains details of the inline agent's action group. </p>
    # @!attribute action_group_name
    #   <p> The name of the action group. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A description of the action group. </p>
    #   @return [String]
    # @!attribute parent_action_group_signature
    #   <p>Specify a built-in or computer use action for this action group. If you specify a value, you must leave the <code>description</code>, <code>apiSchema</code>, and <code>actionGroupExecutor</code> fields empty for this action group. </p> <ul> <li> <p>To allow your agent to request the user for additional information when trying to complete a task, set this field to <code>AMAZON.UserInput</code>. </p> </li> <li> <p>To allow your agent to generate, run, and troubleshoot code when trying to complete a task, set this field to <code>AMAZON.CodeInterpreter</code>.</p> </li> <li> <p>To allow your agent to use an Anthropic computer use tool, specify one of the following values. </p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. When operating computer use functionality, we recommend taking additional security precautions, such as executing computer actions in virtual environments with restricted data access and limited internet connectivity. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important> <ul> <li> <p> <code>ANTHROPIC.Computer</code> - Gives the agent permission to use the mouse and keyboard and take screenshots.</p> </li> <li> <p> <code>ANTHROPIC.TextEditor</code> - Gives the agent permission to view, create and edit files.</p> </li> <li> <p> <code>ANTHROPIC.Bash</code> - Gives the agent permission to run commands in a bash shell.</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute action_group_executor
    #   <p> The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action or the custom control method for handling the information elicited from the user. </p>
    #   @return [Types::ActionGroupExecutor]
    # @!attribute api_schema
    #   <p> Contains either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html">Action group OpenAPI schemas</a>. </p>
    #   @return [Types::APISchema]
    # @!attribute function_schema
    #   <p> Contains details about the function schema for the action group or the JSON or YAML-formatted payload defining the schema. </p>
    #   @return [Types::FunctionSchema]
    # @!attribute parent_action_group_signature_params
    #   <p> The configuration settings for a computer use action. </p> <important> <p>Computer use is a new Anthropic Claude model capability (in beta) available with Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>.</p> </important>
    #   @return [Hash<String, String>]
    class AgentActionGroup < Struct.new(
      :action_group_name,
      :description,
      :parent_action_group_signature,
      :action_group_executor,
      :api_schema,
      :function_schema,
      :parent_action_group_signature_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for an agent collaborator. The input can be text or an action invocation result.</p>
    # @!attribute type
    #   <p>The input type.</p>
    #   @return [String]
    # @!attribute text
    #   <p>Input text.</p>
    #   @return [String]
    # @!attribute return_control_results
    #   <p>An action invocation result.</p>
    #   @return [Types::ReturnControlResults]
    class AgentCollaboratorInputPayload < Struct.new(
      :type,
      :text,
      :return_control_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An agent collaborator invocation input.</p>
    # @!attribute agent_collaborator_name
    #   <p>The collaborator's name.</p>
    #   @return [String]
    # @!attribute agent_collaborator_alias_arn
    #   <p>The collaborator's alias ARN.</p>
    #   @return [String]
    # @!attribute input
    #   <p>Text or action invocation result input for the collaborator.</p>
    #   @return [Types::AgentCollaboratorInputPayload]
    class AgentCollaboratorInvocationInput < Struct.new(
      :agent_collaborator_name,
      :agent_collaborator_alias_arn,
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output from an agent collaborator.</p>
    # @!attribute agent_collaborator_name
    #   <p>The output's agent collaborator name.</p>
    #   @return [String]
    # @!attribute agent_collaborator_alias_arn
    #   <p>The output's agent collaborator alias ARN.</p>
    #   @return [String]
    # @!attribute output
    #   <p>The output's output.</p>
    #   @return [Types::AgentCollaboratorOutputPayload]
    # @!attribute metadata
    #   <p>Contains information about the output from the agent collaborator.</p>
    #   @return [Types::Metadata]
    class AgentCollaboratorInvocationOutput < Struct.new(
      :agent_collaborator_name,
      :agent_collaborator_alias_arn,
      :output,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output from an agent collaborator. The output can be text or an action invocation result.</p>
    # @!attribute type
    #   <p>The type of output.</p>
    #   @return [String]
    # @!attribute text
    #   <p>Text output.</p>
    #   @return [String]
    # @!attribute return_control_payload
    #   <p>An action invocation result.</p>
    #   @return [Types::ReturnControlPayload]
    class AgentCollaboratorOutputPayload < Struct.new(
      :type,
      :text,
      :return_control_payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An event in which the prompt was analyzed in preparation for optimization.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute message
    #   <p>A message describing the analysis of the prompt.</p>
    #   @return [String]
    class AnalyzePromptEvent < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the API operation that the agent predicts should be called.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p>In the <code>returnControl</code> field of the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> </p> </li> </ul>
    # @!attribute action_group
    #   <p>The action group that the API operation belongs to.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>The HTTP method of the API operation.</p>
    #   @return [String]
    # @!attribute api_path
    #   <p>The path to the API operation.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters to provide for the API request, as the agent elicited from the user.</p>
    #   @return [Array<Types::ApiParameter>]
    # @!attribute request_body
    #   <p>The request body to provide for the API request, as the agent elicited from the user.</p>
    #   @return [Types::ApiRequestBody]
    # @!attribute action_invocation_type
    #   <p>Contains information about the API operation to invoke.</p>
    #   @return [String]
    # @!attribute agent_id
    #   <p>The agent's ID.</p>
    #   @return [String]
    # @!attribute collaborator_name
    #   <p>The agent collaborator's name.</p>
    #   @return [String]
    class ApiInvocationInput < Struct.new(
      :action_group,
      :http_method,
      :api_path,
      :parameters,
      :request_body,
      :action_invocation_type,
      :agent_id,
      :collaborator_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a parameter to provide to the API request.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> </p> </li> </ul>
    # @!attribute name
    #   <p>The name of the parameter.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type for the parameter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the parameter.</p>
    #   @return [String]
    class ApiParameter < Struct.new(
      :name,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request body to provide for the API request, as the agent elicited from the user.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> </p> </li> </ul>
    # @!attribute content
    #   <p>The content of the request body. The key of the object in this field is a media type defining the format of the request body.</p>
    #   @return [Hash<String, Types::PropertyParameters>]
    class ApiRequestBody < Struct.new(
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the API operation that was called from the action group and the response body that was returned.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p>In the <code>returnControlInvocationResults</code> of the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_RequestSyntax">InvokeAgent request</a> </p> </li> </ul>
    # @!attribute action_group
    #   <p>The action group that the API operation belongs to.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>The HTTP method for the API operation.</p>
    #   @return [String]
    # @!attribute api_path
    #   <p>The path to the API operation.</p>
    #   @return [String]
    # @!attribute confirmation_state
    #   <p>Controls the API operations or functions to invoke based on the user confirmation.</p>
    #   @return [String]
    # @!attribute response_state
    #   <p>Controls the final response state returned to end user when API/Function execution failed. When this state is FAILURE, the request would fail with dependency failure exception. When this state is REPROMPT, the API/function response will be sent to model for re-prompt</p>
    #   @return [String]
    # @!attribute http_status_code
    #   <p>http status code from API execution response (for example: 200, 400, 500).</p>
    #   @return [Integer]
    # @!attribute response_body
    #   <p>The response body from the API operation. The key of the object is the content type (currently, only <code>TEXT</code> is supported). The response may be returned directly or from the Lambda function.</p>
    #   @return [Hash<String, Types::ContentBody>]
    # @!attribute agent_id
    #   <p>The agent's ID.</p>
    #   @return [String]
    class ApiResult < Struct.new(
      :action_group,
      :http_method,
      :api_path,
      :confirmation_state,
      :response_state,
      :http_status_code,
      :response_body,
      :agent_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains citations for a part of an agent response.</p>
    # @!attribute citations
    #   <p>A list of citations and related information for a part of an agent response.</p>
    #   @return [Array<Types::Citation>]
    class Attribution < Struct.new(
      :citations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was an issue with a dependency due to a server issue. Retry your request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the dependency that caused the issue, such as Amazon Bedrock, Lambda, or STS.</p>
    #   @return [String]
    class BadGatewayException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for a model called with <a>InvokeAgent</a>.</p>
    # @!attribute performance_config
    #   <p>The performance configuration for the model.</p>
    #   @return [Types::PerformanceConfiguration]
    class BedrockModelConfigurations < Struct.new(
      :performance_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for an Amazon Bedrock reranker model.</p>
    # @!attribute number_of_results
    #   <p>The number of results to return after reranking.</p>
    #   @return [Integer]
    # @!attribute model_configuration
    #   <p>Contains configurations for a reranker model.</p>
    #   @return [Types::BedrockRerankingModelConfiguration]
    class BedrockRerankingConfiguration < Struct.new(
      :number_of_results,
      :model_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a reranker model.</p>
    # @!attribute model_arn
    #   <p>The ARN of the reranker model.</p>
    #   @return [String]
    # @!attribute additional_model_request_fields
    #   <p>A JSON object whose keys are request fields for the model and whose values are values for those fields.</p>
    #   @return [Hash<String, JSON>]
    class BedrockRerankingModelConfiguration < Struct.new(
      :model_arn,
      :additional_model_request_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A block of content that you pass to, or receive from, a Amazon Bedrock session in an invocation step. You pass the content to a session in the <code>payLoad</code> of the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_PutInvocationStep.html">PutInvocationStep</a> API operation. You retrieve the content with the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetInvocationStep.html">GetInvocationStep</a> API operation.</p> <p>For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The text in the invocation step.</p>
    #   @return [String]
    # @!attribute image
    #   <p>The image in the invocation step.</p>
    #   @return [Types::ImageBlock]
    class BedrockSessionContentBlock < Struct.new(
      :text,
      :image,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < BedrockSessionContentBlock; end
      class Image < BedrockSessionContentBlock; end
      class Unknown < BedrockSessionContentBlock; end
    end

    # <p>This property contains the document to chat with, along with its attributes.</p>
    # @!attribute identifier
    #   <p>The file name of the document contained in the wrapper object.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MIME type of the document contained in the wrapper object.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The byte value of the file to upload, encoded as a Base-64 string.</p>
    #   @return [String]
    class ByteContentDoc < Struct.new(
      :identifier,
      :content_type,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The property contains the file to chat with, along with its attributes.</p>
    # @!attribute media_type
    #   <p>The MIME type of data contained in the file used for chat.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The raw bytes of the file to attach. The maximum size of all files that is attached is 10MB. You can attach a maximum of 5 files. </p>
    #   @return [String]
    class ByteContentFile < Struct.new(
      :media_type,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a caller.</p>
    # @!attribute agent_alias_arn
    #   <p>The caller's agent alias ARN.</p>
    #   @return [String]
    class Caller < Struct.new(
      :agent_alias_arn,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AgentAliasArn < Caller; end
      class Unknown < Caller; end
    end

    # <p>An object containing a segment of the generated response that is based on a source in the knowledge base, alongside information about the source.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> – in the <code>citations</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax">RetrieveAndGenerate response</a> – in the <code>citations</code> field</p> </li> </ul>
    # @!attribute generated_response_part
    #   <p>Contains the generated response and metadata </p>
    #   @return [Types::GeneratedResponsePart]
    # @!attribute retrieved_references
    #   <p>Contains metadata about the sources cited for the generated response.</p>
    #   @return [Array<Types::RetrievedReference>]
    class Citation < Struct.new(
      :generated_response_part,
      :retrieved_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A citation event.</p>
    # @!attribute citation
    #   <p>The citation.</p>
    #   @deprecated
    #     Citation is deprecated. Please use GeneratedResponsePart and RetrievedReferences for citation event.
    #     Since: 2024-12-17
    #   @return [Types::Citation]
    # @!attribute generated_response_part
    #   <p>The generated response to the citation event.</p>
    #   @return [Types::GeneratedResponsePart]
    # @!attribute retrieved_references
    #   <p>The retrieved references of the citation event.</p>
    #   @return [Array<Types::RetrievedReference>]
    class CitationEvent < Struct.new(
      :citation,
      :generated_response_part,
      :retrieved_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the code interpreter being invoked.</p>
    # @!attribute code
    #   <p>The code for the code interpreter to use.</p>
    #   @return [String]
    # @!attribute files
    #   <p>Files that are uploaded for code interpreter to use.</p>
    #   @return [Array<String>]
    class CodeInterpreterInvocationInput < Struct.new(
      :code,
      :files,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the JSON-formatted string returned by the API invoked by the code interpreter.</p>
    # @!attribute execution_output
    #   <p>Contains the successful output returned from code execution</p>
    #   @return [String]
    # @!attribute execution_error
    #   <p>Contains the error returned from code execution.</p>
    #   @return [String]
    # @!attribute files
    #   <p>Contains output files, if generated by code execution.</p>
    #   @return [Array<String>]
    # @!attribute execution_timeout
    #   <p>Indicates if the execution of the code timed out.</p>
    #   @return [Boolean]
    # @!attribute metadata
    #   <p>Contains information about the output from the code interpreter.</p>
    #   @return [Types::Metadata]
    class CodeInterpreterInvocationOutput < Struct.new(
      :execution_output,
      :execution_error,
      :files,
      :execution_timeout,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> List of inline collaborators. </p>
    # @!attribute customer_encryption_key_arn
    #   <p> The Amazon Resource Name (ARN) of the AWS KMS key that encrypts the inline collaborator. </p>
    #   @return [String]
    # @!attribute foundation_model
    #   <p> The foundation model used by the inline collaborator agent. </p>
    #   @return [String]
    # @!attribute instruction
    #   <p> Instruction that tell the inline collaborator agent what it should do and how it should interact with users. </p>
    #   @return [String]
    # @!attribute idle_session_ttl_in_seconds
    #   <p> The number of seconds for which the Amazon Bedrock keeps information about the user's conversation with the inline collaborator agent.</p> <p>A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout. </p>
    #   @return [Integer]
    # @!attribute action_groups
    #   <p> List of action groups with each action group defining tasks the inline collaborator agent needs to carry out. </p>
    #   @return [Array<Types::AgentActionGroup>]
    # @!attribute knowledge_bases
    #   <p> Knowledge base associated with the inline collaborator agent. </p>
    #   @return [Array<Types::KnowledgeBase>]
    # @!attribute guardrail_configuration
    #   <p> Details of the guardwrail associated with the inline collaborator. </p>
    #   @return [Types::GuardrailConfigurationWithArn]
    # @!attribute prompt_override_configuration
    #   <p> Contains configurations to override prompt templates in different parts of an inline collaborator sequence. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>. </p>
    #   @return [Types::PromptOverrideConfiguration]
    # @!attribute agent_collaboration
    #   <p> Defines how the inline supervisor agent handles information across multiple collaborator agents to coordinate a final response. </p>
    #   @return [String]
    # @!attribute collaborator_configurations
    #   <p> Settings of the collaborator agent. </p>
    #   @return [Array<Types::CollaboratorConfiguration>]
    # @!attribute agent_name
    #   <p> Name of the inline collaborator agent which must be the same name as specified for <code>collaboratorName</code>. </p>
    #   @return [String]
    class Collaborator < Struct.new(
      :customer_encryption_key_arn,
      :foundation_model,
      :instruction,
      :idle_session_ttl_in_seconds,
      :action_groups,
      :knowledge_bases,
      :guardrail_configuration,
      :prompt_override_configuration,
      :agent_collaboration,
      :collaborator_configurations,
      :agent_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Settings of an inline collaborator agent. </p>
    # @!attribute collaborator_name
    #   <p> Name of the inline collaborator agent which must be the same name as specified for <code>agentName</code>. </p>
    #   @return [String]
    # @!attribute collaborator_instruction
    #   <p> Instructions that tell the inline collaborator agent what it should do and how it should interact with users. </p>
    #   @return [String]
    # @!attribute agent_alias_arn
    #   <p> The Amazon Resource Name (ARN) of the inline collaborator agent. </p>
    #   @return [String]
    # @!attribute relay_conversation_history
    #   <p> A relay conversation history for the inline collaborator agent. </p>
    #   @return [String]
    class CollaboratorConfiguration < Struct.new(
      :collaborator_name,
      :collaborator_instruction,
      :agent_alias_arn,
      :relay_conversation_history,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a condition evaluation result during a flow execution. This event is generated when a condition node in the flow evaluates its conditions.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the condition node that evaluated the conditions.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp when the condition evaluation occurred.</p>
    #   @return [Time]
    # @!attribute satisfied_conditions
    #   <p>A list of conditions that were satisfied during the evaluation.</p>
    #   @return [Array<Types::SatisfiedCondition>]
    class ConditionResultEvent < Struct.new(
      :node_name,
      :timestamp,
      :satisfied_conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was a conflict performing an operation. Resolve the conflict and retry your request.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A content block.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The block's text.</p>
    #   @return [String]
    class ContentBlock < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < ContentBlock; end
      class Unknown < ContentBlock; end
    end

    # <p>Contains the body of the API response.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p>In the <code>returnControlInvocationResults</code> field of the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_RequestSyntax">InvokeAgent request</a> </p> </li> </ul>
    # @!attribute body
    #   <p>The body of the API response.</p>
    #   @return [String]
    # @!attribute images
    #   <p>Lists details, including format and source, for the image in the response from the function call. You can specify only one image and the function in the <code>returnControlInvocationResults</code> must be a computer use action. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p>
    #   @return [Array<Types::ImageInput>]
    class ContentBody < Struct.new(
      :body,
      :images,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A conversation history.</p>
    # @!attribute messages
    #   <p>The conversation's messages.</p>
    #   @return [Array<Types::Message>]
    class ConversationHistory < Struct.new(
      :messages,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invocation_id
    #   <p>A unique identifier for the invocation in UUID format.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the interactions in the invocation. For example, "User asking about weather in Seattle".</p>
    #   @return [String]
    # @!attribute session_identifier
    #   <p>The unique identifier for the associated session for the invocation. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN). </p>
    #   @return [String]
    class CreateInvocationRequest < Struct.new(
      :invocation_id,
      :description,
      :session_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier for the session associated with the invocation.</p>
    #   @return [String]
    # @!attribute invocation_id
    #   <p>The unique identifier for the invocation.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp for when the invocation was created.</p>
    #   @return [Time]
    class CreateInvocationResponse < Struct.new(
      :session_id,
      :invocation_id,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_metadata
    #   <p>A map of key-value pairs containing attributes to be persisted across the session. For example, the user's ID, their language preference, and the type of device they are using.</p>
    #   @return [Hash<String, String>]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to use to encrypt the session data. The user or role creating the session must have permission to use the key. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/session-encryption.html">Amazon Bedrock session encryption</a>. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specify the key-value pairs for the tags that you want to attach to the session.</p>
    #   @return [Hash<String, String>]
    class CreateSessionRequest < Struct.new(
      :session_metadata,
      :encryption_key_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier for the session.</p>
    #   @return [String]
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the created session.</p>
    #   @return [String]
    # @!attribute session_status
    #   <p>The current status of the session.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp for when the session was created.</p>
    #   @return [Time]
    class CreateSessionResponse < Struct.new(
      :session_id,
      :session_arn,
      :session_status,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details of the custom orchestration configured for the agent. </p>
    # @!attribute executor
    #   <p>The structure of the executor invoking the actions in custom orchestration. </p>
    #   @return [Types::OrchestrationExecutor]
    class CustomOrchestration < Struct.new(
      :executor,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The trace behavior for the custom orchestration. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute trace_id
    #   <p> The unique identifier of the trace. </p>
    #   @return [String]
    # @!attribute event
    #   <p> The event details used with the custom orchestration. </p>
    #   @return [Types::CustomOrchestrationTraceEvent]
    class CustomOrchestrationTrace < Struct.new(
      :trace_id,
      :event,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The event in the custom orchestration sequence. Events are the responses which the custom orchestration Lambda function sends as response to the agent. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p> The text that prompted the event at this step. </p>
    #   @return [String]
    class CustomOrchestrationTraceEvent < Struct.new(
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent to which the alias belongs.</p>
    #   @return [String]
    # @!attribute agent_alias_id
    #   <p>The unique identifier of an alias of an agent.</p>
    #   @return [String]
    # @!attribute memory_id
    #   <p>The unique identifier of the memory.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique session identifier of the memory.</p>
    #   @return [String]
    class DeleteAgentMemoryRequest < Struct.new(
      :agent_id,
      :agent_alias_id,
      :memory_id,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAgentMemoryResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_identifier
    #   <p>The unique identifier for the session to be deleted. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    #   @return [String]
    class DeleteSessionRequest < Struct.new(
      :session_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSessionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was an issue with a dependency. Check the resource configurations and retry the request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the dependency that caused the issue, such as Amazon Bedrock, Lambda, or STS.</p>
    #   @return [String]
    class DependencyFailedException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_identifier
    #   <p>The unique identifier for the session to end. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    #   @return [String]
    class EndSessionRequest < Struct.new(
      :session_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier of the session you ended.</p>
    #   @return [String]
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the session you ended.</p>
    #   @return [String]
    # @!attribute session_status
    #   <p>The current status of the session you ended.</p>
    #   @return [String]
    class EndSessionResponse < Struct.new(
      :session_id,
      :session_arn,
      :session_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The unique external source of the content contained in the wrapper object.</p>
    # @!attribute source_type
    #   <p>The source type of the external source wrapper object.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>The S3 location of the external source wrapper object.</p>
    #   @return [Types::S3ObjectDoc]
    # @!attribute byte_content
    #   <p>The identifier, contentType, and data of the external source wrapper object.</p>
    #   @return [Types::ByteContentDoc]
    class ExternalSource < Struct.new(
      :source_type,
      :s3_location,
      :byte_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the generation configuration of the external source wrapper object.</p>
    # @!attribute prompt_template
    #   <p>Contain the textPromptTemplate string for the external source wrapper object.</p>
    #   @return [Types::PromptTemplate]
    # @!attribute guardrail_configuration
    #   <p>The configuration details for the guardrail.</p>
    #   @return [Types::GuardrailConfiguration]
    # @!attribute inference_config
    #   <p> Configuration settings for inference when using RetrieveAndGenerate to generate responses while using an external source.</p>
    #   @return [Types::InferenceConfig]
    # @!attribute additional_model_request_fields
    #   <p> Additional model parameters and their corresponding values not included in the textInferenceConfig structure for an external source. Takes in custom model parameters specific to the language model being used. </p>
    #   @return [Hash<String, JSON>]
    # @!attribute performance_config
    #   <p>The latency configuration for the model.</p>
    #   @return [Types::PerformanceConfiguration]
    class ExternalSourcesGenerationConfiguration < Struct.new(
      :prompt_template,
      :guardrail_configuration,
      :inference_config,
      :additional_model_request_fields,
      :performance_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configurations of the external source wrapper object in the <code>retrieveAndGenerate</code> function.</p>
    # @!attribute model_arn
    #   <p>The model Amazon Resource Name (ARN) for the external source wrapper object in the <code>retrieveAndGenerate</code> function.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The document for the external source wrapper object in the <code>retrieveAndGenerate</code> function.</p>
    #   @return [Array<Types::ExternalSource>]
    # @!attribute generation_configuration
    #   <p>The prompt used with the external source wrapper object with the <code>retrieveAndGenerate</code> function.</p>
    #   @return [Types::ExternalSourcesGenerationConfiguration]
    class ExternalSourcesRetrieveAndGenerateConfiguration < Struct.new(
      :model_arn,
      :sources,
      :generation_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the failure of the interaction.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute trace_id
    #   <p>The unique identifier of the trace.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason the interaction failed.</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>The failure code for the trace.</p>
    #   @return [Integer]
    # @!attribute metadata
    #   <p>Information about the failure that occurred.</p>
    #   @return [Types::Metadata]
    class FailureTrace < Struct.new(
      :trace_id,
      :failure_reason,
      :failure_code,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for a metadata field to include in or exclude from consideration when reranking.</p>
    # @!attribute field_name
    #   <p>The name of a metadata field to include in or exclude from consideration when reranking.</p>
    #   @return [String]
    class FieldForReranking < Struct.new(
      :field_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains intermediate response for code interpreter if any files have been generated.</p>
    # @!attribute files
    #   <p>Files containing intermediate response for the user.</p>
    #   @return [Array<Types::OutputFile>]
    class FilePart < Struct.new(
      :files,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source file of the content contained in the wrapper object.</p>
    # @!attribute source_type
    #   <p>The source type of the files to attach.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>The s3 location of the files to attach.</p>
    #   @return [Types::S3ObjectFile]
    # @!attribute byte_content
    #   <p>The data and the text of the attached files.</p>
    #   @return [Types::ByteContentFile]
    class FileSource < Struct.new(
      :source_type,
      :s3_location,
      :byte_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the name that the metadata attribute must match and the value to which to compare the value of the metadata attribute. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Query configurations</a>.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax">RetrieveAndGenerate request</a> </p> </li> </ul>
    # @!attribute key
    #   <p>The name that the metadata attribute must match.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value to whcih to compare the value of the metadata attribute.</p>
    #   @return [JSON]
    class FilterAttribute < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the response to the user.</p>
    # @!attribute text
    #   <p>The text in the response to the user.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Contains information about the invoke agent operation.</p>
    #   @return [Types::Metadata]
    class FinalResponse < Struct.new(
      :text,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about why a flow completed.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute completion_reason
    #   <p>The reason that the flow completed.</p>
    #   @return [String]
    class FlowCompletionEvent < Struct.new(
      :completion_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the content of an flow execution input or output field.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute document
    #   <p>The document content of the field, which can contain text or structured data.</p>
    #   @return [JSON]
    class FlowExecutionContent < Struct.new(
      :document,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Document < FlowExecutionContent; end
      class Unknown < FlowExecutionContent; end
    end

    # <p>Contains information about an error that occurred during an flow execution.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @!attribute node_name
    #   <p>The name of the node in the flow where the error occurred (if applicable).</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error code for the type of error that occurred.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A descriptive message that provides details about the error.</p>
    #   @return [String]
    class FlowExecutionError < Struct.new(
      :node_name,
      :error,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an event that occurred during an flow execution. This is a union type that can contain one of several event types, such as node input and output events; flow input and output events; condition node result events, or failure events.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @!attribute flow_input_event
    #   <p>Contains information about the inputs provided to the flow at the start of execution.</p>
    #   @return [Types::FlowExecutionInputEvent]
    # @!attribute flow_output_event
    #   <p>Contains information about the outputs produced by the flow at the end of execution.</p>
    #   @return [Types::FlowExecutionOutputEvent]
    # @!attribute node_input_event
    #   <p>Contains information about the inputs provided to a specific node during execution.</p>
    #   @return [Types::NodeInputEvent]
    # @!attribute node_output_event
    #   <p>Contains information about the outputs produced by a specific node during execution.</p>
    #   @return [Types::NodeOutputEvent]
    # @!attribute condition_result_event
    #   <p>Contains information about a condition evaluation result during the flow execution. This event is generated when a condition node in the flow evaluates its conditions.</p>
    #   @return [Types::ConditionResultEvent]
    # @!attribute node_failure_event
    #   <p>Contains information about a failure that occurred at a specific node during execution.</p>
    #   @return [Types::NodeFailureEvent]
    # @!attribute flow_failure_event
    #   <p>Contains information about a failure that occurred at the flow level during execution.</p>
    #   @return [Types::FlowFailureEvent]
    # @!attribute node_action_event
    #   <p>Contains information about an action (operation) called by a node during execution.</p>
    #   @return [Types::NodeActionEvent]
    # @!attribute node_dependency_event
    #   <p>Contains information about an internal trace of a specific node during execution.</p>
    #   @return [Types::NodeDependencyEvent]
    class FlowExecutionEvent < Struct.new(
      :flow_input_event,
      :flow_output_event,
      :node_input_event,
      :node_output_event,
      :condition_result_event,
      :node_failure_event,
      :flow_failure_event,
      :node_action_event,
      :node_dependency_event,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FlowInputEvent < FlowExecutionEvent; end
      class FlowOutputEvent < FlowExecutionEvent; end
      class NodeInputEvent < FlowExecutionEvent; end
      class NodeOutputEvent < FlowExecutionEvent; end
      class ConditionResultEvent < FlowExecutionEvent; end
      class NodeFailureEvent < FlowExecutionEvent; end
      class FlowFailureEvent < FlowExecutionEvent; end
      class NodeActionEvent < FlowExecutionEvent; end
      class NodeDependencyEvent < FlowExecutionEvent; end
      class Unknown < FlowExecutionEvent; end
    end

    # <p>Contains information about the inputs provided to the flow at the start of a flow execution.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the node that receives the inputs.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp when the inputs are provided.</p>
    #   @return [Time]
    # @!attribute fields
    #   <p>A list of input fields provided to the flow.</p>
    #   @return [Array<Types::FlowInputField>]
    class FlowExecutionInputEvent < Struct.new(
      :node_name,
      :timestamp,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the outputs produced by the flow during a flow execution.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the node that produces the outputs.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp when the outputs are produced.</p>
    #   @return [Time]
    # @!attribute fields
    #   <p>A list of output fields produced by the flow.</p>
    #   @return [Array<Types::FlowOutputField>]
    class FlowExecutionOutputEvent < Struct.new(
      :node_name,
      :timestamp,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a flow execution, including its status, timestamps, and identifiers.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the flow execution.</p>
    #   @return [String]
    # @!attribute flow_alias_identifier
    #   <p>The unique identifier of the flow alias used for the execution.</p>
    #   @return [String]
    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute flow_version
    #   <p>The version of the flow used for the execution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the flow execution.</p> <p>Flow executions time out after 24 hours.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the flow execution was created.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The timestamp when the flow execution ended. This field is only populated when the execution has completed, failed, timed out, or been aborted.</p>
    #   @return [Time]
    class FlowExecutionSummary < Struct.new(
      :execution_arn,
      :flow_alias_identifier,
      :flow_identifier,
      :flow_version,
      :status,
      :created_at,
      :ended_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a failure that occurred at the flow level during a flow execution.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute timestamp
    #   <p>The timestamp when the failure occurred.</p>
    #   @return [Time]
    # @!attribute error_code
    #   <p>The error code that identifies the type of failure that occurred.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A descriptive message that provides details about the failure.</p>
    #   @return [String]
    class FlowFailureEvent < Struct.new(
      :timestamp,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an input into the prompt flow and where to send it.</p>
    # @!attribute node_name
    #   <p>The name of the flow input node that begins the prompt flow.</p>
    #   @return [String]
    # @!attribute node_output_name
    #   <p>The name of the output from the flow input node that begins the prompt flow.</p>
    #   @return [String]
    # @!attribute content
    #   <p>Contains information about an input into the prompt flow.</p>
    #   @return [Types::FlowInputContent]
    # @!attribute node_input_name
    #   <p>The name of the input from the flow input node.</p>
    #   @return [String]
    class FlowInput < Struct.new(
      :node_name,
      :node_output_name,
      :content,
      :node_input_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an input into the flow.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute document
    #   <p>The input to send to the prompt flow input node.</p>
    #   @return [JSON]
    class FlowInputContent < Struct.new(
      :document,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Document < FlowInputContent; end
      class Unknown < FlowInputContent; end
    end

    # <p>Represents an input field provided to a flow during a flow execution.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The name of the input field as defined in the flow's input schema.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the input field, which can contain text or structured data.</p>
    #   @return [Types::FlowExecutionContent]
    class FlowInputField < Struct.new(
      :name,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content structure containing input information for multi-turn flow interactions.</p>
    # @!attribute document
    #   <p>The requested additional input to send back to the multi-turn flow node.</p>
    #   @return [JSON]
    class FlowMultiTurnInputContent < Struct.new(
      :document,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Document < FlowMultiTurnInputContent; end
      class Unknown < FlowMultiTurnInputContent; end
    end

    # <p>Response object from the flow multi-turn node requesting additional information.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the node in the flow that is requesting the input.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The type of the node in the flow that is requesting the input.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content payload containing the input request details for the multi-turn interaction.</p>
    #   @return [Types::FlowMultiTurnInputContent]
    class FlowMultiTurnInputRequestEvent < Struct.new(
      :node_name,
      :node_type,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the content in an output from prompt flow invocation.</p>
    # @!attribute document
    #   <p>The content in the output.</p>
    #   @return [JSON]
    class FlowOutputContent < Struct.new(
      :document,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Document < FlowOutputContent; end
      class Unknown < FlowOutputContent; end
    end

    # <p>Contains information about an output from prompt flow invoction.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the flow output node that the output is from.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The type of the node that the output is from.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content in the output.</p>
    #   @return [Types::FlowOutputContent]
    class FlowOutputEvent < Struct.new(
      :node_name,
      :node_type,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an output field produced by a flow during a flow execution.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The name of the output field as defined in the flow's output schema.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the output field, which can contain text or structured data.</p>
    #   @return [Types::FlowExecutionContent]
    class FlowOutputField < Struct.new(
      :name,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output of the flow.</p>
    # @!attribute flow_output_event
    #   <p>Contains information about an output from flow invocation.</p>
    #   @return [Types::FlowOutputEvent]
    # @!attribute flow_completion_event
    #   <p>Contains information about why the flow completed.</p>
    #   @return [Types::FlowCompletionEvent]
    # @!attribute flow_trace_event
    #   <p>Contains information about a trace, which tracks an input or output for a node in the flow.</p>
    #   @return [Types::FlowTraceEvent]
    # @!attribute internal_server_exception
    #   <p>An internal server error occurred. Retry your request.</p>
    #   @return [Types::InternalServerException]
    # @!attribute validation_exception
    #   <p>Input validation failed. Check your request parameters and retry the request.</p>
    #   @return [Types::ValidationException]
    # @!attribute resource_not_found_exception
    #   <p>The specified resource Amazon Resource Name (ARN) was not found. Check the Amazon Resource Name (ARN) and try your request again.</p>
    #   @return [Types::ResourceNotFoundException]
    # @!attribute service_quota_exceeded_exception
    #   <p>The number of requests exceeds the service quota. Resubmit your request later.</p>
    #   @return [Types::ServiceQuotaExceededException]
    # @!attribute throttling_exception
    #   <p>The number of requests exceeds the limit. Resubmit your request later.</p>
    #   @return [Types::ThrottlingException]
    # @!attribute access_denied_exception
    #   <p>The request is denied because of missing access permissions. Check your permissions and retry your request.</p>
    #   @return [Types::AccessDeniedException]
    # @!attribute conflict_exception
    #   <p>There was a conflict performing an operation. Resolve the conflict and retry your request.</p>
    #   @return [Types::ConflictException]
    # @!attribute dependency_failed_exception
    #   <p>There was an issue with a dependency. Check the resource configurations and retry the request.</p>
    #   @return [Types::DependencyFailedException]
    # @!attribute bad_gateway_exception
    #   <p>There was an issue with a dependency due to a server issue. Retry your request.</p>
    #   @return [Types::BadGatewayException]
    # @!attribute flow_multi_turn_input_request_event
    #   <p>The event stream containing the multi-turn input request information from the flow.</p>
    #   @return [Types::FlowMultiTurnInputRequestEvent]
    class FlowResponseStream < Struct.new(
      :flow_output_event,
      :flow_completion_event,
      :flow_trace_event,
      :internal_server_exception,
      :validation_exception,
      :resource_not_found_exception,
      :service_quota_exceeded_exception,
      :throttling_exception,
      :access_denied_exception,
      :conflict_exception,
      :dependency_failed_exception,
      :bad_gateway_exception,
      :flow_multi_turn_input_request_event,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FlowOutputEvent < FlowResponseStream; end
      class FlowCompletionEvent < FlowResponseStream; end
      class FlowTraceEvent < FlowResponseStream; end
      class InternalServerException < FlowResponseStream; end
      class ValidationException < FlowResponseStream; end
      class ResourceNotFoundException < FlowResponseStream; end
      class ServiceQuotaExceededException < FlowResponseStream; end
      class ThrottlingException < FlowResponseStream; end
      class AccessDeniedException < FlowResponseStream; end
      class ConflictException < FlowResponseStream; end
      class DependencyFailedException < FlowResponseStream; end
      class BadGatewayException < FlowResponseStream; end
      class FlowMultiTurnInputRequestEvent < FlowResponseStream; end
      class Unknown < FlowResponseStream; end
    end

    # <p>Contains information about an input or output for a node in the flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html">Track each step in your prompt flow by viewing its trace in Amazon Bedrock</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_input_trace
    #   <p>Contains information about the input into a node.</p>
    #   @return [Types::FlowTraceNodeInputEvent]
    # @!attribute node_output_trace
    #   <p>Contains information about the output from a node.</p>
    #   @return [Types::FlowTraceNodeOutputEvent]
    # @!attribute condition_node_result_trace
    #   <p>Contains information about an output from a condition node.</p>
    #   @return [Types::FlowTraceConditionNodeResultEvent]
    # @!attribute node_action_trace
    #   <p>Contains information about an action (operation) called by a node.</p>
    #   @return [Types::FlowTraceNodeActionEvent]
    # @!attribute node_dependency_trace
    #   <p>Contains information about an internal trace of a node.</p>
    #   @return [Types::FlowTraceDependencyEvent]
    class FlowTrace < Struct.new(
      :node_input_trace,
      :node_output_trace,
      :condition_node_result_trace,
      :node_action_trace,
      :node_dependency_trace,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class NodeInputTrace < FlowTrace; end
      class NodeOutputTrace < FlowTrace; end
      class ConditionNodeResultTrace < FlowTrace; end
      class NodeActionTrace < FlowTrace; end
      class NodeDependencyTrace < FlowTrace; end
      class Unknown < FlowTrace; end
    end

    # <p>Contains information about a condition that was satisfied. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html">Track each step in your prompt flow by viewing its trace in Amazon Bedrock</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute condition_name
    #   <p>The name of the condition.</p>
    #   @return [String]
    class FlowTraceCondition < Struct.new(
      :condition_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an output from a condition node. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html">Track each step in your prompt flow by viewing its trace in Amazon Bedrock</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the condition node.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The date and time that the trace was returned.</p>
    #   @return [Time]
    # @!attribute satisfied_conditions
    #   <p>An array of objects containing information about the conditions that were satisfied.</p>
    #   @return [Array<Types::FlowTraceCondition>]
    class FlowTraceConditionNodeResultEvent < Struct.new(
      :node_name,
      :timestamp,
      :satisfied_conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a dependency trace event in the flow.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the node that generated the dependency trace.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The date and time that the dependency trace was generated.</p>
    #   @return [Time]
    # @!attribute trace_elements
    #   <p>The trace elements containing detailed information about the dependency.</p>
    #   @return [Types::TraceElements]
    class FlowTraceDependencyEvent < Struct.new(
      :node_name,
      :timestamp,
      :trace_elements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a trace, which tracks an input or output for a node in the flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html">Track each step in your prompt flow by viewing its trace in Amazon Bedrock</a>.</p>
    # @!attribute trace
    #   <p>The trace object containing information about an input or output for a node in the flow.</p>
    #   @return [Types::FlowTrace]
    class FlowTraceEvent < Struct.new(
      :trace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an action (operation) called by a node in an Amazon Bedrock flow. The service generates action events for calls made by prompt nodes, agent nodes, and Amazon Web Services Lambda nodes. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the node that called the operation.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The date and time that the operation was called.</p>
    #   @return [Time]
    # @!attribute request_id
    #   <p>The ID of the request that the node made to the operation.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service that the node called.</p>
    #   @return [String]
    # @!attribute operation_name
    #   <p>The name of the operation that the node called.</p>
    #   @return [String]
    # @!attribute operation_request
    #   <p>The request payload sent to the downstream service.</p>
    #   @return [JSON]
    # @!attribute operation_response
    #   <p>The response payload received from the downstream service.</p>
    #   @return [JSON]
    class FlowTraceNodeActionEvent < Struct.new(
      :node_name,
      :timestamp,
      :request_id,
      :service_name,
      :operation_name,
      :operation_request,
      :operation_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the content of the node input. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html">Track each step in your prompt flow by viewing its trace in Amazon Bedrock</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute document
    #   <p>The content of the node input.</p>
    #   @return [JSON]
    class FlowTraceNodeInputContent < Struct.new(
      :document,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Document < FlowTraceNodeInputContent; end
      class Unknown < FlowTraceNodeInputContent; end
    end

    # <p>Contains information about the input into a node. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html">Track each step in your prompt flow by viewing its trace in Amazon Bedrock</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the node that received the input.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The date and time that the trace was returned.</p>
    #   @return [Time]
    # @!attribute fields
    #   <p>An array of objects containing information about each field in the input.</p>
    #   @return [Array<Types::FlowTraceNodeInputField>]
    class FlowTraceNodeInputEvent < Struct.new(
      :node_name,
      :timestamp,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an item in the execution chain for flow trace node input tracking.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the node in the execution chain.</p>
    #   @return [String]
    # @!attribute index
    #   <p>The index position of this item in the execution chain.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The type of execution chain item. Supported values are Iterator and Loop.</p>
    #   @return [String]
    class FlowTraceNodeInputExecutionChainItem < Struct.new(
      :node_name,
      :index,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a field in the input into a node. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html">Track each step in your prompt flow by viewing its trace in Amazon Bedrock</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_input_name
    #   <p>The name of the node input.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the node input.</p>
    #   @return [Types::FlowTraceNodeInputContent]
    # @!attribute source
    #   <p>The source node that provides input data to this field.</p>
    #   @return [Types::FlowTraceNodeInputSource]
    # @!attribute type
    #   <p>The data type of the input field for compatibility validation.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the input field.</p>
    #   @return [String]
    # @!attribute execution_chain
    #   <p>The execution path through nested nodes like iterators and loops.</p>
    #   @return [Array<Types::FlowTraceNodeInputExecutionChainItem>]
    class FlowTraceNodeInputField < Struct.new(
      :node_input_name,
      :content,
      :source,
      :type,
      :category,
      :execution_chain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the source of input data for a flow trace node field.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the source node that provides the input data.</p>
    #   @return [String]
    # @!attribute output_field_name
    #   <p>The name of the output field from the source node.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The expression used to extract data from the source.</p>
    #   @return [String]
    class FlowTraceNodeInputSource < Struct.new(
      :node_name,
      :output_field_name,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the content of the node output. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html">Track each step in your prompt flow by viewing its trace in Amazon Bedrock</a>.</p>
    # @!attribute document
    #   <p>The content of the node output.</p>
    #   @return [JSON]
    class FlowTraceNodeOutputContent < Struct.new(
      :document,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Document < FlowTraceNodeOutputContent; end
      class Unknown < FlowTraceNodeOutputContent; end
    end

    # <p>Contains information about the output from a node. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html">Track each step in your prompt flow by viewing its trace in Amazon Bedrock</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the node that yielded the output.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The date and time that the trace was returned.</p>
    #   @return [Time]
    # @!attribute fields
    #   <p>An array of objects containing information about each field in the output.</p>
    #   @return [Array<Types::FlowTraceNodeOutputField>]
    class FlowTraceNodeOutputEvent < Struct.new(
      :node_name,
      :timestamp,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a field in the output from a node. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html">Track each step in your prompt flow by viewing its trace in Amazon Bedrock</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_output_name
    #   <p>The name of the node output.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the node output.</p>
    #   @return [Types::FlowTraceNodeOutputContent]
    # @!attribute next
    #   <p>The next node that receives output data from this field.</p>
    #   @return [Array<Types::FlowTraceNodeOutputNext>]
    # @!attribute type
    #   <p>The data type of the output field for compatibility validation.</p>
    #   @return [String]
    class FlowTraceNodeOutputField < Struct.new(
      :node_output_name,
      :content,
      :next,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the next node that receives output data from a flow trace.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the next node that receives the output data.</p>
    #   @return [String]
    # @!attribute input_field_name
    #   <p>The name of the input field in the next node that receives the data.</p>
    #   @return [String]
    class FlowTraceNodeOutputNext < Struct.new(
      :node_name,
      :input_field_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Defines parameters that the agent needs to invoke from the user to complete the function. Corresponds to an action in an action group. </p>
    # @!attribute name
    #   <p> A name for the function. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A description of the function and its purpose. </p>
    #   @return [String]
    # @!attribute parameters
    #   <p> The parameters that the agent elicits from the user to fulfill the function. </p>
    #   @return [Hash<String, Types::ParameterDetail>]
    # @!attribute require_confirmation
    #   <p> Contains information if user confirmation is required to invoke the function. </p>
    #   @return [String]
    class FunctionDefinition < Struct.new(
      :name,
      :description,
      :parameters,
      :require_confirmation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the function that the agent predicts should be called.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p>In the <code>returnControl</code> field of the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> </p> </li> </ul>
    # @!attribute action_group
    #   <p>The action group that the function belongs to.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of parameters of the function.</p>
    #   @return [Array<Types::FunctionParameter>]
    # @!attribute function
    #   <p>The name of the function.</p>
    #   @return [String]
    # @!attribute action_invocation_type
    #   <p>Contains information about the function to invoke,</p>
    #   @return [String]
    # @!attribute agent_id
    #   <p>The agent's ID.</p>
    #   @return [String]
    # @!attribute collaborator_name
    #   <p>The collaborator's name.</p>
    #   @return [String]
    class FunctionInvocationInput < Struct.new(
      :action_group,
      :parameters,
      :function,
      :action_invocation_type,
      :agent_id,
      :collaborator_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a parameter of the function.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p>In the <code>returnControl</code> field of the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> </p> </li> </ul>
    # @!attribute name
    #   <p>The name of the parameter.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the parameter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the parameter.</p>
    #   @return [String]
    class FunctionParameter < Struct.new(
      :name,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the function that was called from the action group and the response that was returned.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p>In the <code>returnControlInvocationResults</code> of the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_RequestSyntax">InvokeAgent request</a> </p> </li> </ul>
    # @!attribute action_group
    #   <p>The action group that the function belongs to.</p>
    #   @return [String]
    # @!attribute confirmation_state
    #   <p>Contains the user confirmation information about the function that was called.</p>
    #   @return [String]
    # @!attribute function
    #   <p>The name of the function that was called.</p>
    #   @return [String]
    # @!attribute response_body
    #   <p>The response from the function call using the parameters. The response might be returned directly or from the Lambda function. Specify <code>TEXT</code> or <code>IMAGES</code>. The key of the object is the content type. You can only specify one type. If you specify <code>IMAGES</code>, you can specify only one image. You can specify images only when the function in the <code>returnControlInvocationResults</code> is a computer use action. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>.</p>
    #   @return [Hash<String, Types::ContentBody>]
    # @!attribute response_state
    #   <p>Controls the final response state returned to end user when API/Function execution failed. When this state is FAILURE, the request would fail with dependency failure exception. When this state is REPROMPT, the API/function response will be sent to model for re-prompt</p>
    #   @return [String]
    # @!attribute agent_id
    #   <p>The agent's ID.</p>
    #   @return [String]
    class FunctionResult < Struct.new(
      :action_group,
      :confirmation_state,
      :function,
      :response_body,
      :response_state,
      :agent_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains details about the function schema for the action group or the JSON or YAML-formatted payload defining the schema. </p>
    # @!attribute functions
    #   <p> A list of functions that each define an action in the action group. </p>
    #   @return [Array<Types::FunctionDefinition>]
    class FunctionSchema < Struct.new(
      :functions,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Functions < FunctionSchema; end
      class Unknown < FunctionSchema; end
    end

    # @!attribute query_generation_input
    #   <p>Specifies information about a natural language query to transform into SQL.</p>
    #   @return [Types::QueryGenerationInput]
    # @!attribute transformation_configuration
    #   <p>Specifies configurations for transforming the natural language query into SQL.</p>
    #   @return [Types::TransformationConfiguration]
    class GenerateQueryRequest < Struct.new(
      :query_generation_input,
      :transformation_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute queries
    #   <p>A list of objects, each of which defines a generated query that can correspond to the natural language queries.</p>
    #   @return [Array<Types::GeneratedQuery>]
    class GenerateQueryResponse < Struct.new(
      :queries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a query generated for a natural language query.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute type
    #   <p>The type of transformed query.</p>
    #   @return [String]
    # @!attribute sql
    #   <p>An SQL query that corresponds to the natural language query.</p>
    #   @return [String]
    class GeneratedQuery < Struct.new(
      :type,
      :sql,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about a part of the generated response that is accompanied by a citation.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> – in the <code>generatedResponsePart</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax">RetrieveAndGenerate response</a> – in the <code>generatedResponsePart</code> field</p> </li> </ul>
    # @!attribute text_response_part
    #   <p>Contains metadata about a textual part of the generated response that is accompanied by a citation.</p>
    #   @return [Types::TextResponsePart]
    class GeneratedResponsePart < Struct.new(
      :text_response_part,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for response generation based on the knowledge base query results.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax">RetrieveAndGenerate request</a> </p> </li> </ul>
    # @!attribute prompt_template
    #   <p>Contains the template for the prompt that's sent to the model for response generation. Generation prompts must include the <code>$search_results$</code> variable. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html">Use placeholder variables</a> in the user guide.</p>
    #   @return [Types::PromptTemplate]
    # @!attribute guardrail_configuration
    #   <p>The configuration details for the guardrail.</p>
    #   @return [Types::GuardrailConfiguration]
    # @!attribute inference_config
    #   <p> Configuration settings for inference when using RetrieveAndGenerate to generate responses while using a knowledge base as a source. </p>
    #   @return [Types::InferenceConfig]
    # @!attribute additional_model_request_fields
    #   <p> Additional model parameters and corresponding values not included in the textInferenceConfig structure for a knowledge base. This allows users to provide custom model parameters specific to the language model being used. </p>
    #   @return [Hash<String, JSON>]
    # @!attribute performance_config
    #   <p>The latency configuration for the model.</p>
    #   @return [Types::PerformanceConfiguration]
    class GenerationConfiguration < Struct.new(
      :prompt_template,
      :guardrail_configuration,
      :inference_config,
      :additional_model_request_fields,
      :performance_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the total number of results is greater than the maxItems value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of items to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute agent_id
    #   <p>The unique identifier of the agent to which the alias belongs.</p>
    #   @return [String]
    # @!attribute agent_alias_id
    #   <p>The unique identifier of an alias of an agent.</p>
    #   @return [String]
    # @!attribute memory_type
    #   <p>The type of memory.</p>
    #   @return [String]
    # @!attribute memory_id
    #   <p>The unique identifier of the memory. </p>
    #   @return [String]
    class GetAgentMemoryRequest < Struct.new(
      :next_token,
      :max_items,
      :agent_id,
      :agent_alias_id,
      :memory_type,
      :memory_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the total number of results is greater than the maxItems value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute memory_contents
    #   <p>Contains details of the sessions stored in the memory</p>
    #   @return [Array<Types::Memory>]
    class GetAgentMemoryResponse < Struct.new(
      :next_token,
      :memory_contents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute flow_alias_identifier
    #   <p>The unique identifier of the flow alias used for the flow execution.</p>
    #   @return [String]
    # @!attribute execution_identifier
    #   <p>The unique identifier of the flow execution.</p>
    #   @return [String]
    class GetExecutionFlowSnapshotRequest < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :execution_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute flow_alias_identifier
    #   <p>The unique identifier of the flow alias used for the flow execution.</p>
    #   @return [String]
    # @!attribute flow_version
    #   <p>The version of the flow used for the flow execution.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that's used by the flow execution.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The flow definition used for the flow execution, including the nodes, connections, and configuration at the time when the execution started.</p> <p>The definition returns as a string that follows the structure of a <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_FlowDefinition.html">FlowDefinition</a> object.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the customer managed KMS key that's used to encrypt the flow snapshot.</p>
    #   @return [String]
    class GetExecutionFlowSnapshotResponse < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :flow_version,
      :execution_role_arn,
      :definition,
      :customer_encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute flow_alias_identifier
    #   <p>The unique identifier of the flow alias used for the execution.</p>
    #   @return [String]
    # @!attribute execution_identifier
    #   <p>The unique identifier of the flow execution to retrieve.</p>
    #   @return [String]
    class GetFlowExecutionRequest < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :execution_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the flow execution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the flow execution.</p> <p>Flow executions time out after 24 hours.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The timestamp when the flow execution started.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The timestamp when the flow execution ended. This field is only populated when the execution has completed, failed, timed out, or been aborted.</p>
    #   @return [Time]
    # @!attribute errors
    #   <p>A list of errors that occurred during the flow execution. Each error includes an error code, message, and the node where the error occurred, if applicable.</p>
    #   @return [Array<Types::FlowExecutionError>]
    # @!attribute flow_alias_identifier
    #   <p>The unique identifier of the flow alias used for the execution.</p>
    #   @return [String]
    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute flow_version
    #   <p>The version of the flow used for the execution.</p>
    #   @return [String]
    class GetFlowExecutionResponse < Struct.new(
      :execution_arn,
      :status,
      :started_at,
      :ended_at,
      :errors,
      :flow_alias_identifier,
      :flow_identifier,
      :flow_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invocation_identifier
    #   <p>The unique identifier for the invocation in UUID format.</p>
    #   @return [String]
    # @!attribute invocation_step_id
    #   <p>The unique identifier (in UUID format) for the specific invocation step to retrieve.</p>
    #   @return [String]
    # @!attribute session_identifier
    #   <p>The unique identifier for the invocation step's associated session. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    #   @return [String]
    class GetInvocationStepRequest < Struct.new(
      :invocation_identifier,
      :invocation_step_id,
      :session_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invocation_step
    #   <p>The complete details of the requested invocation step.</p>
    #   @return [Types::InvocationStep]
    class GetInvocationStepResponse < Struct.new(
      :invocation_step,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_identifier
    #   <p>A unique identifier for the session to retrieve. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    #   @return [String]
    class GetSessionRequest < Struct.new(
      :session_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier for the session in UUID format.</p>
    #   @return [String]
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the session.</p>
    #   @return [String]
    # @!attribute session_status
    #   <p>The current status of the session.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp for when the session was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp for when the session was last modified.</p>
    #   @return [Time]
    # @!attribute session_metadata
    #   <p>A map of key-value pairs containing attributes persisted across the session.</p>
    #   @return [Hash<String, String>]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service key used to encrypt the session data. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/session-encryption.html">Amazon Bedrock session encryption</a>.</p>
    #   @return [String]
    class GetSessionResponse < Struct.new(
      :session_id,
      :session_arn,
      :session_status,
      :created_at,
      :last_updated_at,
      :session_metadata,
      :encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Assessment details of the content analyzed by Guardrails.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute topic_policy
    #   <p>Topic policy details of the Guardrail.</p>
    #   @return [Types::GuardrailTopicPolicyAssessment]
    # @!attribute content_policy
    #   <p>Content policy details of the Guardrail.</p>
    #   @return [Types::GuardrailContentPolicyAssessment]
    # @!attribute word_policy
    #   <p>Word policy details of the Guardrail.</p>
    #   @return [Types::GuardrailWordPolicyAssessment]
    # @!attribute sensitive_information_policy
    #   <p>Sensitive Information policy details of Guardrail.</p>
    #   @return [Types::GuardrailSensitiveInformationPolicyAssessment]
    class GuardrailAssessment < Struct.new(
      :topic_policy,
      :content_policy,
      :word_policy,
      :sensitive_information_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details for the guardrail.</p>
    # @!attribute guardrail_id
    #   <p>The unique identifier for the guardrail.</p>
    #   @return [String]
    # @!attribute guardrail_version
    #   <p>The version of the guardrail.</p>
    #   @return [String]
    class GuardrailConfiguration < Struct.new(
      :guardrail_id,
      :guardrail_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration details for the guardrail. </p>
    # @!attribute guardrail_identifier
    #   <p> The unique identifier for the guardrail. </p>
    #   @return [String]
    # @!attribute guardrail_version
    #   <p> The version of the guardrail. </p>
    #   @return [String]
    class GuardrailConfigurationWithArn < Struct.new(
      :guardrail_identifier,
      :guardrail_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the content filter used in the Guardrail.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute type
    #   <p>The type of content detected in the filter by the Guardrail.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence level regarding the content detected in the filter by the Guardrail.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action placed on the content by the Guardrail filter.</p>
    #   @return [String]
    class GuardrailContentFilter < Struct.new(
      :type,
      :confidence,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the policy assessment in the Guardrails filter.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute filters
    #   <p>The filter details of the policy assessment used in the Guardrails filter.</p>
    #   @return [Array<Types::GuardrailContentFilter>]
    class GuardrailContentPolicyAssessment < Struct.new(
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The custom word details for the filter in the Guardrail.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute match
    #   <p>The match details for the custom word filter in the Guardrail.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action details for the custom word filter in the Guardrail.</p>
    #   @return [String]
    class GuardrailCustomWord < Struct.new(
      :match,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A guardrail event.</p>
    # @!attribute action
    #   <p>The guardrail action.</p>
    #   @return [String]
    class GuardrailEvent < Struct.new(
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The managed word details for the filter in the Guardrail.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute match
    #   <p>The match details for the managed word filter in the Guardrail.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type details for the managed word filter in the Guardrail.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action details for the managed word filter in the Guardrail.</p>
    #   @return [String]
    class GuardrailManagedWord < Struct.new(
      :match,
      :type,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Guardrail filter to identify and remove personally identifiable information (PII).</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute type
    #   <p>The type of PII the Guardrail filter has identified and removed.</p>
    #   @return [String]
    # @!attribute match
    #   <p>The match to settings in the Guardrail filter to identify and remove PII.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action of the Guardrail filter to identify and remove PII.</p>
    #   @return [String]
    class GuardrailPiiEntityFilter < Struct.new(
      :type,
      :match,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details for the regex filter used in the Guardrail.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The name details for the regex filter used in the Guardrail.</p>
    #   @return [String]
    # @!attribute regex
    #   <p>The regex details for the regex filter used in the Guardrail.</p>
    #   @return [String]
    # @!attribute match
    #   <p>The match details for the regex filter used in the Guardrail.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action details for the regex filter used in the Guardrail.</p>
    #   @return [String]
    class GuardrailRegexFilter < Struct.new(
      :name,
      :regex,
      :match,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the sensitive policy assessment used in the Guardrail.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute pii_entities
    #   <p>The details of the PII entities used in the sensitive policy assessment for the Guardrail.</p>
    #   @return [Array<Types::GuardrailPiiEntityFilter>]
    # @!attribute regexes
    #   <p>The details of the regexes used in the sensitive policy assessment for the Guardrail.</p>
    #   @return [Array<Types::GuardrailRegexFilter>]
    class GuardrailSensitiveInformationPolicyAssessment < Struct.new(
      :pii_entities,
      :regexes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details for a specific topic defined in the Guardrail.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The name details on a specific topic in the Guardrail.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type details on a specific topic in the Guardrail.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action details on a specific topic in the Guardrail.</p>
    #   @return [String]
    class GuardrailTopic < Struct.new(
      :name,
      :type,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the policy assessment used in the Guardrail.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute topics
    #   <p>The topic details of the policy assessment used in the Guardrail.</p>
    #   @return [Array<Types::GuardrailTopic>]
    class GuardrailTopicPolicyAssessment < Struct.new(
      :topics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The trace details used in the Guardrail.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute action
    #   <p>The trace action details used with the Guardrail.</p>
    #   @return [String]
    # @!attribute trace_id
    #   <p>The details of the trace Id used in the Guardrail Trace.</p>
    #   @return [String]
    # @!attribute input_assessments
    #   <p>The details of the input assessments used in the Guardrail Trace.</p>
    #   @return [Array<Types::GuardrailAssessment>]
    # @!attribute output_assessments
    #   <p>The details of the output assessments used in the Guardrail Trace.</p>
    #   @return [Array<Types::GuardrailAssessment>]
    # @!attribute metadata
    #   <p>Contains information about the Guardrail output.</p>
    #   @return [Types::Metadata]
    class GuardrailTrace < Struct.new(
      :action,
      :trace_id,
      :input_assessments,
      :output_assessments,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The assessment details for words defined in the Guardrail filter.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute custom_words
    #   <p>The custom word details for words defined in the Guardrail filter.</p>
    #   @return [Array<Types::GuardrailCustomWord>]
    # @!attribute managed_word_lists
    #   <p>The managed word lists for words defined in the Guardrail filter.</p>
    #   @return [Array<Types::GuardrailManagedWord>]
    class GuardrailWordPolicyAssessment < Struct.new(
      :custom_words,
      :managed_word_lists,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Image content for an invocation step.</p>
    # @!attribute format
    #   <p>The format of the image.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source for the image.</p>
    #   @return [Types::ImageSource]
    class ImageBlock < Struct.new(
      :format,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an image in the result from a function in the action group invocation. You can specify images only when the function is a computer use action. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>.</p>
    # @!attribute format
    #   <p>The type of image in the result.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the image in the result.</p>
    #   @return [Types::ImageInputSource]
    class ImageInput < Struct.new(
      :format,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the source of an input image in the result from a function in the action group invocation.</p>
    # @!attribute bytes
    #   <p> The raw image bytes for the image. If you use an Amazon Web Services SDK, you don't need to encode the image bytes in base64.</p>
    #   @return [String]
    class ImageInputSource < Struct.new(
      :bytes,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Bytes < ImageInputSource; end
      class Unknown < ImageInputSource; end
    end

    # <p>The source for an image.</p>
    # @!attribute bytes
    #   <p> The raw image bytes for the image. If you use an Amazon Web Services SDK, you don't need to encode the image bytes in base64.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>The path to the Amazon S3 bucket where the image is stored.</p>
    #   @return [Types::S3Location]
    class ImageSource < Struct.new(
      :bytes,
      :s3_location,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Bytes < ImageSource; end
      class S3Location < ImageSource; end
      class Unknown < ImageSource; end
    end

    # <p>Settings for implicit filtering, where a model generates a metadata filter based on the prompt.</p>
    # @!attribute metadata_attributes
    #   <p>Metadata that can be used in a filter.</p>
    #   @return [Array<Types::MetadataAttributeSchema>]
    # @!attribute model_arn
    #   <p>The model that generates the filter.</p>
    #   @return [String]
    class ImplicitFilterConfiguration < Struct.new(
      :metadata_attributes,
      :model_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration for inference settings when generating responses using RetrieveAndGenerate. </p>
    # @!attribute text_inference_config
    #   <p> Configuration settings specific to text generation while generating responses using RetrieveAndGenerate. </p>
    #   @return [Types::TextInferenceConfig]
    class InferenceConfig < Struct.new(
      :text_inference_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifications about the inference parameters that were provided alongside the prompt. These are specified in the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html">PromptOverrideConfiguration</a> object that was set when the agent was created or updated. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters for foundation models</a>.</p>
    # @!attribute temperature
    #   <p>The likelihood of the model selecting higher-probability options while generating a response. A lower value makes the model more likely to choose higher-probability options, while a higher value makes the model more likely to choose lower-probability options.</p>
    #   @return [Float]
    # @!attribute top_p
    #   <p>While generating a response, the model determines the probability of the following token at each point of generation. The value that you set for <code>Top P</code> determines the number of most-likely candidates from which the model chooses the next token in the sequence. For example, if you set <code>topP</code> to 0.8, the model only selects the next token from the top 80% of the probability distribution of next tokens.</p>
    #   @return [Float]
    # @!attribute top_k
    #   <p>While generating a response, the model determines the probability of the following token at each point of generation. The value that you set for <code>topK</code> is the number of most-likely candidates from which the model chooses the next token in the sequence. For example, if you set <code>topK</code> to 50, the model selects the next token from among the top 50 most likely choices.</p>
    #   @return [Integer]
    # @!attribute maximum_length
    #   <p>The maximum number of tokens allowed in the generated response.</p>
    #   @return [Integer]
    # @!attribute stop_sequences
    #   <p>A list of stop sequences. A stop sequence is a sequence of characters that causes the model to stop generating the response.</p>
    #   @return [Array<String>]
    class InferenceConfiguration < Struct.new(
      :temperature,
      :top_p,
      :top_k,
      :maximum_length,
      :stop_sequences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains intermediate response for code interpreter if any files have been generated.</p>
    # @!attribute files
    #   <p>Files containing intermediate response for the user.</p>
    #   @return [Array<Types::OutputFile>]
    class InlineAgentFilePart < Struct.new(
      :files,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a part of an agent response and citations for it. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute bytes
    #   <p>A part of the agent response in bytes.</p>
    #   @return [String]
    # @!attribute attribution
    #   <p>Contains citations for a part of an agent response.</p>
    #   @return [Types::Attribution]
    class InlineAgentPayloadPart < Struct.new(
      :bytes,
      :attribution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from invoking the agent and associated citations and trace information.</p>
    # @!attribute chunk
    #   <p>Contains a part of an agent response and citations for it.</p>
    #   @return [Types::InlineAgentPayloadPart]
    # @!attribute trace
    #   <p>Contains information about the agent and session, alongside the agent's reasoning process and results from calling actions and querying knowledge bases and metadata about the trace. You can use the trace to understand how the agent arrived at the response it provided the customer. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/trace-events.html">Trace events</a>. </p>
    #   @return [Types::InlineAgentTracePart]
    # @!attribute return_control
    #   <p>Contains the parameters and information that the agent elicited from the customer to carry out an action. This information is returned to the system and can be used in your own setup for fulfilling the action.</p>
    #   @return [Types::InlineAgentReturnControlPayload]
    # @!attribute internal_server_exception
    #   <p>An internal server error occurred. Retry your request.</p>
    #   @return [Types::InternalServerException]
    # @!attribute validation_exception
    #   <p>Input validation failed. Check your request parameters and retry the request.</p>
    #   @return [Types::ValidationException]
    # @!attribute resource_not_found_exception
    #   <p>The specified resource Amazon Resource Name (ARN) was not found. Check the Amazon Resource Name (ARN) and try your request again. </p>
    #   @return [Types::ResourceNotFoundException]
    # @!attribute service_quota_exceeded_exception
    #   <p>The number of requests exceeds the service quota. Resubmit your request later.</p>
    #   @return [Types::ServiceQuotaExceededException]
    # @!attribute throttling_exception
    #   <p>The number of requests exceeds the limit. Resubmit your request later.</p>
    #   @return [Types::ThrottlingException]
    # @!attribute access_denied_exception
    #   <p>The request is denied because of missing access permissions. Check your permissions and retry your request.</p>
    #   @return [Types::AccessDeniedException]
    # @!attribute conflict_exception
    #   <p>There was a conflict performing an operation. Resolve the conflict and retry your request. </p>
    #   @return [Types::ConflictException]
    # @!attribute dependency_failed_exception
    #   <p>There was an issue with a dependency. Check the resource configurations and retry the request.</p>
    #   @return [Types::DependencyFailedException]
    # @!attribute bad_gateway_exception
    #   <p>There was an issue with a dependency due to a server issue. Retry your request. </p>
    #   @return [Types::BadGatewayException]
    # @!attribute files
    #   <p>Contains intermediate response for code interpreter if any files have been generated.</p>
    #   @return [Types::InlineAgentFilePart]
    class InlineAgentResponseStream < Struct.new(
      :chunk,
      :trace,
      :return_control,
      :internal_server_exception,
      :validation_exception,
      :resource_not_found_exception,
      :service_quota_exceeded_exception,
      :throttling_exception,
      :access_denied_exception,
      :conflict_exception,
      :dependency_failed_exception,
      :bad_gateway_exception,
      :files,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Chunk < InlineAgentResponseStream; end
      class Trace < InlineAgentResponseStream; end
      class ReturnControl < InlineAgentResponseStream; end
      class InternalServerException < InlineAgentResponseStream; end
      class ValidationException < InlineAgentResponseStream; end
      class ResourceNotFoundException < InlineAgentResponseStream; end
      class ServiceQuotaExceededException < InlineAgentResponseStream; end
      class ThrottlingException < InlineAgentResponseStream; end
      class AccessDeniedException < InlineAgentResponseStream; end
      class ConflictException < InlineAgentResponseStream; end
      class DependencyFailedException < InlineAgentResponseStream; end
      class BadGatewayException < InlineAgentResponseStream; end
      class Files < InlineAgentResponseStream; end
      class Unknown < InlineAgentResponseStream; end
    end

    # <p>Contains information to return from the action group that the agent has predicted to invoke.</p> <p>This data type is used in the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> API operation.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute invocation_inputs
    #   <p>A list of objects that contain information about the parameters and inputs that need to be sent into the API operation or function, based on what the agent determines from its session with the user.</p>
    #   @return [Array<Types::InvocationInputMember>]
    # @!attribute invocation_id
    #   <p>The identifier of the action group invocation. </p>
    #   @return [String]
    class InlineAgentReturnControlPayload < Struct.new(
      :invocation_inputs,
      :invocation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the agent and session, alongside the agent's reasoning process and results from calling API actions and querying knowledge bases and metadata about the trace. You can use the trace to understand how the agent arrived at the response it provided the customer. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-enablement">Trace enablement</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute session_id
    #   <p>The unique identifier of the session with the agent.</p>
    #   @return [String]
    # @!attribute trace
    #   <p>Contains one part of the agent's reasoning process and results from calling API actions and querying knowledge bases. You can use the trace to understand how the agent arrived at the response it provided the customer. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-enablement">Trace enablement</a>. </p>
    #   @return [Types::Trace]
    # @!attribute caller_chain
    #   <p>The caller chain for the trace part.</p>
    #   @return [Array<Types::Caller>]
    # @!attribute event_time
    #   <p>The time that trace occurred. </p>
    #   @return [Time]
    # @!attribute collaborator_name
    #   <p>The collaborator name for the trace part.</p>
    #   @return [String]
    class InlineAgentTracePart < Struct.new(
      :session_id,
      :trace,
      :caller_chain,
      :event_time,
      :collaborator_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for a model called with <a>InvokeInlineAgent</a>.</p>
    # @!attribute performance_config
    #   <p>The latency configuration for the model.</p>
    #   @return [Types::PerformanceConfiguration]
    class InlineBedrockModelConfigurations < Struct.new(
      :performance_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains parameters that specify various attributes that persist across a session or prompt. You can define session state attributes as key-value pairs when writing a <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-lambda.html">Lambda function</a> for an action group or pass them when making an <code>InvokeInlineAgent</code> request. Use session state attributes to control and provide conversational context for your inline agent and to help customize your agent's behavior. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html">Control session context</a> </p>
    # @!attribute session_attributes
    #   <p> Contains attributes that persist across a session and the values of those attributes. </p>
    #   @return [Hash<String, String>]
    # @!attribute prompt_session_attributes
    #   <p> Contains attributes that persist across a session and the values of those attributes. </p>
    #   @return [Hash<String, String>]
    # @!attribute return_control_invocation_results
    #   <p> Contains information about the results from the action group invocation. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-returncontrol.html">Return control to the agent developer</a>. </p> <note> <p>If you include this field in the <code>sessionState</code> field, the <code>inputText</code> field will be ignored.</p> </note>
    #   @return [Array<Types::InvocationResultMember>]
    # @!attribute invocation_id
    #   <p> The identifier of the invocation of an action. This value must match the <code>invocationId</code> returned in the <code>InvokeInlineAgent</code> response for the action whose results are provided in the <code>returnControlInvocationResults</code> field. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-returncontrol.html">Return control to the agent developer</a>. </p>
    #   @return [String]
    # @!attribute files
    #   <p> Contains information about the files used by code interpreter. </p>
    #   @return [Array<Types::InputFile>]
    # @!attribute conversation_history
    #   <p> Contains the conversation history that persist across sessions. </p>
    #   @return [Types::ConversationHistory]
    class InlineSessionState < Struct.new(
      :session_attributes,
      :prompt_session_attributes,
      :return_control_invocation_results,
      :invocation_id,
      :files,
      :conversation_history,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details of the source files.</p>
    # @!attribute name
    #   <p>The name of the source file.</p>
    #   @return [String]
    # @!attribute source
    #   <p>Specifies where the files are located.</p>
    #   @return [Types::FileSource]
    # @!attribute use_case
    #   <p>Specifies how the source files will be used by the code interpreter.</p>
    #   @return [String]
    class InputFile < Struct.new(
      :name,
      :source,
      :use_case,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the prompt to optimize.</p>
    # @!attribute text_prompt
    #   <p>Contains information about the text prompt to optimize.</p>
    #   @return [Types::TextPrompt]
    class InputPrompt < Struct.new(
      :text_prompt,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TextPrompt < InputPrompt; end
      class Unknown < InputPrompt; end
    end

    # <p>An internal server error occurred. Retry your request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception. If the reason is <code>BEDROCK_MODEL_INVOCATION_SERVICE_UNAVAILABLE</code>, the model invocation service is unavailable. Retry your request.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information pertaining to the action group or knowledge base that is being invoked.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute trace_id
    #   <p>The unique identifier of the trace.</p>
    #   @return [String]
    # @!attribute invocation_type
    #   <p>Specifies whether the agent is invoking an action group or a knowledge base.</p>
    #   @return [String]
    # @!attribute action_group_invocation_input
    #   <p>Contains information about the action group to be invoked.</p>
    #   @return [Types::ActionGroupInvocationInput]
    # @!attribute knowledge_base_lookup_input
    #   <p>Contains details about the knowledge base to look up and the query to be made.</p>
    #   @return [Types::KnowledgeBaseLookupInput]
    # @!attribute code_interpreter_invocation_input
    #   <p>Contains information about the code interpreter to be invoked.</p>
    #   @return [Types::CodeInterpreterInvocationInput]
    # @!attribute agent_collaborator_invocation_input
    #   <p>The collaborator's invocation input.</p>
    #   @return [Types::AgentCollaboratorInvocationInput]
    class InvocationInput < Struct.new(
      :trace_id,
      :invocation_type,
      :action_group_invocation_input,
      :knowledge_base_lookup_input,
      :code_interpreter_invocation_input,
      :agent_collaborator_invocation_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the API operation or function that the agent predicts should be called. </p> <p>This data type is used in the following API operations:</p> <ul> <li> <p>In the <code>returnControl</code> field of the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> </p> </li> </ul>
    # @!attribute api_invocation_input
    #   <p>Contains information about the API operation that the agent predicts should be called.</p>
    #   @return [Types::ApiInvocationInput]
    # @!attribute function_invocation_input
    #   <p>Contains information about the function that the agent predicts should be called.</p>
    #   @return [Types::FunctionInvocationInput]
    class InvocationInputMember < Struct.new(
      :api_invocation_input,
      :function_invocation_input,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ApiInvocationInput < InvocationInputMember; end
      class FunctionInvocationInput < InvocationInputMember; end
      class Unknown < InvocationInputMember; end
    end

    # <p>A result from the invocation of an action. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-returncontrol.html">Return control to the agent developer</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html">Control session context</a>.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_RequestSyntax">InvokeAgent request</a> </p> </li> </ul>
    # @!attribute api_result
    #   <p>The result from the API response from the action group invocation.</p>
    #   @return [Types::ApiResult]
    # @!attribute function_result
    #   <p>The result from the function from the action group invocation.</p>
    #   @return [Types::FunctionResult]
    class InvocationResultMember < Struct.new(
      :api_result,
      :function_result,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ApiResult < InvocationResultMember; end
      class FunctionResult < InvocationResultMember; end
      class Unknown < InvocationResultMember; end
    end

    # <p>Stores fine-grained state checkpoints, including text and images, for each interaction in an invocation in a session. For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>. </p>
    # @!attribute session_id
    #   <p>The unique identifier of the session containing the invocation step.</p>
    #   @return [String]
    # @!attribute invocation_id
    #   <p>The unique identifier (in UUID format) for the invocation that includes the invocation step.</p>
    #   @return [String]
    # @!attribute invocation_step_id
    #   <p>The unique identifier (in UUID format) for the invocation step.</p>
    #   @return [String]
    # @!attribute invocation_step_time
    #   <p>The timestamp for when the invocation step was created.</p>
    #   @return [Time]
    # @!attribute payload
    #   <p>Payload content, such as text and images, for the invocation step.</p>
    #   @return [Types::InvocationStepPayload]
    class InvocationStep < Struct.new(
      :session_id,
      :invocation_id,
      :invocation_step_id,
      :invocation_step_time,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Payload content, such as text and images, for the invocation step.</p>
    # @!attribute content_blocks
    #   <p>The content for the invocation step.</p>
    #   @return [Array<Types::BedrockSessionContentBlock>]
    class InvocationStepPayload < Struct.new(
      :content_blocks,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ContentBlocks < InvocationStepPayload; end
      class Unknown < InvocationStepPayload; end
    end

    # <p>Contains details about an invocation step within an invocation in a session. For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p>
    # @!attribute session_id
    #   <p>The unique identifier for the session associated with the invocation step.</p>
    #   @return [String]
    # @!attribute invocation_id
    #   <p>A unique identifier for the invocation in UUID format.</p>
    #   @return [String]
    # @!attribute invocation_step_id
    #   <p>The unique identifier (in UUID format) for the invocation step.</p>
    #   @return [String]
    # @!attribute invocation_step_time
    #   <p>The timestamp for when the invocation step was created.</p>
    #   @return [Time]
    class InvocationStepSummary < Struct.new(
      :session_id,
      :invocation_id,
      :invocation_step_id,
      :invocation_step_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an invocation in a session. For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p>
    # @!attribute session_id
    #   <p>The unique identifier for the session associated with the invocation.</p>
    #   @return [String]
    # @!attribute invocation_id
    #   <p>A unique identifier for the invocation in UUID format.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp for when the invocation was created.</p>
    #   @return [Time]
    class InvocationSummary < Struct.new(
      :session_id,
      :invocation_id,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_state
    #   <p>Contains parameters that specify various attributes of the session. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html">Control session context</a>.</p> <note> <p>If you include <code>returnControlInvocationResults</code> in the <code>sessionState</code> field, the <code>inputText</code> field will be ignored.</p> </note>
    #   @return [Types::SessionState]
    # @!attribute agent_id
    #   <p>The unique identifier of the agent to use.</p>
    #   @return [String]
    # @!attribute agent_alias_id
    #   <p>The alias of the agent to use.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the session. Use the same value across requests to continue the same conversation.</p>
    #   @return [String]
    # @!attribute end_session
    #   <p>Specifies whether to end the session with the agent or not.</p>
    #   @return [Boolean]
    # @!attribute enable_trace
    #   <p>Specifies whether to turn on the trace or not to track the agent's reasoning process. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-events">Trace enablement</a>.</p>
    #   @return [Boolean]
    # @!attribute input_text
    #   <p>The prompt text to send the agent.</p> <note> <p>If you include <code>returnControlInvocationResults</code> in the <code>sessionState</code> field, the <code>inputText</code> field will be ignored.</p> </note>
    #   @return [String]
    # @!attribute memory_id
    #   <p>The unique identifier of the agent memory.</p>
    #   @return [String]
    # @!attribute bedrock_model_configurations
    #   <p>Model performance settings for the request.</p>
    #   @return [Types::BedrockModelConfigurations]
    # @!attribute streaming_configurations
    #   <p> Specifies the configurations for streaming. </p> <note> <p>To use agent streaming, you need permissions to perform the <code>bedrock:InvokeModelWithResponseStream</code> action.</p> </note>
    #   @return [Types::StreamingConfigurations]
    # @!attribute prompt_creation_configurations
    #   <p>Specifies parameters that control how the service populates the agent prompt for an <code>InvokeAgent</code> request. You can control which aspects of previous invocations in the same agent session the service uses to populate the agent prompt. This gives you more granular control over the contextual history that is used to process the current request.</p>
    #   @return [Types::PromptCreationConfigurations]
    # @!attribute source_arn
    #   <p>The ARN of the resource making the request.</p>
    #   @return [String]
    class InvokeAgentRequest < Struct.new(
      :session_state,
      :agent_id,
      :agent_alias_id,
      :session_id,
      :end_session,
      :enable_trace,
      :input_text,
      :memory_id,
      :bedrock_model_configurations,
      :streaming_configurations,
      :prompt_creation_configurations,
      :source_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute completion
    #   <p>The agent's response to the user prompt.</p>
    #   @return [Types::ResponseStream]
    # @!attribute content_type
    #   <p>The MIME type of the input data in the request. The default value is <code>application/json</code>.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the session with the agent.</p>
    #   @return [String]
    # @!attribute memory_id
    #   <p>The unique identifier of the agent memory.</p>
    #   @return [String]
    class InvokeAgentResponse < Struct.new(
      :completion,
      :content_type,
      :session_id,
      :memory_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute flow_alias_identifier
    #   <p>The unique identifier of the flow alias.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>A list of objects, each containing information about an input into the flow.</p>
    #   @return [Array<Types::FlowInput>]
    # @!attribute enable_trace
    #   <p>Specifies whether to return the trace for the flow or not. Traces track inputs and outputs for nodes in the flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html">Track each step in your prompt flow by viewing its trace in Amazon Bedrock</a>.</p>
    #   @return [Boolean]
    # @!attribute model_performance_configuration
    #   <p>Model performance settings for the request.</p>
    #   @return [Types::ModelPerformanceConfiguration]
    # @!attribute execution_id
    #   <p>The unique identifier for the current flow execution. If you don't provide a value, Amazon Bedrock creates the identifier for you. </p>
    #   @return [String]
    class InvokeFlowRequest < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :inputs,
      :enable_trace,
      :model_performance_configuration,
      :execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute response_stream
    #   <p>The output of the flow, returned as a stream. If there's an error, the error is returned.</p>
    #   @return [Types::FlowResponseStream]
    # @!attribute execution_id
    #   <p>The unique identifier for the current flow execution.</p>
    #   @return [String]
    class InvokeFlowResponse < Struct.new(
      :response_stream,
      :execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute customer_encryption_key_arn
    #   <p> The Amazon Resource Name (ARN) of the Amazon Web Services KMS key to use to encrypt your inline agent. </p>
    #   @return [String]
    # @!attribute foundation_model
    #   <p> The <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns">model identifier (ID)</a> of the model to use for orchestration by the inline agent. For example, <code>meta.llama3-1-70b-instruct-v1:0</code>. </p>
    #   @return [String]
    # @!attribute instruction
    #   <p> The instructions that tell the inline agent what it should do and how it should interact with users. </p>
    #   @return [String]
    # @!attribute idle_session_ttl_in_seconds
    #   <p> The number of seconds for which the inline agent should maintain session information. After this time expires, the subsequent <code>InvokeInlineAgent</code> request begins a new session. </p> <p>A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and the data provided before the timeout is deleted.</p>
    #   @return [Integer]
    # @!attribute action_groups
    #   <p> A list of action groups with each action group defining the action the inline agent needs to carry out. </p>
    #   @return [Array<Types::AgentActionGroup>]
    # @!attribute knowledge_bases
    #   <p> Contains information of the knowledge bases to associate with. </p>
    #   @return [Array<Types::KnowledgeBase>]
    # @!attribute guardrail_configuration
    #   <p> The <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html">guardrails</a> to assign to the inline agent. </p>
    #   @return [Types::GuardrailConfigurationWithArn]
    # @!attribute prompt_override_configuration
    #   <p> Configurations for advanced prompts used to override the default prompts to enhance the accuracy of the inline agent. </p>
    #   @return [Types::PromptOverrideConfiguration]
    # @!attribute agent_collaboration
    #   <p> Defines how the inline collaborator agent handles information across multiple collaborator agents to coordinate a final response. The inline collaborator agent can also be the supervisor. </p>
    #   @return [String]
    # @!attribute collaborator_configurations
    #   <p> Settings for an inline agent collaborator called with <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeInlineAgent.html">InvokeInlineAgent</a>. </p>
    #   @return [Array<Types::CollaboratorConfiguration>]
    # @!attribute agent_name
    #   <p>The name for the agent.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p> The unique identifier of the session. Use the same value across requests to continue the same conversation. </p>
    #   @return [String]
    # @!attribute end_session
    #   <p> Specifies whether to end the session with the inline agent or not. </p>
    #   @return [Boolean]
    # @!attribute enable_trace
    #   <p> Specifies whether to turn on the trace or not to track the agent's reasoning process. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/trace-events.html">Using trace</a>. </p>
    #   @return [Boolean]
    # @!attribute input_text
    #   <p> The prompt text to send to the agent. </p> <note> <p>If you include <code>returnControlInvocationResults</code> in the <code>sessionState</code> field, the <code>inputText</code> field will be ignored.</p> </note>
    #   @return [String]
    # @!attribute streaming_configurations
    #   <p> Specifies the configurations for streaming. </p> <note> <p>To use agent streaming, you need permissions to perform the <code>bedrock:InvokeModelWithResponseStream</code> action.</p> </note>
    #   @return [Types::StreamingConfigurations]
    # @!attribute prompt_creation_configurations
    #   <p>Specifies parameters that control how the service populates the agent prompt for an <code>InvokeInlineAgent</code> request. You can control which aspects of previous invocations in the same agent session the service uses to populate the agent prompt. This gives you more granular control over the contextual history that is used to process the current request.</p>
    #   @return [Types::PromptCreationConfigurations]
    # @!attribute inline_session_state
    #   <p> Parameters that specify the various attributes of a sessions. You can include attributes for the session or prompt or, if you configured an action group to return control, results from invocation of the action group. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html">Control session context</a>. </p> <note> <p>If you include <code>returnControlInvocationResults</code> in the <code>sessionState</code> field, the <code>inputText</code> field will be ignored.</p> </note>
    #   @return [Types::InlineSessionState]
    # @!attribute collaborators
    #   <p> List of collaborator inline agents. </p>
    #   @return [Array<Types::Collaborator>]
    # @!attribute bedrock_model_configurations
    #   <p>Model settings for the request.</p>
    #   @return [Types::InlineBedrockModelConfigurations]
    # @!attribute orchestration_type
    #   <p>Specifies the type of orchestration strategy for the agent. This is set to DEFAULT orchestration type, by default. </p>
    #   @return [String]
    # @!attribute custom_orchestration
    #   <p>Contains details of the custom orchestration configured for the agent. </p>
    #   @return [Types::CustomOrchestration]
    class InvokeInlineAgentRequest < Struct.new(
      :customer_encryption_key_arn,
      :foundation_model,
      :instruction,
      :idle_session_ttl_in_seconds,
      :action_groups,
      :knowledge_bases,
      :guardrail_configuration,
      :prompt_override_configuration,
      :agent_collaboration,
      :collaborator_configurations,
      :agent_name,
      :session_id,
      :end_session,
      :enable_trace,
      :input_text,
      :streaming_configurations,
      :prompt_creation_configurations,
      :inline_session_state,
      :collaborators,
      :bedrock_model_configurations,
      :orchestration_type,
      :custom_orchestration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute completion
    #   <p>The inline agent's response to the user prompt. </p>
    #   @return [Types::InlineAgentResponseStream]
    # @!attribute content_type
    #   <p> The MIME type of the input data in the request. The default value is application/json. </p>
    #   @return [String]
    # @!attribute session_id
    #   <p> The unique identifier of the session with the agent. </p>
    #   @return [String]
    class InvokeInlineAgentResponse < Struct.new(
      :completion,
      :content_type,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Details of the knowledge base associated withe inline agent. </p>
    # @!attribute knowledge_base_id
    #   <p> The unique identifier for a knowledge base associated with the inline agent. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the knowledge base associated with the inline agent. </p>
    #   @return [String]
    # @!attribute retrieval_configuration
    #   <p> The configurations to apply to the knowledge base during query. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Query configurations</a>. </p>
    #   @return [Types::KnowledgeBaseRetrievalConfiguration]
    class KnowledgeBase < Struct.new(
      :knowledge_base_id,
      :description,
      :retrieval_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configurations to apply to a knowledge base attached to the agent during query. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html#session-state-kb">Knowledge base retrieval configurations</a>.</p>
    # @!attribute knowledge_base_id
    #   <p>The unique identifier for a knowledge base attached to the agent.</p>
    #   @return [String]
    # @!attribute retrieval_configuration
    #   <p>The configurations to apply to the knowledge base during query. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Query configurations</a>.</p>
    #   @return [Types::KnowledgeBaseRetrievalConfiguration]
    class KnowledgeBaseConfiguration < Struct.new(
      :knowledge_base_id,
      :retrieval_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the knowledge base to look up and the query to be made.</p>
    # @!attribute text
    #   <p>The query made to the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base to look up.</p>
    #   @return [String]
    class KnowledgeBaseLookupInput < Struct.new(
      :text,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the results from looking up the knowledge base.</p>
    # @!attribute retrieved_references
    #   <p>Contains metadata about the sources cited for the generated response.</p>
    #   @return [Array<Types::RetrievedReference>]
    # @!attribute metadata
    #   <p>Contains information about the knowledge base output.</p>
    #   @return [Types::Metadata]
    class KnowledgeBaseLookupOutput < Struct.new(
      :retrieved_references,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the query made to the knowledge base.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_RequestSyntax">Retrieve request</a> – in the <code>retrievalQuery</code> field</p> </li> </ul>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The text of the query made to the knowledge base.</p>
    #   @return [String]
    class KnowledgeBaseQuery < Struct.new(
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for knowledge base query. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Query configurations</a>.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_RequestSyntax">Retrieve request</a> – in the <code>retrievalConfiguration</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax">RetrieveAndGenerate request</a> – in the <code>retrievalConfiguration</code> field</p> </li> </ul>
    # @!attribute vector_search_configuration
    #   <p>Contains details about how the results from the vector search should be returned. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Query configurations</a>.</p>
    #   @return [Types::KnowledgeBaseVectorSearchConfiguration]
    class KnowledgeBaseRetrievalConfiguration < Struct.new(
      :vector_search_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a result from querying the knowledge base.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax">Retrieve response</a> – in the <code>retrievalResults</code> field</p> </li> </ul>
    # @!attribute content
    #   <p>Contains information about the content of the chunk.</p>
    #   @return [Types::RetrievalResultContent]
    # @!attribute location
    #   <p>Contains information about the location of the data source.</p>
    #   @return [Types::RetrievalResultLocation]
    # @!attribute score
    #   <p>The level of relevance of the result to the query.</p>
    #   @return [Float]
    # @!attribute metadata
    #   <p>Contains metadata attributes and their values for the file in the data source. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-ds.html#kb-ds-metadata">Metadata and filtering</a>.</p>
    #   @return [Hash<String, JSON>]
    class KnowledgeBaseRetrievalResult < Struct.new(
      :content,
      :location,
      :score,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the resource being queried.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_RequestSyntax">Retrieve request</a> – in the <code>knowledgeBaseConfiguration</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax">RetrieveAndGenerate request</a> – in the <code>knowledgeBaseConfiguration</code> field</p> </li> </ul>
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base that is queried.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The ARN of the foundation model or <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html">inference profile</a> used to generate a response.</p>
    #   @return [String]
    # @!attribute retrieval_configuration
    #   <p>Contains configurations for how to retrieve and return the knowledge base query.</p>
    #   @return [Types::KnowledgeBaseRetrievalConfiguration]
    # @!attribute generation_configuration
    #   <p>Contains configurations for response generation based on the knowledge base query results.</p>
    #   @return [Types::GenerationConfiguration]
    # @!attribute orchestration_configuration
    #   <p>Settings for how the model processes the prompt prior to retrieval and generation.</p>
    #   @return [Types::OrchestrationConfiguration]
    class KnowledgeBaseRetrieveAndGenerateConfiguration < Struct.new(
      :knowledge_base_id,
      :model_arn,
      :retrieval_configuration,
      :generation_configuration,
      :orchestration_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configurations for how to perform the search query and return results. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Query configurations</a>.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_RequestSyntax">Retrieve request</a> – in the <code>vectorSearchConfiguration</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax">RetrieveAndGenerate request</a> – in the <code>vectorSearchConfiguration</code> field</p> </li> </ul>
    # @!attribute number_of_results
    #   <p>The number of source chunks to retrieve.</p>
    #   @return [Integer]
    # @!attribute override_search_type
    #   <p>By default, Amazon Bedrock decides a search strategy for you. If you're using an Amazon OpenSearch Serverless vector store that contains a filterable text field, you can specify whether to query the knowledge base with a <code>HYBRID</code> search using both vector embeddings and raw text, or <code>SEMANTIC</code> search using only vector embeddings. For other vector store configurations, only <code>SEMANTIC</code> search is available. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-test.html">Test a knowledge base</a>.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Specifies the filters to use on the metadata in the knowledge base data sources before returning results. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Query configurations</a>.</p>
    #   @return [Types::RetrievalFilter]
    # @!attribute reranking_configuration
    #   <p>Contains configurations for reranking the retrieved results. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/rerank.html">Improve the relevance of query responses with a reranker model</a>.</p>
    #   @return [Types::VectorSearchRerankingConfiguration]
    # @!attribute implicit_filter_configuration
    #   <p>Settings for implicit filtering.</p>
    #   @return [Types::ImplicitFilterConfiguration]
    class KnowledgeBaseVectorSearchConfiguration < Struct.new(
      :number_of_results,
      :override_search_type,
      :filter,
      :reranking_configuration,
      :implicit_filter_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_results] = 5 unless options.key?(:number_of_results)
        super
      end
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute flow_alias_identifier
    #   <p>The unique identifier of the flow alias used for the execution.</p>
    #   @return [String]
    # @!attribute execution_identifier
    #   <p>The unique identifier of the flow execution.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of events to return in a single response. If more events exist than the specified maxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to retrieve the next set of results. This value is returned in the response if more results are available.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The type of events to retrieve. Specify <code>Node</code> for node-level events or <code>Flow</code> for flow-level events.</p>
    #   @return [String]
    class ListFlowExecutionEventsRequest < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :execution_identifier,
      :max_results,
      :next_token,
      :event_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_execution_events
    #   <p>A list of events that occurred during the flow execution. Events can include node inputs and outputs, flow inputs and outputs, condition results, and failure events.</p>
    #   @return [Array<Types::FlowExecutionEvent>]
    # @!attribute next_token
    #   <p>A token to retrieve the next set of results. This value is returned if more results are available.</p>
    #   @return [String]
    class ListFlowExecutionEventsResponse < Struct.new(
      :flow_execution_events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow to list executions for.</p>
    #   @return [String]
    # @!attribute flow_alias_identifier
    #   <p>The unique identifier of the flow alias to list executions for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of flow executions to return in a single response. If more executions exist than the specified <code>maxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to retrieve the next set of results. This value is returned in the response if more results are available.</p>
    #   @return [String]
    class ListFlowExecutionsRequest < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_execution_summaries
    #   <p>A list of flow execution summaries. Each summary includes the execution ARN, flow identifier, flow alias identifier, flow version, status, and timestamps.</p>
    #   @return [Array<Types::FlowExecutionSummary>]
    # @!attribute next_token
    #   <p>A token to retrieve the next set of results. This value is returned if more results are available.</p>
    #   @return [String]
    class ListFlowExecutionsResponse < Struct.new(
      :flow_execution_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invocation_identifier
    #   <p>The unique identifier (in UUID format) for the invocation to list invocation steps for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute session_identifier
    #   <p>The unique identifier for the session associated with the invocation steps. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    #   @return [String]
    class ListInvocationStepsRequest < Struct.new(
      :invocation_identifier,
      :next_token,
      :max_results,
      :session_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invocation_step_summaries
    #   <p>A list of summaries for each invocation step associated with a session and if you specified it, an invocation within the session.</p>
    #   @return [Array<Types::InvocationStepSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListInvocationStepsResponse < Struct.new(
      :invocation_step_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute session_identifier
    #   <p>The unique identifier for the session to list invocations for. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    #   @return [String]
    class ListInvocationsRequest < Struct.new(
      :next_token,
      :max_results,
      :session_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invocation_summaries
    #   <p>A list of invocation summaries associated with the session.</p>
    #   @return [Array<Types::InvocationSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListInvocationsResponse < Struct.new(
      :invocation_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results. </p>
    #   @return [String]
    class ListSessionsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_summaries
    #   <p>A list of summaries for each session in your Amazon Web Services account.</p>
    #   @return [Array<Types::SessionSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListSessionsResponse < Struct.new(
      :session_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to list tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The key-value pairs for the tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains sessions summaries.</p>
    # @!attribute session_summary
    #   <p>Contains summary of a session.</p>
    #   @return [Types::MemorySessionSummary]
    class Memory < Struct.new(
      :session_summary,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SessionSummary < Memory; end
      class Unknown < Memory; end
    end

    # <p>Contains details of a session summary.</p>
    # @!attribute memory_id
    #   <p>The unique identifier of the memory where the session summary is stored.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier for this session.</p>
    #   @return [String]
    # @!attribute session_start_time
    #   <p>The start time for this session.</p>
    #   @return [Time]
    # @!attribute session_expiry_time
    #   <p>The time when the memory duration for the session is set to end.</p>
    #   @return [Time]
    # @!attribute summary_text
    #   <p>The summarized text for this session.</p>
    #   @return [String]
    class MemorySessionSummary < Struct.new(
      :memory_id,
      :session_id,
      :session_start_time,
      :session_expiry_time,
      :summary_text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a message.</p>
    # @!attribute role
    #   <p>The message's role.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The message's content.</p>
    #   @return [Array<Types::ContentBlock>]
    class Message < Struct.new(
      :role,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the execution process for different types of invocations, such as model invocation, knowledge base invocation, agent collaborator invocation, guardrail invocation, and code interpreter Invocation.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute start_time
    #   <p>In the final response, <code>startTime</code> is the start time of the agent invocation operation.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>In the final response, <code>endTime</code> is the end time of the agent invocation operation.</p>
    #   @return [Time]
    # @!attribute total_time_ms
    #   <p> The total execution time for the specific invocation being processed (model, knowledge base, guardrail, agent collaborator, or code interpreter). It represents how long the individual invocation took.</p>
    #   @return [Integer]
    # @!attribute operation_total_time_ms
    #   <p>The total time it took for the agent to complete execution. This field is only set for the final response.</p>
    #   @return [Integer]
    # @!attribute client_request_id
    #   <p>A unique identifier associated with the downstream invocation. This ID can be used for tracing, debugging, and identifying specific invocations in customer logs or systems.</p>
    #   @return [String]
    # @!attribute usage
    #   <p>Specific to model invocation and contains details about the usage of a foundation model.</p>
    #   @return [Types::Usage]
    class Metadata < Struct.new(
      :start_time,
      :end_time,
      :total_time_ms,
      :operation_total_time_ms,
      :client_request_id,
      :usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a metadata attribute.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute key
    #   <p>The attribute's key.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The attribute's type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The attribute's description.</p>
    #   @return [String]
    class MetadataAttributeSchema < Struct.new(
      :key,
      :type,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for the metadata to use in reranking.</p>
    # @!attribute selection_mode
    #   <p>Specifies whether to consider all metadata when reranking, or only the metadata that you select. If you specify <code>SELECTIVE</code>, include the <code>selectiveModeConfiguration</code> field.</p>
    #   @return [String]
    # @!attribute selective_mode_configuration
    #   <p>Contains configurations for the metadata fields to include or exclude when considering reranking.</p>
    #   @return [Types::RerankingMetadataSelectiveModeConfiguration]
    class MetadataConfigurationForReranking < Struct.new(
      :selection_mode,
      :selective_mode_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the pre-processing step.</p> <ul> <li> <p>The <code>type</code> matches the agent step.</p> </li> <li> <p>The <code>text</code> contains the prompt.</p> </li> <li> <p>The <code>inferenceConfiguration</code>, <code>parserMode</code>, and <code>overrideLambda</code> values are set in the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html">PromptOverrideConfiguration</a> object that was set when the agent was created or updated.</p> </li> </ul>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute trace_id
    #   <p>The unique identifier of the trace.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The text that prompted the agent at this step.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The step in the agent sequence.</p>
    #   @return [String]
    # @!attribute override_lambda
    #   <p>The ARN of the Lambda function to use when parsing the raw foundation model output in parts of the agent sequence.</p>
    #   @return [String]
    # @!attribute prompt_creation_mode
    #   <p>Specifies whether the default prompt template was <code>OVERRIDDEN</code>. If it was, the <code>basePromptTemplate</code> that was set in the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html">PromptOverrideConfiguration</a> object when the agent was created or updated is used instead.</p>
    #   @return [String]
    # @!attribute inference_configuration
    #   <p>Specifications about the inference parameters that were provided alongside the prompt. These are specified in the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html">PromptOverrideConfiguration</a> object that was set when the agent was created or updated. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters for foundation models</a>.</p>
    #   @return [Types::InferenceConfiguration]
    # @!attribute parser_mode
    #   <p>Specifies whether to override the default parser Lambda function when parsing the raw foundation model output in the part of the agent sequence defined by the <code>promptType</code>.</p>
    #   @return [String]
    # @!attribute foundation_model
    #   <p>The identifier of a foundation model.</p>
    #   @return [String]
    class ModelInvocationInput < Struct.new(
      :trace_id,
      :text,
      :type,
      :override_lambda,
      :prompt_creation_mode,
      :inference_configuration,
      :parser_mode,
      :foundation_model,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The model specified in the request is not ready to serve inference requests. The AWS SDK will automatically retry the operation up to 5 times. For information about configuring automatic retries, see <a href="https://docs.aws.amazon.com/sdkref/latest/guide/feature-retry-behavior.html">Retry behavior</a> in the <i>AWS SDKs and Tools</i> reference guide. </p>
    # @!attribute message
    #   @return [String]
    class ModelNotReadyException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The performance configuration for a model called with <a>InvokeFlow</a>.</p>
    # @!attribute performance_config
    #   <p>The latency configuration for the model.</p>
    #   @return [Types::PerformanceConfiguration]
    class ModelPerformanceConfiguration < Struct.new(
      :performance_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an action (operation) called by a node during execution.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the node that called the operation.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The date and time that the operation was called.</p>
    #   @return [Time]
    # @!attribute request_id
    #   <p>The ID of the request that the node made to the operation.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service that the node called.</p>
    #   @return [String]
    # @!attribute operation_name
    #   <p>The name of the operation that the node called.</p>
    #   @return [String]
    # @!attribute operation_request
    #   <p>The request payload sent to the downstream service.</p>
    #   @return [JSON]
    # @!attribute operation_response
    #   <p>The response payload received from the downstream service.</p>
    #   @return [JSON]
    class NodeActionEvent < Struct.new(
      :node_name,
      :timestamp,
      :request_id,
      :service_name,
      :operation_name,
      :operation_request,
      :operation_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an internal trace of a specific node during execution.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the node that generated the dependency trace.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The date and time that the dependency trace was generated.</p>
    #   @return [Time]
    # @!attribute trace_elements
    #   <p>The trace elements containing detailed information about the node execution.</p>
    #   @return [Types::NodeTraceElements]
    class NodeDependencyEvent < Struct.new(
      :node_name,
      :timestamp,
      :trace_elements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the content of a flow node's input or output field for a flow execution.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute document
    #   <p>The document content of the field, which can contain text or structured data.</p>
    #   @return [JSON]
    class NodeExecutionContent < Struct.new(
      :document,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Document < NodeExecutionContent; end
      class Unknown < NodeExecutionContent; end
    end

    # <p>Contains information about a failure that occurred at a specific node during a flow execution.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the node where the failure occurred.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp when the node failure occurred.</p>
    #   @return [Time]
    # @!attribute error_code
    #   <p>The error code that identifies the type of failure that occurred at the node.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A descriptive message that provides details about the node failure.</p>
    #   @return [String]
    class NodeFailureEvent < Struct.new(
      :node_name,
      :timestamp,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the inputs provided to a specific node during a flow execution.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the node that received the inputs.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp when the inputs were provided to the node.</p>
    #   @return [Time]
    # @!attribute fields
    #   <p>A list of input fields provided to the node.</p>
    #   @return [Array<Types::NodeInputField>]
    class NodeInputEvent < Struct.new(
      :node_name,
      :timestamp,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an item in the execution chain for node input tracking.</p>
    # @!attribute node_name
    #   <p>The name of the node in the execution chain.</p>
    #   @return [String]
    # @!attribute index
    #   <p>The index position of this item in the execution chain.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The type of execution chain item. Supported values are Iterator and Loop.</p>
    #   @return [String]
    class NodeInputExecutionChainItem < Struct.new(
      :node_name,
      :index,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an input field provided to a node during a flow execution.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The name of the input field as defined in the node's input schema.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the input field, which can contain text or structured data.</p>
    #   @return [Types::NodeExecutionContent]
    # @!attribute source
    #   <p>The source node that provides input data to this field.</p>
    #   @return [Types::NodeInputSource]
    # @!attribute type
    #   <p>The data type of the input field for compatibility validation.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the input field.</p>
    #   @return [String]
    # @!attribute execution_chain
    #   <p>The execution path through nested nodes like iterators and loops.</p>
    #   @return [Array<Types::NodeInputExecutionChainItem>]
    class NodeInputField < Struct.new(
      :name,
      :content,
      :source,
      :type,
      :category,
      :execution_chain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the source of input data for a node field.</p>
    # @!attribute node_name
    #   <p>The name of the source node that provides the input data.</p>
    #   @return [String]
    # @!attribute output_field_name
    #   <p>The name of the output field from the source node.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The expression used to extract data from the source.</p>
    #   @return [String]
    class NodeInputSource < Struct.new(
      :node_name,
      :output_field_name,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the outputs produced by a specific node during a flow execution.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the node that produced the outputs.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp when the outputs were produced by the node.</p>
    #   @return [Time]
    # @!attribute fields
    #   <p>A list of output fields produced by the node.</p>
    #   @return [Array<Types::NodeOutputField>]
    class NodeOutputEvent < Struct.new(
      :node_name,
      :timestamp,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an output field produced by a node during a flow execution.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The name of the output field as defined in the node's output schema.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the output field, which can contain text or structured data.</p>
    #   @return [Types::NodeExecutionContent]
    # @!attribute next
    #   <p>The next node that receives output data from this field.</p>
    #   @return [Array<Types::NodeOutputNext>]
    # @!attribute type
    #   <p>The data type of the output field for compatibility validation.</p>
    #   @return [String]
    class NodeOutputField < Struct.new(
      :name,
      :content,
      :next,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the next node that receives output data.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute node_name
    #   <p>The name of the next node that receives the output data.</p>
    #   @return [String]
    # @!attribute input_field_name
    #   <p>The name of the input field in the next node that receives the data.</p>
    #   @return [String]
    class NodeOutputNext < Struct.new(
      :node_name,
      :input_field_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains trace elements for node execution tracking.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute agent_traces
    #   <p>Agent trace information for the node execution.</p>
    #   @return [Array<Types::TracePart>]
    class NodeTraceElements < Struct.new(
      :agent_traces,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AgentTraces < NodeTraceElements; end
      class Unknown < NodeTraceElements; end
    end

    # <p>Contains the result or output of an action group or knowledge base, or the response to the user.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute trace_id
    #   <p>The unique identifier of the trace.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies what kind of information the agent returns in the observation. The following values are possible.</p> <ul> <li> <p> <code>ACTION_GROUP</code> – The agent returns the result of an action group.</p> </li> <li> <p> <code>KNOWLEDGE_BASE</code> – The agent returns information from a knowledge base.</p> </li> <li> <p> <code>FINISH</code> – The agent returns a final response to the user with no follow-up.</p> </li> <li> <p> <code>ASK_USER</code> – The agent asks the user a question.</p> </li> <li> <p> <code>REPROMPT</code> – The agent prompts the user again for the same information.</p> </li> </ul>
    #   @return [String]
    # @!attribute action_group_invocation_output
    #   <p>Contains the JSON-formatted string returned by the API invoked by the action group.</p>
    #   @return [Types::ActionGroupInvocationOutput]
    # @!attribute agent_collaborator_invocation_output
    #   <p>A collaborator's invocation output.</p>
    #   @return [Types::AgentCollaboratorInvocationOutput]
    # @!attribute knowledge_base_lookup_output
    #   <p>Contains details about the results from looking up the knowledge base.</p>
    #   @return [Types::KnowledgeBaseLookupOutput]
    # @!attribute final_response
    #   <p>Contains details about the response to the user.</p>
    #   @return [Types::FinalResponse]
    # @!attribute reprompt_response
    #   <p>Contains details about the response to reprompt the input.</p>
    #   @return [Types::RepromptResponse]
    # @!attribute code_interpreter_invocation_output
    #   <p>Contains the JSON-formatted string returned by the API invoked by the code interpreter.</p>
    #   @return [Types::CodeInterpreterInvocationOutput]
    class Observation < Struct.new(
      :trace_id,
      :type,
      :action_group_invocation_output,
      :agent_collaborator_invocation_output,
      :knowledge_base_lookup_output,
      :final_response,
      :reprompt_response,
      :code_interpreter_invocation_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input
    #   <p>Contains the prompt to optimize.</p>
    #   @return [Types::InputPrompt]
    # @!attribute target_model_id
    #   <p>The unique identifier of the model that you want to optimize the prompt for.</p>
    #   @return [String]
    class OptimizePromptRequest < Struct.new(
      :input,
      :target_model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute optimized_prompt
    #   <p>The prompt after being optimized for the task.</p>
    #   @return [Types::OptimizedPromptStream]
    class OptimizePromptResponse < Struct.new(
      :optimized_prompt,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the optimized prompt.</p>
    # @!attribute text_prompt
    #   <p>Contains information about the text in the prompt that was optimized.</p>
    #   @return [Types::TextPrompt]
    class OptimizedPrompt < Struct.new(
      :text_prompt,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TextPrompt < OptimizedPrompt; end
      class Unknown < OptimizedPrompt; end
    end

    # <p>An event in which the prompt was optimized.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute optimized_prompt
    #   <p>Contains information about the optimized prompt.</p>
    #   @return [Types::OptimizedPrompt]
    class OptimizedPromptEvent < Struct.new(
      :optimized_prompt,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The stream containing events in the prompt optimization process.</p>
    # @!attribute optimized_prompt_event
    #   <p>An event in which the prompt was optimized.</p>
    #   @return [Types::OptimizedPromptEvent]
    # @!attribute analyze_prompt_event
    #   <p>An event in which the prompt was analyzed in preparation for optimization.</p>
    #   @return [Types::AnalyzePromptEvent]
    # @!attribute internal_server_exception
    #   <p>An internal server error occurred. Retry your request.</p>
    #   @return [Types::InternalServerException]
    # @!attribute throttling_exception
    #   <p>Your request was throttled because of service-wide limitations. Resubmit your request later or in a different region. You can also purchase <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html">Provisioned Throughput</a> to increase the rate or number of tokens you can process.</p>
    #   @return [Types::ThrottlingException]
    # @!attribute validation_exception
    #   <p>Input validation failed. Check your request parameters and retry the request.</p>
    #   @return [Types::ValidationException]
    # @!attribute dependency_failed_exception
    #   <p>There was an issue with a dependency. Check the resource configurations and retry the request.</p>
    #   @return [Types::DependencyFailedException]
    # @!attribute access_denied_exception
    #   <p>The request is denied because of missing access permissions. Check your permissions and retry your request.</p>
    #   @return [Types::AccessDeniedException]
    # @!attribute bad_gateway_exception
    #   <p>There was an issue with a dependency due to a server issue. Retry your request.</p>
    #   @return [Types::BadGatewayException]
    class OptimizedPromptStream < Struct.new(
      :optimized_prompt_event,
      :analyze_prompt_event,
      :internal_server_exception,
      :throttling_exception,
      :validation_exception,
      :dependency_failed_exception,
      :access_denied_exception,
      :bad_gateway_exception,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OptimizedPromptEvent < OptimizedPromptStream; end
      class AnalyzePromptEvent < OptimizedPromptStream; end
      class InternalServerException < OptimizedPromptStream; end
      class ThrottlingException < OptimizedPromptStream; end
      class ValidationException < OptimizedPromptStream; end
      class DependencyFailedException < OptimizedPromptStream; end
      class AccessDeniedException < OptimizedPromptStream; end
      class BadGatewayException < OptimizedPromptStream; end
      class Unknown < OptimizedPromptStream; end
    end

    # <p>Settings for how the model processes the prompt prior to retrieval and generation.</p>
    # @!attribute prompt_template
    #   <p>Contains the template for the prompt that's sent to the model. Orchestration prompts must include the <code>$conversation_history$</code> and <code>$output_format_instructions$</code> variables. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html">Use placeholder variables</a> in the user guide.</p>
    #   @return [Types::PromptTemplate]
    # @!attribute inference_config
    #   <p> Configuration settings for inference when using RetrieveAndGenerate to generate responses while using a knowledge base as a source. </p>
    #   @return [Types::InferenceConfig]
    # @!attribute additional_model_request_fields
    #   <p> Additional model parameters and corresponding values not included in the textInferenceConfig structure for a knowledge base. This allows users to provide custom model parameters specific to the language model being used. </p>
    #   @return [Hash<String, JSON>]
    # @!attribute query_transformation_configuration
    #   <p>To split up the prompt and retrieve multiple sources, set the transformation type to <code>QUERY_DECOMPOSITION</code>.</p>
    #   @return [Types::QueryTransformationConfiguration]
    # @!attribute performance_config
    #   <p>The latency configuration for the model.</p>
    #   @return [Types::PerformanceConfiguration]
    class OrchestrationConfiguration < Struct.new(
      :prompt_template,
      :inference_config,
      :additional_model_request_fields,
      :query_transformation_configuration,
      :performance_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure of the executor invoking the actions in custom orchestration.</p>
    # @!attribute lambda
    #   <p>The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action. </p>
    #   @return [String]
    class OrchestrationExecutor < Struct.new(
      :lambda,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Lambda < OrchestrationExecutor; end
      class Unknown < OrchestrationExecutor; end
    end

    # <p>The foundation model output from the orchestration step.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute trace_id
    #   <p>The unique identifier of the trace.</p>
    #   @return [String]
    # @!attribute raw_response
    #   <p>Contains details of the raw response from the foundation model output.</p>
    #   @return [Types::RawResponse]
    # @!attribute metadata
    #   <p>Contains information about the foundation model output from the orchestration step.</p>
    #   @return [Types::Metadata]
    # @!attribute reasoning_content
    #   <p>Contains content about the reasoning that the model made during the orchestration step. </p>
    #   @return [Types::ReasoningContentBlock]
    class OrchestrationModelInvocationOutput < Struct.new(
      :trace_id,
      :raw_response,
      :metadata,
      :reasoning_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the orchestration step, in which the agent determines the order in which actions are executed and which knowledge bases are retrieved.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute rationale
    #   <p>Details about the reasoning, based on the input, that the agent uses to justify carrying out an action group or getting information from a knowledge base.</p>
    #   @return [Types::Rationale]
    # @!attribute invocation_input
    #   <p>Contains information pertaining to the action group or knowledge base that is being invoked.</p>
    #   @return [Types::InvocationInput]
    # @!attribute observation
    #   <p>Details about the observation (the output of the action group Lambda or knowledge base) made by the agent.</p>
    #   @return [Types::Observation]
    # @!attribute model_invocation_input
    #   <p>The input for the orchestration step.</p> <ul> <li> <p>The <code>type</code> is <code>ORCHESTRATION</code>.</p> </li> <li> <p>The <code>text</code> contains the prompt.</p> </li> <li> <p>The <code>inferenceConfiguration</code>, <code>parserMode</code>, and <code>overrideLambda</code> values are set in the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html">PromptOverrideConfiguration</a> object that was set when the agent was created or updated.</p> </li> </ul>
    #   @return [Types::ModelInvocationInput]
    # @!attribute model_invocation_output
    #   <p>Contains information pertaining to the output from the foundation model that is being invoked.</p>
    #   @return [Types::OrchestrationModelInvocationOutput]
    class OrchestrationTrace < Struct.new(
      :rationale,
      :invocation_input,
      :observation,
      :model_invocation_input,
      :model_invocation_output,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Rationale < OrchestrationTrace; end
      class InvocationInput < OrchestrationTrace; end
      class Observation < OrchestrationTrace; end
      class ModelInvocationInput < OrchestrationTrace; end
      class ModelInvocationOutput < OrchestrationTrace; end
      class Unknown < OrchestrationTrace; end
    end

    # <p>Contains details of the response from code interpreter.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The name of the file containing response from code interpreter.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of file that contains response from the code interpreter.</p>
    #   @return [String]
    # @!attribute bytes
    #   <p>The byte count of files that contains response from code interpreter.</p>
    #   @return [String]
    class OutputFile < Struct.new(
      :name,
      :type,
      :bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A parameter for the API request or function.</p>
    # @!attribute name
    #   <p>The name of the parameter.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the parameter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the parameter.</p>
    #   @return [String]
    class Parameter < Struct.new(
      :name,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains details about a parameter in a function for an action group. </p>
    # @!attribute description
    #   <p> A description of the parameter. Helps the foundation model determine how to elicit the parameters from the user. </p>
    #   @return [String]
    # @!attribute type
    #   <p> The data type of the parameter. </p>
    #   @return [String]
    # @!attribute required
    #   <p> Whether the parameter is required for the agent to complete the function for action group invocation. </p>
    #   @return [Boolean]
    class ParameterDetail < Struct.new(
      :description,
      :type,
      :required,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a part of an agent response and citations for it.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute bytes
    #   <p>A part of the agent response in bytes.</p>
    #   @return [String]
    # @!attribute attribution
    #   <p>Contains citations for a part of an agent response.</p>
    #   @return [Types::Attribution]
    class PayloadPart < Struct.new(
      :bytes,
      :attribution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Performance settings for a model.</p>
    # @!attribute latency
    #   <p>To use a latency-optimized version of the model, set to <code>optimized</code>.</p>
    #   @return [String]
    class PerformanceConfiguration < Struct.new(
      :latency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:latency] = 'standard' unless options.key?(:latency)
        super
      end
    end

    # <p>The foundation model output from the post-processing step.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute trace_id
    #   <p>The unique identifier of the trace.</p>
    #   @return [String]
    # @!attribute parsed_response
    #   <p>Details about the response from the Lambda parsing of the output of the post-processing step.</p>
    #   @return [Types::PostProcessingParsedResponse]
    # @!attribute raw_response
    #   <p> Details of the raw response from the foundation model output. </p>
    #   @return [Types::RawResponse]
    # @!attribute metadata
    #   <p> Contains information about the foundation model output from the post-processing step. </p>
    #   @return [Types::Metadata]
    # @!attribute reasoning_content
    #   <p>Contains content about the reasoning that the model made during the post-processing step.</p>
    #   @return [Types::ReasoningContentBlock]
    class PostProcessingModelInvocationOutput < Struct.new(
      :trace_id,
      :parsed_response,
      :raw_response,
      :metadata,
      :reasoning_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the response from the Lambda parsing of the output from the post-processing step.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The text returned by the parser.</p>
    #   @return [String]
    class PostProcessingParsedResponse < Struct.new(
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the post-processing step, in which the agent shapes the response.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute model_invocation_input
    #   <p>The input for the post-processing step.</p> <ul> <li> <p>The <code>type</code> is <code>POST_PROCESSING</code>.</p> </li> <li> <p>The <code>text</code> contains the prompt.</p> </li> <li> <p>The <code>inferenceConfiguration</code>, <code>parserMode</code>, and <code>overrideLambda</code> values are set in the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html">PromptOverrideConfiguration</a> object that was set when the agent was created or updated.</p> </li> </ul>
    #   @return [Types::ModelInvocationInput]
    # @!attribute model_invocation_output
    #   <p>The foundation model output from the post-processing step.</p>
    #   @return [Types::PostProcessingModelInvocationOutput]
    class PostProcessingTrace < Struct.new(
      :model_invocation_input,
      :model_invocation_output,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ModelInvocationInput < PostProcessingTrace; end
      class ModelInvocationOutput < PostProcessingTrace; end
      class Unknown < PostProcessingTrace; end
    end

    # <p>The foundation model output from the pre-processing step.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute trace_id
    #   <p>The unique identifier of the trace.</p>
    #   @return [String]
    # @!attribute parsed_response
    #   <p>Details about the response from the Lambda parsing of the output of the pre-processing step.</p>
    #   @return [Types::PreProcessingParsedResponse]
    # @!attribute raw_response
    #   <p> Details of the raw response from the foundation model output. </p>
    #   @return [Types::RawResponse]
    # @!attribute metadata
    #   <p> Contains information about the foundation model output from the pre-processing step. </p>
    #   @return [Types::Metadata]
    # @!attribute reasoning_content
    #   <p>Contains content about the reasoning that the model made during the pre-processing step. </p>
    #   @return [Types::ReasoningContentBlock]
    class PreProcessingModelInvocationOutput < Struct.new(
      :trace_id,
      :parsed_response,
      :raw_response,
      :metadata,
      :reasoning_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the response from the Lambda parsing of the output from the pre-processing step.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute rationale
    #   <p>The text returned by the parsing of the pre-processing step, explaining the steps that the agent plans to take in orchestration, if the user input is valid.</p>
    #   @return [String]
    # @!attribute is_valid
    #   <p>Whether the user input is valid or not. If <code>false</code>, the agent doesn't proceed to orchestration.</p>
    #   @return [Boolean]
    class PreProcessingParsedResponse < Struct.new(
      :rationale,
      :is_valid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the pre-processing step, in which the agent contextualizes and categorizes user inputs.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute model_invocation_input
    #   <p>The input for the pre-processing step.</p> <ul> <li> <p>The <code>type</code> is <code>PRE_PROCESSING</code>.</p> </li> <li> <p>The <code>text</code> contains the prompt.</p> </li> <li> <p>The <code>inferenceConfiguration</code>, <code>parserMode</code>, and <code>overrideLambda</code> values are set in the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html">PromptOverrideConfiguration</a> object that was set when the agent was created or updated.</p> </li> </ul>
    #   @return [Types::ModelInvocationInput]
    # @!attribute model_invocation_output
    #   <p>The foundation model output from the pre-processing step.</p>
    #   @return [Types::PreProcessingModelInvocationOutput]
    class PreProcessingTrace < Struct.new(
      :model_invocation_input,
      :model_invocation_output,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ModelInvocationInput < PreProcessingTrace; end
      class ModelInvocationOutput < PreProcessingTrace; end
      class Unknown < PreProcessingTrace; end
    end

    # <p> Contains configurations to override a prompt template in one part of an agent sequence. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>. </p>
    # @!attribute prompt_type
    #   <p> The step in the agent sequence that this prompt configuration applies to. </p>
    #   @return [String]
    # @!attribute prompt_creation_mode
    #   <p>Specifies whether to override the default prompt template for this <code>promptType</code>. Set this value to <code>OVERRIDDEN</code> to use the prompt that you provide in the <code>basePromptTemplate</code>. If you leave it as <code>DEFAULT</code>, the agent uses a default prompt template.</p>
    #   @return [String]
    # @!attribute prompt_state
    #   <p>Specifies whether to allow the inline agent to carry out the step specified in the <code>promptType</code>. If you set this value to <code>DISABLED</code>, the agent skips that step. The default state for each <code>promptType</code> is as follows.</p> <ul> <li> <p> <code>PRE_PROCESSING</code> – <code>ENABLED</code> </p> </li> <li> <p> <code>ORCHESTRATION</code> – <code>ENABLED</code> </p> </li> <li> <p> <code>KNOWLEDGE_BASE_RESPONSE_GENERATION</code> – <code>ENABLED</code> </p> </li> <li> <p> <code>POST_PROCESSING</code> – <code>DISABLED</code> </p> </li> </ul>
    #   @return [String]
    # @!attribute base_prompt_template
    #   <p>Defines the prompt template with which to replace the default prompt template. You can use placeholder variables in the base prompt template to customize the prompt. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html">Prompt template placeholder variables</a>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts-configure.html">Configure the prompt templates</a>.</p>
    #   @return [String]
    # @!attribute inference_configuration
    #   <p>Contains inference parameters to use when the agent invokes a foundation model in the part of the agent sequence defined by the <code>promptType</code>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters for foundation models</a>.</p>
    #   @return [Types::InferenceConfiguration]
    # @!attribute parser_mode
    #   <p>Specifies whether to override the default parser Lambda function when parsing the raw foundation model output in the part of the agent sequence defined by the <code>promptType</code>. If you set the field as <code>OVERRIDDEN</code>, the <code>overrideLambda</code> field in the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html">PromptOverrideConfiguration</a> must be specified with the ARN of a Lambda function.</p>
    #   @return [String]
    # @!attribute foundation_model
    #   <p> The foundation model to use. </p>
    #   @return [String]
    # @!attribute additional_model_request_fields
    #   <p>If the Converse or ConverseStream operations support the model, <code>additionalModelRequestFields</code> contains additional inference parameters, beyond the base set of inference parameters in the <code>inferenceConfiguration</code> field. </p> <p>For more information, see <i>Inference request parameters and response fields for foundation models</i> in the Amazon Bedrock user guide.</p>
    #   @return [JSON]
    class PromptConfiguration < Struct.new(
      :prompt_type,
      :prompt_creation_mode,
      :prompt_state,
      :base_prompt_template,
      :inference_configuration,
      :parser_mode,
      :foundation_model,
      :additional_model_request_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies parameters that control how the service populates the agent prompt for an <code>InvokeAgent</code> or <code>InvokeInlineAgent</code> request. You can control which aspects of previous invocations in the same agent session the service uses to populate the agent prompt. This gives you more granular control over the contextual history that is used to process the current request.</p>
    # @!attribute previous_conversation_turns_to_include
    #   <p>The number of previous conversations from the ongoing agent session to include in the conversation history of the agent prompt, during the current invocation. This gives you more granular control over the context that the model is made aware of, and helps the model remove older context which is no longer useful during the ongoing agent session.</p>
    #   @return [Integer]
    # @!attribute exclude_previous_thinking_steps
    #   <p>If <code>true</code>, the service removes any content between <code>&lt;thinking&gt;</code> tags from previous conversations in an agent session. The service will only remove content from already processed turns. This helps you remove content which might not be useful for current and subsequent invocations. This can reduce the input token count and potentially save costs. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    class PromptCreationConfigurations < Struct.new(
      :previous_conversation_turns_to_include,
      :exclude_previous_thinking_steps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:exclude_previous_thinking_steps] = false unless options.key?(:exclude_previous_thinking_steps)
        super
      end
    end

    # <p>Contains configurations to override prompts in different parts of an agent sequence. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute prompt_configurations
    #   <p>Contains configurations to override a prompt template in one part of an agent sequence. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>. </p>
    #   @return [Array<Types::PromptConfiguration>]
    # @!attribute override_lambda
    #   <p>The ARN of the Lambda function to use when parsing the raw foundation model output in parts of the agent sequence. If you specify this field, at least one of the <code>promptConfigurations</code> must contain a <code>parserMode</code> value that is set to <code>OVERRIDDEN</code>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/lambda-parser.html">Parser Lambda function in Amazon Bedrock Agents</a>. </p>
    #   @return [String]
    class PromptOverrideConfiguration < Struct.new(
      :prompt_configurations,
      :override_lambda,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the template for the prompt that's sent to the model for response generation. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html#kb-test-config-sysprompt">Knowledge base prompt templates</a>.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax">RetrieveAndGenerate request</a> – in the <code>filter</code> field</p> </li> </ul>
    # @!attribute text_prompt_template
    #   <p>The template for the prompt that's sent to the model for response generation. You can include prompt placeholders, which become replaced before the prompt is sent to the model to provide instructions and context to the model. In addition, you can include XML tags to delineate meaningful sections of the prompt template.</p> <p>For more information, see the following resources:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html#kb-test-config-sysprompt">Knowledge base prompt templates</a> </p> </li> <li> <p> <a href="https://docs.anthropic.com/claude/docs/use-xml-tags">Use XML tags with Anthropic Claude models</a> </p> </li> </ul>
    #   @return [String]
    class PromptTemplate < Struct.new(
      :text_prompt_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters in the request body.</p>
    # @!attribute properties
    #   <p>A list of parameters in the request body.</p>
    #   @return [Array<Types::Parameter>]
    class PropertyParameters < Struct.new(
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_identifier
    #   <p>The unique identifier for the session to add the invocation step to. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute invocation_identifier
    #   <p>The unique identifier (in UUID format) of the invocation to add the invocation step to.</p>
    #   @return [String]
    # @!attribute invocation_step_time
    #   <p>The timestamp for when the invocation step occurred.</p>
    #   @return [Time]
    # @!attribute payload
    #   <p>The payload for the invocation step, including text and images for the interaction.</p>
    #   @return [Types::InvocationStepPayload]
    # @!attribute invocation_step_id
    #   <p>The unique identifier of the invocation step in UUID format.</p>
    #   @return [String]
    class PutInvocationStepRequest < Struct.new(
      :session_identifier,
      :invocation_identifier,
      :invocation_step_time,
      :payload,
      :invocation_step_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invocation_step_id
    #   <p>The unique identifier of the invocation step in UUID format.</p>
    #   @return [String]
    class PutInvocationStepResponse < Struct.new(
      :invocation_step_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a natural language query to transform into SQL.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute type
    #   <p>The type of the query.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The text of the query.</p>
    #   @return [String]
    class QueryGenerationInput < Struct.new(
      :type,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>To split up the prompt and retrieve multiple sources, set the transformation type to <code>QUERY_DECOMPOSITION</code>.</p>
    # @!attribute type
    #   <p>The type of transformation to apply to the prompt.</p>
    #   @return [String]
    class QueryTransformationConfiguration < Struct.new(
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the reasoning, based on the input, that the agent uses to justify carrying out an action group or getting information from a knowledge base.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute trace_id
    #   <p>The unique identifier of the trace step.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The reasoning or thought process of the agent, based on the input.</p>
    #   @return [String]
    class Rationale < Struct.new(
      :trace_id,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the raw output from the foundation model.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute content
    #   <p>The foundation model's raw output content.</p>
    #   @return [String]
    class RawResponse < Struct.new(
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains content regarding the reasoning that the foundation model made with respect to the content in the content block. Reasoning refers to a Chain of Thought (CoT) that the model generates to enhance the accuracy of its final response.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute reasoning_text
    #   <p>Contains information about the reasoning that the model used to return the content in the content block.</p>
    #   @return [Types::ReasoningTextBlock]
    # @!attribute redacted_content
    #   <p>The content in the reasoning that was encrypted by the model provider for trust and safety reasons.</p>
    #   @return [String]
    class ReasoningContentBlock < Struct.new(
      :reasoning_text,
      :redacted_content,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ReasoningText < ReasoningContentBlock; end
      class RedactedContent < ReasoningContentBlock; end
      class Unknown < ReasoningContentBlock; end
    end

    # <p>Contains information about the reasoning that the model used to return the content in the content block.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>Text describing the reasoning that the model used to return the content in the content block.</p>
    #   @return [String]
    # @!attribute signature
    #   <p>A hash of all the messages in the conversation to ensure that the content in the reasoning text block isn't tampered with. You must submit the signature in subsequent <code>Converse</code> requests, in addition to the previous messages. If the previous messages are tampered with, the response throws an error.</p>
    #   @return [String]
    class ReasoningTextBlock < Struct.new(
      :text,
      :signature,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the agent's response to reprompt the input.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The text reprompting the input.</p>
    #   @return [String]
    # @!attribute source
    #   <p>Specifies what output is prompting the agent to reprompt the input.</p>
    #   @return [String]
    class RepromptResponse < Struct.new(
      :text,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters in the API request body.</p>
    # @!attribute content
    #   <p>The content in the request body.</p>
    #   @return [Hash<String, Array<Types::Parameter>>]
    class RequestBody < Struct.new(
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a document to rerank. Choose the <code>type</code> to define and include the field that corresponds to the type.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute type
    #   <p>The type of document to rerank.</p>
    #   @return [String]
    # @!attribute text_document
    #   <p>Contains information about a text document to rerank.</p>
    #   @return [Types::RerankTextDocument]
    # @!attribute json_document
    #   <p>Contains a JSON document to rerank.</p>
    #   @return [JSON]
    class RerankDocument < Struct.new(
      :type,
      :text_document,
      :json_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a query to submit to the reranker model.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute type
    #   <p>The type of the query.</p>
    #   @return [String]
    # @!attribute text_query
    #   <p>Contains information about a text query.</p>
    #   @return [Types::RerankTextDocument]
    class RerankQuery < Struct.new(
      :type,
      :text_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute queries
    #   <p>An array of objects, each of which contains information about a query to submit to the reranker model.</p>
    #   @return [Array<Types::RerankQuery>]
    # @!attribute sources
    #   <p>An array of objects, each of which contains information about the sources to rerank.</p>
    #   @return [Array<Types::RerankSource>]
    # @!attribute reranking_configuration
    #   <p>Contains configurations for reranking.</p>
    #   @return [Types::RerankingConfiguration]
    # @!attribute next_token
    #   <p>If the total number of results was greater than could fit in a response, a token is returned in the <code>nextToken</code> field. You can enter that token in this field to return the next batch of results.</p>
    #   @return [String]
    class RerankRequest < Struct.new(
      :queries,
      :sources,
      :reranking_configuration,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>An array of objects, each of which contains information about the results of reranking.</p>
    #   @return [Array<Types::RerankResult>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than can fit in the response, use this token in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [String]
    class RerankResponse < Struct.new(
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a document that was reranked.</p>
    # @!attribute index
    #   <p>The ranking of the document. The lower a number, the higher the document is ranked.</p>
    #   @return [Integer]
    # @!attribute relevance_score
    #   <p>The relevance score of the document.</p>
    #   @return [Float]
    # @!attribute document
    #   <p>Contains information about the document.</p>
    #   @return [Types::RerankDocument]
    class RerankResult < Struct.new(
      :index,
      :relevance_score,
      :document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a source for reranking.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute type
    #   <p>The type of the source.</p>
    #   @return [String]
    # @!attribute inline_document_source
    #   <p>Contains an inline definition of a source for reranking.</p>
    #   @return [Types::RerankDocument]
    class RerankSource < Struct.new(
      :type,
      :inline_document_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a text document to rerank.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The text of the document.</p>
    #   @return [String]
    class RerankTextDocument < Struct.new(
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for reranking.</p>
    # @!attribute type
    #   <p>The type of reranker that the configurations apply to.</p>
    #   @return [String]
    # @!attribute bedrock_reranking_configuration
    #   <p>Contains configurations for an Amazon Bedrock reranker.</p>
    #   @return [Types::BedrockRerankingConfiguration]
    class RerankingConfiguration < Struct.new(
      :type,
      :bedrock_reranking_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for the metadata fields to include or exclude when considering reranking. If you include the <code>fieldsToExclude</code> field, the reranker ignores all the metadata fields that you specify. If you include the <code>fieldsToInclude</code> field, the reranker uses only the metadata fields that you specify and ignores all others. You can include only one of these fields.</p>
    # @!attribute fields_to_include
    #   <p>An array of objects, each of which specifies a metadata field to include in consideration when reranking. The remaining metadata fields are ignored.</p>
    #   @return [Array<Types::FieldForReranking>]
    # @!attribute fields_to_exclude
    #   <p>An array of objects, each of which specifies a metadata field to exclude from consideration when reranking.</p>
    #   @return [Array<Types::FieldForReranking>]
    class RerankingMetadataSelectiveModeConfiguration < Struct.new(
      :fields_to_include,
      :fields_to_exclude,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FieldsToInclude < RerankingMetadataSelectiveModeConfiguration; end
      class FieldsToExclude < RerankingMetadataSelectiveModeConfiguration; end
      class Unknown < RerankingMetadataSelectiveModeConfiguration; end
    end

    # <p>The specified resource Amazon Resource Name (ARN) was not found. Check the Amazon Resource Name (ARN) and try your request again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from invoking the agent and associated citations and trace information.</p>
    # @!attribute chunk
    #   <p>Contains a part of an agent response and citations for it.</p>
    #   @return [Types::PayloadPart]
    # @!attribute trace
    #   <p>Contains information about the agent and session, alongside the agent's reasoning process and results from calling actions and querying knowledge bases and metadata about the trace. You can use the trace to understand how the agent arrived at the response it provided the customer. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/trace-events.html">Trace events</a>.</p>
    #   @return [Types::TracePart]
    # @!attribute return_control
    #   <p>Contains the parameters and information that the agent elicited from the customer to carry out an action. This information is returned to the system and can be used in your own setup for fulfilling the action.</p>
    #   @return [Types::ReturnControlPayload]
    # @!attribute internal_server_exception
    #   <p>An internal server error occurred. Retry your request.</p>
    #   @return [Types::InternalServerException]
    # @!attribute validation_exception
    #   <p>Input validation failed. Check your request parameters and retry the request.</p>
    #   @return [Types::ValidationException]
    # @!attribute resource_not_found_exception
    #   <p>The specified resource Amazon Resource Name (ARN) was not found. Check the Amazon Resource Name (ARN) and try your request again.</p>
    #   @return [Types::ResourceNotFoundException]
    # @!attribute service_quota_exceeded_exception
    #   <p>The number of requests exceeds the service quota. Resubmit your request later.</p>
    #   @return [Types::ServiceQuotaExceededException]
    # @!attribute throttling_exception
    #   <p>The number of requests exceeds the limit. Resubmit your request later.</p>
    #   @return [Types::ThrottlingException]
    # @!attribute access_denied_exception
    #   <p>The request is denied because of missing access permissions. Check your permissions and retry your request.</p>
    #   @return [Types::AccessDeniedException]
    # @!attribute conflict_exception
    #   <p>There was a conflict performing an operation. Resolve the conflict and retry your request.</p>
    #   @return [Types::ConflictException]
    # @!attribute dependency_failed_exception
    #   <p>There was an issue with a dependency. Check the resource configurations and retry the request.</p>
    #   @return [Types::DependencyFailedException]
    # @!attribute bad_gateway_exception
    #   <p>There was an issue with a dependency due to a server issue. Retry your request.</p>
    #   @return [Types::BadGatewayException]
    # @!attribute model_not_ready_exception
    #   <p> The model specified in the request is not ready to serve Inference requests. The AWS SDK will automatically retry the operation up to 5 times. For information about configuring automatic retries, see <a href="https://docs.aws.amazon.com/sdkref/latest/guide/feature-retry-behavior.html">Retry behavior</a> in the <i>AWS SDKs and Tools</i> reference guide. </p>
    #   @return [Types::ModelNotReadyException]
    # @!attribute files
    #   <p>Contains intermediate response for code interpreter if any files have been generated.</p>
    #   @return [Types::FilePart]
    class ResponseStream < Struct.new(
      :chunk,
      :trace,
      :return_control,
      :internal_server_exception,
      :validation_exception,
      :resource_not_found_exception,
      :service_quota_exceeded_exception,
      :throttling_exception,
      :access_denied_exception,
      :conflict_exception,
      :dependency_failed_exception,
      :bad_gateway_exception,
      :model_not_ready_exception,
      :files,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Chunk < ResponseStream; end
      class Trace < ResponseStream; end
      class ReturnControl < ResponseStream; end
      class InternalServerException < ResponseStream; end
      class ValidationException < ResponseStream; end
      class ResourceNotFoundException < ResponseStream; end
      class ServiceQuotaExceededException < ResponseStream; end
      class ThrottlingException < ResponseStream; end
      class AccessDeniedException < ResponseStream; end
      class ConflictException < ResponseStream; end
      class DependencyFailedException < ResponseStream; end
      class BadGatewayException < ResponseStream; end
      class ModelNotReadyException < ResponseStream; end
      class Files < ResponseStream; end
      class Unknown < ResponseStream; end
    end

    # <p>Specifies the filters to use on the metadata attributes in the knowledge base data sources before returning results. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Query configurations</a>. See the examples below to see how to use these filters.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_RequestSyntax">Retrieve request</a> – in the <code>filter</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax">RetrieveAndGenerate request</a> – in the <code>filter</code> field</p> </li> </ul>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute equals
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the <code>key</code> and whose value matches the <code>value</code> in this object.</p> <p>The following example would return data sources with an <code>animal</code> attribute whose value is <code>cat</code>:</p> <p> <code>"equals": { "key": "animal", "value": "cat" }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute not_equals
    #   <p>Knowledge base data sources are returned when:</p> <ul> <li> <p>It contains a metadata attribute whose name matches the <code>key</code> and whose value doesn't match the <code>value</code> in this object.</p> </li> <li> <p>The key is not present in the document.</p> </li> </ul> <p>The following example would return data sources that don't contain an <code>animal</code> attribute whose value is <code>cat</code>.</p> <p> <code>"notEquals": { "key": "animal", "value": "cat" }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute greater_than
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the <code>key</code> and whose value is greater than the <code>value</code> in this object.</p> <p>The following example would return data sources with an <code>year</code> attribute whose value is greater than <code>1989</code>:</p> <p> <code>"greaterThan": { "key": "year", "value": 1989 }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute greater_than_or_equals
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the <code>key</code> and whose value is greater than or equal to the <code>value</code> in this object.</p> <p>The following example would return data sources with an <code>year</code> attribute whose value is greater than or equal to <code>1989</code>:</p> <p> <code>"greaterThanOrEquals": { "key": "year", "value": 1989 }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute less_than
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the <code>key</code> and whose value is less than the <code>value</code> in this object.</p> <p>The following example would return data sources with an <code>year</code> attribute whose value is less than to <code>1989</code>.</p> <p> <code>"lessThan": { "key": "year", "value": 1989 }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute less_than_or_equals
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the <code>key</code> and whose value is less than or equal to the <code>value</code> in this object.</p> <p>The following example would return data sources with an <code>year</code> attribute whose value is less than or equal to <code>1989</code>.</p> <p> <code>"lessThanOrEquals": { "key": "year", "value": 1989 }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute in
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the <code>key</code> and whose value is in the list specified in the <code>value</code> in this object.</p> <p>The following example would return data sources with an <code>animal</code> attribute that is either <code>cat</code> or <code>dog</code>:</p> <p> <code>"in": { "key": "animal", "value": ["cat", "dog"] }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute not_in
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the <code>key</code> and whose value isn't in the list specified in the <code>value</code> in this object.</p> <p>The following example would return data sources whose <code>animal</code> attribute is neither <code>cat</code> nor <code>dog</code>.</p> <p> <code>"notIn": { "key": "animal", "value": ["cat", "dog"] }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute starts_with
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the <code>key</code> and whose value starts with the <code>value</code> in this object. This filter is currently only supported for Amazon OpenSearch Serverless vector stores.</p> <p>The following example would return data sources with an <code>animal</code> attribute starts with <code>ca</code> (for example, <code>cat</code> or <code>camel</code>).</p> <p> <code>"startsWith": { "key": "animal", "value": "ca" }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute list_contains
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the <code>key</code> and whose value is a list that contains the <code>value</code> as one of its members.</p> <p>The following example would return data sources with an <code>animals</code> attribute that is a list containing a <code>cat</code> member (for example <code>["dog", "cat"]</code>).</p> <p> <code>"listContains": { "key": "animals", "value": "cat" }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute string_contains
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the <code>key</code> and whose value is one of the following:</p> <ul> <li> <p>A string that contains the <code>value</code> as a substring. The following example would return data sources with an <code>animal</code> attribute that contains the substring <code>at</code> (for example <code>cat</code>).</p> <p> <code>"stringContains": { "key": "animal", "value": "at" }</code> </p> </li> <li> <p>A list with a member that contains the <code>value</code> as a substring. The following example would return data sources with an <code>animals</code> attribute that is a list containing a member that contains the substring <code>at</code> (for example <code>["dog", "cat"]</code>).</p> <p> <code>"stringContains": { "key": "animals", "value": "at" }</code> </p> </li> </ul>
    #   @return [Types::FilterAttribute]
    # @!attribute and_all
    #   <p>Knowledge base data sources are returned if their metadata attributes fulfill all the filter conditions inside this list.</p>
    #   @return [Array<Types::RetrievalFilter>]
    # @!attribute or_all
    #   <p>Knowledge base data sources are returned if their metadata attributes fulfill at least one of the filter conditions inside this list.</p>
    #   @return [Array<Types::RetrievalFilter>]
    class RetrievalFilter < Struct.new(
      :equals,
      :not_equals,
      :greater_than,
      :greater_than_or_equals,
      :less_than,
      :less_than_or_equals,
      :in,
      :not_in,
      :starts_with,
      :list_contains,
      :string_contains,
      :and_all,
      :or_all,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Equals < RetrievalFilter; end
      class NotEquals < RetrievalFilter; end
      class GreaterThan < RetrievalFilter; end
      class GreaterThanOrEquals < RetrievalFilter; end
      class LessThan < RetrievalFilter; end
      class LessThanOrEquals < RetrievalFilter; end
      class In < RetrievalFilter; end
      class NotIn < RetrievalFilter; end
      class StartsWith < RetrievalFilter; end
      class ListContains < RetrievalFilter; end
      class StringContains < RetrievalFilter; end
      class AndAll < RetrievalFilter; end
      class OrAll < RetrievalFilter; end
      class Unknown < RetrievalFilter; end
    end

    # <p>The Confluence data source location.</p>
    # @!attribute url
    #   <p>The Confluence host URL for the data source location.</p>
    #   @return [String]
    class RetrievalResultConfluenceLocation < Struct.new(
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a chunk of text from a data source in the knowledge base. If the result is from a structured data source, the cell in the database and the type of the value is also identified.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax">Retrieve response</a> – in the <code>content</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax">RetrieveAndGenerate response</a> – in the <code>content</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> – in the <code>content</code> field</p> </li> </ul>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute type
    #   <p>The type of content in the retrieval result.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The cited text from the data source.</p>
    #   @return [String]
    # @!attribute byte_content
    #   <p>A data URI with base64-encoded content from the data source. The URI is in the following format: returned in the following format: <code>data:image/jpeg;base64,${base64-encoded string}</code>.</p>
    #   @return [String]
    # @!attribute row
    #   <p>Specifies information about the rows with the cells to return in retrieval.</p>
    #   @return [Array<Types::RetrievalResultContentColumn>]
    class RetrievalResultContent < Struct.new(
      :type,
      :text,
      :byte_content,
      :row,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:text] = '' unless options.key?(:text)
        super
      end
    end

    # <p>Contains information about a column with a cell to return in retrieval.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute column_value
    #   <p>The value in the column.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the value.</p>
    #   @return [String]
    class RetrievalResultContentColumn < Struct.new(
      :column_name,
      :column_value,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the location of a document in a custom data source.</p>
    # @!attribute id
    #   <p>The ID of the document.</p>
    #   @return [String]
    class RetrievalResultCustomDocumentLocation < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The location of a result in Amazon Kendra.</p>
    # @!attribute uri
    #   <p>The document's uri.</p>
    #   @return [String]
    class RetrievalResultKendraDocumentLocation < Struct.new(
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the data source location.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax">Retrieve response</a> – in the <code>location</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax">RetrieveAndGenerate response</a> – in the <code>location</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> – in the <code>location</code> field</p> </li> </ul>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute type
    #   <p>The type of data source location.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>The S3 data source location.</p>
    #   @return [Types::RetrievalResultS3Location]
    # @!attribute web_location
    #   <p>The web URL/URLs data source location.</p>
    #   @return [Types::RetrievalResultWebLocation]
    # @!attribute confluence_location
    #   <p>The Confluence data source location.</p>
    #   @return [Types::RetrievalResultConfluenceLocation]
    # @!attribute salesforce_location
    #   <p>The Salesforce data source location.</p>
    #   @return [Types::RetrievalResultSalesforceLocation]
    # @!attribute share_point_location
    #   <p>The SharePoint data source location.</p>
    #   @return [Types::RetrievalResultSharePointLocation]
    # @!attribute custom_document_location
    #   <p>Specifies the location of a document in a custom data source.</p>
    #   @return [Types::RetrievalResultCustomDocumentLocation]
    # @!attribute kendra_document_location
    #   <p>The location of a document in Amazon Kendra.</p>
    #   @return [Types::RetrievalResultKendraDocumentLocation]
    # @!attribute sql_location
    #   <p>Specifies information about the SQL query used to retrieve the result.</p>
    #   @return [Types::RetrievalResultSqlLocation]
    class RetrievalResultLocation < Struct.new(
      :type,
      :s3_location,
      :web_location,
      :confluence_location,
      :salesforce_location,
      :share_point_location,
      :custom_document_location,
      :kendra_document_location,
      :sql_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 data source location.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax">Retrieve response</a> – in the <code>s3Location</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax">RetrieveAndGenerate response</a> – in the <code>s3Location</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> – in the <code>s3Location</code> field</p> </li> </ul>
    # @!attribute uri
    #   <p>The S3 URI for the data source location.</p>
    #   @return [String]
    class RetrievalResultS3Location < Struct.new(
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Salesforce data source location.</p>
    # @!attribute url
    #   <p>The Salesforce host URL for the data source location.</p>
    #   @return [String]
    class RetrievalResultSalesforceLocation < Struct.new(
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The SharePoint data source location.</p>
    # @!attribute url
    #   <p>The SharePoint site URL for the data source location.</p>
    #   @return [String]
    class RetrievalResultSharePointLocation < Struct.new(
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the SQL query used to retrieve the result.</p>
    # @!attribute query
    #   <p>The SQL query used to retrieve the result.</p>
    #   @return [String]
    class RetrievalResultSqlLocation < Struct.new(
      :query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The web URL/URLs data source location.</p>
    # @!attribute url
    #   <p>The web URL/URLs for the data source location.</p>
    #   @return [String]
    class RetrievalResultWebLocation < Struct.new(
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the resource being queried.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax">RetrieveAndGenerate request</a> – in the <code>retrieveAndGenerateConfiguration</code> field</p> </li> </ul>
    # @!attribute type
    #   <p>The type of resource that contains your data for retrieving information and generating responses.</p> <note> <p>If you choose to use <code>EXTERNAL_SOURCES</code>, then currently only Anthropic Claude 3 Sonnet models for knowledge bases are supported.</p> </note>
    #   @return [String]
    # @!attribute knowledge_base_configuration
    #   <p>Contains details about the knowledge base for retrieving information and generating responses.</p>
    #   @return [Types::KnowledgeBaseRetrieveAndGenerateConfiguration]
    # @!attribute external_sources_configuration
    #   <p>The configuration for the external source wrapper object in the <code>retrieveAndGenerate</code> function.</p>
    #   @return [Types::ExternalSourcesRetrieveAndGenerateConfiguration]
    class RetrieveAndGenerateConfiguration < Struct.new(
      :type,
      :knowledge_base_configuration,
      :external_sources_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the query made to the knowledge base.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax">RetrieveAndGenerate request</a> – in the <code>input</code> field</p> </li> </ul>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The query made to the knowledge base.</p>
    #   @return [String]
    class RetrieveAndGenerateInput < Struct.new(
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response generated from querying the knowledge base.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax">RetrieveAndGenerate response</a> – in the <code>output</code> field</p> </li> </ul>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The response generated from querying the knowledge base.</p>
    #   @return [String]
    class RetrieveAndGenerateOutput < Struct.new(
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A retrieve and generate output event.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>A text response.</p>
    #   @return [String]
    class RetrieveAndGenerateOutputEvent < Struct.new(
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier of the session. When you first make a <code>RetrieveAndGenerate</code> request, Amazon Bedrock automatically generates this value. You must reuse this value for all subsequent requests in the same conversational session. This value allows Amazon Bedrock to maintain context and knowledge from previous interactions. You can't explicitly set the <code>sessionId</code> yourself.</p>
    #   @return [String]
    # @!attribute input
    #   <p>Contains the query to be made to the knowledge base.</p>
    #   @return [Types::RetrieveAndGenerateInput]
    # @!attribute retrieve_and_generate_configuration
    #   <p>Contains configurations for the knowledge base query and retrieval process. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Query configurations</a>.</p>
    #   @return [Types::RetrieveAndGenerateConfiguration]
    # @!attribute session_configuration
    #   <p>Contains details about the session with the knowledge base.</p>
    #   @return [Types::RetrieveAndGenerateSessionConfiguration]
    class RetrieveAndGenerateRequest < Struct.new(
      :session_id,
      :input,
      :retrieve_and_generate_configuration,
      :session_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier of the session. When you first make a <code>RetrieveAndGenerate</code> request, Amazon Bedrock automatically generates this value. You must reuse this value for all subsequent requests in the same conversational session. This value allows Amazon Bedrock to maintain context and knowledge from previous interactions. You can't explicitly set the <code>sessionId</code> yourself.</p>
    #   @return [String]
    # @!attribute output
    #   <p>Contains the response generated from querying the knowledge base.</p>
    #   @return [Types::RetrieveAndGenerateOutput]
    # @!attribute citations
    #   <p>A list of segments of the generated response that are based on sources in the knowledge base, alongside information about the sources.</p>
    #   @return [Array<Types::Citation>]
    # @!attribute guardrail_action
    #   <p>Specifies if there is a guardrail intervention in the response.</p>
    #   @return [String]
    class RetrieveAndGenerateResponse < Struct.new(
      :session_id,
      :output,
      :citations,
      :guardrail_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration about the session with the knowledge base.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax">RetrieveAndGenerate request</a> – in the <code>sessionConfiguration</code> field</p> </li> </ul>
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key encrypting the session.</p>
    #   @return [String]
    class RetrieveAndGenerateSessionConfiguration < Struct.new(
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier of the session. When you first make a <code>RetrieveAndGenerate</code> request, Amazon Bedrock automatically generates this value. You must reuse this value for all subsequent requests in the same conversational session. This value allows Amazon Bedrock to maintain context and knowledge from previous interactions. You can't explicitly set the <code>sessionId</code> yourself.</p>
    #   @return [String]
    # @!attribute input
    #   <p>Contains the query to be made to the knowledge base.</p>
    #   @return [Types::RetrieveAndGenerateInput]
    # @!attribute retrieve_and_generate_configuration
    #   <p>Contains configurations for the knowledge base query and retrieval process. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Query configurations</a>.</p>
    #   @return [Types::RetrieveAndGenerateConfiguration]
    # @!attribute session_configuration
    #   <p>Contains details about the session with the knowledge base.</p>
    #   @return [Types::RetrieveAndGenerateSessionConfiguration]
    class RetrieveAndGenerateStreamRequest < Struct.new(
      :session_id,
      :input,
      :retrieve_and_generate_configuration,
      :session_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream
    #   <p>A stream of events from the model.</p>
    #   @return [Types::RetrieveAndGenerateStreamResponseOutput]
    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    class RetrieveAndGenerateStreamResponse < Struct.new(
      :stream,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A retrieve and generate stream response output.</p>
    # @!attribute output
    #   <p>An output event.</p>
    #   @return [Types::RetrieveAndGenerateOutputEvent]
    # @!attribute citation
    #   <p>A citation event.</p>
    #   @return [Types::CitationEvent]
    # @!attribute guardrail
    #   <p>A guardrail event.</p>
    #   @return [Types::GuardrailEvent]
    # @!attribute internal_server_exception
    #   <p>An internal server error occurred. Retry your request.</p>
    #   @return [Types::InternalServerException]
    # @!attribute validation_exception
    #   <p>The input fails to satisfy the constraints specified by <i>Amazon Bedrock</i>. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-validation-error">ValidationError</a> in the Amazon Bedrock User Guide.</p>
    #   @return [Types::ValidationException]
    # @!attribute resource_not_found_exception
    #   <p>The specified resource ARN was not found. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-resource-not-found">ResourceNotFound</a> in the Amazon Bedrock User Guide.</p>
    #   @return [Types::ResourceNotFoundException]
    # @!attribute service_quota_exceeded_exception
    #   <p>Your request exceeds the service quota for your account. You can view your quotas at <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/gs-request-quota.html">Viewing service quotas</a>. You can resubmit your request later.</p>
    #   @return [Types::ServiceQuotaExceededException]
    # @!attribute throttling_exception
    #   <p>Your request was denied due to exceeding the account quotas for <i>Amazon Bedrock</i>. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-throttling-exception">ThrottlingException</a> in the Amazon Bedrock User Guide.</p>
    #   @return [Types::ThrottlingException]
    # @!attribute access_denied_exception
    #   <p>The request is denied because you do not have sufficient permissions to perform the requested action. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-access-denied">AccessDeniedException</a> in the Amazon Bedrock User Guide.</p>
    #   @return [Types::AccessDeniedException]
    # @!attribute conflict_exception
    #   <p>Error occurred because of a conflict while performing an operation.</p>
    #   @return [Types::ConflictException]
    # @!attribute dependency_failed_exception
    #   <p>The request failed due to a dependency error.</p>
    #   @return [Types::DependencyFailedException]
    # @!attribute bad_gateway_exception
    #   <p>The request failed due to a bad gateway error.</p>
    #   @return [Types::BadGatewayException]
    class RetrieveAndGenerateStreamResponseOutput < Struct.new(
      :output,
      :citation,
      :guardrail,
      :internal_server_exception,
      :validation_exception,
      :resource_not_found_exception,
      :service_quota_exceeded_exception,
      :throttling_exception,
      :access_denied_exception,
      :conflict_exception,
      :dependency_failed_exception,
      :bad_gateway_exception,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Output < RetrieveAndGenerateStreamResponseOutput; end
      class Citation < RetrieveAndGenerateStreamResponseOutput; end
      class Guardrail < RetrieveAndGenerateStreamResponseOutput; end
      class InternalServerException < RetrieveAndGenerateStreamResponseOutput; end
      class ValidationException < RetrieveAndGenerateStreamResponseOutput; end
      class ResourceNotFoundException < RetrieveAndGenerateStreamResponseOutput; end
      class ServiceQuotaExceededException < RetrieveAndGenerateStreamResponseOutput; end
      class ThrottlingException < RetrieveAndGenerateStreamResponseOutput; end
      class AccessDeniedException < RetrieveAndGenerateStreamResponseOutput; end
      class ConflictException < RetrieveAndGenerateStreamResponseOutput; end
      class DependencyFailedException < RetrieveAndGenerateStreamResponseOutput; end
      class BadGatewayException < RetrieveAndGenerateStreamResponseOutput; end
      class Unknown < RetrieveAndGenerateStreamResponseOutput; end
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base to query.</p>
    #   @return [String]
    # @!attribute retrieval_query
    #   <p>Contains the query to send the knowledge base.</p>
    #   @return [Types::KnowledgeBaseQuery]
    # @!attribute retrieval_configuration
    #   <p>Contains configurations for the knowledge base query and retrieval process. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Query configurations</a>.</p>
    #   @return [Types::KnowledgeBaseRetrievalConfiguration]
    # @!attribute guardrail_configuration
    #   <p>Guardrail settings.</p>
    #   @return [Types::GuardrailConfiguration]
    # @!attribute next_token
    #   <p>If there are more results than can fit in the response, the response returns a <code>nextToken</code>. Use this token in the <code>nextToken</code> field of another request to retrieve the next batch of results.</p>
    #   @return [String]
    class RetrieveRequest < Struct.new(
      :knowledge_base_id,
      :retrieval_query,
      :retrieval_configuration,
      :guardrail_configuration,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute retrieval_results
    #   <p>A list of results from querying the knowledge base.</p>
    #   @return [Array<Types::KnowledgeBaseRetrievalResult>]
    # @!attribute guardrail_action
    #   <p>Specifies if there is a guardrail intervention in the response.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If there are more results than can fit in the response, the response returns a <code>nextToken</code>. Use this token in the <code>nextToken</code> field of another request to retrieve the next batch of results.</p>
    #   @return [String]
    class RetrieveResponse < Struct.new(
      :retrieval_results,
      :guardrail_action,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about a source cited for the generated response.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax">RetrieveAndGenerate response</a> – in the <code>retrievedReferences</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> – in the <code>retrievedReferences</code> field</p> </li> </ul>
    # @!attribute content
    #   <p>Contains the cited text from the data source.</p>
    #   @return [Types::RetrievalResultContent]
    # @!attribute location
    #   <p>Contains information about the location of the data source.</p>
    #   @return [Types::RetrievalResultLocation]
    # @!attribute metadata
    #   <p>Contains metadata attributes and their values for the file in the data source. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-ds.html#kb-ds-metadata">Metadata and filtering</a>.</p>
    #   @return [Hash<String, JSON>]
    class RetrievedReference < Struct.new(
      :content,
      :location,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information to return from the action group that the agent has predicted to invoke.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> </p> </li> </ul>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute invocation_inputs
    #   <p>A list of objects that contain information about the parameters and inputs that need to be sent into the API operation or function, based on what the agent determines from its session with the user.</p>
    #   @return [Array<Types::InvocationInputMember>]
    # @!attribute invocation_id
    #   <p>The identifier of the action group invocation.</p>
    #   @return [String]
    class ReturnControlPayload < Struct.new(
      :invocation_inputs,
      :invocation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An action invocation result.</p>
    # @!attribute invocation_id
    #   <p>The action's invocation ID.</p>
    #   @return [String]
    # @!attribute return_control_invocation_results
    #   <p>The action invocation result.</p>
    #   @return [Array<Types::InvocationResultMember>]
    class ReturnControlResults < Struct.new(
      :invocation_id,
      :return_control_invocation_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Invocation output from a routing classifier model.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute trace_id
    #   <p>The invocation's trace ID.</p>
    #   @return [String]
    # @!attribute raw_response
    #   <p>The invocation's raw response.</p>
    #   @return [Types::RawResponse]
    # @!attribute metadata
    #   <p>The invocation's metadata.</p>
    #   @return [Types::Metadata]
    class RoutingClassifierModelInvocationOutput < Struct.new(
      :trace_id,
      :raw_response,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A trace for a routing classifier.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute invocation_input
    #   <p>The classifier's invocation input.</p>
    #   @return [Types::InvocationInput]
    # @!attribute observation
    #   <p>The classifier's observation.</p>
    #   @return [Types::Observation]
    # @!attribute model_invocation_input
    #   <p>The classifier's model invocation input.</p>
    #   @return [Types::ModelInvocationInput]
    # @!attribute model_invocation_output
    #   <p>The classifier's model invocation output.</p>
    #   @return [Types::RoutingClassifierModelInvocationOutput]
    class RoutingClassifierTrace < Struct.new(
      :invocation_input,
      :observation,
      :model_invocation_input,
      :model_invocation_output,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class InvocationInput < RoutingClassifierTrace; end
      class Observation < RoutingClassifierTrace; end
      class ModelInvocationInput < RoutingClassifierTrace; end
      class ModelInvocationOutput < RoutingClassifierTrace; end
      class Unknown < RoutingClassifierTrace; end
    end

    # <p> The identifier information for an Amazon S3 bucket. </p>
    # @!attribute s3_bucket_name
    #   <p> The name of the S3 bucket. </p>
    #   @return [String]
    # @!attribute s3_object_key
    #   <p> The S3 object key for the S3 resource. </p>
    #   @return [String]
    class S3Identifier < Struct.new(
      :s3_bucket_name,
      :s3_object_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Amazon S3 bucket where the image is stored.</p>
    # @!attribute uri
    #   <p>The path to the Amazon S3 bucket where the image is stored.</p>
    #   @return [String]
    class S3Location < Struct.new(
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The unique wrapper object of the document from the S3 location.</p>
    # @!attribute uri
    #   <p>The file location of the S3 wrapper object.</p>
    #   @return [String]
    class S3ObjectDoc < Struct.new(
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details of the s3 object where the source file is located.</p>
    # @!attribute uri
    #   <p>The uri of the s3 object.</p>
    #   @return [String]
    class S3ObjectFile < Struct.new(
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a condition that was satisfied during a condition node evaluation in a flow execution.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute condition_name
    #   <p>The name of the condition that was satisfied.</p>
    #   @return [String]
    class SatisfiedCondition < Struct.new(
      :condition_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of requests exceeds the service quota. Resubmit your request later.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains parameters that specify various attributes that persist across a session or prompt. You can define session state attributes as key-value pairs when writing a <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-lambda.html">Lambda function</a> for an action group or pass them when making an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html">InvokeAgent</a> request. Use session state attributes to control and provide conversational context for your agent and to help customize your agent's behavior. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html">Control session context</a>.</p>
    # @!attribute session_attributes
    #   <p>Contains attributes that persist across a session and the values of those attributes. If <code>sessionAttributes</code> are passed to a supervisor agent in <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-multi-agent-collaboration.html">multi-agent collaboration</a>, it will be forwarded to all agent collaborators.</p>
    #   @return [Hash<String, String>]
    # @!attribute prompt_session_attributes
    #   <p>Contains attributes that persist across a prompt and the values of those attributes. </p> <ul> <li> <p>In orchestration prompt template, these attributes replace the $prompt_session_attributes$ placeholder variable. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html">Prompt template placeholder variables</a>.</p> </li> <li> <p>In <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-multi-agent-collaboration.html">multi-agent collaboration</a>, the <code>promptSessionAttributes</code> will only be used by supervisor agent when $prompt_session_attributes$ is present in prompt template. </p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute return_control_invocation_results
    #   <p>Contains information about the results from the action group invocation. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-returncontrol.html">Return control to the agent developer</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html">Control session context</a>.</p> <note> <p>If you include this field, the <code>inputText</code> field will be ignored.</p> </note>
    #   @return [Array<Types::InvocationResultMember>]
    # @!attribute invocation_id
    #   <p>The identifier of the invocation of an action. This value must match the <code>invocationId</code> returned in the <code>InvokeAgent</code> response for the action whose results are provided in the <code>returnControlInvocationResults</code> field. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-returncontrol.html">Return control to the agent developer</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html">Control session context</a>.</p>
    #   @return [String]
    # @!attribute files
    #   <p>Contains information about the files used by code interpreter.</p>
    #   @return [Array<Types::InputFile>]
    # @!attribute knowledge_base_configurations
    #   <p>An array of configurations, each of which applies to a knowledge base attached to the agent.</p>
    #   @return [Array<Types::KnowledgeBaseConfiguration>]
    # @!attribute conversation_history
    #   <p>The state's conversation history.</p>
    #   @return [Types::ConversationHistory]
    class SessionState < Struct.new(
      :session_attributes,
      :prompt_session_attributes,
      :return_control_invocation_results,
      :invocation_id,
      :files,
      :knowledge_base_configurations,
      :conversation_history,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a session. For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p>
    # @!attribute session_id
    #   <p>The unique identifier for the session.</p>
    #   @return [String]
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the session.</p>
    #   @return [String]
    # @!attribute session_status
    #   <p>The current status of the session.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp for when the session was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp for when the session was last modified.</p>
    #   @return [Time]
    class SessionSummary < Struct.new(
      :session_id,
      :session_arn,
      :session_status,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about where the text with a citation begins and ends in the generated output.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax">RetrieveAndGenerate response</a> – in the <code>span</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> – in the <code>span</code> field</p> </li> </ul>
    # @!attribute start
    #   <p>Where the text with a citation starts in the generated output.</p>
    #   @return [Integer]
    # @!attribute end
    #   <p>Where the text with a citation ends in the generated output.</p>
    #   @return [Integer]
    class Span < Struct.new(
      :start,
      :end,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow to execute.</p>
    #   @return [String]
    # @!attribute flow_alias_identifier
    #   <p>The unique identifier of the flow alias to use for the flow execution.</p>
    #   @return [String]
    # @!attribute flow_execution_name
    #   <p>The unique name for the flow execution. If you don't provide one, a system-generated name is used.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The input data required for the flow execution. This must match the input schema defined in the flow.</p>
    #   @return [Array<Types::FlowInput>]
    # @!attribute model_performance_configuration
    #   <p>The performance settings for the foundation model used in the flow execution.</p>
    #   @return [Types::ModelPerformanceConfiguration]
    class StartFlowExecutionRequest < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :flow_execution_name,
      :inputs,
      :model_performance_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the flow execution.</p>
    #   @return [String]
    class StartFlowExecutionResponse < Struct.new(
      :execution_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute flow_alias_identifier
    #   <p>The unique identifier of the flow alias used for the execution.</p>
    #   @return [String]
    # @!attribute execution_identifier
    #   <p>The unique identifier of the flow execution to stop.</p>
    #   @return [String]
    class StopFlowExecutionRequest < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :execution_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the flow execution that was stopped.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The updated status of the flow execution after the stop request. This will typically be ABORTED if the execution was successfully stopped.</p>
    #   @return [String]
    class StopFlowExecutionResponse < Struct.new(
      :execution_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configurations for streaming.</p>
    # @!attribute stream_final_response
    #   <p> Specifies whether to enable streaming for the final response. This is set to <code>false</code> by default. </p>
    #   @return [Boolean]
    # @!attribute apply_guardrail_interval
    #   <p> The guardrail interval to apply as response is generated. By default, the guardrail interval is set to 50 characters. If a larger interval is specified, the response will be generated in larger chunks with fewer <code>ApplyGuardrail</code> calls. The following examples show the response generated for <i>Hello, I am an agent</i> input string.</p> <p> <b>Example response in chunks: Interval set to 3 characters</b> </p> <p> <code>'Hel', 'lo, ','I am', ' an', ' Age', 'nt'</code> </p> <p>Each chunk has at least 3 characters except for the last chunk</p> <p> <b>Example response in chunks: Interval set to 20 or more characters</b> </p> <p> <code>Hello, I am an Agent</code> </p>
    #   @return [Integer]
    class StreamingConfigurations < Struct.new(
      :stream_final_response,
      :apply_guardrail_interval,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:stream_final_response] = false unless options.key?(:stream_final_response)
        super
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An object containing key-value pairs that define the tags to attach to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for text generation using a language model via the RetrieveAndGenerate operation. Includes parameters like temperature, top-p, maximum token count, and stop sequences. </p> <note> <p>The valid range of <code>maxTokens</code> depends on the accepted values for your chosen model's inference parameters. To see the inference parameters for your model, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters for foundation models.</a> </p> </note>
    # @!attribute temperature
    #   <p> Controls the random-ness of text generated by the language model, influencing how much the model sticks to the most predictable next words versus exploring more surprising options. A lower temperature value (e.g. 0.2 or 0.3) makes model outputs more deterministic or predictable, while a higher temperature (e.g. 0.8 or 0.9) makes the outputs more creative or unpredictable. </p>
    #   @return [Float]
    # @!attribute top_p
    #   <p> A probability distribution threshold which controls what the model considers for the set of possible next tokens. The model will only consider the top p% of the probability distribution when generating the next token. </p>
    #   @return [Float]
    # @!attribute max_tokens
    #   <p>The maximum number of tokens to generate in the output text. Do not use the minimum of 0 or the maximum of 65536. The limit values described here are arbitary values, for actual values consult the limits defined by your specific model.</p>
    #   @return [Integer]
    # @!attribute stop_sequences
    #   <p>A list of sequences of characters that, if generated, will cause the model to stop generating further tokens. Do not use a minimum length of 1 or a maximum length of 1000. The limit values described here are arbitary values, for actual values consult the limits defined by your specific model.</p>
    #   @return [Array<String>]
    class TextInferenceConfig < Struct.new(
      :temperature,
      :top_p,
      :max_tokens,
      :stop_sequences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the text prompt to optimize.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The text in the text prompt to optimize.</p>
    #   @return [String]
    class TextPrompt < Struct.new(
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the part of the generated text that contains a citation, alongside where it begins and ends.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax">RetrieveAndGenerate response</a> – in the <code>textResponsePart</code> field</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax">InvokeAgent response</a> – in the <code>textResponsePart</code> field</p> </li> </ul>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The part of the generated text that contains a citation.</p>
    #   @return [String]
    # @!attribute span
    #   <p>Contains information about where the text with a citation begins and ends in the generated output.</p>
    #   @return [Types::Span]
    class TextResponsePart < Struct.new(
      :text,
      :span,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for transforming text to SQL.</p>
    # @!attribute type
    #   <p>The type of resource to use in transformation.</p>
    #   @return [String]
    # @!attribute knowledge_base_configuration
    #   <p>Specifies configurations for a knowledge base to use in transformation.</p>
    #   @return [Types::TextToSqlKnowledgeBaseConfiguration]
    class TextToSqlConfiguration < Struct.new(
      :type,
      :knowledge_base_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a knowledge base to use in transformation.</p>
    # @!attribute knowledge_base_arn
    #   <p>The ARN of the knowledge base</p>
    #   @return [String]
    class TextToSqlKnowledgeBaseConfiguration < Struct.new(
      :knowledge_base_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of requests exceeds the limit. Resubmit your request later.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains one part of the agent's reasoning process and results from calling API actions and querying knowledge bases. You can use the trace to understand how the agent arrived at the response it provided the customer. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-enablement">Trace enablement</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute guardrail_trace
    #   <p>The trace details for a trace defined in the Guardrail filter.</p>
    #   @return [Types::GuardrailTrace]
    # @!attribute pre_processing_trace
    #   <p>Details about the pre-processing step, in which the agent contextualizes and categorizes user inputs.</p>
    #   @return [Types::PreProcessingTrace]
    # @!attribute orchestration_trace
    #   <p>Details about the orchestration step, in which the agent determines the order in which actions are executed and which knowledge bases are retrieved.</p>
    #   @return [Types::OrchestrationTrace]
    # @!attribute post_processing_trace
    #   <p>Details about the post-processing step, in which the agent shapes the response..</p>
    #   @return [Types::PostProcessingTrace]
    # @!attribute routing_classifier_trace
    #   <p>A routing classifier's trace.</p>
    #   @return [Types::RoutingClassifierTrace]
    # @!attribute failure_trace
    #   <p>Contains information about the failure of the interaction.</p>
    #   @return [Types::FailureTrace]
    # @!attribute custom_orchestration_trace
    #   <p> Details about the custom orchestration step in which the agent determines the order in which actions are executed. </p>
    #   @return [Types::CustomOrchestrationTrace]
    class Trace < Struct.new(
      :guardrail_trace,
      :pre_processing_trace,
      :orchestration_trace,
      :post_processing_trace,
      :routing_classifier_trace,
      :failure_trace,
      :custom_orchestration_trace,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class GuardrailTrace < Trace; end
      class PreProcessingTrace < Trace; end
      class OrchestrationTrace < Trace; end
      class PostProcessingTrace < Trace; end
      class RoutingClassifierTrace < Trace; end
      class FailureTrace < Trace; end
      class CustomOrchestrationTrace < Trace; end
      class Unknown < Trace; end
    end

    # <p>Contains trace elements for flow execution tracking.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute agent_traces
    #   <p>Agent trace information for the flow execution.</p>
    #   @return [Array<Types::TracePart>]
    class TraceElements < Struct.new(
      :agent_traces,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AgentTraces < TraceElements; end
      class Unknown < TraceElements; end
    end

    # <p>Contains information about the agent and session, alongside the agent's reasoning process and results from calling API actions and querying knowledge bases and metadata about the trace. You can use the trace to understand how the agent arrived at the response it provided the customer. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-enablement">Trace enablement</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute session_id
    #   <p>The unique identifier of the session with the agent.</p>
    #   @return [String]
    # @!attribute trace
    #   <p>Contains one part of the agent's reasoning process and results from calling API actions and querying knowledge bases. You can use the trace to understand how the agent arrived at the response it provided the customer. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-enablement">Trace enablement</a>.</p>
    #   @return [Types::Trace]
    # @!attribute caller_chain
    #   <p>The part's caller chain.</p>
    #   @return [Array<Types::Caller>]
    # @!attribute event_time
    #   <p> The time of the trace. </p>
    #   @return [Time]
    # @!attribute collaborator_name
    #   <p>The part's collaborator name.</p>
    #   @return [String]
    # @!attribute agent_id
    #   <p>The unique identifier of the agent.</p>
    #   @return [String]
    # @!attribute agent_alias_id
    #   <p>The unique identifier of the alias of the agent.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent.</p>
    #   @return [String]
    class TracePart < Struct.new(
      :session_id,
      :trace,
      :caller_chain,
      :event_time,
      :collaborator_name,
      :agent_id,
      :agent_alias_id,
      :agent_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for transforming the natural language query into SQL.</p>
    # @!attribute mode
    #   <p>The mode of the transformation.</p>
    #   @return [String]
    # @!attribute text_to_sql_configuration
    #   <p>Specifies configurations for transforming text to SQL.</p>
    #   @return [Types::TextToSqlConfiguration]
    class TransformationConfiguration < Struct.new(
      :mode,
      :text_to_sql_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of keys of the tags to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_metadata
    #   <p>A map of key-value pairs containing attributes to be persisted across the session. For example the user's ID, their language preference, and the type of device they are using.</p>
    #   @return [Hash<String, String>]
    # @!attribute session_identifier
    #   <p>The unique identifier of the session to modify. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    #   @return [String]
    class UpdateSessionRequest < Struct.new(
      :session_metadata,
      :session_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier of the session you updated.</p>
    #   @return [String]
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the session that was updated.</p>
    #   @return [String]
    # @!attribute session_status
    #   <p>The status of the session you updated.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp for when the session was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp for when the session was last modified.</p>
    #   @return [Time]
    class UpdateSessionResponse < Struct.new(
      :session_id,
      :session_arn,
      :session_status,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information of the usage of the foundation model.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute input_tokens
    #   <p>Contains information about the input tokens from the foundation model usage.</p>
    #   @return [Integer]
    # @!attribute output_tokens
    #   <p>Contains information about the output tokens from the foundation model usage.</p>
    #   @return [Integer]
    class Usage < Struct.new(
      :input_tokens,
      :output_tokens,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input validation failed. Check your request parameters and retry the request.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for reranking with an Amazon Bedrock reranker model.</p>
    # @!attribute model_configuration
    #   <p>Contains configurations for the reranker model.</p>
    #   @return [Types::VectorSearchBedrockRerankingModelConfiguration]
    # @!attribute number_of_reranked_results
    #   <p>The number of results to return after reranking.</p>
    #   @return [Integer]
    # @!attribute metadata_configuration
    #   <p>Contains configurations for the metadata to use in reranking.</p>
    #   @return [Types::MetadataConfigurationForReranking]
    class VectorSearchBedrockRerankingConfiguration < Struct.new(
      :model_configuration,
      :number_of_reranked_results,
      :metadata_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for an Amazon Bedrock reranker model.</p>
    # @!attribute model_arn
    #   <p>The ARN of the reranker model to use.</p>
    #   @return [String]
    # @!attribute additional_model_request_fields
    #   <p>A JSON object whose keys are request fields for the model and whose values are values for those fields.</p>
    #   @return [Hash<String, JSON>]
    class VectorSearchBedrockRerankingModelConfiguration < Struct.new(
      :model_arn,
      :additional_model_request_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for reranking the retrieved results.</p>
    # @!attribute type
    #   <p>The type of reranker model.</p>
    #   @return [String]
    # @!attribute bedrock_reranking_configuration
    #   <p>Contains configurations for an Amazon Bedrock reranker model.</p>
    #   @return [Types::VectorSearchBedrockRerankingConfiguration]
    class VectorSearchRerankingConfiguration < Struct.new(
      :type,
      :bedrock_reranking_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
