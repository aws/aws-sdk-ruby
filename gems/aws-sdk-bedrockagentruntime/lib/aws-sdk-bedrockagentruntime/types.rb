# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockAgentRuntime
  module Types

    # Contains details about the OpenAPI schema for the action group. For
    # more information, see [Action group OpenAPI schemas][1]. You can
    # either include the schema directly in the payload field or you can
    # upload it to an S3 bucket and specify the S3 bucket location in the s3
    # field.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html
    #
    # @note APISchema is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] s3
    #   Contains details about the S3 object containing the OpenAPI schema
    #   for the action group.
    #   @return [Types::S3Identifier]
    #
    # @!attribute [rw] payload
    #   The JSON or YAML-formatted payload defining the OpenAPI schema for
    #   the action group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/APISchema AWS API Documentation
    #
    class APISchema < Struct.new(
      :s3,
      :payload,
      :unknown)
      SENSITIVE = [:payload]
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < APISchema; end
      class Payload < APISchema; end
      class Unknown < APISchema; end
    end

    # The request is denied because of missing access permissions. Check
    # your permissions and retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the Lambda function containing the business
    # logic that is carried out upon invoking the action or the custom
    # control method for handling the information elicited from the user.
    #
    # @note ActionGroupExecutor is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] lambda
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action.
    #   @return [String]
    #
    # @!attribute [rw] custom_control
    #   To return the action group invocation results directly in the
    #   `InvokeInlineAgent` response, specify `RETURN_CONTROL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ActionGroupExecutor AWS API Documentation
    #
    class ActionGroupExecutor < Struct.new(
      :lambda,
      :custom_control,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Lambda < ActionGroupExecutor; end
      class CustomControl < ActionGroupExecutor; end
      class Unknown < ActionGroupExecutor; end
    end

    # Contains information about the action group being invoked. For more
    # information about the possible structures, see the InvocationInput tab
    # in [OrchestrationTrace][1] in the [Amazon Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/trace-orchestration.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @!attribute [rw] action_group_name
    #   The name of the action group.
    #   @return [String]
    #
    # @!attribute [rw] verb
    #   The API method being used, based off the action group.
    #   @return [String]
    #
    # @!attribute [rw] api_path
    #   The path to the API to call, based off the action group.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters in the Lambda input event.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] request_body
    #   The parameters in the request body for the Lambda input event.
    #   @return [Types::RequestBody]
    #
    # @!attribute [rw] function
    #   The function in the action group to call.
    #   @return [String]
    #
    # @!attribute [rw] execution_type
    #   How fulfillment of the action is handled. For more information, see
    #   [Handling fulfillment of the action][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/action-handle.html
    #   @return [String]
    #
    # @!attribute [rw] invocation_id
    #   The unique identifier of the invocation. Only returned if the
    #   `executionType` is `RETURN_CONTROL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ActionGroupInvocationInput AWS API Documentation
    #
    class ActionGroupInvocationInput < Struct.new(
      :action_group_name,
      :verb,
      :api_path,
      :parameters,
      :request_body,
      :function,
      :execution_type,
      :invocation_id)
      SENSITIVE = [:action_group_name, :verb, :api_path, :function]
      include Aws::Structure
    end

    # Contains the JSON-formatted string returned by the API invoked by the
    # action group.
    #
    # @!attribute [rw] text
    #   The JSON-formatted string returned by the API invoked by the action
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Contains information about the action group output.
    #   @return [Types::Metadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ActionGroupInvocationOutput AWS API Documentation
    #
    class ActionGroupInvocationOutput < Struct.new(
      :text,
      :metadata)
      SENSITIVE = [:text, :metadata]
      include Aws::Structure
    end

    # Contains details of the inline agent's action group.
    #
    # @!attribute [rw] action_group_name
    #   The name of the action group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the action group.
    #   @return [String]
    #
    # @!attribute [rw] parent_action_group_signature
    #   Specify a built-in or computer use action for this action group. If
    #   you specify a value, you must leave the `description`, `apiSchema`,
    #   and `actionGroupExecutor` fields empty for this action group.
    #
    #   * To allow your agent to request the user for additional information
    #     when trying to complete a task, set this field to
    #     `AMAZON.UserInput`.
    #
    #   * To allow your agent to generate, run, and troubleshoot code when
    #     trying to complete a task, set this field to
    #     `AMAZON.CodeInterpreter`.
    #
    #   * To allow your agent to use an Anthropic computer use tool, specify
    #     one of the following values.
    #
    #     Computer use is a new Anthropic Claude model capability (in beta)
    #     available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet
    #     v2 only. When operating computer use functionality, we recommend
    #     taking additional security precautions, such as executing computer
    #     actions in virtual environments with restricted data access and
    #     limited internet connectivity. For more information, see
    #     [Configure an Amazon Bedrock Agent to complete tasks with computer
    #     use tools][1].
    #
    #     * `ANTHROPIC.Computer` - Gives the agent permission to use the
    #       mouse and keyboard and take screenshots.
    #
    #     * `ANTHROPIC.TextEditor` - Gives the agent permission to view,
    #       create and edit files.
    #
    #     * `ANTHROPIC.Bash` - Gives the agent permission to run commands in
    #       a bash shell.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html
    #   @return [String]
    #
    # @!attribute [rw] action_group_executor
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action or the
    #   custom control method for handling the information elicited from the
    #   user.
    #   @return [Types::ActionGroupExecutor]
    #
    # @!attribute [rw] api_schema
    #   Contains either details about the S3 object containing the OpenAPI
    #   schema for the action group or the JSON or YAML-formatted payload
    #   defining the schema. For more information, see [Action group OpenAPI
    #   schemas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html
    #   @return [Types::APISchema]
    #
    # @!attribute [rw] function_schema
    #   Contains details about the function schema for the action group or
    #   the JSON or YAML-formatted payload defining the schema.
    #   @return [Types::FunctionSchema]
    #
    # @!attribute [rw] parent_action_group_signature_params
    #   The configuration settings for a computer use action.
    #
    #   Computer use is a new Anthropic Claude model capability (in beta)
    #   available with Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For
    #   more information, see [Configure an Amazon Bedrock Agent to complete
    #   tasks with computer use tools][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/AgentActionGroup AWS API Documentation
    #
    class AgentActionGroup < Struct.new(
      :action_group_name,
      :description,
      :parent_action_group_signature,
      :action_group_executor,
      :api_schema,
      :function_schema,
      :parent_action_group_signature_params)
      SENSITIVE = [:action_group_name, :description]
      include Aws::Structure
    end

    # Input for an agent collaborator. The input can be text or an action
    # invocation result.
    #
    # @!attribute [rw] type
    #   The input type.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   Input text.
    #   @return [String]
    #
    # @!attribute [rw] return_control_results
    #   An action invocation result.
    #   @return [Types::ReturnControlResults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/AgentCollaboratorInputPayload AWS API Documentation
    #
    class AgentCollaboratorInputPayload < Struct.new(
      :type,
      :text,
      :return_control_results)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # An agent collaborator invocation input.
    #
    # @!attribute [rw] agent_collaborator_name
    #   The collaborator's name.
    #   @return [String]
    #
    # @!attribute [rw] agent_collaborator_alias_arn
    #   The collaborator's alias ARN.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   Text or action invocation result input for the collaborator.
    #   @return [Types::AgentCollaboratorInputPayload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/AgentCollaboratorInvocationInput AWS API Documentation
    #
    class AgentCollaboratorInvocationInput < Struct.new(
      :agent_collaborator_name,
      :agent_collaborator_alias_arn,
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output from an agent collaborator.
    #
    # @!attribute [rw] agent_collaborator_name
    #   The output's agent collaborator name.
    #   @return [String]
    #
    # @!attribute [rw] agent_collaborator_alias_arn
    #   The output's agent collaborator alias ARN.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The output's output.
    #   @return [Types::AgentCollaboratorOutputPayload]
    #
    # @!attribute [rw] metadata
    #   Contains information about the output from the agent collaborator.
    #   @return [Types::Metadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/AgentCollaboratorInvocationOutput AWS API Documentation
    #
    class AgentCollaboratorInvocationOutput < Struct.new(
      :agent_collaborator_name,
      :agent_collaborator_alias_arn,
      :output,
      :metadata)
      SENSITIVE = [:metadata]
      include Aws::Structure
    end

    # Output from an agent collaborator. The output can be text or an action
    # invocation result.
    #
    # @!attribute [rw] type
    #   The type of output.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   Text output.
    #   @return [String]
    #
    # @!attribute [rw] return_control_payload
    #   An action invocation result.
    #   @return [Types::ReturnControlPayload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/AgentCollaboratorOutputPayload AWS API Documentation
    #
    class AgentCollaboratorOutputPayload < Struct.new(
      :type,
      :text,
      :return_control_payload)
      SENSITIVE = [:text, :return_control_payload]
      include Aws::Structure
    end

    # An event in which the prompt was analyzed in preparation for
    # optimization.
    #
    # @!attribute [rw] message
    #   A message describing the analysis of the prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/AnalyzePromptEvent AWS API Documentation
    #
    class AnalyzePromptEvent < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the API operation that the agent predicts
    # should be called.
    #
    # This data type is used in the following API operations:
    #
    # * In the `returnControl` field of the [InvokeAgent response][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @!attribute [rw] action_group
    #   The action group that the API operation belongs to.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP method of the API operation.
    #   @return [String]
    #
    # @!attribute [rw] api_path
    #   The path to the API operation.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters to provide for the API request, as the agent elicited
    #   from the user.
    #   @return [Array<Types::ApiParameter>]
    #
    # @!attribute [rw] request_body
    #   The request body to provide for the API request, as the agent
    #   elicited from the user.
    #   @return [Types::ApiRequestBody]
    #
    # @!attribute [rw] action_invocation_type
    #   Contains information about the API operation to invoke.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The agent's ID.
    #   @return [String]
    #
    # @!attribute [rw] collaborator_name
    #   The agent collaborator's name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ApiInvocationInput AWS API Documentation
    #
    class ApiInvocationInput < Struct.new(
      :action_group,
      :http_method,
      :api_path,
      :parameters,
      :request_body,
      :action_invocation_type,
      :agent_id,
      :collaborator_name)
      SENSITIVE = [:api_path, :collaborator_name]
      include Aws::Structure
    end

    # Information about a parameter to provide to the API request.
    #
    # This data type is used in the following API operations:
    #
    # * [InvokeAgent response][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @!attribute [rw] name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ApiParameter AWS API Documentation
    #
    class ApiParameter < Struct.new(
      :name,
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request body to provide for the API request, as the agent elicited
    # from the user.
    #
    # This data type is used in the following API operations:
    #
    # * [InvokeAgent response][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @!attribute [rw] content
    #   The content of the request body. The key of the object in this field
    #   is a media type defining the format of the request body.
    #   @return [Hash<String,Types::PropertyParameters>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ApiRequestBody AWS API Documentation
    #
    class ApiRequestBody < Struct.new(
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the API operation that was called from the
    # action group and the response body that was returned.
    #
    # This data type is used in the following API operations:
    #
    # * In the `returnControlInvocationResults` of the [InvokeAgent
    #   request][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_RequestSyntax
    #
    # @!attribute [rw] action_group
    #   The action group that the API operation belongs to.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP method for the API operation.
    #   @return [String]
    #
    # @!attribute [rw] api_path
    #   The path to the API operation.
    #   @return [String]
    #
    # @!attribute [rw] confirmation_state
    #   Controls the API operations or functions to invoke based on the user
    #   confirmation.
    #   @return [String]
    #
    # @!attribute [rw] response_state
    #   Controls the final response state returned to end user when
    #   API/Function execution failed. When this state is FAILURE, the
    #   request would fail with dependency failure exception. When this
    #   state is REPROMPT, the API/function response will be sent to model
    #   for re-prompt
    #   @return [String]
    #
    # @!attribute [rw] http_status_code
    #   http status code from API execution response (for example: 200, 400,
    #   500).
    #   @return [Integer]
    #
    # @!attribute [rw] response_body
    #   The response body from the API operation. The key of the object is
    #   the content type (currently, only `TEXT` is supported). The response
    #   may be returned directly or from the Lambda function.
    #   @return [Hash<String,Types::ContentBody>]
    #
    # @!attribute [rw] agent_id
    #   The agent's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ApiResult AWS API Documentation
    #
    class ApiResult < Struct.new(
      :action_group,
      :http_method,
      :api_path,
      :confirmation_state,
      :response_state,
      :http_status_code,
      :response_body,
      :agent_id)
      SENSITIVE = [:api_path]
      include Aws::Structure
    end

    # Contains citations for a part of an agent response.
    #
    # @!attribute [rw] citations
    #   A list of citations and related information for a part of an agent
    #   response.
    #   @return [Array<Types::Citation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Attribution AWS API Documentation
    #
    class Attribution < Struct.new(
      :citations)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an issue with a dependency due to a server issue. Retry your
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the dependency that caused the issue, such as Amazon
    #   Bedrock, Lambda, or STS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/BadGatewayException AWS API Documentation
    #
    class BadGatewayException < Struct.new(
      :message,
      :resource_name,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for a model called with InvokeAgent.
    #
    # @!attribute [rw] performance_config
    #   The performance configuration for the model.
    #   @return [Types::PerformanceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/BedrockModelConfigurations AWS API Documentation
    #
    class BedrockModelConfigurations < Struct.new(
      :performance_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for an Amazon Bedrock reranker model.
    #
    # @!attribute [rw] number_of_results
    #   The number of results to return after reranking.
    #   @return [Integer]
    #
    # @!attribute [rw] model_configuration
    #   Contains configurations for a reranker model.
    #   @return [Types::BedrockRerankingModelConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/BedrockRerankingConfiguration AWS API Documentation
    #
    class BedrockRerankingConfiguration < Struct.new(
      :number_of_results,
      :model_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a reranker model.
    #
    # @!attribute [rw] model_arn
    #   The ARN of the reranker model.
    #   @return [String]
    #
    # @!attribute [rw] additional_model_request_fields
    #   A JSON object whose keys are request fields for the model and whose
    #   values are values for those fields.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/BedrockRerankingModelConfiguration AWS API Documentation
    #
    class BedrockRerankingModelConfiguration < Struct.new(
      :model_arn,
      :additional_model_request_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # A block of content that you pass to, or receive from, a Amazon Bedrock
    # session in an invocation step. You pass the content to a session in
    # the `payLoad` of the [PutInvocationStep][1] API operation. You
    # retrieve the content with the [GetInvocationStep][2] API operation.
    #
    # For more information about sessions, see [Store and retrieve
    # conversation history and context with Amazon Bedrock sessions][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_PutInvocationStep.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetInvocationStep.html
    # [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
    #
    # @note BedrockSessionContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @note BedrockSessionContentBlock is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of BedrockSessionContentBlock corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The text in the invocation step.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image in the invocation step.
    #   @return [Types::ImageBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/BedrockSessionContentBlock AWS API Documentation
    #
    class BedrockSessionContentBlock < Struct.new(
      :text,
      :image,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < BedrockSessionContentBlock; end
      class Image < BedrockSessionContentBlock; end
      class Unknown < BedrockSessionContentBlock; end
    end

    # This property contains the document to chat with, along with its
    # attributes.
    #
    # @!attribute [rw] identifier
    #   The file name of the document contained in the wrapper object.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the document contained in the wrapper object.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The byte value of the file to upload, encoded as a Base-64 string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ByteContentDoc AWS API Documentation
    #
    class ByteContentDoc < Struct.new(
      :identifier,
      :content_type,
      :data)
      SENSITIVE = [:identifier, :data]
      include Aws::Structure
    end

    # The property contains the file to chat with, along with its
    # attributes.
    #
    # @!attribute [rw] media_type
    #   The MIME type of data contained in the file used for chat.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The raw bytes of the file to attach. The maximum size of all files
    #   that is attached is 10MB. You can attach a maximum of 5 files.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ByteContentFile AWS API Documentation
    #
    class ByteContentFile < Struct.new(
      :media_type,
      :data)
      SENSITIVE = [:data]
      include Aws::Structure
    end

    # Details about a caller.
    #
    # @note Caller is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Caller corresponding to the set member.
    #
    # @!attribute [rw] agent_alias_arn
    #   The caller's agent alias ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Caller AWS API Documentation
    #
    class Caller < Struct.new(
      :agent_alias_arn,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AgentAliasArn < Caller; end
      class Unknown < Caller; end
    end

    # An object containing a segment of the generated response that is based
    # on a source in the knowledge base, alongside information about the
    # source.
    #
    # This data type is used in the following API operations:
    #
    # * [InvokeAgent response][1] – in the `citations` field
    #
    # * [RetrieveAndGenerate response][2] – in the `citations` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    #
    # @!attribute [rw] generated_response_part
    #   Contains the generated response and metadata
    #   @return [Types::GeneratedResponsePart]
    #
    # @!attribute [rw] retrieved_references
    #   Contains metadata about the sources cited for the generated
    #   response.
    #   @return [Array<Types::RetrievedReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Citation AWS API Documentation
    #
    class Citation < Struct.new(
      :generated_response_part,
      :retrieved_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # A citation event.
    #
    # @!attribute [rw] citation
    #   The citation.
    #   @return [Types::Citation]
    #
    # @!attribute [rw] generated_response_part
    #   The generated response to the citation event.
    #   @return [Types::GeneratedResponsePart]
    #
    # @!attribute [rw] retrieved_references
    #   The retrieved references of the citation event.
    #   @return [Array<Types::RetrievedReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/CitationEvent AWS API Documentation
    #
    class CitationEvent < Struct.new(
      :citation,
      :generated_response_part,
      :retrieved_references,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the code interpreter being invoked.
    #
    # @!attribute [rw] code
    #   The code for the code interpreter to use.
    #   @return [String]
    #
    # @!attribute [rw] files
    #   Files that are uploaded for code interpreter to use.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/CodeInterpreterInvocationInput AWS API Documentation
    #
    class CodeInterpreterInvocationInput < Struct.new(
      :code,
      :files)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the JSON-formatted string returned by the API invoked by the
    # code interpreter.
    #
    # @!attribute [rw] execution_output
    #   Contains the successful output returned from code execution
    #   @return [String]
    #
    # @!attribute [rw] execution_error
    #   Contains the error returned from code execution.
    #   @return [String]
    #
    # @!attribute [rw] files
    #   Contains output files, if generated by code execution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] execution_timeout
    #   Indicates if the execution of the code timed out.
    #   @return [Boolean]
    #
    # @!attribute [rw] metadata
    #   Contains information about the output from the code interpreter.
    #   @return [Types::Metadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/CodeInterpreterInvocationOutput AWS API Documentation
    #
    class CodeInterpreterInvocationOutput < Struct.new(
      :execution_output,
      :execution_error,
      :files,
      :execution_timeout,
      :metadata)
      SENSITIVE = [:metadata]
      include Aws::Structure
    end

    # List of inline collaborators.
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the AWS KMS key that encrypts the
    #   inline collaborator.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   The foundation model used by the inline collaborator agent.
    #   @return [String]
    #
    # @!attribute [rw] instruction
    #   Instruction that tell the inline collaborator agent what it should
    #   do and how it should interact with users.
    #   @return [String]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The number of seconds for which the Amazon Bedrock keeps information
    #   about the user's conversation with the inline collaborator agent.
    #
    #   A user interaction remains active for the amount of time specified.
    #   If no conversation occurs during this time, the session expires and
    #   Amazon Bedrock deletes any data provided before the timeout.
    #   @return [Integer]
    #
    # @!attribute [rw] action_groups
    #   List of action groups with each action group defining tasks the
    #   inline collaborator agent needs to carry out.
    #   @return [Array<Types::AgentActionGroup>]
    #
    # @!attribute [rw] knowledge_bases
    #   Knowledge base associated with the inline collaborator agent.
    #   @return [Array<Types::KnowledgeBase>]
    #
    # @!attribute [rw] guardrail_configuration
    #   Details of the guardwrail associated with the inline collaborator.
    #   @return [Types::GuardrailConfigurationWithArn]
    #
    # @!attribute [rw] prompt_override_configuration
    #   Contains configurations to override prompt templates in different
    #   parts of an inline collaborator sequence. For more information, see
    #   [Advanced prompts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #   @return [Types::PromptOverrideConfiguration]
    #
    # @!attribute [rw] agent_collaboration
    #   Defines how the inline supervisor agent handles information across
    #   multiple collaborator agents to coordinate a final response.
    #   @return [String]
    #
    # @!attribute [rw] collaborator_configurations
    #   Settings of the collaborator agent.
    #   @return [Array<Types::CollaboratorConfiguration>]
    #
    # @!attribute [rw] agent_name
    #   Name of the inline collaborator agent which must be the same name as
    #   specified for `collaboratorName`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Collaborator AWS API Documentation
    #
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
      :agent_name)
      SENSITIVE = [:instruction, :prompt_override_configuration, :agent_name]
      include Aws::Structure
    end

    # Settings of an inline collaborator agent.
    #
    # @!attribute [rw] collaborator_name
    #   Name of the inline collaborator agent which must be the same name as
    #   specified for `agentName`.
    #   @return [String]
    #
    # @!attribute [rw] collaborator_instruction
    #   Instructions that tell the inline collaborator agent what it should
    #   do and how it should interact with users.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_arn
    #   The Amazon Resource Name (ARN) of the inline collaborator agent.
    #   @return [String]
    #
    # @!attribute [rw] relay_conversation_history
    #   A relay conversation history for the inline collaborator agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/CollaboratorConfiguration AWS API Documentation
    #
    class CollaboratorConfiguration < Struct.new(
      :collaborator_name,
      :collaborator_instruction,
      :agent_alias_arn,
      :relay_conversation_history)
      SENSITIVE = [:collaborator_name, :collaborator_instruction]
      include Aws::Structure
    end

    # Contains information about a condition evaluation result during a flow
    # execution. This event is generated when a condition node in the flow
    # evaluates its conditions.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @!attribute [rw] node_name
    #   The name of the condition node that evaluated the conditions.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp when the condition evaluation occurred.
    #   @return [Time]
    #
    # @!attribute [rw] satisfied_conditions
    #   A list of conditions that were satisfied during the evaluation.
    #   @return [Array<Types::SatisfiedCondition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ConditionResultEvent AWS API Documentation
    #
    class ConditionResultEvent < Struct.new(
      :node_name,
      :timestamp,
      :satisfied_conditions)
      SENSITIVE = [:satisfied_conditions]
      include Aws::Structure
    end

    # There was a conflict performing an operation. Resolve the conflict and
    # retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A content block.
    #
    # @note ContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] text
    #   The block's text.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ContentBlock AWS API Documentation
    #
    class ContentBlock < Struct.new(
      :text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < ContentBlock; end
      class Unknown < ContentBlock; end
    end

    # Contains the body of the API response.
    #
    # This data type is used in the following API operations:
    #
    # * In the `returnControlInvocationResults` field of the [InvokeAgent
    #   request][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_RequestSyntax
    #
    # @!attribute [rw] body
    #   The body of the API response.
    #   @return [String]
    #
    # @!attribute [rw] images
    #   Lists details, including format and source, for the image in the
    #   response from the function call. You can specify only one image and
    #   the function in the `returnControlInvocationResults` must be a
    #   computer use action. For more information, see [Configure an Amazon
    #   Bedrock Agent to complete tasks with computer use tools][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html
    #   @return [Array<Types::ImageInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ContentBody AWS API Documentation
    #
    class ContentBody < Struct.new(
      :body,
      :images)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conversation history.
    #
    # @!attribute [rw] messages
    #   The conversation's messages.
    #   @return [Array<Types::Message>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ConversationHistory AWS API Documentation
    #
    class ConversationHistory < Struct.new(
      :messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invocation_id
    #   A unique identifier for the invocation in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the interactions in the invocation. For example,
    #   "User asking about weather in Seattle".
    #   @return [String]
    #
    # @!attribute [rw] session_identifier
    #   The unique identifier for the associated session for the invocation.
    #   You can specify either the session's `sessionId` or its Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/CreateInvocationRequest AWS API Documentation
    #
    class CreateInvocationRequest < Struct.new(
      :invocation_id,
      :description,
      :session_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The unique identifier for the session associated with the
    #   invocation.
    #   @return [String]
    #
    # @!attribute [rw] invocation_id
    #   The unique identifier for the invocation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp for when the invocation was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/CreateInvocationResponse AWS API Documentation
    #
    class CreateInvocationResponse < Struct.new(
      :session_id,
      :invocation_id,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_metadata
    #   A map of key-value pairs containing attributes to be persisted
    #   across the session. For example, the user's ID, their language
    #   preference, and the type of device they are using.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to use to encrypt the
    #   session data. The user or role creating the session must have
    #   permission to use the key. For more information, see [Amazon Bedrock
    #   session encryption][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/session-encryption.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specify the key-value pairs for the tags that you want to attach to
    #   the session.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/CreateSessionRequest AWS API Documentation
    #
    class CreateSessionRequest < Struct.new(
      :session_metadata,
      :encryption_key_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The unique identifier for the session.
    #   @return [String]
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the created session.
    #   @return [String]
    #
    # @!attribute [rw] session_status
    #   The current status of the session.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp for when the session was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/CreateSessionResponse AWS API Documentation
    #
    class CreateSessionResponse < Struct.new(
      :session_id,
      :session_arn,
      :session_status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details of the custom orchestration configured for the agent.
    #
    # @!attribute [rw] executor
    #   The structure of the executor invoking the actions in custom
    #   orchestration.
    #   @return [Types::OrchestrationExecutor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/CustomOrchestration AWS API Documentation
    #
    class CustomOrchestration < Struct.new(
      :executor)
      SENSITIVE = []
      include Aws::Structure
    end

    # The trace behavior for the custom orchestration.
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @!attribute [rw] event
    #   The event details used with the custom orchestration.
    #   @return [Types::CustomOrchestrationTraceEvent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/CustomOrchestrationTrace AWS API Documentation
    #
    class CustomOrchestrationTrace < Struct.new(
      :trace_id,
      :event)
      SENSITIVE = [:event]
      include Aws::Structure
    end

    # The event in the custom orchestration sequence. Events are the
    # responses which the custom orchestration Lambda function sends as
    # response to the agent.
    #
    # @!attribute [rw] text
    #   The text that prompted the event at this step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/CustomOrchestrationTraceEvent AWS API Documentation
    #
    class CustomOrchestrationTraceEvent < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent to which the alias belongs.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   The unique identifier of an alias of an agent.
    #   @return [String]
    #
    # @!attribute [rw] memory_id
    #   The unique identifier of the memory.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique session identifier of the memory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/DeleteAgentMemoryRequest AWS API Documentation
    #
    class DeleteAgentMemoryRequest < Struct.new(
      :agent_id,
      :agent_alias_id,
      :memory_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/DeleteAgentMemoryResponse AWS API Documentation
    #
    class DeleteAgentMemoryResponse < Aws::EmptyStructure; end

    # @!attribute [rw] session_identifier
    #   The unique identifier for the session to be deleted. You can specify
    #   either the session's `sessionId` or its Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/DeleteSessionRequest AWS API Documentation
    #
    class DeleteSessionRequest < Struct.new(
      :session_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/DeleteSessionResponse AWS API Documentation
    #
    class DeleteSessionResponse < Aws::EmptyStructure; end

    # There was an issue with a dependency. Check the resource
    # configurations and retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the dependency that caused the issue, such as Amazon
    #   Bedrock, Lambda, or STS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/DependencyFailedException AWS API Documentation
    #
    class DependencyFailedException < Struct.new(
      :message,
      :resource_name,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_identifier
    #   The unique identifier for the session to end. You can specify either
    #   the session's `sessionId` or its Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/EndSessionRequest AWS API Documentation
    #
    class EndSessionRequest < Struct.new(
      :session_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The unique identifier of the session you ended.
    #   @return [String]
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the session you ended.
    #   @return [String]
    #
    # @!attribute [rw] session_status
    #   The current status of the session you ended.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/EndSessionResponse AWS API Documentation
    #
    class EndSessionResponse < Struct.new(
      :session_id,
      :session_arn,
      :session_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The unique external source of the content contained in the wrapper
    # object.
    #
    # @!attribute [rw] source_type
    #   The source type of the external source wrapper object.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The S3 location of the external source wrapper object.
    #   @return [Types::S3ObjectDoc]
    #
    # @!attribute [rw] byte_content
    #   The identifier, contentType, and data of the external source wrapper
    #   object.
    #   @return [Types::ByteContentDoc]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ExternalSource AWS API Documentation
    #
    class ExternalSource < Struct.new(
      :source_type,
      :s3_location,
      :byte_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the generation configuration of the external source wrapper
    # object.
    #
    # @!attribute [rw] prompt_template
    #   Contain the textPromptTemplate string for the external source
    #   wrapper object.
    #   @return [Types::PromptTemplate]
    #
    # @!attribute [rw] guardrail_configuration
    #   The configuration details for the guardrail.
    #   @return [Types::GuardrailConfiguration]
    #
    # @!attribute [rw] inference_config
    #   Configuration settings for inference when using RetrieveAndGenerate
    #   to generate responses while using an external source.
    #   @return [Types::InferenceConfig]
    #
    # @!attribute [rw] additional_model_request_fields
    #   Additional model parameters and their corresponding values not
    #   included in the textInferenceConfig structure for an external
    #   source. Takes in custom model parameters specific to the language
    #   model being used.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] performance_config
    #   The latency configuration for the model.
    #   @return [Types::PerformanceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ExternalSourcesGenerationConfiguration AWS API Documentation
    #
    class ExternalSourcesGenerationConfiguration < Struct.new(
      :prompt_template,
      :guardrail_configuration,
      :inference_config,
      :additional_model_request_fields,
      :performance_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configurations of the external source wrapper object in the
    # `retrieveAndGenerate` function.
    #
    # @!attribute [rw] model_arn
    #   The model Amazon Resource Name (ARN) for the external source wrapper
    #   object in the `retrieveAndGenerate` function.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The document for the external source wrapper object in the
    #   `retrieveAndGenerate` function.
    #   @return [Array<Types::ExternalSource>]
    #
    # @!attribute [rw] generation_configuration
    #   The prompt used with the external source wrapper object with the
    #   `retrieveAndGenerate` function.
    #   @return [Types::ExternalSourcesGenerationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ExternalSourcesRetrieveAndGenerateConfiguration AWS API Documentation
    #
    class ExternalSourcesRetrieveAndGenerateConfiguration < Struct.new(
      :model_arn,
      :sources,
      :generation_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the failure of the interaction.
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason the interaction failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code for the trace.
    #   @return [Integer]
    #
    # @!attribute [rw] metadata
    #   Information about the failure that occurred.
    #   @return [Types::Metadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FailureTrace AWS API Documentation
    #
    class FailureTrace < Struct.new(
      :trace_id,
      :failure_reason,
      :failure_code,
      :metadata)
      SENSITIVE = [:failure_reason, :metadata]
      include Aws::Structure
    end

    # Contains information for a metadata field to include in or exclude
    # from consideration when reranking.
    #
    # @!attribute [rw] field_name
    #   The name of a metadata field to include in or exclude from
    #   consideration when reranking.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FieldForReranking AWS API Documentation
    #
    class FieldForReranking < Struct.new(
      :field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains intermediate response for code interpreter if any files have
    # been generated.
    #
    # @!attribute [rw] files
    #   Files containing intermediate response for the user.
    #   @return [Array<Types::OutputFile>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FilePart AWS API Documentation
    #
    class FilePart < Struct.new(
      :files,
      :event_type)
      SENSITIVE = [:files]
      include Aws::Structure
    end

    # The source file of the content contained in the wrapper object.
    #
    # @!attribute [rw] source_type
    #   The source type of the files to attach.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The s3 location of the files to attach.
    #   @return [Types::S3ObjectFile]
    #
    # @!attribute [rw] byte_content
    #   The data and the text of the attached files.
    #   @return [Types::ByteContentFile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FileSource AWS API Documentation
    #
    class FileSource < Struct.new(
      :source_type,
      :s3_location,
      :byte_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the name that the metadata attribute must match and the
    # value to which to compare the value of the metadata attribute. For
    # more information, see [Query configurations][1].
    #
    # This data type is used in the following API operations:
    #
    # * [RetrieveAndGenerate request][2]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax
    #
    # @!attribute [rw] key
    #   The name that the metadata attribute must match.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to whcih to compare the value of the metadata attribute.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FilterAttribute AWS API Documentation
    #
    class FilterAttribute < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the response to the user.
    #
    # @!attribute [rw] text
    #   The text in the response to the user.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Contains information about the invoke agent operation.
    #   @return [Types::Metadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FinalResponse AWS API Documentation
    #
    class FinalResponse < Struct.new(
      :text,
      :metadata)
      SENSITIVE = [:text, :metadata]
      include Aws::Structure
    end

    # Contains information about why a flow completed.
    #
    # @!attribute [rw] completion_reason
    #   The reason that the flow completed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowCompletionEvent AWS API Documentation
    #
    class FlowCompletionEvent < Struct.new(
      :completion_reason,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the content of an flow execution input or output field.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @note FlowExecutionContent is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FlowExecutionContent corresponding to the set member.
    #
    # @!attribute [rw] document
    #   The document content of the field, which can contain text or
    #   structured data.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowExecutionContent AWS API Documentation
    #
    class FlowExecutionContent < Struct.new(
      :document,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Document < FlowExecutionContent; end
      class Unknown < FlowExecutionContent; end
    end

    # Contains information about an error that occurred during an flow
    # execution.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @!attribute [rw] node_name
    #   The name of the node in the flow where the error occurred (if
    #   applicable).
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error code for the type of error that occurred.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A descriptive message that provides details about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowExecutionError AWS API Documentation
    #
    class FlowExecutionError < Struct.new(
      :node_name,
      :error,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an event that occurred during an flow execution. This is a
    # union type that can contain one of several event types, such as node
    # input and output events; flow input and output events; condition node
    # result events, or failure events.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @note FlowExecutionEvent is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FlowExecutionEvent corresponding to the set member.
    #
    # @!attribute [rw] flow_input_event
    #   Contains information about the inputs provided to the flow at the
    #   start of execution.
    #   @return [Types::FlowExecutionInputEvent]
    #
    # @!attribute [rw] flow_output_event
    #   Contains information about the outputs produced by the flow at the
    #   end of execution.
    #   @return [Types::FlowExecutionOutputEvent]
    #
    # @!attribute [rw] node_input_event
    #   Contains information about the inputs provided to a specific node
    #   during execution.
    #   @return [Types::NodeInputEvent]
    #
    # @!attribute [rw] node_output_event
    #   Contains information about the outputs produced by a specific node
    #   during execution.
    #   @return [Types::NodeOutputEvent]
    #
    # @!attribute [rw] condition_result_event
    #   Contains information about a condition evaluation result during the
    #   flow execution. This event is generated when a condition node in the
    #   flow evaluates its conditions.
    #   @return [Types::ConditionResultEvent]
    #
    # @!attribute [rw] node_failure_event
    #   Contains information about a failure that occurred at a specific
    #   node during execution.
    #   @return [Types::NodeFailureEvent]
    #
    # @!attribute [rw] flow_failure_event
    #   Contains information about a failure that occurred at the flow level
    #   during execution.
    #   @return [Types::FlowFailureEvent]
    #
    # @!attribute [rw] node_action_event
    #   Contains information about an action (operation) called by a node
    #   during execution.
    #   @return [Types::NodeActionEvent]
    #
    # @!attribute [rw] node_dependency_event
    #   Contains information about an internal trace of a specific node
    #   during execution.
    #   @return [Types::NodeDependencyEvent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowExecutionEvent AWS API Documentation
    #
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
      :unknown)
      SENSITIVE = [:flow_input_event, :flow_output_event, :node_input_event, :node_output_event, :condition_result_event, :node_failure_event, :flow_failure_event, :node_action_event, :node_dependency_event]
      include Aws::Structure
      include Aws::Structure::Union

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

    # Contains information about the inputs provided to the flow at the
    # start of a flow execution.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @!attribute [rw] node_name
    #   The name of the node that receives the inputs.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp when the inputs are provided.
    #   @return [Time]
    #
    # @!attribute [rw] fields
    #   A list of input fields provided to the flow.
    #   @return [Array<Types::FlowInputField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowExecutionInputEvent AWS API Documentation
    #
    class FlowExecutionInputEvent < Struct.new(
      :node_name,
      :timestamp,
      :fields)
      SENSITIVE = [:fields]
      include Aws::Structure
    end

    # Contains information about the outputs produced by the flow during a
    # flow execution.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @!attribute [rw] node_name
    #   The name of the node that produces the outputs.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp when the outputs are produced.
    #   @return [Time]
    #
    # @!attribute [rw] fields
    #   A list of output fields produced by the flow.
    #   @return [Array<Types::FlowOutputField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowExecutionOutputEvent AWS API Documentation
    #
    class FlowExecutionOutputEvent < Struct.new(
      :node_name,
      :timestamp,
      :fields)
      SENSITIVE = [:fields]
      include Aws::Structure
    end

    # Contains summary information about a flow execution, including its
    # status, timestamps, and identifiers.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the flow
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] flow_alias_identifier
    #   The unique identifier of the flow alias used for the execution.
    #   @return [String]
    #
    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_version
    #   The version of the flow used for the execution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the flow execution.
    #
    #   Flow executions time out after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the flow execution was created.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The timestamp when the flow execution ended. This field is only
    #   populated when the execution has completed, failed, timed out, or
    #   been aborted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowExecutionSummary AWS API Documentation
    #
    class FlowExecutionSummary < Struct.new(
      :execution_arn,
      :flow_alias_identifier,
      :flow_identifier,
      :flow_version,
      :status,
      :created_at,
      :ended_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a failure that occurred at the flow level
    # during a flow execution.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @!attribute [rw] timestamp
    #   The timestamp when the failure occurred.
    #   @return [Time]
    #
    # @!attribute [rw] error_code
    #   The error code that identifies the type of failure that occurred.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A descriptive message that provides details about the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowFailureEvent AWS API Documentation
    #
    class FlowFailureEvent < Struct.new(
      :timestamp,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an input into the prompt flow and where to
    # send it.
    #
    # @!attribute [rw] node_name
    #   The name of the flow input node that begins the prompt flow.
    #   @return [String]
    #
    # @!attribute [rw] node_output_name
    #   The name of the output from the flow input node that begins the
    #   prompt flow.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   Contains information about an input into the prompt flow.
    #   @return [Types::FlowInputContent]
    #
    # @!attribute [rw] node_input_name
    #   The name of the input from the flow input node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowInput AWS API Documentation
    #
    class FlowInput < Struct.new(
      :node_name,
      :node_output_name,
      :content,
      :node_input_name)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # Contains information about an input into the flow.
    #
    # @note FlowInputContent is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] document
    #   The input to send to the prompt flow input node.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowInputContent AWS API Documentation
    #
    class FlowInputContent < Struct.new(
      :document,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Document < FlowInputContent; end
      class Unknown < FlowInputContent; end
    end

    # Represents an input field provided to a flow during a flow execution.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @!attribute [rw] name
    #   The name of the input field as defined in the flow's input schema.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the input field, which can contain text or structured
    #   data.
    #   @return [Types::FlowExecutionContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowInputField AWS API Documentation
    #
    class FlowInputField < Struct.new(
      :name,
      :content)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # The content structure containing input information for multi-turn flow
    # interactions.
    #
    # @note FlowMultiTurnInputContent is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FlowMultiTurnInputContent corresponding to the set member.
    #
    # @!attribute [rw] document
    #   The requested additional input to send back to the multi-turn flow
    #   node.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowMultiTurnInputContent AWS API Documentation
    #
    class FlowMultiTurnInputContent < Struct.new(
      :document,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Document < FlowMultiTurnInputContent; end
      class Unknown < FlowMultiTurnInputContent; end
    end

    # Response object from the flow multi-turn node requesting additional
    # information.
    #
    # @!attribute [rw] node_name
    #   The name of the node in the flow that is requesting the input.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The type of the node in the flow that is requesting the input.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content payload containing the input request details for the
    #   multi-turn interaction.
    #   @return [Types::FlowMultiTurnInputContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowMultiTurnInputRequestEvent AWS API Documentation
    #
    class FlowMultiTurnInputRequestEvent < Struct.new(
      :node_name,
      :node_type,
      :content,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the content in an output from prompt flow
    # invocation.
    #
    # @note FlowOutputContent is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FlowOutputContent corresponding to the set member.
    #
    # @!attribute [rw] document
    #   The content in the output.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowOutputContent AWS API Documentation
    #
    class FlowOutputContent < Struct.new(
      :document,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Document < FlowOutputContent; end
      class Unknown < FlowOutputContent; end
    end

    # Contains information about an output from prompt flow invoction.
    #
    # @!attribute [rw] node_name
    #   The name of the flow output node that the output is from.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The type of the node that the output is from.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content in the output.
    #   @return [Types::FlowOutputContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowOutputEvent AWS API Documentation
    #
    class FlowOutputEvent < Struct.new(
      :node_name,
      :node_type,
      :content,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an output field produced by a flow during a flow execution.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @!attribute [rw] name
    #   The name of the output field as defined in the flow's output
    #   schema.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the output field, which can contain text or
    #   structured data.
    #   @return [Types::FlowExecutionContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowOutputField AWS API Documentation
    #
    class FlowOutputField < Struct.new(
      :name,
      :content)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # Contains information about an input or output for a node in the flow.
    # For more information, see [Track each step in your prompt flow by
    # viewing its trace in Amazon Bedrock][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html
    #
    # @note FlowTrace is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FlowTrace corresponding to the set member.
    #
    # @!attribute [rw] node_input_trace
    #   Contains information about the input into a node.
    #   @return [Types::FlowTraceNodeInputEvent]
    #
    # @!attribute [rw] node_output_trace
    #   Contains information about the output from a node.
    #   @return [Types::FlowTraceNodeOutputEvent]
    #
    # @!attribute [rw] condition_node_result_trace
    #   Contains information about an output from a condition node.
    #   @return [Types::FlowTraceConditionNodeResultEvent]
    #
    # @!attribute [rw] node_action_trace
    #   Contains information about an action (operation) called by a node.
    #   @return [Types::FlowTraceNodeActionEvent]
    #
    # @!attribute [rw] node_dependency_trace
    #   Contains information about an internal trace of a node.
    #   @return [Types::FlowTraceDependencyEvent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTrace AWS API Documentation
    #
    class FlowTrace < Struct.new(
      :node_input_trace,
      :node_output_trace,
      :condition_node_result_trace,
      :node_action_trace,
      :node_dependency_trace,
      :unknown)
      SENSITIVE = [:node_input_trace, :node_output_trace, :condition_node_result_trace, :node_action_trace, :node_dependency_trace]
      include Aws::Structure
      include Aws::Structure::Union

      class NodeInputTrace < FlowTrace; end
      class NodeOutputTrace < FlowTrace; end
      class ConditionNodeResultTrace < FlowTrace; end
      class NodeActionTrace < FlowTrace; end
      class NodeDependencyTrace < FlowTrace; end
      class Unknown < FlowTrace; end
    end

    # Contains information about a condition that was satisfied. For more
    # information, see [Track each step in your prompt flow by viewing its
    # trace in Amazon Bedrock][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html
    #
    # @!attribute [rw] condition_name
    #   The name of the condition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTraceCondition AWS API Documentation
    #
    class FlowTraceCondition < Struct.new(
      :condition_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an output from a condition node. For more
    # information, see [Track each step in your prompt flow by viewing its
    # trace in Amazon Bedrock][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html
    #
    # @!attribute [rw] node_name
    #   The name of the condition node.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The date and time that the trace was returned.
    #   @return [Time]
    #
    # @!attribute [rw] satisfied_conditions
    #   An array of objects containing information about the conditions that
    #   were satisfied.
    #   @return [Array<Types::FlowTraceCondition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTraceConditionNodeResultEvent AWS API Documentation
    #
    class FlowTraceConditionNodeResultEvent < Struct.new(
      :node_name,
      :timestamp,
      :satisfied_conditions)
      SENSITIVE = [:satisfied_conditions]
      include Aws::Structure
    end

    # Contains information about a dependency trace event in the flow.
    #
    # @!attribute [rw] node_name
    #   The name of the node that generated the dependency trace.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The date and time that the dependency trace was generated.
    #   @return [Time]
    #
    # @!attribute [rw] trace_elements
    #   The trace elements containing detailed information about the
    #   dependency.
    #   @return [Types::TraceElements]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTraceDependencyEvent AWS API Documentation
    #
    class FlowTraceDependencyEvent < Struct.new(
      :node_name,
      :timestamp,
      :trace_elements)
      SENSITIVE = [:trace_elements]
      include Aws::Structure
    end

    # Contains information about a trace, which tracks an input or output
    # for a node in the flow. For more information, see [Track each step in
    # your prompt flow by viewing its trace in Amazon Bedrock][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html
    #
    # @!attribute [rw] trace
    #   The trace object containing information about an input or output for
    #   a node in the flow.
    #   @return [Types::FlowTrace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTraceEvent AWS API Documentation
    #
    class FlowTraceEvent < Struct.new(
      :trace,
      :event_type)
      SENSITIVE = [:trace]
      include Aws::Structure
    end

    # Contains information about an action (operation) called by a node in
    # an Amazon Bedrock flow. The service generates action events for calls
    # made by prompt nodes, agent nodes, and Amazon Web Services Lambda
    # nodes.
    #
    # @!attribute [rw] node_name
    #   The name of the node that called the operation.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The date and time that the operation was called.
    #   @return [Time]
    #
    # @!attribute [rw] request_id
    #   The ID of the request that the node made to the operation.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service that the node called.
    #   @return [String]
    #
    # @!attribute [rw] operation_name
    #   The name of the operation that the node called.
    #   @return [String]
    #
    # @!attribute [rw] operation_request
    #   The request payload sent to the downstream service.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] operation_response
    #   The response payload received from the downstream service.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTraceNodeActionEvent AWS API Documentation
    #
    class FlowTraceNodeActionEvent < Struct.new(
      :node_name,
      :timestamp,
      :request_id,
      :service_name,
      :operation_name,
      :operation_request,
      :operation_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the content of the node input. For more information, see
    # [Track each step in your prompt flow by viewing its trace in Amazon
    # Bedrock][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html
    #
    # @note FlowTraceNodeInputContent is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FlowTraceNodeInputContent corresponding to the set member.
    #
    # @!attribute [rw] document
    #   The content of the node input.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTraceNodeInputContent AWS API Documentation
    #
    class FlowTraceNodeInputContent < Struct.new(
      :document,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Document < FlowTraceNodeInputContent; end
      class Unknown < FlowTraceNodeInputContent; end
    end

    # Contains information about the input into a node. For more
    # information, see [Track each step in your prompt flow by viewing its
    # trace in Amazon Bedrock][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html
    #
    # @!attribute [rw] node_name
    #   The name of the node that received the input.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The date and time that the trace was returned.
    #   @return [Time]
    #
    # @!attribute [rw] fields
    #   An array of objects containing information about each field in the
    #   input.
    #   @return [Array<Types::FlowTraceNodeInputField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTraceNodeInputEvent AWS API Documentation
    #
    class FlowTraceNodeInputEvent < Struct.new(
      :node_name,
      :timestamp,
      :fields)
      SENSITIVE = [:fields]
      include Aws::Structure
    end

    # Represents an item in the execution chain for flow trace node input
    # tracking.
    #
    # @!attribute [rw] node_name
    #   The name of the node in the execution chain.
    #   @return [String]
    #
    # @!attribute [rw] index
    #   The index position of this item in the execution chain.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of execution chain item. Supported values are Iterator and
    #   Loop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTraceNodeInputExecutionChainItem AWS API Documentation
    #
    class FlowTraceNodeInputExecutionChainItem < Struct.new(
      :node_name,
      :index,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a field in the input into a node. For more
    # information, see [Track each step in your prompt flow by viewing its
    # trace in Amazon Bedrock][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html
    #
    # @!attribute [rw] node_input_name
    #   The name of the node input.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the node input.
    #   @return [Types::FlowTraceNodeInputContent]
    #
    # @!attribute [rw] source
    #   The source node that provides input data to this field.
    #   @return [Types::FlowTraceNodeInputSource]
    #
    # @!attribute [rw] type
    #   The data type of the input field for compatibility validation.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the input field.
    #   @return [String]
    #
    # @!attribute [rw] execution_chain
    #   The execution path through nested nodes like iterators and loops.
    #   @return [Array<Types::FlowTraceNodeInputExecutionChainItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTraceNodeInputField AWS API Documentation
    #
    class FlowTraceNodeInputField < Struct.new(
      :node_input_name,
      :content,
      :source,
      :type,
      :category,
      :execution_chain)
      SENSITIVE = [:content, :source, :execution_chain]
      include Aws::Structure
    end

    # Represents the source of input data for a flow trace node field.
    #
    # @!attribute [rw] node_name
    #   The name of the source node that provides the input data.
    #   @return [String]
    #
    # @!attribute [rw] output_field_name
    #   The name of the output field from the source node.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The expression used to extract data from the source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTraceNodeInputSource AWS API Documentation
    #
    class FlowTraceNodeInputSource < Struct.new(
      :node_name,
      :output_field_name,
      :expression)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # Contains the content of the node output. For more information, see
    # [Track each step in your prompt flow by viewing its trace in Amazon
    # Bedrock][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html
    #
    # @note FlowTraceNodeOutputContent is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FlowTraceNodeOutputContent corresponding to the set member.
    #
    # @!attribute [rw] document
    #   The content of the node output.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTraceNodeOutputContent AWS API Documentation
    #
    class FlowTraceNodeOutputContent < Struct.new(
      :document,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Document < FlowTraceNodeOutputContent; end
      class Unknown < FlowTraceNodeOutputContent; end
    end

    # Contains information about the output from a node. For more
    # information, see [Track each step in your prompt flow by viewing its
    # trace in Amazon Bedrock][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html
    #
    # @!attribute [rw] node_name
    #   The name of the node that yielded the output.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The date and time that the trace was returned.
    #   @return [Time]
    #
    # @!attribute [rw] fields
    #   An array of objects containing information about each field in the
    #   output.
    #   @return [Array<Types::FlowTraceNodeOutputField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTraceNodeOutputEvent AWS API Documentation
    #
    class FlowTraceNodeOutputEvent < Struct.new(
      :node_name,
      :timestamp,
      :fields)
      SENSITIVE = [:fields]
      include Aws::Structure
    end

    # Contains information about a field in the output from a node. For more
    # information, see [Track each step in your prompt flow by viewing its
    # trace in Amazon Bedrock][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html
    #
    # @!attribute [rw] node_output_name
    #   The name of the node output.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the node output.
    #   @return [Types::FlowTraceNodeOutputContent]
    #
    # @!attribute [rw] next
    #   The next node that receives output data from this field.
    #   @return [Array<Types::FlowTraceNodeOutputNext>]
    #
    # @!attribute [rw] type
    #   The data type of the output field for compatibility validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTraceNodeOutputField AWS API Documentation
    #
    class FlowTraceNodeOutputField < Struct.new(
      :node_output_name,
      :content,
      :next,
      :type)
      SENSITIVE = [:next]
      include Aws::Structure
    end

    # Represents the next node that receives output data from a flow trace.
    #
    # @!attribute [rw] node_name
    #   The name of the next node that receives the output data.
    #   @return [String]
    #
    # @!attribute [rw] input_field_name
    #   The name of the input field in the next node that receives the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowTraceNodeOutputNext AWS API Documentation
    #
    class FlowTraceNodeOutputNext < Struct.new(
      :node_name,
      :input_field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines parameters that the agent needs to invoke from the user to
    # complete the function. Corresponds to an action in an action group.
    #
    # @!attribute [rw] name
    #   A name for the function.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the function and its purpose.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters that the agent elicits from the user to fulfill the
    #   function.
    #   @return [Hash<String,Types::ParameterDetail>]
    #
    # @!attribute [rw] require_confirmation
    #   Contains information if user confirmation is required to invoke the
    #   function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FunctionDefinition AWS API Documentation
    #
    class FunctionDefinition < Struct.new(
      :name,
      :description,
      :parameters,
      :require_confirmation)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # Contains information about the function that the agent predicts should
    # be called.
    #
    # This data type is used in the following API operations:
    #
    # * In the `returnControl` field of the [InvokeAgent response][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @!attribute [rw] action_group
    #   The action group that the function belongs to.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of parameters of the function.
    #   @return [Array<Types::FunctionParameter>]
    #
    # @!attribute [rw] function
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] action_invocation_type
    #   Contains information about the function to invoke,
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The agent's ID.
    #   @return [String]
    #
    # @!attribute [rw] collaborator_name
    #   The collaborator's name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FunctionInvocationInput AWS API Documentation
    #
    class FunctionInvocationInput < Struct.new(
      :action_group,
      :parameters,
      :function,
      :action_invocation_type,
      :agent_id,
      :collaborator_name)
      SENSITIVE = [:collaborator_name]
      include Aws::Structure
    end

    # Contains information about a parameter of the function.
    #
    # This data type is used in the following API operations:
    #
    # * In the `returnControl` field of the [InvokeAgent response][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @!attribute [rw] name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FunctionParameter AWS API Documentation
    #
    class FunctionParameter < Struct.new(
      :name,
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the function that was called from the
    # action group and the response that was returned.
    #
    # This data type is used in the following API operations:
    #
    # * In the `returnControlInvocationResults` of the [InvokeAgent
    #   request][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_RequestSyntax
    #
    # @!attribute [rw] action_group
    #   The action group that the function belongs to.
    #   @return [String]
    #
    # @!attribute [rw] confirmation_state
    #   Contains the user confirmation information about the function that
    #   was called.
    #   @return [String]
    #
    # @!attribute [rw] function
    #   The name of the function that was called.
    #   @return [String]
    #
    # @!attribute [rw] response_body
    #   The response from the function call using the parameters. The
    #   response might be returned directly or from the Lambda function.
    #   Specify `TEXT` or `IMAGES`. The key of the object is the content
    #   type. You can only specify one type. If you specify `IMAGES`, you
    #   can specify only one image. You can specify images only when the
    #   function in the `returnControlInvocationResults` is a computer use
    #   action. For more information, see [Configure an Amazon Bedrock Agent
    #   to complete tasks with computer use tools][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html
    #   @return [Hash<String,Types::ContentBody>]
    #
    # @!attribute [rw] response_state
    #   Controls the final response state returned to end user when
    #   API/Function execution failed. When this state is FAILURE, the
    #   request would fail with dependency failure exception. When this
    #   state is REPROMPT, the API/function response will be sent to model
    #   for re-prompt
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The agent's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FunctionResult AWS API Documentation
    #
    class FunctionResult < Struct.new(
      :action_group,
      :confirmation_state,
      :function,
      :response_body,
      :response_state,
      :agent_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the function schema for the action group or the
    # JSON or YAML-formatted payload defining the schema.
    #
    # @note FunctionSchema is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] functions
    #   A list of functions that each define an action in the action group.
    #   @return [Array<Types::FunctionDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FunctionSchema AWS API Documentation
    #
    class FunctionSchema < Struct.new(
      :functions,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Functions < FunctionSchema; end
      class Unknown < FunctionSchema; end
    end

    # @!attribute [rw] query_generation_input
    #   Specifies information about a natural language query to transform
    #   into SQL.
    #   @return [Types::QueryGenerationInput]
    #
    # @!attribute [rw] transformation_configuration
    #   Specifies configurations for transforming the natural language query
    #   into SQL.
    #   @return [Types::TransformationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GenerateQueryRequest AWS API Documentation
    #
    class GenerateQueryRequest < Struct.new(
      :query_generation_input,
      :transformation_configuration)
      SENSITIVE = [:query_generation_input]
      include Aws::Structure
    end

    # @!attribute [rw] queries
    #   A list of objects, each of which defines a generated query that can
    #   correspond to the natural language queries.
    #   @return [Array<Types::GeneratedQuery>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GenerateQueryResponse AWS API Documentation
    #
    class GenerateQueryResponse < Struct.new(
      :queries)
      SENSITIVE = [:queries]
      include Aws::Structure
    end

    # Contains information about a query generated for a natural language
    # query.
    #
    # @!attribute [rw] type
    #   The type of transformed query.
    #   @return [String]
    #
    # @!attribute [rw] sql
    #   An SQL query that corresponds to the natural language query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GeneratedQuery AWS API Documentation
    #
    class GeneratedQuery < Struct.new(
      :type,
      :sql)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about a part of the generated response that is
    # accompanied by a citation.
    #
    # This data type is used in the following API operations:
    #
    # * [InvokeAgent response][1] – in the `generatedResponsePart` field
    #
    # * [RetrieveAndGenerate response][2] – in the `generatedResponsePart`
    #   field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    #
    # @!attribute [rw] text_response_part
    #   Contains metadata about a textual part of the generated response
    #   that is accompanied by a citation.
    #   @return [Types::TextResponsePart]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GeneratedResponsePart AWS API Documentation
    #
    class GeneratedResponsePart < Struct.new(
      :text_response_part)
      SENSITIVE = [:text_response_part]
      include Aws::Structure
    end

    # Contains configurations for response generation based on the knowledge
    # base query results.
    #
    # This data type is used in the following API operations:
    #
    # * [RetrieveAndGenerate request][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax
    #
    # @!attribute [rw] prompt_template
    #   Contains the template for the prompt that's sent to the model for
    #   response generation. Generation prompts must include the
    #   `$search_results$` variable. For more information, see [Use
    #   placeholder variables][1] in the user guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html
    #   @return [Types::PromptTemplate]
    #
    # @!attribute [rw] guardrail_configuration
    #   The configuration details for the guardrail.
    #   @return [Types::GuardrailConfiguration]
    #
    # @!attribute [rw] inference_config
    #   Configuration settings for inference when using RetrieveAndGenerate
    #   to generate responses while using a knowledge base as a source.
    #   @return [Types::InferenceConfig]
    #
    # @!attribute [rw] additional_model_request_fields
    #   Additional model parameters and corresponding values not included in
    #   the textInferenceConfig structure for a knowledge base. This allows
    #   users to provide custom model parameters specific to the language
    #   model being used.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] performance_config
    #   The latency configuration for the model.
    #   @return [Types::PerformanceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GenerationConfiguration AWS API Documentation
    #
    class GenerationConfiguration < Struct.new(
      :prompt_template,
      :guardrail_configuration,
      :inference_config,
      :additional_model_request_fields,
      :performance_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the total number of results is greater than the maxItems value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of items to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent to which the alias belongs.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   The unique identifier of an alias of an agent.
    #   @return [String]
    #
    # @!attribute [rw] memory_type
    #   The type of memory.
    #   @return [String]
    #
    # @!attribute [rw] memory_id
    #   The unique identifier of the memory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetAgentMemoryRequest AWS API Documentation
    #
    class GetAgentMemoryRequest < Struct.new(
      :next_token,
      :max_items,
      :agent_id,
      :agent_alias_id,
      :memory_type,
      :memory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the total number of results is greater than the maxItems value
    #   provided in the request, use this token when making another request
    #   in the `nextToken` field to return the next batch of results.
    #   @return [String]
    #
    # @!attribute [rw] memory_contents
    #   Contains details of the sessions stored in the memory
    #   @return [Array<Types::Memory>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetAgentMemoryResponse AWS API Documentation
    #
    class GetAgentMemoryResponse < Struct.new(
      :next_token,
      :memory_contents)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_alias_identifier
    #   The unique identifier of the flow alias used for the flow execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_identifier
    #   The unique identifier of the flow execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetExecutionFlowSnapshotRequest AWS API Documentation
    #
    class GetExecutionFlowSnapshotRequest < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :execution_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_alias_identifier
    #   The unique identifier of the flow alias used for the flow execution.
    #   @return [String]
    #
    # @!attribute [rw] flow_version
    #   The version of the flow used for the flow execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that's used
    #   by the flow execution.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The flow definition used for the flow execution, including the
    #   nodes, connections, and configuration at the time when the execution
    #   started.
    #
    #   The definition returns as a string that follows the structure of a
    #   [FlowDefinition][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_FlowDefinition.html
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the customer managed KMS key
    #   that's used to encrypt the flow snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetExecutionFlowSnapshotResponse AWS API Documentation
    #
    class GetExecutionFlowSnapshotResponse < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :flow_version,
      :execution_role_arn,
      :definition,
      :customer_encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_alias_identifier
    #   The unique identifier of the flow alias used for the execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_identifier
    #   The unique identifier of the flow execution to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetFlowExecutionRequest AWS API Documentation
    #
    class GetFlowExecutionRequest < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :execution_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the flow
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the flow execution.
    #
    #   Flow executions time out after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the flow execution started.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The timestamp when the flow execution ended. This field is only
    #   populated when the execution has completed, failed, timed out, or
    #   been aborted.
    #   @return [Time]
    #
    # @!attribute [rw] errors
    #   A list of errors that occurred during the flow execution. Each error
    #   includes an error code, message, and the node where the error
    #   occurred, if applicable.
    #   @return [Array<Types::FlowExecutionError>]
    #
    # @!attribute [rw] flow_alias_identifier
    #   The unique identifier of the flow alias used for the execution.
    #   @return [String]
    #
    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_version
    #   The version of the flow used for the execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetFlowExecutionResponse AWS API Documentation
    #
    class GetFlowExecutionResponse < Struct.new(
      :execution_arn,
      :status,
      :started_at,
      :ended_at,
      :errors,
      :flow_alias_identifier,
      :flow_identifier,
      :flow_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invocation_identifier
    #   The unique identifier for the invocation in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] invocation_step_id
    #   The unique identifier (in UUID format) for the specific invocation
    #   step to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] session_identifier
    #   The unique identifier for the invocation step's associated session.
    #   You can specify either the session's `sessionId` or its Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetInvocationStepRequest AWS API Documentation
    #
    class GetInvocationStepRequest < Struct.new(
      :invocation_identifier,
      :invocation_step_id,
      :session_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invocation_step
    #   The complete details of the requested invocation step.
    #   @return [Types::InvocationStep]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetInvocationStepResponse AWS API Documentation
    #
    class GetInvocationStepResponse < Struct.new(
      :invocation_step)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_identifier
    #   A unique identifier for the session to retrieve. You can specify
    #   either the session's `sessionId` or its Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetSessionRequest AWS API Documentation
    #
    class GetSessionRequest < Struct.new(
      :session_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The unique identifier for the session in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the session.
    #   @return [String]
    #
    # @!attribute [rw] session_status
    #   The current status of the session.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp for when the session was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp for when the session was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] session_metadata
    #   A map of key-value pairs containing attributes persisted across the
    #   session.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the Key Management Service key
    #   used to encrypt the session data. For more information, see [Amazon
    #   Bedrock session encryption][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/session-encryption.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetSessionResponse AWS API Documentation
    #
    class GetSessionResponse < Struct.new(
      :session_id,
      :session_arn,
      :session_status,
      :created_at,
      :last_updated_at,
      :session_metadata,
      :encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Assessment details of the content analyzed by Guardrails.
    #
    # @!attribute [rw] topic_policy
    #   Topic policy details of the Guardrail.
    #   @return [Types::GuardrailTopicPolicyAssessment]
    #
    # @!attribute [rw] content_policy
    #   Content policy details of the Guardrail.
    #   @return [Types::GuardrailContentPolicyAssessment]
    #
    # @!attribute [rw] word_policy
    #   Word policy details of the Guardrail.
    #   @return [Types::GuardrailWordPolicyAssessment]
    #
    # @!attribute [rw] sensitive_information_policy
    #   Sensitive Information policy details of Guardrail.
    #   @return [Types::GuardrailSensitiveInformationPolicyAssessment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailAssessment AWS API Documentation
    #
    class GuardrailAssessment < Struct.new(
      :topic_policy,
      :content_policy,
      :word_policy,
      :sensitive_information_policy)
      SENSITIVE = [:topic_policy, :content_policy, :word_policy, :sensitive_information_policy]
      include Aws::Structure
    end

    # The configuration details for the guardrail.
    #
    # @!attribute [rw] guardrail_id
    #   The unique identifier for the guardrail.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_version
    #   The version of the guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailConfiguration AWS API Documentation
    #
    class GuardrailConfiguration < Struct.new(
      :guardrail_id,
      :guardrail_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details for the guardrail.
    #
    # @!attribute [rw] guardrail_identifier
    #   The unique identifier for the guardrail.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_version
    #   The version of the guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailConfigurationWithArn AWS API Documentation
    #
    class GuardrailConfigurationWithArn < Struct.new(
      :guardrail_identifier,
      :guardrail_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the content filter used in the Guardrail.
    #
    # @!attribute [rw] type
    #   The type of content detected in the filter by the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence level regarding the content detected in the filter by
    #   the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action placed on the content by the Guardrail filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailContentFilter AWS API Documentation
    #
    class GuardrailContentFilter < Struct.new(
      :type,
      :confidence,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the policy assessment in the Guardrails filter.
    #
    # @!attribute [rw] filters
    #   The filter details of the policy assessment used in the Guardrails
    #   filter.
    #   @return [Array<Types::GuardrailContentFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailContentPolicyAssessment AWS API Documentation
    #
    class GuardrailContentPolicyAssessment < Struct.new(
      :filters)
      SENSITIVE = [:filters]
      include Aws::Structure
    end

    # The custom word details for the filter in the Guardrail.
    #
    # @!attribute [rw] match
    #   The match details for the custom word filter in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action details for the custom word filter in the Guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailCustomWord AWS API Documentation
    #
    class GuardrailCustomWord < Struct.new(
      :match,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # A guardrail event.
    #
    # @!attribute [rw] action
    #   The guardrail action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailEvent AWS API Documentation
    #
    class GuardrailEvent < Struct.new(
      :action,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The managed word details for the filter in the Guardrail.
    #
    # @!attribute [rw] match
    #   The match details for the managed word filter in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type details for the managed word filter in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action details for the managed word filter in the Guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailManagedWord AWS API Documentation
    #
    class GuardrailManagedWord < Struct.new(
      :match,
      :type,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Guardrail filter to identify and remove personally identifiable
    # information (PII).
    #
    # @!attribute [rw] type
    #   The type of PII the Guardrail filter has identified and removed.
    #   @return [String]
    #
    # @!attribute [rw] match
    #   The match to settings in the Guardrail filter to identify and remove
    #   PII.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action of the Guardrail filter to identify and remove PII.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailPiiEntityFilter AWS API Documentation
    #
    class GuardrailPiiEntityFilter < Struct.new(
      :type,
      :match,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for the regex filter used in the Guardrail.
    #
    # @!attribute [rw] name
    #   The name details for the regex filter used in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] regex
    #   The regex details for the regex filter used in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] match
    #   The match details for the regex filter used in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action details for the regex filter used in the Guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailRegexFilter AWS API Documentation
    #
    class GuardrailRegexFilter < Struct.new(
      :name,
      :regex,
      :match,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the sensitive policy assessment used in the Guardrail.
    #
    # @!attribute [rw] pii_entities
    #   The details of the PII entities used in the sensitive policy
    #   assessment for the Guardrail.
    #   @return [Array<Types::GuardrailPiiEntityFilter>]
    #
    # @!attribute [rw] regexes
    #   The details of the regexes used in the sensitive policy assessment
    #   for the Guardrail.
    #   @return [Array<Types::GuardrailRegexFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailSensitiveInformationPolicyAssessment AWS API Documentation
    #
    class GuardrailSensitiveInformationPolicyAssessment < Struct.new(
      :pii_entities,
      :regexes)
      SENSITIVE = [:pii_entities, :regexes]
      include Aws::Structure
    end

    # The details for a specific topic defined in the Guardrail.
    #
    # @!attribute [rw] name
    #   The name details on a specific topic in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type details on a specific topic in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action details on a specific topic in the Guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailTopic AWS API Documentation
    #
    class GuardrailTopic < Struct.new(
      :name,
      :type,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the policy assessment used in the Guardrail.
    #
    # @!attribute [rw] topics
    #   The topic details of the policy assessment used in the Guardrail.
    #   @return [Array<Types::GuardrailTopic>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailTopicPolicyAssessment AWS API Documentation
    #
    class GuardrailTopicPolicyAssessment < Struct.new(
      :topics)
      SENSITIVE = [:topics]
      include Aws::Structure
    end

    # The trace details used in the Guardrail.
    #
    # @!attribute [rw] action
    #   The trace action details used with the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] trace_id
    #   The details of the trace Id used in the Guardrail Trace.
    #   @return [String]
    #
    # @!attribute [rw] input_assessments
    #   The details of the input assessments used in the Guardrail Trace.
    #   @return [Array<Types::GuardrailAssessment>]
    #
    # @!attribute [rw] output_assessments
    #   The details of the output assessments used in the Guardrail Trace.
    #   @return [Array<Types::GuardrailAssessment>]
    #
    # @!attribute [rw] metadata
    #   Contains information about the Guardrail output.
    #   @return [Types::Metadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailTrace AWS API Documentation
    #
    class GuardrailTrace < Struct.new(
      :action,
      :trace_id,
      :input_assessments,
      :output_assessments,
      :metadata)
      SENSITIVE = [:input_assessments, :output_assessments, :metadata]
      include Aws::Structure
    end

    # The assessment details for words defined in the Guardrail filter.
    #
    # @!attribute [rw] custom_words
    #   The custom word details for words defined in the Guardrail filter.
    #   @return [Array<Types::GuardrailCustomWord>]
    #
    # @!attribute [rw] managed_word_lists
    #   The managed word lists for words defined in the Guardrail filter.
    #   @return [Array<Types::GuardrailManagedWord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailWordPolicyAssessment AWS API Documentation
    #
    class GuardrailWordPolicyAssessment < Struct.new(
      :custom_words,
      :managed_word_lists)
      SENSITIVE = [:custom_words, :managed_word_lists]
      include Aws::Structure
    end

    # Image content for an invocation step.
    #
    # @!attribute [rw] format
    #   The format of the image.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source for the image.
    #   @return [Types::ImageSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ImageBlock AWS API Documentation
    #
    class ImageBlock < Struct.new(
      :format,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an image in the result from a function in the action
    # group invocation. You can specify images only when the function is a
    # computer use action. For more information, see [Configure an Amazon
    # Bedrock Agent to complete tasks with computer use tools][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agent-computer-use.html
    #
    # @!attribute [rw] format
    #   The type of image in the result.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the image in the result.
    #   @return [Types::ImageInputSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ImageInput AWS API Documentation
    #
    class ImageInput < Struct.new(
      :format,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the source of an input image in the result from a
    # function in the action group invocation.
    #
    # @note ImageInputSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ImageInputSource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ImageInputSource corresponding to the set member.
    #
    # @!attribute [rw] bytes
    #   The raw image bytes for the image. If you use an Amazon Web Services
    #   SDK, you don't need to encode the image bytes in base64.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ImageInputSource AWS API Documentation
    #
    class ImageInputSource < Struct.new(
      :bytes,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Bytes < ImageInputSource; end
      class Unknown < ImageInputSource; end
    end

    # The source for an image.
    #
    # @note ImageSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ImageSource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ImageSource corresponding to the set member.
    #
    # @!attribute [rw] bytes
    #   The raw image bytes for the image. If you use an Amazon Web Services
    #   SDK, you don't need to encode the image bytes in base64.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The path to the Amazon S3 bucket where the image is stored.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ImageSource AWS API Documentation
    #
    class ImageSource < Struct.new(
      :bytes,
      :s3_location,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Bytes < ImageSource; end
      class S3Location < ImageSource; end
      class Unknown < ImageSource; end
    end

    # Settings for implicit filtering, where a model generates a metadata
    # filter based on the prompt.
    #
    # @!attribute [rw] metadata_attributes
    #   Metadata that can be used in a filter.
    #   @return [Array<Types::MetadataAttributeSchema>]
    #
    # @!attribute [rw] model_arn
    #   The model that generates the filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ImplicitFilterConfiguration AWS API Documentation
    #
    class ImplicitFilterConfiguration < Struct.new(
      :metadata_attributes,
      :model_arn)
      SENSITIVE = [:metadata_attributes]
      include Aws::Structure
    end

    # The configuration for inference settings when generating responses
    # using RetrieveAndGenerate.
    #
    # @!attribute [rw] text_inference_config
    #   Configuration settings specific to text generation while generating
    #   responses using RetrieveAndGenerate.
    #   @return [Types::TextInferenceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InferenceConfig AWS API Documentation
    #
    class InferenceConfig < Struct.new(
      :text_inference_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifications about the inference parameters that were provided
    # alongside the prompt. These are specified in the
    # [PromptOverrideConfiguration][1] object that was set when the agent
    # was created or updated. For more information, see [Inference
    # parameters for foundation models][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #
    # @!attribute [rw] temperature
    #   The likelihood of the model selecting higher-probability options
    #   while generating a response. A lower value makes the model more
    #   likely to choose higher-probability options, while a higher value
    #   makes the model more likely to choose lower-probability options.
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   While generating a response, the model determines the probability of
    #   the following token at each point of generation. The value that you
    #   set for `Top P` determines the number of most-likely candidates from
    #   which the model chooses the next token in the sequence. For example,
    #   if you set `topP` to 0.8, the model only selects the next token from
    #   the top 80% of the probability distribution of next tokens.
    #   @return [Float]
    #
    # @!attribute [rw] top_k
    #   While generating a response, the model determines the probability of
    #   the following token at each point of generation. The value that you
    #   set for `topK` is the number of most-likely candidates from which
    #   the model chooses the next token in the sequence. For example, if
    #   you set `topK` to 50, the model selects the next token from among
    #   the top 50 most likely choices.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_length
    #   The maximum number of tokens allowed in the generated response.
    #   @return [Integer]
    #
    # @!attribute [rw] stop_sequences
    #   A list of stop sequences. A stop sequence is a sequence of
    #   characters that causes the model to stop generating the response.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InferenceConfiguration AWS API Documentation
    #
    class InferenceConfiguration < Struct.new(
      :temperature,
      :top_p,
      :top_k,
      :maximum_length,
      :stop_sequences)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains intermediate response for code interpreter if any files have
    # been generated.
    #
    # @!attribute [rw] files
    #   Files containing intermediate response for the user.
    #   @return [Array<Types::OutputFile>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InlineAgentFilePart AWS API Documentation
    #
    class InlineAgentFilePart < Struct.new(
      :files,
      :event_type)
      SENSITIVE = [:files]
      include Aws::Structure
    end

    # Contains a part of an agent response and citations for it.
    #
    # @!attribute [rw] bytes
    #   A part of the agent response in bytes.
    #   @return [String]
    #
    # @!attribute [rw] attribution
    #   Contains citations for a part of an agent response.
    #   @return [Types::Attribution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InlineAgentPayloadPart AWS API Documentation
    #
    class InlineAgentPayloadPart < Struct.new(
      :bytes,
      :attribution,
      :event_type)
      SENSITIVE = [:bytes]
      include Aws::Structure
    end

    # Contains information to return from the action group that the agent
    # has predicted to invoke.
    #
    # This data type is used in the [InvokeAgent response][1] API operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @!attribute [rw] invocation_inputs
    #   A list of objects that contain information about the parameters and
    #   inputs that need to be sent into the API operation or function,
    #   based on what the agent determines from its session with the user.
    #   @return [Array<Types::InvocationInputMember>]
    #
    # @!attribute [rw] invocation_id
    #   The identifier of the action group invocation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InlineAgentReturnControlPayload AWS API Documentation
    #
    class InlineAgentReturnControlPayload < Struct.new(
      :invocation_inputs,
      :invocation_id,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the agent and session, alongside the
    # agent's reasoning process and results from calling API actions and
    # querying knowledge bases and metadata about the trace. You can use the
    # trace to understand how the agent arrived at the response it provided
    # the customer. For more information, see [Trace enablement][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-enablement
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session with the agent.
    #   @return [String]
    #
    # @!attribute [rw] trace
    #   Contains one part of the agent's reasoning process and results from
    #   calling API actions and querying knowledge bases. You can use the
    #   trace to understand how the agent arrived at the response it
    #   provided the customer. For more information, see [Trace
    #   enablement][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-enablement
    #   @return [Types::Trace]
    #
    # @!attribute [rw] caller_chain
    #   The caller chain for the trace part.
    #   @return [Array<Types::Caller>]
    #
    # @!attribute [rw] event_time
    #   The time that trace occurred.
    #   @return [Time]
    #
    # @!attribute [rw] collaborator_name
    #   The collaborator name for the trace part.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InlineAgentTracePart AWS API Documentation
    #
    class InlineAgentTracePart < Struct.new(
      :session_id,
      :trace,
      :caller_chain,
      :event_time,
      :collaborator_name,
      :event_type)
      SENSITIVE = [:trace, :collaborator_name]
      include Aws::Structure
    end

    # Settings for a model called with InvokeInlineAgent.
    #
    # @!attribute [rw] performance_config
    #   The latency configuration for the model.
    #   @return [Types::PerformanceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InlineBedrockModelConfigurations AWS API Documentation
    #
    class InlineBedrockModelConfigurations < Struct.new(
      :performance_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains parameters that specify various attributes that persist
    # across a session or prompt. You can define session state attributes as
    # key-value pairs when writing a [Lambda function][1] for an action
    # group or pass them when making an `InvokeInlineAgent` request. Use
    # session state attributes to control and provide conversational context
    # for your inline agent and to help customize your agent's behavior.
    # For more information, see [Control session context][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-lambda.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html
    #
    # @!attribute [rw] session_attributes
    #   Contains attributes that persist across a session and the values of
    #   those attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] prompt_session_attributes
    #   Contains attributes that persist across a session and the values of
    #   those attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] return_control_invocation_results
    #   Contains information about the results from the action group
    #   invocation. For more information, see [Return control to the agent
    #   developer][1].
    #
    #   <note markdown="1"> If you include this field in the `sessionState` field, the
    #   `inputText` field will be ignored.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-returncontrol.html
    #   @return [Array<Types::InvocationResultMember>]
    #
    # @!attribute [rw] invocation_id
    #   The identifier of the invocation of an action. This value must match
    #   the `invocationId` returned in the `InvokeInlineAgent` response for
    #   the action whose results are provided in the
    #   `returnControlInvocationResults` field. For more information, see
    #   [Return control to the agent developer][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-returncontrol.html
    #   @return [String]
    #
    # @!attribute [rw] files
    #   Contains information about the files used by code interpreter.
    #   @return [Array<Types::InputFile>]
    #
    # @!attribute [rw] conversation_history
    #   Contains the conversation history that persist across sessions.
    #   @return [Types::ConversationHistory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InlineSessionState AWS API Documentation
    #
    class InlineSessionState < Struct.new(
      :session_attributes,
      :prompt_session_attributes,
      :return_control_invocation_results,
      :invocation_id,
      :files,
      :conversation_history)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details of the source files.
    #
    # @!attribute [rw] name
    #   The name of the source file.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Specifies where the files are located.
    #   @return [Types::FileSource]
    #
    # @!attribute [rw] use_case
    #   Specifies how the source files will be used by the code interpreter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InputFile AWS API Documentation
    #
    class InputFile < Struct.new(
      :name,
      :source,
      :use_case)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the prompt to optimize.
    #
    # @note InputPrompt is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] text_prompt
    #   Contains information about the text prompt to optimize.
    #   @return [Types::TextPrompt]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InputPrompt AWS API Documentation
    #
    class InputPrompt < Struct.new(
      :text_prompt,
      :unknown)
      SENSITIVE = [:text_prompt]
      include Aws::Structure
      include Aws::Structure::Union

      class TextPrompt < InputPrompt; end
      class Unknown < InputPrompt; end
    end

    # An internal server error occurred. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception. If the reason is
    #   `BEDROCK_MODEL_INVOCATION_SERVICE_UNAVAILABLE`, the model invocation
    #   service is unavailable. Retry your request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :reason,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information pertaining to the action group or knowledge base
    # that is being invoked.
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @!attribute [rw] invocation_type
    #   Specifies whether the agent is invoking an action group or a
    #   knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] action_group_invocation_input
    #   Contains information about the action group to be invoked.
    #   @return [Types::ActionGroupInvocationInput]
    #
    # @!attribute [rw] knowledge_base_lookup_input
    #   Contains details about the knowledge base to look up and the query
    #   to be made.
    #   @return [Types::KnowledgeBaseLookupInput]
    #
    # @!attribute [rw] code_interpreter_invocation_input
    #   Contains information about the code interpreter to be invoked.
    #   @return [Types::CodeInterpreterInvocationInput]
    #
    # @!attribute [rw] agent_collaborator_invocation_input
    #   The collaborator's invocation input.
    #   @return [Types::AgentCollaboratorInvocationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvocationInput AWS API Documentation
    #
    class InvocationInput < Struct.new(
      :trace_id,
      :invocation_type,
      :action_group_invocation_input,
      :knowledge_base_lookup_input,
      :code_interpreter_invocation_input,
      :agent_collaborator_invocation_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the API operation or function that the agent
    # predicts should be called.
    #
    # This data type is used in the following API operations:
    #
    # * In the `returnControl` field of the [InvokeAgent response][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @note InvocationInputMember is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of InvocationInputMember corresponding to the set member.
    #
    # @!attribute [rw] api_invocation_input
    #   Contains information about the API operation that the agent predicts
    #   should be called.
    #   @return [Types::ApiInvocationInput]
    #
    # @!attribute [rw] function_invocation_input
    #   Contains information about the function that the agent predicts
    #   should be called.
    #   @return [Types::FunctionInvocationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvocationInputMember AWS API Documentation
    #
    class InvocationInputMember < Struct.new(
      :api_invocation_input,
      :function_invocation_input,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ApiInvocationInput < InvocationInputMember; end
      class FunctionInvocationInput < InvocationInputMember; end
      class Unknown < InvocationInputMember; end
    end

    # A result from the invocation of an action. For more information, see
    # [Return control to the agent developer][1] and [Control session
    # context][2].
    #
    # This data type is used in the following API operations:
    #
    # * [InvokeAgent request][3]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-returncontrol.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_RequestSyntax
    #
    # @note InvocationResultMember is a union - when making an API calls you must set exactly one of the members.
    #
    # @note InvocationResultMember is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of InvocationResultMember corresponding to the set member.
    #
    # @!attribute [rw] api_result
    #   The result from the API response from the action group invocation.
    #   @return [Types::ApiResult]
    #
    # @!attribute [rw] function_result
    #   The result from the function from the action group invocation.
    #   @return [Types::FunctionResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvocationResultMember AWS API Documentation
    #
    class InvocationResultMember < Struct.new(
      :api_result,
      :function_result,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ApiResult < InvocationResultMember; end
      class FunctionResult < InvocationResultMember; end
      class Unknown < InvocationResultMember; end
    end

    # Stores fine-grained state checkpoints, including text and images, for
    # each interaction in an invocation in a session. For more information
    # about sessions, see [Store and retrieve conversation history and
    # context with Amazon Bedrock sessions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session containing the invocation step.
    #   @return [String]
    #
    # @!attribute [rw] invocation_id
    #   The unique identifier (in UUID format) for the invocation that
    #   includes the invocation step.
    #   @return [String]
    #
    # @!attribute [rw] invocation_step_id
    #   The unique identifier (in UUID format) for the invocation step.
    #   @return [String]
    #
    # @!attribute [rw] invocation_step_time
    #   The timestamp for when the invocation step was created.
    #   @return [Time]
    #
    # @!attribute [rw] payload
    #   Payload content, such as text and images, for the invocation step.
    #   @return [Types::InvocationStepPayload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvocationStep AWS API Documentation
    #
    class InvocationStep < Struct.new(
      :session_id,
      :invocation_id,
      :invocation_step_id,
      :invocation_step_time,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # Payload content, such as text and images, for the invocation step.
    #
    # @note InvocationStepPayload is a union - when making an API calls you must set exactly one of the members.
    #
    # @note InvocationStepPayload is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of InvocationStepPayload corresponding to the set member.
    #
    # @!attribute [rw] content_blocks
    #   The content for the invocation step.
    #   @return [Array<Types::BedrockSessionContentBlock>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvocationStepPayload AWS API Documentation
    #
    class InvocationStepPayload < Struct.new(
      :content_blocks,
      :unknown)
      SENSITIVE = [:content_blocks]
      include Aws::Structure
      include Aws::Structure::Union

      class ContentBlocks < InvocationStepPayload; end
      class Unknown < InvocationStepPayload; end
    end

    # Contains details about an invocation step within an invocation in a
    # session. For more information about sessions, see [Store and retrieve
    # conversation history and context with Amazon Bedrock sessions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
    #
    # @!attribute [rw] session_id
    #   The unique identifier for the session associated with the invocation
    #   step.
    #   @return [String]
    #
    # @!attribute [rw] invocation_id
    #   A unique identifier for the invocation in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] invocation_step_id
    #   The unique identifier (in UUID format) for the invocation step.
    #   @return [String]
    #
    # @!attribute [rw] invocation_step_time
    #   The timestamp for when the invocation step was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvocationStepSummary AWS API Documentation
    #
    class InvocationStepSummary < Struct.new(
      :session_id,
      :invocation_id,
      :invocation_step_id,
      :invocation_step_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an invocation in a session. For more
    # information about sessions, see [Store and retrieve conversation
    # history and context with Amazon Bedrock sessions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
    #
    # @!attribute [rw] session_id
    #   The unique identifier for the session associated with the
    #   invocation.
    #   @return [String]
    #
    # @!attribute [rw] invocation_id
    #   A unique identifier for the invocation in UUID format.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp for when the invocation was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvocationSummary AWS API Documentation
    #
    class InvocationSummary < Struct.new(
      :session_id,
      :invocation_id,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_state
    #   Contains parameters that specify various attributes of the session.
    #   For more information, see [Control session context][1].
    #
    #   <note markdown="1"> If you include `returnControlInvocationResults` in the
    #   `sessionState` field, the `inputText` field will be ignored.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html
    #   @return [Types::SessionState]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent to use.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   The alias of the agent to use.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session. Use the same value across
    #   requests to continue the same conversation.
    #   @return [String]
    #
    # @!attribute [rw] end_session
    #   Specifies whether to end the session with the agent or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_trace
    #   Specifies whether to turn on the trace or not to track the agent's
    #   reasoning process. For more information, see [Trace enablement][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-events
    #   @return [Boolean]
    #
    # @!attribute [rw] input_text
    #   The prompt text to send the agent.
    #
    #   <note markdown="1"> If you include `returnControlInvocationResults` in the
    #   `sessionState` field, the `inputText` field will be ignored.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] memory_id
    #   The unique identifier of the agent memory.
    #   @return [String]
    #
    # @!attribute [rw] bedrock_model_configurations
    #   Model performance settings for the request.
    #   @return [Types::BedrockModelConfigurations]
    #
    # @!attribute [rw] streaming_configurations
    #   Specifies the configurations for streaming.
    #
    #   <note markdown="1"> To use agent streaming, you need permissions to perform the
    #   `bedrock:InvokeModelWithResponseStream` action.
    #
    #    </note>
    #   @return [Types::StreamingConfigurations]
    #
    # @!attribute [rw] prompt_creation_configurations
    #   Specifies parameters that control how the service populates the
    #   agent prompt for an `InvokeAgent` request. You can control which
    #   aspects of previous invocations in the same agent session the
    #   service uses to populate the agent prompt. This gives you more
    #   granular control over the contextual history that is used to process
    #   the current request.
    #   @return [Types::PromptCreationConfigurations]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the resource making the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeAgentRequest AWS API Documentation
    #
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
      :source_arn)
      SENSITIVE = [:input_text]
      include Aws::Structure
    end

    # @!attribute [rw] completion
    #   The agent's response to the user prompt.
    #   @return [Types::ResponseStream]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in the request. The default value is
    #   `application/json`.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session with the agent.
    #   @return [String]
    #
    # @!attribute [rw] memory_id
    #   The unique identifier of the agent memory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeAgentResponse AWS API Documentation
    #
    class InvokeAgentResponse < Struct.new(
      :completion,
      :content_type,
      :session_id,
      :memory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_alias_identifier
    #   The unique identifier of the flow alias.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   A list of objects, each containing information about an input into
    #   the flow.
    #   @return [Array<Types::FlowInput>]
    #
    # @!attribute [rw] enable_trace
    #   Specifies whether to return the trace for the flow or not. Traces
    #   track inputs and outputs for nodes in the flow. For more
    #   information, see [Track each step in your prompt flow by viewing its
    #   trace in Amazon Bedrock][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html
    #   @return [Boolean]
    #
    # @!attribute [rw] model_performance_configuration
    #   Model performance settings for the request.
    #   @return [Types::ModelPerformanceConfiguration]
    #
    # @!attribute [rw] execution_id
    #   The unique identifier for the current flow execution. If you don't
    #   provide a value, Amazon Bedrock creates the identifier for you.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeFlowRequest AWS API Documentation
    #
    class InvokeFlowRequest < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :inputs,
      :enable_trace,
      :model_performance_configuration,
      :execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] response_stream
    #   The output of the flow, returned as a stream. If there's an error,
    #   the error is returned.
    #   @return [Types::FlowResponseStream]
    #
    # @!attribute [rw] execution_id
    #   The unique identifier for the current flow execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeFlowResponse AWS API Documentation
    #
    class InvokeFlowResponse < Struct.new(
      :response_stream,
      :execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services KMS key to
    #   use to encrypt your inline agent.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   The [model identifier (ID)][1] of the model to use for orchestration
    #   by the inline agent. For example, `meta.llama3-1-70b-instruct-v1:0`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   @return [String]
    #
    # @!attribute [rw] instruction
    #   The instructions that tell the inline agent what it should do and
    #   how it should interact with users.
    #   @return [String]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The number of seconds for which the inline agent should maintain
    #   session information. After this time expires, the subsequent
    #   `InvokeInlineAgent` request begins a new session.
    #
    #   A user interaction remains active for the amount of time specified.
    #   If no conversation occurs during this time, the session expires and
    #   the data provided before the timeout is deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] action_groups
    #   A list of action groups with each action group defining the action
    #   the inline agent needs to carry out.
    #   @return [Array<Types::AgentActionGroup>]
    #
    # @!attribute [rw] knowledge_bases
    #   Contains information of the knowledge bases to associate with.
    #   @return [Array<Types::KnowledgeBase>]
    #
    # @!attribute [rw] guardrail_configuration
    #   The [guardrails][1] to assign to the inline agent.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html
    #   @return [Types::GuardrailConfigurationWithArn]
    #
    # @!attribute [rw] prompt_override_configuration
    #   Configurations for advanced prompts used to override the default
    #   prompts to enhance the accuracy of the inline agent.
    #   @return [Types::PromptOverrideConfiguration]
    #
    # @!attribute [rw] agent_collaboration
    #   Defines how the inline collaborator agent handles information across
    #   multiple collaborator agents to coordinate a final response. The
    #   inline collaborator agent can also be the supervisor.
    #   @return [String]
    #
    # @!attribute [rw] collaborator_configurations
    #   Settings for an inline agent collaborator called with
    #   [InvokeInlineAgent][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeInlineAgent.html
    #   @return [Array<Types::CollaboratorConfiguration>]
    #
    # @!attribute [rw] agent_name
    #   The name for the agent.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session. Use the same value across
    #   requests to continue the same conversation.
    #   @return [String]
    #
    # @!attribute [rw] end_session
    #   Specifies whether to end the session with the inline agent or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_trace
    #   Specifies whether to turn on the trace or not to track the agent's
    #   reasoning process. For more information, see [Using trace][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/trace-events.html
    #   @return [Boolean]
    #
    # @!attribute [rw] input_text
    #   The prompt text to send to the agent.
    #
    #   <note markdown="1"> If you include `returnControlInvocationResults` in the
    #   `sessionState` field, the `inputText` field will be ignored.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] streaming_configurations
    #   Specifies the configurations for streaming.
    #
    #   <note markdown="1"> To use agent streaming, you need permissions to perform the
    #   `bedrock:InvokeModelWithResponseStream` action.
    #
    #    </note>
    #   @return [Types::StreamingConfigurations]
    #
    # @!attribute [rw] prompt_creation_configurations
    #   Specifies parameters that control how the service populates the
    #   agent prompt for an `InvokeInlineAgent` request. You can control
    #   which aspects of previous invocations in the same agent session the
    #   service uses to populate the agent prompt. This gives you more
    #   granular control over the contextual history that is used to process
    #   the current request.
    #   @return [Types::PromptCreationConfigurations]
    #
    # @!attribute [rw] inline_session_state
    #   Parameters that specify the various attributes of a sessions. You
    #   can include attributes for the session or prompt or, if you
    #   configured an action group to return control, results from
    #   invocation of the action group. For more information, see [Control
    #   session context][1].
    #
    #   <note markdown="1"> If you include `returnControlInvocationResults` in the
    #   `sessionState` field, the `inputText` field will be ignored.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html
    #   @return [Types::InlineSessionState]
    #
    # @!attribute [rw] collaborators
    #   List of collaborator inline agents.
    #   @return [Array<Types::Collaborator>]
    #
    # @!attribute [rw] bedrock_model_configurations
    #   Model settings for the request.
    #   @return [Types::InlineBedrockModelConfigurations]
    #
    # @!attribute [rw] orchestration_type
    #   Specifies the type of orchestration strategy for the agent. This is
    #   set to DEFAULT orchestration type, by default.
    #   @return [String]
    #
    # @!attribute [rw] custom_orchestration
    #   Contains details of the custom orchestration configured for the
    #   agent.
    #   @return [Types::CustomOrchestration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeInlineAgentRequest AWS API Documentation
    #
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
      :custom_orchestration)
      SENSITIVE = [:instruction, :prompt_override_configuration, :agent_name, :input_text]
      include Aws::Structure
    end

    # @!attribute [rw] completion
    #   The inline agent's response to the user prompt.
    #   @return [Types::InlineAgentResponseStream]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in the request. The default value is
    #   application/json.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session with the agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeInlineAgentResponse AWS API Documentation
    #
    class InvokeInlineAgentResponse < Struct.new(
      :completion,
      :content_type,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the knowledge base associated withe inline agent.
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier for a knowledge base associated with the
    #   inline agent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the knowledge base associated with the inline
    #   agent.
    #   @return [String]
    #
    # @!attribute [rw] retrieval_configuration
    #   The configurations to apply to the knowledge base during query. For
    #   more information, see [Query configurations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html
    #   @return [Types::KnowledgeBaseRetrievalConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBase AWS API Documentation
    #
    class KnowledgeBase < Struct.new(
      :knowledge_base_id,
      :description,
      :retrieval_configuration)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Configurations to apply to a knowledge base attached to the agent
    # during query. For more information, see [Knowledge base retrieval
    # configurations][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html#session-state-kb
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier for a knowledge base attached to the agent.
    #   @return [String]
    #
    # @!attribute [rw] retrieval_configuration
    #   The configurations to apply to the knowledge base during query. For
    #   more information, see [Query configurations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html
    #   @return [Types::KnowledgeBaseRetrievalConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseConfiguration AWS API Documentation
    #
    class KnowledgeBaseConfiguration < Struct.new(
      :knowledge_base_id,
      :retrieval_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the knowledge base to look up and the query to
    # be made.
    #
    # @!attribute [rw] text
    #   The query made to the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to look up.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseLookupInput AWS API Documentation
    #
    class KnowledgeBaseLookupInput < Struct.new(
      :text,
      :knowledge_base_id)
      SENSITIVE = [:text, :knowledge_base_id]
      include Aws::Structure
    end

    # Contains details about the results from looking up the knowledge base.
    #
    # @!attribute [rw] retrieved_references
    #   Contains metadata about the sources cited for the generated
    #   response.
    #   @return [Array<Types::RetrievedReference>]
    #
    # @!attribute [rw] metadata
    #   Contains information about the knowledge base output.
    #   @return [Types::Metadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseLookupOutput AWS API Documentation
    #
    class KnowledgeBaseLookupOutput < Struct.new(
      :retrieved_references,
      :metadata)
      SENSITIVE = [:metadata]
      include Aws::Structure
    end

    # Contains the query made to the knowledge base.
    #
    # This data type is used in the following API operations:
    #
    # * [Retrieve request][1] – in the `retrievalQuery` field
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_RequestSyntax
    #
    # @!attribute [rw] text
    #   The text of the query made to the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseQuery AWS API Documentation
    #
    class KnowledgeBaseQuery < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for knowledge base query. For more
    # information, see [Query configurations][1].
    #
    # This data type is used in the following API operations:
    #
    # * [Retrieve request][2] – in the `retrievalConfiguration` field
    #
    # * [RetrieveAndGenerate request][3] – in the `retrievalConfiguration`
    #   field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_RequestSyntax
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax
    #
    # @!attribute [rw] vector_search_configuration
    #   Contains details about how the results from the vector search should
    #   be returned. For more information, see [Query configurations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html
    #   @return [Types::KnowledgeBaseVectorSearchConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseRetrievalConfiguration AWS API Documentation
    #
    class KnowledgeBaseRetrievalConfiguration < Struct.new(
      :vector_search_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a result from querying the knowledge base.
    #
    # This data type is used in the following API operations:
    #
    # * [Retrieve response][1] – in the `retrievalResults` field
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax
    #
    # @!attribute [rw] content
    #   Contains information about the content of the chunk.
    #   @return [Types::RetrievalResultContent]
    #
    # @!attribute [rw] location
    #   Contains information about the location of the data source.
    #   @return [Types::RetrievalResultLocation]
    #
    # @!attribute [rw] score
    #   The level of relevance of the result to the query.
    #   @return [Float]
    #
    # @!attribute [rw] metadata
    #   Contains metadata attributes and their values for the file in the
    #   data source. For more information, see [Metadata and filtering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-ds.html#kb-ds-metadata
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseRetrievalResult AWS API Documentation
    #
    class KnowledgeBaseRetrievalResult < Struct.new(
      :content,
      :location,
      :score,
      :metadata)
      SENSITIVE = [:content, :location, :metadata]
      include Aws::Structure
    end

    # Contains details about the resource being queried.
    #
    # This data type is used in the following API operations:
    #
    # * [Retrieve request][1] – in the `knowledgeBaseConfiguration` field
    #
    # * [RetrieveAndGenerate request][2] – in the
    #   `knowledgeBaseConfiguration` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_RequestSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base that is queried.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The ARN of the foundation model or [inference profile][1] used to
    #   generate a response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html
    #   @return [String]
    #
    # @!attribute [rw] retrieval_configuration
    #   Contains configurations for how to retrieve and return the knowledge
    #   base query.
    #   @return [Types::KnowledgeBaseRetrievalConfiguration]
    #
    # @!attribute [rw] generation_configuration
    #   Contains configurations for response generation based on the
    #   knowledge base query results.
    #   @return [Types::GenerationConfiguration]
    #
    # @!attribute [rw] orchestration_configuration
    #   Settings for how the model processes the prompt prior to retrieval
    #   and generation.
    #   @return [Types::OrchestrationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseRetrieveAndGenerateConfiguration AWS API Documentation
    #
    class KnowledgeBaseRetrieveAndGenerateConfiguration < Struct.new(
      :knowledge_base_id,
      :model_arn,
      :retrieval_configuration,
      :generation_configuration,
      :orchestration_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configurations for how to perform the search query and return results.
    # For more information, see [Query configurations][1].
    #
    # This data type is used in the following API operations:
    #
    # * [Retrieve request][2] – in the `vectorSearchConfiguration` field
    #
    # * [RetrieveAndGenerate request][3] – in the
    #   `vectorSearchConfiguration` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_RequestSyntax
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax
    #
    # @!attribute [rw] number_of_results
    #   The number of source chunks to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] override_search_type
    #   By default, Amazon Bedrock decides a search strategy for you. If
    #   you're using an Amazon OpenSearch Serverless vector store that
    #   contains a filterable text field, you can specify whether to query
    #   the knowledge base with a `HYBRID` search using both vector
    #   embeddings and raw text, or `SEMANTIC` search using only vector
    #   embeddings. For other vector store configurations, only `SEMANTIC`
    #   search is available. For more information, see [Test a knowledge
    #   base][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-test.html
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Specifies the filters to use on the metadata in the knowledge base
    #   data sources before returning results. For more information, see
    #   [Query configurations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html
    #   @return [Types::RetrievalFilter]
    #
    # @!attribute [rw] reranking_configuration
    #   Contains configurations for reranking the retrieved results. For
    #   more information, see [Improve the relevance of query responses with
    #   a reranker model][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/rerank.html
    #   @return [Types::VectorSearchRerankingConfiguration]
    #
    # @!attribute [rw] implicit_filter_configuration
    #   Settings for implicit filtering.
    #   @return [Types::ImplicitFilterConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseVectorSearchConfiguration AWS API Documentation
    #
    class KnowledgeBaseVectorSearchConfiguration < Struct.new(
      :number_of_results,
      :override_search_type,
      :filter,
      :reranking_configuration,
      :implicit_filter_configuration)
      SENSITIVE = [:filter]
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_alias_identifier
    #   The unique identifier of the flow alias used for the execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_identifier
    #   The unique identifier of the flow execution.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of events to return in a single response. If more
    #   events exist than the specified maxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results. This value is returned
    #   in the response if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The type of events to retrieve. Specify `Node` for node-level events
    #   or `Flow` for flow-level events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListFlowExecutionEventsRequest AWS API Documentation
    #
    class ListFlowExecutionEventsRequest < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :execution_identifier,
      :max_results,
      :next_token,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_execution_events
    #   A list of events that occurred during the flow execution. Events can
    #   include node inputs and outputs, flow inputs and outputs, condition
    #   results, and failure events.
    #   @return [Array<Types::FlowExecutionEvent>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results. This value is returned
    #   if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListFlowExecutionEventsResponse AWS API Documentation
    #
    class ListFlowExecutionEventsResponse < Struct.new(
      :flow_execution_events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow to list executions for.
    #   @return [String]
    #
    # @!attribute [rw] flow_alias_identifier
    #   The unique identifier of the flow alias to list executions for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of flow executions to return in a single
    #   response. If more executions exist than the specified `maxResults`
    #   value, a token is included in the response so that the remaining
    #   results can be retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results. This value is returned
    #   in the response if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListFlowExecutionsRequest AWS API Documentation
    #
    class ListFlowExecutionsRequest < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_execution_summaries
    #   A list of flow execution summaries. Each summary includes the
    #   execution ARN, flow identifier, flow alias identifier, flow version,
    #   status, and timestamps.
    #   @return [Array<Types::FlowExecutionSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results. This value is returned
    #   if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListFlowExecutionsResponse AWS API Documentation
    #
    class ListFlowExecutionsResponse < Struct.new(
      :flow_execution_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invocation_identifier
    #   The unique identifier (in UUID format) for the invocation to list
    #   invocation steps for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] session_identifier
    #   The unique identifier for the session associated with the invocation
    #   steps. You can specify either the session's `sessionId` or its
    #   Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListInvocationStepsRequest AWS API Documentation
    #
    class ListInvocationStepsRequest < Struct.new(
      :invocation_identifier,
      :next_token,
      :max_results,
      :session_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invocation_step_summaries
    #   A list of summaries for each invocation step associated with a
    #   session and if you specified it, an invocation within the session.
    #   @return [Array<Types::InvocationStepSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListInvocationStepsResponse AWS API Documentation
    #
    class ListInvocationStepsResponse < Struct.new(
      :invocation_step_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] session_identifier
    #   The unique identifier for the session to list invocations for. You
    #   can specify either the session's `sessionId` or its Amazon Resource
    #   Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListInvocationsRequest AWS API Documentation
    #
    class ListInvocationsRequest < Struct.new(
      :next_token,
      :max_results,
      :session_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invocation_summaries
    #   A list of invocation summaries associated with the session.
    #   @return [Array<Types::InvocationSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListInvocationsResponse AWS API Documentation
    #
    class ListInvocationsResponse < Struct.new(
      :invocation_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListSessionsRequest AWS API Documentation
    #
    class ListSessionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_summaries
    #   A list of summaries for each session in your Amazon Web Services
    #   account.
    #   @return [Array<Types::SessionSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListSessionsResponse AWS API Documentation
    #
    class ListSessionsResponse < Struct.new(
      :session_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to list
    #   tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The key-value pairs for the tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains sessions summaries.
    #
    # @note Memory is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Memory corresponding to the set member.
    #
    # @!attribute [rw] session_summary
    #   Contains summary of a session.
    #   @return [Types::MemorySessionSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Memory AWS API Documentation
    #
    class Memory < Struct.new(
      :session_summary,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SessionSummary < Memory; end
      class Unknown < Memory; end
    end

    # Contains details of a session summary.
    #
    # @!attribute [rw] memory_id
    #   The unique identifier of the memory where the session summary is
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier for this session.
    #   @return [String]
    #
    # @!attribute [rw] session_start_time
    #   The start time for this session.
    #   @return [Time]
    #
    # @!attribute [rw] session_expiry_time
    #   The time when the memory duration for the session is set to end.
    #   @return [Time]
    #
    # @!attribute [rw] summary_text
    #   The summarized text for this session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/MemorySessionSummary AWS API Documentation
    #
    class MemorySessionSummary < Struct.new(
      :memory_id,
      :session_id,
      :session_start_time,
      :session_expiry_time,
      :summary_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a message.
    #
    # @!attribute [rw] role
    #   The message's role.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The message's content.
    #   @return [Array<Types::ContentBlock>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Message AWS API Documentation
    #
    class Message < Struct.new(
      :role,
      :content)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # Provides information about the execution process for different types
    # of invocations, such as model invocation, knowledge base invocation,
    # agent collaborator invocation, guardrail invocation, and code
    # interpreter Invocation.
    #
    # @!attribute [rw] start_time
    #   In the final response, `startTime` is the start time of the agent
    #   invocation operation.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   In the final response, `endTime` is the end time of the agent
    #   invocation operation.
    #   @return [Time]
    #
    # @!attribute [rw] total_time_ms
    #   The total execution time for the specific invocation being processed
    #   (model, knowledge base, guardrail, agent collaborator, or code
    #   interpreter). It represents how long the individual invocation took.
    #   @return [Integer]
    #
    # @!attribute [rw] operation_total_time_ms
    #   The total time it took for the agent to complete execution. This
    #   field is only set for the final response.
    #   @return [Integer]
    #
    # @!attribute [rw] client_request_id
    #   A unique identifier associated with the downstream invocation. This
    #   ID can be used for tracing, debugging, and identifying specific
    #   invocations in customer logs or systems.
    #   @return [String]
    #
    # @!attribute [rw] usage
    #   Specific to model invocation and contains details about the usage of
    #   a foundation model.
    #   @return [Types::Usage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Metadata AWS API Documentation
    #
    class Metadata < Struct.new(
      :start_time,
      :end_time,
      :total_time_ms,
      :operation_total_time_ms,
      :client_request_id,
      :usage)
      SENSITIVE = [:usage]
      include Aws::Structure
    end

    # Details about a metadata attribute.
    #
    # @!attribute [rw] key
    #   The attribute's key.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The attribute's type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The attribute's description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/MetadataAttributeSchema AWS API Documentation
    #
    class MetadataAttributeSchema < Struct.new(
      :key,
      :type,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for the metadata to use in reranking.
    #
    # @!attribute [rw] selection_mode
    #   Specifies whether to consider all metadata when reranking, or only
    #   the metadata that you select. If you specify `SELECTIVE`, include
    #   the `selectiveModeConfiguration` field.
    #   @return [String]
    #
    # @!attribute [rw] selective_mode_configuration
    #   Contains configurations for the metadata fields to include or
    #   exclude when considering reranking.
    #   @return [Types::RerankingMetadataSelectiveModeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/MetadataConfigurationForReranking AWS API Documentation
    #
    class MetadataConfigurationForReranking < Struct.new(
      :selection_mode,
      :selective_mode_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the pre-processing step.
    #
    # * The `type` matches the agent step.
    #
    # * The `text` contains the prompt.
    #
    # * The `inferenceConfiguration`, `parserMode`, and `overrideLambda`
    #   values are set in the [PromptOverrideConfiguration][1] object that
    #   was set when the agent was created or updated.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text that prompted the agent at this step.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The step in the agent sequence.
    #   @return [String]
    #
    # @!attribute [rw] override_lambda
    #   The ARN of the Lambda function to use when parsing the raw
    #   foundation model output in parts of the agent sequence.
    #   @return [String]
    #
    # @!attribute [rw] prompt_creation_mode
    #   Specifies whether the default prompt template was `OVERRIDDEN`. If
    #   it was, the `basePromptTemplate` that was set in the
    #   [PromptOverrideConfiguration][1] object when the agent was created
    #   or updated is used instead.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html
    #   @return [String]
    #
    # @!attribute [rw] inference_configuration
    #   Specifications about the inference parameters that were provided
    #   alongside the prompt. These are specified in the
    #   [PromptOverrideConfiguration][1] object that was set when the agent
    #   was created or updated. For more information, see [Inference
    #   parameters for foundation models][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   @return [Types::InferenceConfiguration]
    #
    # @!attribute [rw] parser_mode
    #   Specifies whether to override the default parser Lambda function
    #   when parsing the raw foundation model output in the part of the
    #   agent sequence defined by the `promptType`.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   The identifier of a foundation model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ModelInvocationInput AWS API Documentation
    #
    class ModelInvocationInput < Struct.new(
      :trace_id,
      :text,
      :type,
      :override_lambda,
      :prompt_creation_mode,
      :inference_configuration,
      :parser_mode,
      :foundation_model)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # The model specified in the request is not ready to serve inference
    # requests. The AWS SDK will automatically retry the operation up to 5
    # times. For information about configuring automatic retries, see [Retry
    # behavior][1] in the *AWS SDKs and Tools* reference guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sdkref/latest/guide/feature-retry-behavior.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ModelNotReadyException AWS API Documentation
    #
    class ModelNotReadyException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The performance configuration for a model called with InvokeFlow.
    #
    # @!attribute [rw] performance_config
    #   The latency configuration for the model.
    #   @return [Types::PerformanceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ModelPerformanceConfiguration AWS API Documentation
    #
    class ModelPerformanceConfiguration < Struct.new(
      :performance_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an action (operation) called by a node
    # during execution.
    #
    # @!attribute [rw] node_name
    #   The name of the node that called the operation.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The date and time that the operation was called.
    #   @return [Time]
    #
    # @!attribute [rw] request_id
    #   The ID of the request that the node made to the operation.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service that the node called.
    #   @return [String]
    #
    # @!attribute [rw] operation_name
    #   The name of the operation that the node called.
    #   @return [String]
    #
    # @!attribute [rw] operation_request
    #   The request payload sent to the downstream service.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] operation_response
    #   The response payload received from the downstream service.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/NodeActionEvent AWS API Documentation
    #
    class NodeActionEvent < Struct.new(
      :node_name,
      :timestamp,
      :request_id,
      :service_name,
      :operation_name,
      :operation_request,
      :operation_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an internal trace of a specific node during
    # execution.
    #
    # @!attribute [rw] node_name
    #   The name of the node that generated the dependency trace.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The date and time that the dependency trace was generated.
    #   @return [Time]
    #
    # @!attribute [rw] trace_elements
    #   The trace elements containing detailed information about the node
    #   execution.
    #   @return [Types::NodeTraceElements]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/NodeDependencyEvent AWS API Documentation
    #
    class NodeDependencyEvent < Struct.new(
      :node_name,
      :timestamp,
      :trace_elements)
      SENSITIVE = [:trace_elements]
      include Aws::Structure
    end

    # Contains the content of a flow node's input or output field for a
    # flow execution.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @note NodeExecutionContent is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of NodeExecutionContent corresponding to the set member.
    #
    # @!attribute [rw] document
    #   The document content of the field, which can contain text or
    #   structured data.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/NodeExecutionContent AWS API Documentation
    #
    class NodeExecutionContent < Struct.new(
      :document,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Document < NodeExecutionContent; end
      class Unknown < NodeExecutionContent; end
    end

    # Contains information about a failure that occurred at a specific node
    # during a flow execution.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @!attribute [rw] node_name
    #   The name of the node where the failure occurred.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp when the node failure occurred.
    #   @return [Time]
    #
    # @!attribute [rw] error_code
    #   The error code that identifies the type of failure that occurred at
    #   the node.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A descriptive message that provides details about the node failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/NodeFailureEvent AWS API Documentation
    #
    class NodeFailureEvent < Struct.new(
      :node_name,
      :timestamp,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the inputs provided to a specific node
    # during a flow execution.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @!attribute [rw] node_name
    #   The name of the node that received the inputs.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp when the inputs were provided to the node.
    #   @return [Time]
    #
    # @!attribute [rw] fields
    #   A list of input fields provided to the node.
    #   @return [Array<Types::NodeInputField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/NodeInputEvent AWS API Documentation
    #
    class NodeInputEvent < Struct.new(
      :node_name,
      :timestamp,
      :fields)
      SENSITIVE = [:fields]
      include Aws::Structure
    end

    # Represents an item in the execution chain for node input tracking.
    #
    # @!attribute [rw] node_name
    #   The name of the node in the execution chain.
    #   @return [String]
    #
    # @!attribute [rw] index
    #   The index position of this item in the execution chain.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of execution chain item. Supported values are Iterator and
    #   Loop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/NodeInputExecutionChainItem AWS API Documentation
    #
    class NodeInputExecutionChainItem < Struct.new(
      :node_name,
      :index,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an input field provided to a node during a flow execution.
    #
    # @!attribute [rw] name
    #   The name of the input field as defined in the node's input schema.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the input field, which can contain text or structured
    #   data.
    #   @return [Types::NodeExecutionContent]
    #
    # @!attribute [rw] source
    #   The source node that provides input data to this field.
    #   @return [Types::NodeInputSource]
    #
    # @!attribute [rw] type
    #   The data type of the input field for compatibility validation.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the input field.
    #   @return [String]
    #
    # @!attribute [rw] execution_chain
    #   The execution path through nested nodes like iterators and loops.
    #   @return [Array<Types::NodeInputExecutionChainItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/NodeInputField AWS API Documentation
    #
    class NodeInputField < Struct.new(
      :name,
      :content,
      :source,
      :type,
      :category,
      :execution_chain)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # Represents the source of input data for a node field.
    #
    # @!attribute [rw] node_name
    #   The name of the source node that provides the input data.
    #   @return [String]
    #
    # @!attribute [rw] output_field_name
    #   The name of the output field from the source node.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The expression used to extract data from the source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/NodeInputSource AWS API Documentation
    #
    class NodeInputSource < Struct.new(
      :node_name,
      :output_field_name,
      :expression)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # Contains information about the outputs produced by a specific node
    # during a flow execution.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @!attribute [rw] node_name
    #   The name of the node that produced the outputs.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp when the outputs were produced by the node.
    #   @return [Time]
    #
    # @!attribute [rw] fields
    #   A list of output fields produced by the node.
    #   @return [Array<Types::NodeOutputField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/NodeOutputEvent AWS API Documentation
    #
    class NodeOutputEvent < Struct.new(
      :node_name,
      :timestamp,
      :fields)
      SENSITIVE = [:fields]
      include Aws::Structure
    end

    # Represents an output field produced by a node during a flow execution.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @!attribute [rw] name
    #   The name of the output field as defined in the node's output
    #   schema.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the output field, which can contain text or
    #   structured data.
    #   @return [Types::NodeExecutionContent]
    #
    # @!attribute [rw] next
    #   The next node that receives output data from this field.
    #   @return [Array<Types::NodeOutputNext>]
    #
    # @!attribute [rw] type
    #   The data type of the output field for compatibility validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/NodeOutputField AWS API Documentation
    #
    class NodeOutputField < Struct.new(
      :name,
      :content,
      :next,
      :type)
      SENSITIVE = [:content, :next]
      include Aws::Structure
    end

    # Represents the next node that receives output data.
    #
    # @!attribute [rw] node_name
    #   The name of the next node that receives the output data.
    #   @return [String]
    #
    # @!attribute [rw] input_field_name
    #   The name of the input field in the next node that receives the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/NodeOutputNext AWS API Documentation
    #
    class NodeOutputNext < Struct.new(
      :node_name,
      :input_field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains trace elements for node execution tracking.
    #
    # @note NodeTraceElements is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of NodeTraceElements corresponding to the set member.
    #
    # @!attribute [rw] agent_traces
    #   Agent trace information for the node execution.
    #   @return [Array<Types::TracePart>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/NodeTraceElements AWS API Documentation
    #
    class NodeTraceElements < Struct.new(
      :agent_traces,
      :unknown)
      SENSITIVE = [:agent_traces]
      include Aws::Structure
      include Aws::Structure::Union

      class AgentTraces < NodeTraceElements; end
      class Unknown < NodeTraceElements; end
    end

    # Contains the result or output of an action group or knowledge base, or
    # the response to the user.
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies what kind of information the agent returns in the
    #   observation. The following values are possible.
    #
    #   * `ACTION_GROUP` – The agent returns the result of an action group.
    #
    #   * `KNOWLEDGE_BASE` – The agent returns information from a knowledge
    #     base.
    #
    #   * `FINISH` – The agent returns a final response to the user with no
    #     follow-up.
    #
    #   * `ASK_USER` – The agent asks the user a question.
    #
    #   * `REPROMPT` – The agent prompts the user again for the same
    #     information.
    #   @return [String]
    #
    # @!attribute [rw] action_group_invocation_output
    #   Contains the JSON-formatted string returned by the API invoked by
    #   the action group.
    #   @return [Types::ActionGroupInvocationOutput]
    #
    # @!attribute [rw] agent_collaborator_invocation_output
    #   A collaborator's invocation output.
    #   @return [Types::AgentCollaboratorInvocationOutput]
    #
    # @!attribute [rw] knowledge_base_lookup_output
    #   Contains details about the results from looking up the knowledge
    #   base.
    #   @return [Types::KnowledgeBaseLookupOutput]
    #
    # @!attribute [rw] final_response
    #   Contains details about the response to the user.
    #   @return [Types::FinalResponse]
    #
    # @!attribute [rw] reprompt_response
    #   Contains details about the response to reprompt the input.
    #   @return [Types::RepromptResponse]
    #
    # @!attribute [rw] code_interpreter_invocation_output
    #   Contains the JSON-formatted string returned by the API invoked by
    #   the code interpreter.
    #   @return [Types::CodeInterpreterInvocationOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Observation AWS API Documentation
    #
    class Observation < Struct.new(
      :trace_id,
      :type,
      :action_group_invocation_output,
      :agent_collaborator_invocation_output,
      :knowledge_base_lookup_output,
      :final_response,
      :reprompt_response,
      :code_interpreter_invocation_output)
      SENSITIVE = [:reprompt_response]
      include Aws::Structure
    end

    # @!attribute [rw] input
    #   Contains the prompt to optimize.
    #   @return [Types::InputPrompt]
    #
    # @!attribute [rw] target_model_id
    #   The unique identifier of the model that you want to optimize the
    #   prompt for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OptimizePromptRequest AWS API Documentation
    #
    class OptimizePromptRequest < Struct.new(
      :input,
      :target_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] optimized_prompt
    #   The prompt after being optimized for the task.
    #   @return [Types::OptimizedPromptStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OptimizePromptResponse AWS API Documentation
    #
    class OptimizePromptResponse < Struct.new(
      :optimized_prompt)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the optimized prompt.
    #
    # @note OptimizedPrompt is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OptimizedPrompt corresponding to the set member.
    #
    # @!attribute [rw] text_prompt
    #   Contains information about the text in the prompt that was
    #   optimized.
    #   @return [Types::TextPrompt]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OptimizedPrompt AWS API Documentation
    #
    class OptimizedPrompt < Struct.new(
      :text_prompt,
      :unknown)
      SENSITIVE = [:text_prompt]
      include Aws::Structure
      include Aws::Structure::Union

      class TextPrompt < OptimizedPrompt; end
      class Unknown < OptimizedPrompt; end
    end

    # An event in which the prompt was optimized.
    #
    # @!attribute [rw] optimized_prompt
    #   Contains information about the optimized prompt.
    #   @return [Types::OptimizedPrompt]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OptimizedPromptEvent AWS API Documentation
    #
    class OptimizedPromptEvent < Struct.new(
      :optimized_prompt,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for how the model processes the prompt prior to retrieval and
    # generation.
    #
    # @!attribute [rw] prompt_template
    #   Contains the template for the prompt that's sent to the model.
    #   Orchestration prompts must include the `$conversation_history$` and
    #   `$output_format_instructions$` variables. For more information, see
    #   [Use placeholder variables][1] in the user guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html
    #   @return [Types::PromptTemplate]
    #
    # @!attribute [rw] inference_config
    #   Configuration settings for inference when using RetrieveAndGenerate
    #   to generate responses while using a knowledge base as a source.
    #   @return [Types::InferenceConfig]
    #
    # @!attribute [rw] additional_model_request_fields
    #   Additional model parameters and corresponding values not included in
    #   the textInferenceConfig structure for a knowledge base. This allows
    #   users to provide custom model parameters specific to the language
    #   model being used.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] query_transformation_configuration
    #   To split up the prompt and retrieve multiple sources, set the
    #   transformation type to `QUERY_DECOMPOSITION`.
    #   @return [Types::QueryTransformationConfiguration]
    #
    # @!attribute [rw] performance_config
    #   The latency configuration for the model.
    #   @return [Types::PerformanceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OrchestrationConfiguration AWS API Documentation
    #
    class OrchestrationConfiguration < Struct.new(
      :prompt_template,
      :inference_config,
      :additional_model_request_fields,
      :query_transformation_configuration,
      :performance_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure of the executor invoking the actions in custom
    # orchestration.
    #
    # @note OrchestrationExecutor is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] lambda
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OrchestrationExecutor AWS API Documentation
    #
    class OrchestrationExecutor < Struct.new(
      :lambda,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Lambda < OrchestrationExecutor; end
      class Unknown < OrchestrationExecutor; end
    end

    # The foundation model output from the orchestration step.
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @!attribute [rw] raw_response
    #   Contains details of the raw response from the foundation model
    #   output.
    #   @return [Types::RawResponse]
    #
    # @!attribute [rw] metadata
    #   Contains information about the foundation model output from the
    #   orchestration step.
    #   @return [Types::Metadata]
    #
    # @!attribute [rw] reasoning_content
    #   Contains content about the reasoning that the model made during the
    #   orchestration step.
    #   @return [Types::ReasoningContentBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OrchestrationModelInvocationOutput AWS API Documentation
    #
    class OrchestrationModelInvocationOutput < Struct.new(
      :trace_id,
      :raw_response,
      :metadata,
      :reasoning_content)
      SENSITIVE = [:raw_response, :metadata, :reasoning_content]
      include Aws::Structure
    end

    # Details about the orchestration step, in which the agent determines
    # the order in which actions are executed and which knowledge bases are
    # retrieved.
    #
    # @note OrchestrationTrace is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OrchestrationTrace corresponding to the set member.
    #
    # @!attribute [rw] rationale
    #   Details about the reasoning, based on the input, that the agent uses
    #   to justify carrying out an action group or getting information from
    #   a knowledge base.
    #   @return [Types::Rationale]
    #
    # @!attribute [rw] invocation_input
    #   Contains information pertaining to the action group or knowledge
    #   base that is being invoked.
    #   @return [Types::InvocationInput]
    #
    # @!attribute [rw] observation
    #   Details about the observation (the output of the action group Lambda
    #   or knowledge base) made by the agent.
    #   @return [Types::Observation]
    #
    # @!attribute [rw] model_invocation_input
    #   The input for the orchestration step.
    #
    #   * The `type` is `ORCHESTRATION`.
    #
    #   * The `text` contains the prompt.
    #
    #   * The `inferenceConfiguration`, `parserMode`, and `overrideLambda`
    #     values are set in the [PromptOverrideConfiguration][1] object that
    #     was set when the agent was created or updated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html
    #   @return [Types::ModelInvocationInput]
    #
    # @!attribute [rw] model_invocation_output
    #   Contains information pertaining to the output from the foundation
    #   model that is being invoked.
    #   @return [Types::OrchestrationModelInvocationOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OrchestrationTrace AWS API Documentation
    #
    class OrchestrationTrace < Struct.new(
      :rationale,
      :invocation_input,
      :observation,
      :model_invocation_input,
      :model_invocation_output,
      :unknown)
      SENSITIVE = [:rationale, :invocation_input, :observation, :model_invocation_input, :model_invocation_output]
      include Aws::Structure
      include Aws::Structure::Union

      class Rationale < OrchestrationTrace; end
      class InvocationInput < OrchestrationTrace; end
      class Observation < OrchestrationTrace; end
      class ModelInvocationInput < OrchestrationTrace; end
      class ModelInvocationOutput < OrchestrationTrace; end
      class Unknown < OrchestrationTrace; end
    end

    # Contains details of the response from code interpreter.
    #
    # @!attribute [rw] name
    #   The name of the file containing response from code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of file that contains response from the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] bytes
    #   The byte count of files that contains response from code
    #   interpreter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OutputFile AWS API Documentation
    #
    class OutputFile < Struct.new(
      :name,
      :type,
      :bytes)
      SENSITIVE = [:bytes]
      include Aws::Structure
    end

    # A parameter for the API request or function.
    #
    # @!attribute [rw] name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Parameter AWS API Documentation
    #
    class Parameter < Struct.new(
      :name,
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a parameter in a function for an action group.
    #
    # @!attribute [rw] description
    #   A description of the parameter. Helps the foundation model determine
    #   how to elicit the parameters from the user.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   Whether the parameter is required for the agent to complete the
    #   function for action group invocation.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ParameterDetail AWS API Documentation
    #
    class ParameterDetail < Struct.new(
      :description,
      :type,
      :required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a part of an agent response and citations for it.
    #
    # @!attribute [rw] bytes
    #   A part of the agent response in bytes.
    #   @return [String]
    #
    # @!attribute [rw] attribution
    #   Contains citations for a part of an agent response.
    #   @return [Types::Attribution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PayloadPart AWS API Documentation
    #
    class PayloadPart < Struct.new(
      :bytes,
      :attribution,
      :event_type)
      SENSITIVE = [:bytes]
      include Aws::Structure
    end

    # Performance settings for a model.
    #
    # @!attribute [rw] latency
    #   To use a latency-optimized version of the model, set to `optimized`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PerformanceConfiguration AWS API Documentation
    #
    class PerformanceConfiguration < Struct.new(
      :latency)
      SENSITIVE = []
      include Aws::Structure
    end

    # The foundation model output from the post-processing step.
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @!attribute [rw] parsed_response
    #   Details about the response from the Lambda parsing of the output of
    #   the post-processing step.
    #   @return [Types::PostProcessingParsedResponse]
    #
    # @!attribute [rw] raw_response
    #   Details of the raw response from the foundation model output.
    #   @return [Types::RawResponse]
    #
    # @!attribute [rw] metadata
    #   Contains information about the foundation model output from the
    #   post-processing step.
    #   @return [Types::Metadata]
    #
    # @!attribute [rw] reasoning_content
    #   Contains content about the reasoning that the model made during the
    #   post-processing step.
    #   @return [Types::ReasoningContentBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PostProcessingModelInvocationOutput AWS API Documentation
    #
    class PostProcessingModelInvocationOutput < Struct.new(
      :trace_id,
      :parsed_response,
      :raw_response,
      :metadata,
      :reasoning_content)
      SENSITIVE = [:parsed_response, :raw_response, :metadata, :reasoning_content]
      include Aws::Structure
    end

    # Details about the response from the Lambda parsing of the output from
    # the post-processing step.
    #
    # @!attribute [rw] text
    #   The text returned by the parser.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PostProcessingParsedResponse AWS API Documentation
    #
    class PostProcessingParsedResponse < Struct.new(
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # Details about the post-processing step, in which the agent shapes the
    # response.
    #
    # @note PostProcessingTrace is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PostProcessingTrace corresponding to the set member.
    #
    # @!attribute [rw] model_invocation_input
    #   The input for the post-processing step.
    #
    #   * The `type` is `POST_PROCESSING`.
    #
    #   * The `text` contains the prompt.
    #
    #   * The `inferenceConfiguration`, `parserMode`, and `overrideLambda`
    #     values are set in the [PromptOverrideConfiguration][1] object that
    #     was set when the agent was created or updated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html
    #   @return [Types::ModelInvocationInput]
    #
    # @!attribute [rw] model_invocation_output
    #   The foundation model output from the post-processing step.
    #   @return [Types::PostProcessingModelInvocationOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PostProcessingTrace AWS API Documentation
    #
    class PostProcessingTrace < Struct.new(
      :model_invocation_input,
      :model_invocation_output,
      :unknown)
      SENSITIVE = [:model_invocation_input, :model_invocation_output]
      include Aws::Structure
      include Aws::Structure::Union

      class ModelInvocationInput < PostProcessingTrace; end
      class ModelInvocationOutput < PostProcessingTrace; end
      class Unknown < PostProcessingTrace; end
    end

    # The foundation model output from the pre-processing step.
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @!attribute [rw] parsed_response
    #   Details about the response from the Lambda parsing of the output of
    #   the pre-processing step.
    #   @return [Types::PreProcessingParsedResponse]
    #
    # @!attribute [rw] raw_response
    #   Details of the raw response from the foundation model output.
    #   @return [Types::RawResponse]
    #
    # @!attribute [rw] metadata
    #   Contains information about the foundation model output from the
    #   pre-processing step.
    #   @return [Types::Metadata]
    #
    # @!attribute [rw] reasoning_content
    #   Contains content about the reasoning that the model made during the
    #   pre-processing step.
    #   @return [Types::ReasoningContentBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PreProcessingModelInvocationOutput AWS API Documentation
    #
    class PreProcessingModelInvocationOutput < Struct.new(
      :trace_id,
      :parsed_response,
      :raw_response,
      :metadata,
      :reasoning_content)
      SENSITIVE = [:parsed_response, :raw_response, :metadata, :reasoning_content]
      include Aws::Structure
    end

    # Details about the response from the Lambda parsing of the output from
    # the pre-processing step.
    #
    # @!attribute [rw] rationale
    #   The text returned by the parsing of the pre-processing step,
    #   explaining the steps that the agent plans to take in orchestration,
    #   if the user input is valid.
    #   @return [String]
    #
    # @!attribute [rw] is_valid
    #   Whether the user input is valid or not. If `false`, the agent
    #   doesn't proceed to orchestration.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PreProcessingParsedResponse AWS API Documentation
    #
    class PreProcessingParsedResponse < Struct.new(
      :rationale,
      :is_valid)
      SENSITIVE = [:rationale]
      include Aws::Structure
    end

    # Details about the pre-processing step, in which the agent
    # contextualizes and categorizes user inputs.
    #
    # @note PreProcessingTrace is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PreProcessingTrace corresponding to the set member.
    #
    # @!attribute [rw] model_invocation_input
    #   The input for the pre-processing step.
    #
    #   * The `type` is `PRE_PROCESSING`.
    #
    #   * The `text` contains the prompt.
    #
    #   * The `inferenceConfiguration`, `parserMode`, and `overrideLambda`
    #     values are set in the [PromptOverrideConfiguration][1] object that
    #     was set when the agent was created or updated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html
    #   @return [Types::ModelInvocationInput]
    #
    # @!attribute [rw] model_invocation_output
    #   The foundation model output from the pre-processing step.
    #   @return [Types::PreProcessingModelInvocationOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PreProcessingTrace AWS API Documentation
    #
    class PreProcessingTrace < Struct.new(
      :model_invocation_input,
      :model_invocation_output,
      :unknown)
      SENSITIVE = [:model_invocation_input, :model_invocation_output]
      include Aws::Structure
      include Aws::Structure::Union

      class ModelInvocationInput < PreProcessingTrace; end
      class ModelInvocationOutput < PreProcessingTrace; end
      class Unknown < PreProcessingTrace; end
    end

    # Contains configurations to override a prompt template in one part of
    # an agent sequence. For more information, see [Advanced prompts][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #
    # @!attribute [rw] prompt_type
    #   The step in the agent sequence that this prompt configuration
    #   applies to.
    #   @return [String]
    #
    # @!attribute [rw] prompt_creation_mode
    #   Specifies whether to override the default prompt template for this
    #   `promptType`. Set this value to `OVERRIDDEN` to use the prompt that
    #   you provide in the `basePromptTemplate`. If you leave it as
    #   `DEFAULT`, the agent uses a default prompt template.
    #   @return [String]
    #
    # @!attribute [rw] prompt_state
    #   Specifies whether to allow the inline agent to carry out the step
    #   specified in the `promptType`. If you set this value to `DISABLED`,
    #   the agent skips that step. The default state for each `promptType`
    #   is as follows.
    #
    #   * `PRE_PROCESSING` – `ENABLED`
    #
    #   * `ORCHESTRATION` – `ENABLED`
    #
    #   * `KNOWLEDGE_BASE_RESPONSE_GENERATION` – `ENABLED`
    #
    #   * `POST_PROCESSING` – `DISABLED`
    #   @return [String]
    #
    # @!attribute [rw] base_prompt_template
    #   Defines the prompt template with which to replace the default prompt
    #   template. You can use placeholder variables in the base prompt
    #   template to customize the prompt. For more information, see [Prompt
    #   template placeholder variables][1]. For more information, see
    #   [Configure the prompt templates][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts-configure.html
    #   @return [String]
    #
    # @!attribute [rw] inference_configuration
    #   Contains inference parameters to use when the agent invokes a
    #   foundation model in the part of the agent sequence defined by the
    #   `promptType`. For more information, see [Inference parameters for
    #   foundation models][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   @return [Types::InferenceConfiguration]
    #
    # @!attribute [rw] parser_mode
    #   Specifies whether to override the default parser Lambda function
    #   when parsing the raw foundation model output in the part of the
    #   agent sequence defined by the `promptType`. If you set the field as
    #   `OVERRIDDEN`, the `overrideLambda` field in the
    #   [PromptOverrideConfiguration][1] must be specified with the ARN of a
    #   Lambda function.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   The foundation model to use.
    #   @return [String]
    #
    # @!attribute [rw] additional_model_request_fields
    #   If the Converse or ConverseStream operations support the model,
    #   `additionalModelRequestFields` contains additional inference
    #   parameters, beyond the base set of inference parameters in the
    #   `inferenceConfiguration` field.
    #
    #   For more information, see *Inference request parameters and response
    #   fields for foundation models* in the Amazon Bedrock user guide.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PromptConfiguration AWS API Documentation
    #
    class PromptConfiguration < Struct.new(
      :prompt_type,
      :prompt_creation_mode,
      :prompt_state,
      :base_prompt_template,
      :inference_configuration,
      :parser_mode,
      :foundation_model,
      :additional_model_request_fields)
      SENSITIVE = [:base_prompt_template]
      include Aws::Structure
    end

    # Specifies parameters that control how the service populates the agent
    # prompt for an `InvokeAgent` or `InvokeInlineAgent` request. You can
    # control which aspects of previous invocations in the same agent
    # session the service uses to populate the agent prompt. This gives you
    # more granular control over the contextual history that is used to
    # process the current request.
    #
    # @!attribute [rw] previous_conversation_turns_to_include
    #   The number of previous conversations from the ongoing agent session
    #   to include in the conversation history of the agent prompt, during
    #   the current invocation. This gives you more granular control over
    #   the context that the model is made aware of, and helps the model
    #   remove older context which is no longer useful during the ongoing
    #   agent session.
    #   @return [Integer]
    #
    # @!attribute [rw] exclude_previous_thinking_steps
    #   If `true`, the service removes any content between `<thinking>` tags
    #   from previous conversations in an agent session. The service will
    #   only remove content from already processed turns. This helps you
    #   remove content which might not be useful for current and subsequent
    #   invocations. This can reduce the input token count and potentially
    #   save costs. The default value is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PromptCreationConfigurations AWS API Documentation
    #
    class PromptCreationConfigurations < Struct.new(
      :previous_conversation_turns_to_include,
      :exclude_previous_thinking_steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations to override prompts in different parts of an
    # agent sequence. For more information, see [Advanced prompts][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #
    # @!attribute [rw] prompt_configurations
    #   Contains configurations to override a prompt template in one part of
    #   an agent sequence. For more information, see [Advanced prompts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #   @return [Array<Types::PromptConfiguration>]
    #
    # @!attribute [rw] override_lambda
    #   The ARN of the Lambda function to use when parsing the raw
    #   foundation model output in parts of the agent sequence. If you
    #   specify this field, at least one of the `promptConfigurations` must
    #   contain a `parserMode` value that is set to `OVERRIDDEN`. For more
    #   information, see [Parser Lambda function in Amazon Bedrock
    #   Agents][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/lambda-parser.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PromptOverrideConfiguration AWS API Documentation
    #
    class PromptOverrideConfiguration < Struct.new(
      :prompt_configurations,
      :override_lambda)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the template for the prompt that's sent to the model for
    # response generation. For more information, see [Knowledge base prompt
    # templates][1].
    #
    # This data type is used in the following API operations:
    #
    # * [RetrieveAndGenerate request][2] – in the `filter` field
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html#kb-test-config-sysprompt
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax
    #
    # @!attribute [rw] text_prompt_template
    #   The template for the prompt that's sent to the model for response
    #   generation. You can include prompt placeholders, which become
    #   replaced before the prompt is sent to the model to provide
    #   instructions and context to the model. In addition, you can include
    #   XML tags to delineate meaningful sections of the prompt template.
    #
    #   For more information, see the following resources:
    #
    #   * [Knowledge base prompt templates][1]
    #
    #   * [Use XML tags with Anthropic Claude models][2]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html#kb-test-config-sysprompt
    #   [2]: https://docs.anthropic.com/claude/docs/use-xml-tags
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PromptTemplate AWS API Documentation
    #
    class PromptTemplate < Struct.new(
      :text_prompt_template)
      SENSITIVE = [:text_prompt_template]
      include Aws::Structure
    end

    # Contains the parameters in the request body.
    #
    # @!attribute [rw] properties
    #   A list of parameters in the request body.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PropertyParameters AWS API Documentation
    #
    class PropertyParameters < Struct.new(
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_identifier
    #   The unique identifier for the session to add the invocation step to.
    #   You can specify either the session's `sessionId` or its Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] invocation_identifier
    #   The unique identifier (in UUID format) of the invocation to add the
    #   invocation step to.
    #   @return [String]
    #
    # @!attribute [rw] invocation_step_time
    #   The timestamp for when the invocation step occurred.
    #   @return [Time]
    #
    # @!attribute [rw] payload
    #   The payload for the invocation step, including text and images for
    #   the interaction.
    #   @return [Types::InvocationStepPayload]
    #
    # @!attribute [rw] invocation_step_id
    #   The unique identifier of the invocation step in UUID format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PutInvocationStepRequest AWS API Documentation
    #
    class PutInvocationStepRequest < Struct.new(
      :session_identifier,
      :invocation_identifier,
      :invocation_step_time,
      :payload,
      :invocation_step_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invocation_step_id
    #   The unique identifier of the invocation step in UUID format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PutInvocationStepResponse AWS API Documentation
    #
    class PutInvocationStepResponse < Struct.new(
      :invocation_step_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a natural language query to transform into
    # SQL.
    #
    # @!attribute [rw] type
    #   The type of the query.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text of the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/QueryGenerationInput AWS API Documentation
    #
    class QueryGenerationInput < Struct.new(
      :type,
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # To split up the prompt and retrieve multiple sources, set the
    # transformation type to `QUERY_DECOMPOSITION`.
    #
    # @!attribute [rw] type
    #   The type of transformation to apply to the prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/QueryTransformationConfiguration AWS API Documentation
    #
    class QueryTransformationConfiguration < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the reasoning, based on the input, that the agent uses to
    # justify carrying out an action group or getting information from a
    # knowledge base.
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace step.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The reasoning or thought process of the agent, based on the input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Rationale AWS API Documentation
    #
    class Rationale < Struct.new(
      :trace_id,
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # Contains the raw output from the foundation model.
    #
    # @!attribute [rw] content
    #   The foundation model's raw output content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RawResponse AWS API Documentation
    #
    class RawResponse < Struct.new(
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains content regarding the reasoning that the foundation model
    # made with respect to the content in the content block. Reasoning
    # refers to a Chain of Thought (CoT) that the model generates to enhance
    # the accuracy of its final response.
    #
    # @note ReasoningContentBlock is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ReasoningContentBlock corresponding to the set member.
    #
    # @!attribute [rw] reasoning_text
    #   Contains information about the reasoning that the model used to
    #   return the content in the content block.
    #   @return [Types::ReasoningTextBlock]
    #
    # @!attribute [rw] redacted_content
    #   The content in the reasoning that was encrypted by the model
    #   provider for trust and safety reasons.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ReasoningContentBlock AWS API Documentation
    #
    class ReasoningContentBlock < Struct.new(
      :reasoning_text,
      :redacted_content,
      :unknown)
      SENSITIVE = [:reasoning_text]
      include Aws::Structure
      include Aws::Structure::Union

      class ReasoningText < ReasoningContentBlock; end
      class RedactedContent < ReasoningContentBlock; end
      class Unknown < ReasoningContentBlock; end
    end

    # Contains information about the reasoning that the model used to return
    # the content in the content block.
    #
    # @!attribute [rw] text
    #   Text describing the reasoning that the model used to return the
    #   content in the content block.
    #   @return [String]
    #
    # @!attribute [rw] signature
    #   A hash of all the messages in the conversation to ensure that the
    #   content in the reasoning text block isn't tampered with. You must
    #   submit the signature in subsequent `Converse` requests, in addition
    #   to the previous messages. If the previous messages are tampered
    #   with, the response throws an error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ReasoningTextBlock AWS API Documentation
    #
    class ReasoningTextBlock < Struct.new(
      :text,
      :signature)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the agent's response to reprompt the input.
    #
    # @!attribute [rw] text
    #   The text reprompting the input.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Specifies what output is prompting the agent to reprompt the input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RepromptResponse AWS API Documentation
    #
    class RepromptResponse < Struct.new(
      :text,
      :source)
      SENSITIVE = [:source]
      include Aws::Structure
    end

    # The parameters in the API request body.
    #
    # @!attribute [rw] content
    #   The content in the request body.
    #   @return [Hash<String,Array<Types::Parameter>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RequestBody AWS API Documentation
    #
    class RequestBody < Struct.new(
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a document to rerank. Choose the `type` to
    # define and include the field that corresponds to the type.
    #
    # @!attribute [rw] type
    #   The type of document to rerank.
    #   @return [String]
    #
    # @!attribute [rw] text_document
    #   Contains information about a text document to rerank.
    #   @return [Types::RerankTextDocument]
    #
    # @!attribute [rw] json_document
    #   Contains a JSON document to rerank.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RerankDocument AWS API Documentation
    #
    class RerankDocument < Struct.new(
      :type,
      :text_document,
      :json_document)
      SENSITIVE = [:text_document]
      include Aws::Structure
    end

    # Contains information about a query to submit to the reranker model.
    #
    # @!attribute [rw] type
    #   The type of the query.
    #   @return [String]
    #
    # @!attribute [rw] text_query
    #   Contains information about a text query.
    #   @return [Types::RerankTextDocument]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RerankQuery AWS API Documentation
    #
    class RerankQuery < Struct.new(
      :type,
      :text_query)
      SENSITIVE = [:text_query]
      include Aws::Structure
    end

    # @!attribute [rw] queries
    #   An array of objects, each of which contains information about a
    #   query to submit to the reranker model.
    #   @return [Array<Types::RerankQuery>]
    #
    # @!attribute [rw] sources
    #   An array of objects, each of which contains information about the
    #   sources to rerank.
    #   @return [Array<Types::RerankSource>]
    #
    # @!attribute [rw] reranking_configuration
    #   Contains configurations for reranking.
    #   @return [Types::RerankingConfiguration]
    #
    # @!attribute [rw] next_token
    #   If the total number of results was greater than could fit in a
    #   response, a token is returned in the `nextToken` field. You can
    #   enter that token in this field to return the next batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RerankRequest AWS API Documentation
    #
    class RerankRequest < Struct.new(
      :queries,
      :sources,
      :reranking_configuration,
      :next_token)
      SENSITIVE = [:queries, :sources]
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   An array of objects, each of which contains information about the
    #   results of reranking.
    #   @return [Array<Types::RerankResult>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than can fit in the
    #   response, use this token in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RerankResponse AWS API Documentation
    #
    class RerankResponse < Struct.new(
      :results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a document that was reranked.
    #
    # @!attribute [rw] index
    #   The ranking of the document. The lower a number, the higher the
    #   document is ranked.
    #   @return [Integer]
    #
    # @!attribute [rw] relevance_score
    #   The relevance score of the document.
    #   @return [Float]
    #
    # @!attribute [rw] document
    #   Contains information about the document.
    #   @return [Types::RerankDocument]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RerankResult AWS API Documentation
    #
    class RerankResult < Struct.new(
      :index,
      :relevance_score,
      :document)
      SENSITIVE = [:document]
      include Aws::Structure
    end

    # Contains information about a source for reranking.
    #
    # @!attribute [rw] type
    #   The type of the source.
    #   @return [String]
    #
    # @!attribute [rw] inline_document_source
    #   Contains an inline definition of a source for reranking.
    #   @return [Types::RerankDocument]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RerankSource AWS API Documentation
    #
    class RerankSource < Struct.new(
      :type,
      :inline_document_source)
      SENSITIVE = [:inline_document_source]
      include Aws::Structure
    end

    # Contains information about a text document to rerank.
    #
    # @!attribute [rw] text
    #   The text of the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RerankTextDocument AWS API Documentation
    #
    class RerankTextDocument < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for reranking.
    #
    # @!attribute [rw] type
    #   The type of reranker that the configurations apply to.
    #   @return [String]
    #
    # @!attribute [rw] bedrock_reranking_configuration
    #   Contains configurations for an Amazon Bedrock reranker.
    #   @return [Types::BedrockRerankingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RerankingConfiguration AWS API Documentation
    #
    class RerankingConfiguration < Struct.new(
      :type,
      :bedrock_reranking_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for the metadata fields to include or exclude
    # when considering reranking. If you include the `fieldsToExclude`
    # field, the reranker ignores all the metadata fields that you specify.
    # If you include the `fieldsToInclude` field, the reranker uses only the
    # metadata fields that you specify and ignores all others. You can
    # include only one of these fields.
    #
    # @note RerankingMetadataSelectiveModeConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] fields_to_include
    #   An array of objects, each of which specifies a metadata field to
    #   include in consideration when reranking. The remaining metadata
    #   fields are ignored.
    #   @return [Array<Types::FieldForReranking>]
    #
    # @!attribute [rw] fields_to_exclude
    #   An array of objects, each of which specifies a metadata field to
    #   exclude from consideration when reranking.
    #   @return [Array<Types::FieldForReranking>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RerankingMetadataSelectiveModeConfiguration AWS API Documentation
    #
    class RerankingMetadataSelectiveModeConfiguration < Struct.new(
      :fields_to_include,
      :fields_to_exclude,
      :unknown)
      SENSITIVE = [:fields_to_include, :fields_to_exclude]
      include Aws::Structure
      include Aws::Structure::Union

      class FieldsToInclude < RerankingMetadataSelectiveModeConfiguration; end
      class FieldsToExclude < RerankingMetadataSelectiveModeConfiguration; end
      class Unknown < RerankingMetadataSelectiveModeConfiguration; end
    end

    # The specified resource Amazon Resource Name (ARN) was not found. Check
    # the Amazon Resource Name (ARN) and try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the filters to use on the metadata attributes in the
    # knowledge base data sources before returning results. For more
    # information, see [Query configurations][1]. See the examples below to
    # see how to use these filters.
    #
    # This data type is used in the following API operations:
    #
    # * [Retrieve request][2] – in the `filter` field
    #
    # * [RetrieveAndGenerate request][3] – in the `filter` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_RequestSyntax
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax
    #
    # @note RetrievalFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] equals
    #   Knowledge base data sources are returned if they contain a metadata
    #   attribute whose name matches the `key` and whose value matches the
    #   `value` in this object.
    #
    #   The following example would return data sources with an `animal`
    #   attribute whose value is `cat`:
    #
    #   `"equals": { "key": "animal", "value": "cat" }`
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] not_equals
    #   Knowledge base data sources are returned when:
    #
    #   * It contains a metadata attribute whose name matches the `key` and
    #     whose value doesn't match the `value` in this object.
    #
    #   * The key is not present in the document.
    #
    #   The following example would return data sources that don't contain
    #   an `animal` attribute whose value is `cat`.
    #
    #   `"notEquals": { "key": "animal", "value": "cat" }`
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] greater_than
    #   Knowledge base data sources are returned if they contain a metadata
    #   attribute whose name matches the `key` and whose value is greater
    #   than the `value` in this object.
    #
    #   The following example would return data sources with an `year`
    #   attribute whose value is greater than `1989`:
    #
    #   `"greaterThan": { "key": "year", "value": 1989 }`
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] greater_than_or_equals
    #   Knowledge base data sources are returned if they contain a metadata
    #   attribute whose name matches the `key` and whose value is greater
    #   than or equal to the `value` in this object.
    #
    #   The following example would return data sources with an `year`
    #   attribute whose value is greater than or equal to `1989`:
    #
    #   `"greaterThanOrEquals": { "key": "year", "value": 1989 }`
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] less_than
    #   Knowledge base data sources are returned if they contain a metadata
    #   attribute whose name matches the `key` and whose value is less than
    #   the `value` in this object.
    #
    #   The following example would return data sources with an `year`
    #   attribute whose value is less than to `1989`.
    #
    #   `"lessThan": { "key": "year", "value": 1989 }`
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] less_than_or_equals
    #   Knowledge base data sources are returned if they contain a metadata
    #   attribute whose name matches the `key` and whose value is less than
    #   or equal to the `value` in this object.
    #
    #   The following example would return data sources with an `year`
    #   attribute whose value is less than or equal to `1989`.
    #
    #   `"lessThanOrEquals": { "key": "year", "value": 1989 }`
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] in
    #   Knowledge base data sources are returned if they contain a metadata
    #   attribute whose name matches the `key` and whose value is in the
    #   list specified in the `value` in this object.
    #
    #   The following example would return data sources with an `animal`
    #   attribute that is either `cat` or `dog`:
    #
    #   `"in": { "key": "animal", "value": ["cat", "dog"] }`
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] not_in
    #   Knowledge base data sources are returned if they contain a metadata
    #   attribute whose name matches the `key` and whose value isn't in the
    #   list specified in the `value` in this object.
    #
    #   The following example would return data sources whose `animal`
    #   attribute is neither `cat` nor `dog`.
    #
    #   `"notIn": { "key": "animal", "value": ["cat", "dog"] }`
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] starts_with
    #   Knowledge base data sources are returned if they contain a metadata
    #   attribute whose name matches the `key` and whose value starts with
    #   the `value` in this object. This filter is currently only supported
    #   for Amazon OpenSearch Serverless vector stores.
    #
    #   The following example would return data sources with an `animal`
    #   attribute starts with `ca` (for example, `cat` or `camel`).
    #
    #   `"startsWith": { "key": "animal", "value": "ca" }`
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] list_contains
    #   Knowledge base data sources are returned if they contain a metadata
    #   attribute whose name matches the `key` and whose value is a list
    #   that contains the `value` as one of its members.
    #
    #   The following example would return data sources with an `animals`
    #   attribute that is a list containing a `cat` member (for example
    #   `["dog", "cat"]`).
    #
    #   `"listContains": { "key": "animals", "value": "cat" }`
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] string_contains
    #   Knowledge base data sources are returned if they contain a metadata
    #   attribute whose name matches the `key` and whose value is one of the
    #   following:
    #
    #   * A string that contains the `value` as a substring. The following
    #     example would return data sources with an `animal` attribute that
    #     contains the substring `at` (for example `cat`).
    #
    #     `"stringContains": { "key": "animal", "value": "at" }`
    #
    #   * A list with a member that contains the `value` as a substring. The
    #     following example would return data sources with an `animals`
    #     attribute that is a list containing a member that contains the
    #     substring `at` (for example `["dog", "cat"]`).
    #
    #     `"stringContains": { "key": "animals", "value": "at" }`
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] and_all
    #   Knowledge base data sources are returned if their metadata
    #   attributes fulfill all the filter conditions inside this list.
    #   @return [Array<Types::RetrievalFilter>]
    #
    # @!attribute [rw] or_all
    #   Knowledge base data sources are returned if their metadata
    #   attributes fulfill at least one of the filter conditions inside this
    #   list.
    #   @return [Array<Types::RetrievalFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalFilter AWS API Documentation
    #
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
      :unknown)
      SENSITIVE = [:and_all, :or_all]
      include Aws::Structure
      include Aws::Structure::Union

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

    # The Confluence data source location.
    #
    # @!attribute [rw] url
    #   The Confluence host URL for the data source location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultConfluenceLocation AWS API Documentation
    #
    class RetrievalResultConfluenceLocation < Struct.new(
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a chunk of text from a data source in the
    # knowledge base. If the result is from a structured data source, the
    # cell in the database and the type of the value is also identified.
    #
    # This data type is used in the following API operations:
    #
    # * [Retrieve response][1] – in the `content` field
    #
    # * [RetrieveAndGenerate response][2] – in the `content` field
    #
    # * [InvokeAgent response][3] – in the `content` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @!attribute [rw] type
    #   The type of content in the retrieval result.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The cited text from the data source.
    #   @return [String]
    #
    # @!attribute [rw] byte_content
    #   A data URI with base64-encoded content from the data source. The URI
    #   is in the following format: returned in the following format:
    #   `data:image/jpeg;base64,${base64-encoded string}`.
    #   @return [String]
    #
    # @!attribute [rw] row
    #   Specifies information about the rows with the cells to return in
    #   retrieval.
    #   @return [Array<Types::RetrievalResultContentColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultContent AWS API Documentation
    #
    class RetrievalResultContent < Struct.new(
      :type,
      :text,
      :byte_content,
      :row)
      SENSITIVE = [:row]
      include Aws::Structure
    end

    # Contains information about a column with a cell to return in
    # retrieval.
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] column_value
    #   The value in the column.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultContentColumn AWS API Documentation
    #
    class RetrievalResultContentColumn < Struct.new(
      :column_name,
      :column_value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the location of a document in a custom data
    # source.
    #
    # @!attribute [rw] id
    #   The ID of the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultCustomDocumentLocation AWS API Documentation
    #
    class RetrievalResultCustomDocumentLocation < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of a result in Amazon Kendra.
    #
    # @!attribute [rw] uri
    #   The document's uri.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultKendraDocumentLocation AWS API Documentation
    #
    class RetrievalResultKendraDocumentLocation < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the data source location.
    #
    # This data type is used in the following API operations:
    #
    # * [Retrieve response][1] – in the `location` field
    #
    # * [RetrieveAndGenerate response][2] – in the `location` field
    #
    # * [InvokeAgent response][3] – in the `location` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @!attribute [rw] type
    #   The type of data source location.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The S3 data source location.
    #   @return [Types::RetrievalResultS3Location]
    #
    # @!attribute [rw] web_location
    #   The web URL/URLs data source location.
    #   @return [Types::RetrievalResultWebLocation]
    #
    # @!attribute [rw] confluence_location
    #   The Confluence data source location.
    #   @return [Types::RetrievalResultConfluenceLocation]
    #
    # @!attribute [rw] salesforce_location
    #   The Salesforce data source location.
    #   @return [Types::RetrievalResultSalesforceLocation]
    #
    # @!attribute [rw] share_point_location
    #   The SharePoint data source location.
    #   @return [Types::RetrievalResultSharePointLocation]
    #
    # @!attribute [rw] custom_document_location
    #   Specifies the location of a document in a custom data source.
    #   @return [Types::RetrievalResultCustomDocumentLocation]
    #
    # @!attribute [rw] kendra_document_location
    #   The location of a document in Amazon Kendra.
    #   @return [Types::RetrievalResultKendraDocumentLocation]
    #
    # @!attribute [rw] sql_location
    #   Specifies information about the SQL query used to retrieve the
    #   result.
    #   @return [Types::RetrievalResultSqlLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultLocation AWS API Documentation
    #
    class RetrievalResultLocation < Struct.new(
      :type,
      :s3_location,
      :web_location,
      :confluence_location,
      :salesforce_location,
      :share_point_location,
      :custom_document_location,
      :kendra_document_location,
      :sql_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 data source location.
    #
    # This data type is used in the following API operations:
    #
    # * [Retrieve response][1] – in the `s3Location` field
    #
    # * [RetrieveAndGenerate response][2] – in the `s3Location` field
    #
    # * [InvokeAgent response][3] – in the `s3Location` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @!attribute [rw] uri
    #   The S3 URI for the data source location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultS3Location AWS API Documentation
    #
    class RetrievalResultS3Location < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Salesforce data source location.
    #
    # @!attribute [rw] url
    #   The Salesforce host URL for the data source location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultSalesforceLocation AWS API Documentation
    #
    class RetrievalResultSalesforceLocation < Struct.new(
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SharePoint data source location.
    #
    # @!attribute [rw] url
    #   The SharePoint site URL for the data source location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultSharePointLocation AWS API Documentation
    #
    class RetrievalResultSharePointLocation < Struct.new(
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the SQL query used to retrieve the result.
    #
    # @!attribute [rw] query
    #   The SQL query used to retrieve the result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultSqlLocation AWS API Documentation
    #
    class RetrievalResultSqlLocation < Struct.new(
      :query)
      SENSITIVE = []
      include Aws::Structure
    end

    # The web URL/URLs data source location.
    #
    # @!attribute [rw] url
    #   The web URL/URLs for the data source location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultWebLocation AWS API Documentation
    #
    class RetrievalResultWebLocation < Struct.new(
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the resource being queried.
    #
    # This data type is used in the following API operations:
    #
    # * [RetrieveAndGenerate request][1] – in the
    #   `retrieveAndGenerateConfiguration` field
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax
    #
    # @!attribute [rw] type
    #   The type of resource that contains your data for retrieving
    #   information and generating responses.
    #
    #   <note markdown="1"> If you choose to use `EXTERNAL_SOURCES`, then currently only
    #   Anthropic Claude 3 Sonnet models for knowledge bases are supported.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_configuration
    #   Contains details about the knowledge base for retrieving information
    #   and generating responses.
    #   @return [Types::KnowledgeBaseRetrieveAndGenerateConfiguration]
    #
    # @!attribute [rw] external_sources_configuration
    #   The configuration for the external source wrapper object in the
    #   `retrieveAndGenerate` function.
    #   @return [Types::ExternalSourcesRetrieveAndGenerateConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateConfiguration AWS API Documentation
    #
    class RetrieveAndGenerateConfiguration < Struct.new(
      :type,
      :knowledge_base_configuration,
      :external_sources_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the query made to the knowledge base.
    #
    # This data type is used in the following API operations:
    #
    # * [RetrieveAndGenerate request][1] – in the `input` field
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax
    #
    # @!attribute [rw] text
    #   The query made to the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateInput AWS API Documentation
    #
    class RetrieveAndGenerateInput < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response generated from querying the knowledge base.
    #
    # This data type is used in the following API operations:
    #
    # * [RetrieveAndGenerate response][1] – in the `output` field
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    #
    # @!attribute [rw] text
    #   The response generated from querying the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateOutput AWS API Documentation
    #
    class RetrieveAndGenerateOutput < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # A retrieve and generate output event.
    #
    # @!attribute [rw] text
    #   A text response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateOutputEvent AWS API Documentation
    #
    class RetrieveAndGenerateOutputEvent < Struct.new(
      :text,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The unique identifier of the session. When you first make a
    #   `RetrieveAndGenerate` request, Amazon Bedrock automatically
    #   generates this value. You must reuse this value for all subsequent
    #   requests in the same conversational session. This value allows
    #   Amazon Bedrock to maintain context and knowledge from previous
    #   interactions. You can't explicitly set the `sessionId` yourself.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   Contains the query to be made to the knowledge base.
    #   @return [Types::RetrieveAndGenerateInput]
    #
    # @!attribute [rw] retrieve_and_generate_configuration
    #   Contains configurations for the knowledge base query and retrieval
    #   process. For more information, see [Query configurations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html
    #   @return [Types::RetrieveAndGenerateConfiguration]
    #
    # @!attribute [rw] session_configuration
    #   Contains details about the session with the knowledge base.
    #   @return [Types::RetrieveAndGenerateSessionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateRequest AWS API Documentation
    #
    class RetrieveAndGenerateRequest < Struct.new(
      :session_id,
      :input,
      :retrieve_and_generate_configuration,
      :session_configuration)
      SENSITIVE = [:input]
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The unique identifier of the session. When you first make a
    #   `RetrieveAndGenerate` request, Amazon Bedrock automatically
    #   generates this value. You must reuse this value for all subsequent
    #   requests in the same conversational session. This value allows
    #   Amazon Bedrock to maintain context and knowledge from previous
    #   interactions. You can't explicitly set the `sessionId` yourself.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   Contains the response generated from querying the knowledge base.
    #   @return [Types::RetrieveAndGenerateOutput]
    #
    # @!attribute [rw] citations
    #   A list of segments of the generated response that are based on
    #   sources in the knowledge base, alongside information about the
    #   sources.
    #   @return [Array<Types::Citation>]
    #
    # @!attribute [rw] guardrail_action
    #   Specifies if there is a guardrail intervention in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateResponse AWS API Documentation
    #
    class RetrieveAndGenerateResponse < Struct.new(
      :session_id,
      :output,
      :citations,
      :guardrail_action)
      SENSITIVE = [:output]
      include Aws::Structure
    end

    # Contains configuration about the session with the knowledge base.
    #
    # This data type is used in the following API operations:
    #
    # * [RetrieveAndGenerate request][1] – in the `sessionConfiguration`
    #   field
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_RequestSyntax
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key encrypting the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateSessionConfiguration AWS API Documentation
    #
    class RetrieveAndGenerateSessionConfiguration < Struct.new(
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The unique identifier of the session. When you first make a
    #   `RetrieveAndGenerate` request, Amazon Bedrock automatically
    #   generates this value. You must reuse this value for all subsequent
    #   requests in the same conversational session. This value allows
    #   Amazon Bedrock to maintain context and knowledge from previous
    #   interactions. You can't explicitly set the `sessionId` yourself.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   Contains the query to be made to the knowledge base.
    #   @return [Types::RetrieveAndGenerateInput]
    #
    # @!attribute [rw] retrieve_and_generate_configuration
    #   Contains configurations for the knowledge base query and retrieval
    #   process. For more information, see [Query configurations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html
    #   @return [Types::RetrieveAndGenerateConfiguration]
    #
    # @!attribute [rw] session_configuration
    #   Contains details about the session with the knowledge base.
    #   @return [Types::RetrieveAndGenerateSessionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateStreamRequest AWS API Documentation
    #
    class RetrieveAndGenerateStreamRequest < Struct.new(
      :session_id,
      :input,
      :retrieve_and_generate_configuration,
      :session_configuration)
      SENSITIVE = [:input]
      include Aws::Structure
    end

    # @!attribute [rw] stream
    #   A stream of events from the model.
    #   @return [Types::RetrieveAndGenerateStreamResponseOutput]
    #
    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateStreamResponse AWS API Documentation
    #
    class RetrieveAndGenerateStreamResponse < Struct.new(
      :stream,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to query.
    #   @return [String]
    #
    # @!attribute [rw] retrieval_query
    #   Contains the query to send the knowledge base.
    #   @return [Types::KnowledgeBaseQuery]
    #
    # @!attribute [rw] retrieval_configuration
    #   Contains configurations for the knowledge base query and retrieval
    #   process. For more information, see [Query configurations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html
    #   @return [Types::KnowledgeBaseRetrievalConfiguration]
    #
    # @!attribute [rw] guardrail_configuration
    #   Guardrail settings.
    #   @return [Types::GuardrailConfiguration]
    #
    # @!attribute [rw] next_token
    #   If there are more results than can fit in the response, the response
    #   returns a `nextToken`. Use this token in the `nextToken` field of
    #   another request to retrieve the next batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveRequest AWS API Documentation
    #
    class RetrieveRequest < Struct.new(
      :knowledge_base_id,
      :retrieval_query,
      :retrieval_configuration,
      :guardrail_configuration,
      :next_token)
      SENSITIVE = [:retrieval_query]
      include Aws::Structure
    end

    # @!attribute [rw] retrieval_results
    #   A list of results from querying the knowledge base.
    #   @return [Array<Types::KnowledgeBaseRetrievalResult>]
    #
    # @!attribute [rw] guardrail_action
    #   Specifies if there is a guardrail intervention in the response.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If there are more results than can fit in the response, the response
    #   returns a `nextToken`. Use this token in the `nextToken` field of
    #   another request to retrieve the next batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveResponse AWS API Documentation
    #
    class RetrieveResponse < Struct.new(
      :retrieval_results,
      :guardrail_action,
      :next_token)
      SENSITIVE = [:retrieval_results]
      include Aws::Structure
    end

    # Contains metadata about a source cited for the generated response.
    #
    # This data type is used in the following API operations:
    #
    # * [RetrieveAndGenerate response][1] – in the `retrievedReferences`
    #   field
    #
    # * [InvokeAgent response][2] – in the `retrievedReferences` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @!attribute [rw] content
    #   Contains the cited text from the data source.
    #   @return [Types::RetrievalResultContent]
    #
    # @!attribute [rw] location
    #   Contains information about the location of the data source.
    #   @return [Types::RetrievalResultLocation]
    #
    # @!attribute [rw] metadata
    #   Contains metadata attributes and their values for the file in the
    #   data source. For more information, see [Metadata and filtering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-ds.html#kb-ds-metadata
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievedReference AWS API Documentation
    #
    class RetrievedReference < Struct.new(
      :content,
      :location,
      :metadata)
      SENSITIVE = [:content, :location, :metadata]
      include Aws::Structure
    end

    # Contains information to return from the action group that the agent
    # has predicted to invoke.
    #
    # This data type is used in the following API operations:
    #
    # * [InvokeAgent response][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @!attribute [rw] invocation_inputs
    #   A list of objects that contain information about the parameters and
    #   inputs that need to be sent into the API operation or function,
    #   based on what the agent determines from its session with the user.
    #   @return [Array<Types::InvocationInputMember>]
    #
    # @!attribute [rw] invocation_id
    #   The identifier of the action group invocation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ReturnControlPayload AWS API Documentation
    #
    class ReturnControlPayload < Struct.new(
      :invocation_inputs,
      :invocation_id,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An action invocation result.
    #
    # @!attribute [rw] invocation_id
    #   The action's invocation ID.
    #   @return [String]
    #
    # @!attribute [rw] return_control_invocation_results
    #   The action invocation result.
    #   @return [Array<Types::InvocationResultMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ReturnControlResults AWS API Documentation
    #
    class ReturnControlResults < Struct.new(
      :invocation_id,
      :return_control_invocation_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Invocation output from a routing classifier model.
    #
    # @!attribute [rw] trace_id
    #   The invocation's trace ID.
    #   @return [String]
    #
    # @!attribute [rw] raw_response
    #   The invocation's raw response.
    #   @return [Types::RawResponse]
    #
    # @!attribute [rw] metadata
    #   The invocation's metadata.
    #   @return [Types::Metadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RoutingClassifierModelInvocationOutput AWS API Documentation
    #
    class RoutingClassifierModelInvocationOutput < Struct.new(
      :trace_id,
      :raw_response,
      :metadata)
      SENSITIVE = [:raw_response, :metadata]
      include Aws::Structure
    end

    # A trace for a routing classifier.
    #
    # @note RoutingClassifierTrace is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RoutingClassifierTrace corresponding to the set member.
    #
    # @!attribute [rw] invocation_input
    #   The classifier's invocation input.
    #   @return [Types::InvocationInput]
    #
    # @!attribute [rw] observation
    #   The classifier's observation.
    #   @return [Types::Observation]
    #
    # @!attribute [rw] model_invocation_input
    #   The classifier's model invocation input.
    #   @return [Types::ModelInvocationInput]
    #
    # @!attribute [rw] model_invocation_output
    #   The classifier's model invocation output.
    #   @return [Types::RoutingClassifierModelInvocationOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RoutingClassifierTrace AWS API Documentation
    #
    class RoutingClassifierTrace < Struct.new(
      :invocation_input,
      :observation,
      :model_invocation_input,
      :model_invocation_output,
      :unknown)
      SENSITIVE = [:invocation_input, :observation, :model_invocation_input, :model_invocation_output]
      include Aws::Structure
      include Aws::Structure::Union

      class InvocationInput < RoutingClassifierTrace; end
      class Observation < RoutingClassifierTrace; end
      class ModelInvocationInput < RoutingClassifierTrace; end
      class ModelInvocationOutput < RoutingClassifierTrace; end
      class Unknown < RoutingClassifierTrace; end
    end

    # The identifier information for an Amazon S3 bucket.
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_key
    #   The S3 object key for the S3 resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/S3Identifier AWS API Documentation
    #
    class S3Identifier < Struct.new(
      :s3_bucket_name,
      :s3_object_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Amazon S3 bucket where the image is stored.
    #
    # @!attribute [rw] uri
    #   The path to the Amazon S3 bucket where the image is stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The unique wrapper object of the document from the S3 location.
    #
    # @!attribute [rw] uri
    #   The file location of the S3 wrapper object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/S3ObjectDoc AWS API Documentation
    #
    class S3ObjectDoc < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details of the s3 object where the source file is located.
    #
    # @!attribute [rw] uri
    #   The uri of the s3 object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/S3ObjectFile AWS API Documentation
    #
    class S3ObjectFile < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a condition that was satisfied during a condition node
    # evaluation in a flow execution.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @!attribute [rw] condition_name
    #   The name of the condition that was satisfied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/SatisfiedCondition AWS API Documentation
    #
    class SatisfiedCondition < Struct.new(
      :condition_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of requests exceeds the service quota. Resubmit your
    # request later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains parameters that specify various attributes that persist
    # across a session or prompt. You can define session state attributes as
    # key-value pairs when writing a [Lambda function][1] for an action
    # group or pass them when making an [InvokeAgent][2] request. Use
    # session state attributes to control and provide conversational context
    # for your agent and to help customize your agent's behavior. For more
    # information, see [Control session context][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-lambda.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    # [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html
    #
    # @!attribute [rw] session_attributes
    #   Contains attributes that persist across a session and the values of
    #   those attributes. If `sessionAttributes` are passed to a supervisor
    #   agent in [multi-agent collaboration][1], it will be forwarded to all
    #   agent collaborators.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-multi-agent-collaboration.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] prompt_session_attributes
    #   Contains attributes that persist across a prompt and the values of
    #   those attributes.
    #
    #   * In orchestration prompt template, these attributes replace the
    #     $prompt\_session\_attributes$ placeholder variable. For more
    #     information, see [Prompt template placeholder variables][1].
    #
    #   * In [multi-agent collaboration][2], the `promptSessionAttributes`
    #     will only be used by supervisor agent when
    #     $prompt\_session\_attributes$ is present in prompt template.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-multi-agent-collaboration.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] return_control_invocation_results
    #   Contains information about the results from the action group
    #   invocation. For more information, see [Return control to the agent
    #   developer][1] and [Control session context][2].
    #
    #   <note markdown="1"> If you include this field, the `inputText` field will be ignored.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-returncontrol.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html
    #   @return [Array<Types::InvocationResultMember>]
    #
    # @!attribute [rw] invocation_id
    #   The identifier of the invocation of an action. This value must match
    #   the `invocationId` returned in the `InvokeAgent` response for the
    #   action whose results are provided in the
    #   `returnControlInvocationResults` field. For more information, see
    #   [Return control to the agent developer][1] and [Control session
    #   context][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-returncontrol.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html
    #   @return [String]
    #
    # @!attribute [rw] files
    #   Contains information about the files used by code interpreter.
    #   @return [Array<Types::InputFile>]
    #
    # @!attribute [rw] knowledge_base_configurations
    #   An array of configurations, each of which applies to a knowledge
    #   base attached to the agent.
    #   @return [Array<Types::KnowledgeBaseConfiguration>]
    #
    # @!attribute [rw] conversation_history
    #   The state's conversation history.
    #   @return [Types::ConversationHistory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/SessionState AWS API Documentation
    #
    class SessionState < Struct.new(
      :session_attributes,
      :prompt_session_attributes,
      :return_control_invocation_results,
      :invocation_id,
      :files,
      :knowledge_base_configurations,
      :conversation_history)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a session. For more information about sessions,
    # see [Store and retrieve conversation history and context with Amazon
    # Bedrock sessions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
    #
    # @!attribute [rw] session_id
    #   The unique identifier for the session.
    #   @return [String]
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the session.
    #   @return [String]
    #
    # @!attribute [rw] session_status
    #   The current status of the session.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp for when the session was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp for when the session was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/SessionSummary AWS API Documentation
    #
    class SessionSummary < Struct.new(
      :session_id,
      :session_arn,
      :session_status,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about where the text with a citation begins and
    # ends in the generated output.
    #
    # This data type is used in the following API operations:
    #
    # * [RetrieveAndGenerate response][1] – in the `span` field
    #
    # * [InvokeAgent response][2] – in the `span` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @!attribute [rw] start
    #   Where the text with a citation starts in the generated output.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   Where the text with a citation ends in the generated output.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Span AWS API Documentation
    #
    class Span < Struct.new(
      :start,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow to execute.
    #   @return [String]
    #
    # @!attribute [rw] flow_alias_identifier
    #   The unique identifier of the flow alias to use for the flow
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] flow_execution_name
    #   The unique name for the flow execution. If you don't provide one, a
    #   system-generated name is used.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The input data required for the flow execution. This must match the
    #   input schema defined in the flow.
    #   @return [Array<Types::FlowInput>]
    #
    # @!attribute [rw] model_performance_configuration
    #   The performance settings for the foundation model used in the flow
    #   execution.
    #   @return [Types::ModelPerformanceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/StartFlowExecutionRequest AWS API Documentation
    #
    class StartFlowExecutionRequest < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :flow_execution_name,
      :inputs,
      :model_performance_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the flow
    #   execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/StartFlowExecutionResponse AWS API Documentation
    #
    class StartFlowExecutionResponse < Struct.new(
      :execution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_alias_identifier
    #   The unique identifier of the flow alias used for the execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_identifier
    #   The unique identifier of the flow execution to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/StopFlowExecutionRequest AWS API Documentation
    #
    class StopFlowExecutionRequest < Struct.new(
      :flow_identifier,
      :flow_alias_identifier,
      :execution_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the flow
    #   execution that was stopped.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The updated status of the flow execution after the stop request.
    #   This will typically be ABORTED if the execution was successfully
    #   stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/StopFlowExecutionResponse AWS API Documentation
    #
    class StopFlowExecutionResponse < Struct.new(
      :execution_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configurations for streaming.
    #
    # @!attribute [rw] stream_final_response
    #   Specifies whether to enable streaming for the final response. This
    #   is set to `false` by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] apply_guardrail_interval
    #   The guardrail interval to apply as response is generated. By
    #   default, the guardrail interval is set to 50 characters. If a larger
    #   interval is specified, the response will be generated in larger
    #   chunks with fewer `ApplyGuardrail` calls. The following examples
    #   show the response generated for *Hello, I am an agent* input string.
    #
    #   **Example response in chunks: Interval set to 3 characters**
    #
    #   `'Hel', 'lo, ','I am', ' an', ' Age', 'nt'`
    #
    #   Each chunk has at least 3 characters except for the last chunk
    #
    #   **Example response in chunks: Interval set to 20 or more
    #   characters**
    #
    #   `Hello, I am an Agent`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/StreamingConfigurations AWS API Documentation
    #
    class StreamingConfigurations < Struct.new(
      :stream_final_response,
      :apply_guardrail_interval)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An object containing key-value pairs that define the tags to attach
    #   to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Configuration settings for text generation using a language model via
    # the RetrieveAndGenerate operation. Includes parameters like
    # temperature, top-p, maximum token count, and stop sequences.
    #
    # <note markdown="1"> The valid range of `maxTokens` depends on the accepted values for your
    # chosen model's inference parameters. To see the inference parameters
    # for your model, see [Inference parameters for foundation models.][1]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #
    # @!attribute [rw] temperature
    #   Controls the random-ness of text generated by the language model,
    #   influencing how much the model sticks to the most predictable next
    #   words versus exploring more surprising options. A lower temperature
    #   value (e.g. 0.2 or 0.3) makes model outputs more deterministic or
    #   predictable, while a higher temperature (e.g. 0.8 or 0.9) makes the
    #   outputs more creative or unpredictable.
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   A probability distribution threshold which controls what the model
    #   considers for the set of possible next tokens. The model will only
    #   consider the top p% of the probability distribution when generating
    #   the next token.
    #   @return [Float]
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens to generate in the output text. Do not
    #   use the minimum of 0 or the maximum of 65536. The limit values
    #   described here are arbitary values, for actual values consult the
    #   limits defined by your specific model.
    #   @return [Integer]
    #
    # @!attribute [rw] stop_sequences
    #   A list of sequences of characters that, if generated, will cause the
    #   model to stop generating further tokens. Do not use a minimum length
    #   of 1 or a maximum length of 1000. The limit values described here
    #   are arbitary values, for actual values consult the limits defined by
    #   your specific model.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TextInferenceConfig AWS API Documentation
    #
    class TextInferenceConfig < Struct.new(
      :temperature,
      :top_p,
      :max_tokens,
      :stop_sequences)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the text prompt to optimize.
    #
    # @!attribute [rw] text
    #   The text in the text prompt to optimize.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TextPrompt AWS API Documentation
    #
    class TextPrompt < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the part of the generated text that contains a citation,
    # alongside where it begins and ends.
    #
    # This data type is used in the following API operations:
    #
    # * [RetrieveAndGenerate response][1] – in the `textResponsePart` field
    #
    # * [InvokeAgent response][2] – in the `textResponsePart` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @!attribute [rw] text
    #   The part of the generated text that contains a citation.
    #   @return [String]
    #
    # @!attribute [rw] span
    #   Contains information about where the text with a citation begins and
    #   ends in the generated output.
    #   @return [Types::Span]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TextResponsePart AWS API Documentation
    #
    class TextResponsePart < Struct.new(
      :text,
      :span)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for transforming text to SQL.
    #
    # @!attribute [rw] type
    #   The type of resource to use in transformation.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_configuration
    #   Specifies configurations for a knowledge base to use in
    #   transformation.
    #   @return [Types::TextToSqlKnowledgeBaseConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TextToSqlConfiguration AWS API Documentation
    #
    class TextToSqlConfiguration < Struct.new(
      :type,
      :knowledge_base_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a knowledge base to use in transformation.
    #
    # @!attribute [rw] knowledge_base_arn
    #   The ARN of the knowledge base
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TextToSqlKnowledgeBaseConfiguration AWS API Documentation
    #
    class TextToSqlKnowledgeBaseConfiguration < Struct.new(
      :knowledge_base_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of requests exceeds the limit. Resubmit your request later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains one part of the agent's reasoning process and results from
    # calling API actions and querying knowledge bases. You can use the
    # trace to understand how the agent arrived at the response it provided
    # the customer. For more information, see [Trace enablement][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-enablement
    #
    # @note Trace is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Trace corresponding to the set member.
    #
    # @!attribute [rw] guardrail_trace
    #   The trace details for a trace defined in the Guardrail filter.
    #   @return [Types::GuardrailTrace]
    #
    # @!attribute [rw] pre_processing_trace
    #   Details about the pre-processing step, in which the agent
    #   contextualizes and categorizes user inputs.
    #   @return [Types::PreProcessingTrace]
    #
    # @!attribute [rw] orchestration_trace
    #   Details about the orchestration step, in which the agent determines
    #   the order in which actions are executed and which knowledge bases
    #   are retrieved.
    #   @return [Types::OrchestrationTrace]
    #
    # @!attribute [rw] post_processing_trace
    #   Details about the post-processing step, in which the agent shapes
    #   the response..
    #   @return [Types::PostProcessingTrace]
    #
    # @!attribute [rw] routing_classifier_trace
    #   A routing classifier's trace.
    #   @return [Types::RoutingClassifierTrace]
    #
    # @!attribute [rw] failure_trace
    #   Contains information about the failure of the interaction.
    #   @return [Types::FailureTrace]
    #
    # @!attribute [rw] custom_orchestration_trace
    #   Details about the custom orchestration step in which the agent
    #   determines the order in which actions are executed.
    #   @return [Types::CustomOrchestrationTrace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Trace AWS API Documentation
    #
    class Trace < Struct.new(
      :guardrail_trace,
      :pre_processing_trace,
      :orchestration_trace,
      :post_processing_trace,
      :routing_classifier_trace,
      :failure_trace,
      :custom_orchestration_trace,
      :unknown)
      SENSITIVE = [:guardrail_trace, :pre_processing_trace, :orchestration_trace, :post_processing_trace, :routing_classifier_trace, :failure_trace, :custom_orchestration_trace]
      include Aws::Structure
      include Aws::Structure::Union

      class GuardrailTrace < Trace; end
      class PreProcessingTrace < Trace; end
      class OrchestrationTrace < Trace; end
      class PostProcessingTrace < Trace; end
      class RoutingClassifierTrace < Trace; end
      class FailureTrace < Trace; end
      class CustomOrchestrationTrace < Trace; end
      class Unknown < Trace; end
    end

    # Contains trace elements for flow execution tracking.
    #
    # @note TraceElements is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TraceElements corresponding to the set member.
    #
    # @!attribute [rw] agent_traces
    #   Agent trace information for the flow execution.
    #   @return [Array<Types::TracePart>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TraceElements AWS API Documentation
    #
    class TraceElements < Struct.new(
      :agent_traces,
      :unknown)
      SENSITIVE = [:agent_traces]
      include Aws::Structure
      include Aws::Structure::Union

      class AgentTraces < TraceElements; end
      class Unknown < TraceElements; end
    end

    # Contains information about the agent and session, alongside the
    # agent's reasoning process and results from calling API actions and
    # querying knowledge bases and metadata about the trace. You can use the
    # trace to understand how the agent arrived at the response it provided
    # the customer. For more information, see [Trace enablement][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-enablement
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session with the agent.
    #   @return [String]
    #
    # @!attribute [rw] trace
    #   Contains one part of the agent's reasoning process and results from
    #   calling API actions and querying knowledge bases. You can use the
    #   trace to understand how the agent arrived at the response it
    #   provided the customer. For more information, see [Trace
    #   enablement][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-enablement
    #   @return [Types::Trace]
    #
    # @!attribute [rw] caller_chain
    #   The part's caller chain.
    #   @return [Array<Types::Caller>]
    #
    # @!attribute [rw] event_time
    #   The time of the trace.
    #   @return [Time]
    #
    # @!attribute [rw] collaborator_name
    #   The part's collaborator name.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   The unique identifier of the alias of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TracePart AWS API Documentation
    #
    class TracePart < Struct.new(
      :session_id,
      :trace,
      :caller_chain,
      :event_time,
      :collaborator_name,
      :agent_id,
      :agent_alias_id,
      :agent_version,
      :event_type)
      SENSITIVE = [:trace, :collaborator_name]
      include Aws::Structure
    end

    # Contains configurations for transforming the natural language query
    # into SQL.
    #
    # @!attribute [rw] mode
    #   The mode of the transformation.
    #   @return [String]
    #
    # @!attribute [rw] text_to_sql_configuration
    #   Specifies configurations for transforming text to SQL.
    #   @return [Types::TextToSqlConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TransformationConfiguration AWS API Documentation
    #
    class TransformationConfiguration < Struct.new(
      :mode,
      :text_to_sql_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of keys of the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] session_metadata
    #   A map of key-value pairs containing attributes to be persisted
    #   across the session. For example the user's ID, their language
    #   preference, and the type of device they are using.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] session_identifier
    #   The unique identifier of the session to modify. You can specify
    #   either the session's `sessionId` or its Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/UpdateSessionRequest AWS API Documentation
    #
    class UpdateSessionRequest < Struct.new(
      :session_metadata,
      :session_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The unique identifier of the session you updated.
    #   @return [String]
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the session that was updated.
    #   @return [String]
    #
    # @!attribute [rw] session_status
    #   The status of the session you updated.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp for when the session was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp for when the session was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/UpdateSessionResponse AWS API Documentation
    #
    class UpdateSessionResponse < Struct.new(
      :session_id,
      :session_arn,
      :session_status,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information of the usage of the foundation model.
    #
    # @!attribute [rw] input_tokens
    #   Contains information about the input tokens from the foundation
    #   model usage.
    #   @return [Integer]
    #
    # @!attribute [rw] output_tokens
    #   Contains information about the output tokens from the foundation
    #   model usage.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Usage AWS API Documentation
    #
    class Usage < Struct.new(
      :input_tokens,
      :output_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input validation failed. Check your request parameters and retry the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for reranking with an Amazon Bedrock reranker
    # model.
    #
    # @!attribute [rw] model_configuration
    #   Contains configurations for the reranker model.
    #   @return [Types::VectorSearchBedrockRerankingModelConfiguration]
    #
    # @!attribute [rw] number_of_reranked_results
    #   The number of results to return after reranking.
    #   @return [Integer]
    #
    # @!attribute [rw] metadata_configuration
    #   Contains configurations for the metadata to use in reranking.
    #   @return [Types::MetadataConfigurationForReranking]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/VectorSearchBedrockRerankingConfiguration AWS API Documentation
    #
    class VectorSearchBedrockRerankingConfiguration < Struct.new(
      :model_configuration,
      :number_of_reranked_results,
      :metadata_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for an Amazon Bedrock reranker model.
    #
    # @!attribute [rw] model_arn
    #   The ARN of the reranker model to use.
    #   @return [String]
    #
    # @!attribute [rw] additional_model_request_fields
    #   A JSON object whose keys are request fields for the model and whose
    #   values are values for those fields.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/VectorSearchBedrockRerankingModelConfiguration AWS API Documentation
    #
    class VectorSearchBedrockRerankingModelConfiguration < Struct.new(
      :model_arn,
      :additional_model_request_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for reranking the retrieved results.
    #
    # @!attribute [rw] type
    #   The type of reranker model.
    #   @return [String]
    #
    # @!attribute [rw] bedrock_reranking_configuration
    #   Contains configurations for an Amazon Bedrock reranker model.
    #   @return [Types::VectorSearchBedrockRerankingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/VectorSearchRerankingConfiguration AWS API Documentation
    #
    class VectorSearchRerankingConfiguration < Struct.new(
      :type,
      :bedrock_reranking_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of the flow.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowResponseStream AWS API Documentation
    #
    class FlowResponseStream < Enumerator

      def event_types
        [
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
          :flow_multi_turn_input_request_event
        ]
      end

    end

    # The response from invoking the agent and associated citations and
    # trace information.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InlineAgentResponseStream AWS API Documentation
    #
    class InlineAgentResponseStream < Enumerator

      def event_types
        [
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
          :files
        ]
      end

    end

    # The stream containing events in the prompt optimization process.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OptimizedPromptStream AWS API Documentation
    #
    class OptimizedPromptStream < Enumerator

      def event_types
        [
          :optimized_prompt_event,
          :analyze_prompt_event,
          :internal_server_exception,
          :throttling_exception,
          :validation_exception,
          :dependency_failed_exception,
          :access_denied_exception,
          :bad_gateway_exception
        ]
      end

    end

    # The response from invoking the agent and associated citations and
    # trace information.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ResponseStream AWS API Documentation
    #
    class ResponseStream < Enumerator

      def event_types
        [
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
          :files
        ]
      end

    end

    # A retrieve and generate stream response output.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateStreamResponseOutput AWS API Documentation
    #
    class RetrieveAndGenerateStreamResponseOutput < Enumerator

      def event_types
        [
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
          :bad_gateway_exception
        ]
      end

    end

  end
end

