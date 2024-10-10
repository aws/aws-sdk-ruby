# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockAgentRuntime
  module Types

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

    # Contains information about the action group being invoked. For more
    # information about the possible structures, see the InvocationInput tab
    # in [OrchestrationTrace][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/trace-orchestration.html
    #
    # @!attribute [rw] action_group_name
    #   The name of the action group.
    #   @return [String]
    #
    # @!attribute [rw] api_path
    #   The path to the API to call, based off the action group.
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
    # @!attribute [rw] function
    #   The function in the action group to call.
    #   @return [String]
    #
    # @!attribute [rw] invocation_id
    #   The unique identifier of the invocation. Only returned if the
    #   `executionType` is `RETURN_CONTROL`.
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
    # @!attribute [rw] verb
    #   The API method being used, based off the action group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ActionGroupInvocationInput AWS API Documentation
    #
    class ActionGroupInvocationInput < Struct.new(
      :action_group_name,
      :api_path,
      :execution_type,
      :function,
      :invocation_id,
      :parameters,
      :request_body,
      :verb)
      SENSITIVE = [:action_group_name, :api_path, :function, :verb]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ActionGroupInvocationOutput AWS API Documentation
    #
    class ActionGroupInvocationOutput < Struct.new(
      :text)
      SENSITIVE = [:text]
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
    # @!attribute [rw] action_invocation_type
    #   Contains information about the API operation to invoke.
    #   @return [String]
    #
    # @!attribute [rw] api_path
    #   The path to the API operation.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP method of the API operation.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ApiInvocationInput AWS API Documentation
    #
    class ApiInvocationInput < Struct.new(
      :action_group,
      :action_invocation_type,
      :api_path,
      :http_method,
      :parameters,
      :request_body)
      SENSITIVE = [:api_path]
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
    # @!attribute [rw] api_path
    #   The path to the API operation.
    #   @return [String]
    #
    # @!attribute [rw] confirmation_state
    #   Controls the API operations or functions to invoke based on the user
    #   confirmation.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP method for the API operation.
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
    # @!attribute [rw] response_state
    #   Controls the final response state returned to end user when
    #   API/Function execution failed. When this state is FAILURE, the
    #   request would fail with dependency failure exception. When this
    #   state is REPROMPT, the API/function response will be sent to model
    #   for re-prompt
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ApiResult AWS API Documentation
    #
    class ApiResult < Struct.new(
      :action_group,
      :api_path,
      :confirmation_state,
      :http_method,
      :http_status_code,
      :response_body,
      :response_state)
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

    # This property contains the document to chat with, along with its
    # attributes.
    #
    # @!attribute [rw] content_type
    #   The MIME type of the document contained in the wrapper object.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The byte value of the file to upload, encoded as a Base-64 string.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The file name of the document contained in the wrapper object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ByteContentDoc AWS API Documentation
    #
    class ByteContentDoc < Struct.new(
      :content_type,
      :data,
      :identifier)
      SENSITIVE = [:data, :identifier]
      include Aws::Structure
    end

    # The property contains the file to chat with, along with its
    # attributes.
    #
    # @!attribute [rw] data
    #   The raw bytes of the file to attach. The maximum size of all files
    #   that is attached is 10MB. You can attach a maximum of 5 files.
    #   @return [String]
    #
    # @!attribute [rw] media_type
    #   The MIME type of data contained in the file used for chat.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ByteContentFile AWS API Documentation
    #
    class ByteContentFile < Struct.new(
      :data,
      :media_type)
      SENSITIVE = [:data]
      include Aws::Structure
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
    # @!attribute [rw] execution_error
    #   Contains the error returned from code execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_output
    #   Contains the successful output returned from code execution
    #   @return [String]
    #
    # @!attribute [rw] execution_timeout
    #   Indicates if the execution of the code timed out.
    #   @return [Boolean]
    #
    # @!attribute [rw] files
    #   Contains output files, if generated by code execution.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/CodeInterpreterInvocationOutput AWS API Documentation
    #
    class CodeInterpreterInvocationOutput < Struct.new(
      :execution_error,
      :execution_output,
      :execution_timeout,
      :files)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ContentBody AWS API Documentation
    #
    class ContentBody < Struct.new(
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_alias_id
    #   The unique identifier of an alias of an agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent to which the alias belongs.
    #   @return [String]
    #
    # @!attribute [rw] memory_id
    #   The unique identifier of the memory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/DeleteAgentMemoryRequest AWS API Documentation
    #
    class DeleteAgentMemoryRequest < Struct.new(
      :agent_alias_id,
      :agent_id,
      :memory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/DeleteAgentMemoryResponse AWS API Documentation
    #
    class DeleteAgentMemoryResponse < Aws::EmptyStructure; end

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

    # The unique external source of the content contained in the wrapper
    # object.
    #
    # @!attribute [rw] byte_content
    #   The identifier, contentType, and data of the external source wrapper
    #   object.
    #   @return [Types::ByteContentDoc]
    #
    # @!attribute [rw] s3_location
    #   The S3 location of the external source wrapper object.
    #   @return [Types::S3ObjectDoc]
    #
    # @!attribute [rw] source_type
    #   The source type of the external source wrapper object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ExternalSource AWS API Documentation
    #
    class ExternalSource < Struct.new(
      :byte_content,
      :s3_location,
      :source_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the generation configuration of the external source wrapper
    # object.
    #
    # @!attribute [rw] additional_model_request_fields
    #   Additional model parameters and their corresponding values not
    #   included in the textInferenceConfig structure for an external
    #   source. Takes in custom model parameters specific to the language
    #   model being used.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
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
    # @!attribute [rw] prompt_template
    #   Contain the textPromptTemplate string for the external source
    #   wrapper object.
    #   @return [Types::PromptTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ExternalSourcesGenerationConfiguration AWS API Documentation
    #
    class ExternalSourcesGenerationConfiguration < Struct.new(
      :additional_model_request_fields,
      :guardrail_configuration,
      :inference_config,
      :prompt_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configurations of the external source wrapper object in the
    # `retrieveAndGenerate` function.
    #
    # @!attribute [rw] generation_configuration
    #   The prompt used with the external source wrapper object with the
    #   `retrieveAndGenerate` function.
    #   @return [Types::ExternalSourcesGenerationConfiguration]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ExternalSourcesRetrieveAndGenerateConfiguration AWS API Documentation
    #
    class ExternalSourcesRetrieveAndGenerateConfiguration < Struct.new(
      :generation_configuration,
      :model_arn,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the failure of the interaction.
    #
    # @!attribute [rw] failure_reason
    #   The reason the interaction failed.
    #   @return [String]
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FailureTrace AWS API Documentation
    #
    class FailureTrace < Struct.new(
      :failure_reason,
      :trace_id)
      SENSITIVE = [:failure_reason]
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
    # @!attribute [rw] byte_content
    #   The data and the text of the attached files.
    #   @return [Types::ByteContentFile]
    #
    # @!attribute [rw] s3_location
    #   The s3 location of the files to attach.
    #   @return [Types::S3ObjectFile]
    #
    # @!attribute [rw] source_type
    #   The source type of the files to attach.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FileSource AWS API Documentation
    #
    class FileSource < Struct.new(
      :byte_content,
      :s3_location,
      :source_type)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FinalResponse AWS API Documentation
    #
    class FinalResponse < Struct.new(
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # Contains information about why a flow completed.
    #
    # This data type is used in the following API operations:
    #
    # * [InvokeFlow response][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeFlow.html#API_agent_InvokeFlow_ResponseSyntax
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

    # Contains information about an input into the prompt flow and where to
    # send it.
    #
    # This data type is used in the following API operations:
    #
    # * [InvokeFlow request][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeFlow.html#API_agent_InvokeFlow_RequestSyntax
    #
    # @!attribute [rw] content
    #   Contains information about an input into the prompt flow.
    #   @return [Types::FlowInputContent]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowInput AWS API Documentation
    #
    class FlowInput < Struct.new(
      :content,
      :node_name,
      :node_output_name)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # Contains information about an input into the flow.
    #
    # This data type is used in the following API operations:
    #
    # * [InvokeFlow request][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeFlow.html#API_agent_InvokeFlow_RequestSyntax
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

    # Contains information about the content in an output from prompt flow
    # invocation.
    #
    # This data type is used in the following API operations:
    #
    # * [InvokeFlow request][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeFlow.html#API_agent_InvokeFlow_RequestSyntax
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
    # This data type is used in the following API operations:
    #
    # * [InvokeFlow response][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeFlow.html#API_agent_InvokeFlow_ResponseSyntax
    #
    # @!attribute [rw] content
    #   The content in the output.
    #   @return [Types::FlowOutputContent]
    #
    # @!attribute [rw] node_name
    #   The name of the flow output node that the output is from.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The type of the node that the output is from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowOutputEvent AWS API Documentation
    #
    class FlowOutputEvent < Struct.new(
      :content,
      :node_name,
      :node_type,
      :event_type)
      SENSITIVE = []
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
    # @!attribute [rw] action_invocation_type
    #   Contains information about the function to invoke,
    #   @return [String]
    #
    # @!attribute [rw] function
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of parameters of the function.
    #   @return [Array<Types::FunctionParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FunctionInvocationInput AWS API Documentation
    #
    class FunctionInvocationInput < Struct.new(
      :action_group,
      :action_invocation_type,
      :function,
      :parameters)
      SENSITIVE = []
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
    #   The response from the function call using the parameters. The key of
    #   the object is the content type (currently, only `TEXT` is
    #   supported). The response may be returned directly or from the Lambda
    #   function.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FunctionResult AWS API Documentation
    #
    class FunctionResult < Struct.new(
      :action_group,
      :confirmation_state,
      :function,
      :response_body,
      :response_state)
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
    # @!attribute [rw] additional_model_request_fields
    #   Additional model parameters and corresponding values not included in
    #   the textInferenceConfig structure for a knowledge base. This allows
    #   users to provide custom model parameters specific to the language
    #   model being used.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
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
    # @!attribute [rw] prompt_template
    #   Contains the template for the prompt that's sent to the model for
    #   response generation.
    #   @return [Types::PromptTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GenerationConfiguration AWS API Documentation
    #
    class GenerationConfiguration < Struct.new(
      :additional_model_request_fields,
      :guardrail_configuration,
      :inference_config,
      :prompt_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_alias_id
    #   The unique identifier of an alias of an agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent to which the alias belongs.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of items to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_id
    #   The unique identifier of the memory.
    #   @return [String]
    #
    # @!attribute [rw] memory_type
    #   The type of memory.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the maxItems value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetAgentMemoryRequest AWS API Documentation
    #
    class GetAgentMemoryRequest < Struct.new(
      :agent_alias_id,
      :agent_id,
      :max_items,
      :memory_id,
      :memory_type,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_contents
    #   Contains details of the sessions stored in the memory
    #   @return [Array<Types::Memory>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the maxItems value
    #   provided in the request, use this token when making another request
    #   in the `nextToken` field to return the next batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetAgentMemoryResponse AWS API Documentation
    #
    class GetAgentMemoryResponse < Struct.new(
      :memory_contents,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Assessment details of the content analyzed by Guardrails.
    #
    # @!attribute [rw] content_policy
    #   Content policy details of the Guardrail.
    #   @return [Types::GuardrailContentPolicyAssessment]
    #
    # @!attribute [rw] sensitive_information_policy
    #   Sensitive Information policy details of Guardrail.
    #   @return [Types::GuardrailSensitiveInformationPolicyAssessment]
    #
    # @!attribute [rw] topic_policy
    #   Topic policy details of the Guardrail.
    #   @return [Types::GuardrailTopicPolicyAssessment]
    #
    # @!attribute [rw] word_policy
    #   Word policy details of the Guardrail.
    #   @return [Types::GuardrailWordPolicyAssessment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailAssessment AWS API Documentation
    #
    class GuardrailAssessment < Struct.new(
      :content_policy,
      :sensitive_information_policy,
      :topic_policy,
      :word_policy)
      SENSITIVE = [:content_policy, :sensitive_information_policy, :topic_policy, :word_policy]
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

    # Details of the content filter used in the Guardrail.
    #
    # @!attribute [rw] action
    #   The action placed on the content by the Guardrail filter.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence level regarding the content detected in the filter by
    #   the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of content detected in the filter by the Guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailContentFilter AWS API Documentation
    #
    class GuardrailContentFilter < Struct.new(
      :action,
      :confidence,
      :type)
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
    # @!attribute [rw] action
    #   The action details for the custom word filter in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] match
    #   The match details for the custom word filter in the Guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailCustomWord AWS API Documentation
    #
    class GuardrailCustomWord < Struct.new(
      :action,
      :match)
      SENSITIVE = []
      include Aws::Structure
    end

    # The managed word details for the filter in the Guardrail.
    #
    # @!attribute [rw] action
    #   The action details for the managed word filter in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] match
    #   The match details for the managed word filter in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type details for the managed word filter in the Guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailManagedWord AWS API Documentation
    #
    class GuardrailManagedWord < Struct.new(
      :action,
      :match,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Guardrail filter to identify and remove personally identifiable
    # information (PII).
    #
    # @!attribute [rw] action
    #   The action of the Guardrail filter to identify and remove PII.
    #   @return [String]
    #
    # @!attribute [rw] match
    #   The match to settings in the Guardrail filter to identify and remove
    #   PII.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of PII the Guardrail filter has identified and removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailPiiEntityFilter AWS API Documentation
    #
    class GuardrailPiiEntityFilter < Struct.new(
      :action,
      :match,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for the regex filter used in the Guardrail.
    #
    # @!attribute [rw] action
    #   The action details for the regex filter used in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] match
    #   The match details for the regex filter used in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name details for the regex filter used in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] regex
    #   The regex details for the regex filter used in the Guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailRegexFilter AWS API Documentation
    #
    class GuardrailRegexFilter < Struct.new(
      :action,
      :match,
      :name,
      :regex)
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
    # @!attribute [rw] action
    #   The action details on a specific topic in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name details on a specific topic in the Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type details on a specific topic in the Guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailTopic AWS API Documentation
    #
    class GuardrailTopic < Struct.new(
      :action,
      :name,
      :type)
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
    # @!attribute [rw] input_assessments
    #   The details of the input assessments used in the Guardrail Trace.
    #   @return [Array<Types::GuardrailAssessment>]
    #
    # @!attribute [rw] output_assessments
    #   The details of the output assessments used in the Guardrail Trace.
    #   @return [Array<Types::GuardrailAssessment>]
    #
    # @!attribute [rw] trace_id
    #   The details of the trace Id used in the Guardrail Trace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GuardrailTrace AWS API Documentation
    #
    class GuardrailTrace < Struct.new(
      :action,
      :input_assessments,
      :output_assessments,
      :trace_id)
      SENSITIVE = [:input_assessments, :output_assessments]
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
    # @!attribute [rw] maximum_length
    #   The maximum number of tokens allowed in the generated response.
    #   @return [Integer]
    #
    # @!attribute [rw] stop_sequences
    #   A list of stop sequences. A stop sequence is a sequence of
    #   characters that causes the model to stop generating the response.
    #   @return [Array<String>]
    #
    # @!attribute [rw] temperature
    #   The likelihood of the model selecting higher-probability options
    #   while generating a response. A lower value makes the model more
    #   likely to choose higher-probability options, while a higher value
    #   makes the model more likely to choose lower-probability options.
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
    # @!attribute [rw] top_p
    #   While generating a response, the model determines the probability of
    #   the following token at each point of generation. The value that you
    #   set for `Top P` determines the number of most-likely candidates from
    #   which the model chooses the next token in the sequence. For example,
    #   if you set `topP` to 0.8, the model only selects the next token from
    #   the top 80% of the probability distribution of next tokens.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InferenceConfiguration AWS API Documentation
    #
    class InferenceConfiguration < Struct.new(
      :maximum_length,
      :stop_sequences,
      :temperature,
      :top_k,
      :top_p)
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

    # An internal server error occurred. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information pertaining to the action group or knowledge base
    # that is being invoked.
    #
    # @!attribute [rw] action_group_invocation_input
    #   Contains information about the action group to be invoked.
    #   @return [Types::ActionGroupInvocationInput]
    #
    # @!attribute [rw] code_interpreter_invocation_input
    #   Contains information about the code interpreter to be invoked.
    #   @return [Types::CodeInterpreterInvocationInput]
    #
    # @!attribute [rw] invocation_type
    #   Specifies whether the agent is invoking an action group or a
    #   knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_lookup_input
    #   Contains details about the knowledge base to look up and the query
    #   to be made.
    #   @return [Types::KnowledgeBaseLookupInput]
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvocationInput AWS API Documentation
    #
    class InvocationInput < Struct.new(
      :action_group_invocation_input,
      :code_interpreter_invocation_input,
      :invocation_type,
      :knowledge_base_lookup_input,
      :trace_id)
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

    # @!attribute [rw] agent_alias_id
    #   The alias of the agent to use.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent to use.
    #   @return [String]
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
    # @!attribute [rw] end_session
    #   Specifies whether to end the session with the agent or not.
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
    # @!attribute [rw] session_id
    #   The unique identifier of the session. Use the same value across
    #   requests to continue the same conversation.
    #   @return [String]
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeAgentRequest AWS API Documentation
    #
    class InvokeAgentRequest < Struct.new(
      :agent_alias_id,
      :agent_id,
      :enable_trace,
      :end_session,
      :input_text,
      :memory_id,
      :session_id,
      :session_state)
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
    # @!attribute [rw] memory_id
    #   The unique identifier of the agent memory.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session with the agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeAgentResponse AWS API Documentation
    #
    class InvokeAgentResponse < Struct.new(
      :completion,
      :content_type,
      :memory_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_alias_identifier
    #   The unique identifier of the flow alias.
    #   @return [String]
    #
    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   A list of objects, each containing information about an input into
    #   the flow.
    #   @return [Array<Types::FlowInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeFlowRequest AWS API Documentation
    #
    class InvokeFlowRequest < Struct.new(
      :flow_alias_identifier,
      :flow_identifier,
      :inputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] response_stream
    #   The output of the flow, returned as a stream. If there's an error,
    #   the error is returned.
    #   @return [Types::FlowResponseStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeFlowResponse AWS API Documentation
    #
    class InvokeFlowResponse < Struct.new(
      :response_stream)
      SENSITIVE = []
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
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to look up.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The query made to the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseLookupInput AWS API Documentation
    #
    class KnowledgeBaseLookupInput < Struct.new(
      :knowledge_base_id,
      :text)
      SENSITIVE = [:knowledge_base_id, :text]
      include Aws::Structure
    end

    # Contains details about the results from looking up the knowledge base.
    #
    # @!attribute [rw] retrieved_references
    #   Contains metadata about the sources cited for the generated
    #   response.
    #   @return [Array<Types::RetrievedReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseLookupOutput AWS API Documentation
    #
    class KnowledgeBaseLookupOutput < Struct.new(
      :retrieved_references)
      SENSITIVE = []
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
    #   Contains a chunk of text from a data source in the knowledge base.
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
    # @!attribute [rw] score
    #   The level of relevance of the result to the query.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseRetrievalResult AWS API Documentation
    #
    class KnowledgeBaseRetrievalResult < Struct.new(
      :content,
      :location,
      :metadata,
      :score)
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
    # @!attribute [rw] generation_configuration
    #   Contains configurations for response generation based on the
    #   knowledge base query results.
    #   @return [Types::GenerationConfiguration]
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
    # @!attribute [rw] orchestration_configuration
    #   Settings for how the model processes the prompt prior to retrieval
    #   and generation.
    #   @return [Types::OrchestrationConfiguration]
    #
    # @!attribute [rw] retrieval_configuration
    #   Contains configurations for how to retrieve and return the knowledge
    #   base query.
    #   @return [Types::KnowledgeBaseRetrievalConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseRetrieveAndGenerateConfiguration AWS API Documentation
    #
    class KnowledgeBaseRetrieveAndGenerateConfiguration < Struct.new(
      :generation_configuration,
      :knowledge_base_id,
      :model_arn,
      :orchestration_configuration,
      :retrieval_configuration)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseVectorSearchConfiguration AWS API Documentation
    #
    class KnowledgeBaseVectorSearchConfiguration < Struct.new(
      :filter,
      :number_of_results,
      :override_search_type)
      SENSITIVE = [:filter]
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
    # @!attribute [rw] session_expiry_time
    #   The time when the memory duration for the session is set to end.
    #   @return [Time]
    #
    # @!attribute [rw] session_id
    #   The identifier for this session.
    #   @return [String]
    #
    # @!attribute [rw] session_start_time
    #   The start time for this session.
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
      :session_expiry_time,
      :session_id,
      :session_start_time,
      :summary_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details of the foundation model.
    #
    # @!attribute [rw] usage
    #   Contains details of the foundation model usage.
    #   @return [Types::Usage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Metadata AWS API Documentation
    #
    class Metadata < Struct.new(
      :usage)
      SENSITIVE = [:usage]
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
    # @!attribute [rw] override_lambda
    #   The ARN of the Lambda function to use when parsing the raw
    #   foundation model output in parts of the agent sequence.
    #   @return [String]
    #
    # @!attribute [rw] parser_mode
    #   Specifies whether to override the default parser Lambda function
    #   when parsing the raw foundation model output in the part of the
    #   agent sequence defined by the `promptType`.
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
    # @!attribute [rw] text
    #   The text that prompted the agent at this step.
    #   @return [String]
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The step in the agent sequence.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ModelInvocationInput AWS API Documentation
    #
    class ModelInvocationInput < Struct.new(
      :inference_configuration,
      :override_lambda,
      :parser_mode,
      :prompt_creation_mode,
      :text,
      :trace_id,
      :type)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # Contains the result or output of an action group or knowledge base, or
    # the response to the user.
    #
    # @!attribute [rw] action_group_invocation_output
    #   Contains the JSON-formatted string returned by the API invoked by
    #   the action group.
    #   @return [Types::ActionGroupInvocationOutput]
    #
    # @!attribute [rw] code_interpreter_invocation_output
    #   Contains the JSON-formatted string returned by the API invoked by
    #   the code interpreter.
    #   @return [Types::CodeInterpreterInvocationOutput]
    #
    # @!attribute [rw] final_response
    #   Contains details about the response to the user.
    #   @return [Types::FinalResponse]
    #
    # @!attribute [rw] knowledge_base_lookup_output
    #   Contains details about the results from looking up the knowledge
    #   base.
    #   @return [Types::KnowledgeBaseLookupOutput]
    #
    # @!attribute [rw] reprompt_response
    #   Contains details about the response to reprompt the input.
    #   @return [Types::RepromptResponse]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Observation AWS API Documentation
    #
    class Observation < Struct.new(
      :action_group_invocation_output,
      :code_interpreter_invocation_output,
      :final_response,
      :knowledge_base_lookup_output,
      :reprompt_response,
      :trace_id,
      :type)
      SENSITIVE = [:reprompt_response]
      include Aws::Structure
    end

    # Settings for how the model processes the prompt prior to retrieval and
    # generation.
    #
    # @!attribute [rw] query_transformation_configuration
    #   To split up the prompt and retrieve multiple sources, set the
    #   transformation type to `QUERY_DECOMPOSITION`.
    #   @return [Types::QueryTransformationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OrchestrationConfiguration AWS API Documentation
    #
    class OrchestrationConfiguration < Struct.new(
      :query_transformation_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The foundation model output from the orchestration step.
    #
    # @!attribute [rw] metadata
    #   Contains information about the foundation model output.
    #   @return [Types::Metadata]
    #
    # @!attribute [rw] raw_response
    #   Contains details of the raw response from the foundation model
    #   output.
    #   @return [Types::RawResponse]
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OrchestrationModelInvocationOutput AWS API Documentation
    #
    class OrchestrationModelInvocationOutput < Struct.new(
      :metadata,
      :raw_response,
      :trace_id)
      SENSITIVE = [:metadata, :raw_response]
      include Aws::Structure
    end

    # Details about the orchestration step, in which the agent determines
    # the order in which actions are executed and which knowledge bases are
    # retrieved.
    #
    # @note OrchestrationTrace is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OrchestrationTrace corresponding to the set member.
    #
    # @!attribute [rw] invocation_input
    #   Contains information pertaining to the action group or knowledge
    #   base that is being invoked.
    #   @return [Types::InvocationInput]
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
    # @!attribute [rw] observation
    #   Details about the observation (the output of the action group Lambda
    #   or knowledge base) made by the agent.
    #   @return [Types::Observation]
    #
    # @!attribute [rw] rationale
    #   Details about the reasoning, based on the input, that the agent uses
    #   to justify carrying out an action group or getting information from
    #   a knowledge base.
    #   @return [Types::Rationale]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OrchestrationTrace AWS API Documentation
    #
    class OrchestrationTrace < Struct.new(
      :invocation_input,
      :model_invocation_input,
      :model_invocation_output,
      :observation,
      :rationale,
      :unknown)
      SENSITIVE = [:invocation_input, :model_invocation_input, :model_invocation_output, :observation, :rationale]
      include Aws::Structure
      include Aws::Structure::Union

      class InvocationInput < OrchestrationTrace; end
      class ModelInvocationInput < OrchestrationTrace; end
      class ModelInvocationOutput < OrchestrationTrace; end
      class Observation < OrchestrationTrace; end
      class Rationale < OrchestrationTrace; end
      class Unknown < OrchestrationTrace; end
    end

    # Contains details of the response from code interpreter.
    #
    # @!attribute [rw] bytes
    #   The byte count of files that contains response from code
    #   interpreter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the file containing response from code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of file that contains response from the code interpreter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OutputFile AWS API Documentation
    #
    class OutputFile < Struct.new(
      :bytes,
      :name,
      :type)
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

    # Contains a part of an agent response and citations for it.
    #
    # @!attribute [rw] attribution
    #   Contains citations for a part of an agent response.
    #   @return [Types::Attribution]
    #
    # @!attribute [rw] bytes
    #   A part of the agent response in bytes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PayloadPart AWS API Documentation
    #
    class PayloadPart < Struct.new(
      :attribution,
      :bytes,
      :event_type)
      SENSITIVE = [:bytes]
      include Aws::Structure
    end

    # The foundation model output from the post-processing step.
    #
    # @!attribute [rw] metadata
    #   Provides details of the foundation model.
    #   @return [Types::Metadata]
    #
    # @!attribute [rw] parsed_response
    #   Details about the response from the Lambda parsing of the output of
    #   the post-processing step.
    #   @return [Types::PostProcessingParsedResponse]
    #
    # @!attribute [rw] raw_response
    #   Contains the raw output from the foundation model.
    #   @return [Types::RawResponse]
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PostProcessingModelInvocationOutput AWS API Documentation
    #
    class PostProcessingModelInvocationOutput < Struct.new(
      :metadata,
      :parsed_response,
      :raw_response,
      :trace_id)
      SENSITIVE = [:metadata, :parsed_response, :raw_response]
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
    # @!attribute [rw] metadata
    #   Provides details of the foundation model.
    #   @return [Types::Metadata]
    #
    # @!attribute [rw] parsed_response
    #   Details about the response from the Lambda parsing of the output of
    #   the pre-processing step.
    #   @return [Types::PreProcessingParsedResponse]
    #
    # @!attribute [rw] raw_response
    #   Contains the raw output from the foundation model.
    #   @return [Types::RawResponse]
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PreProcessingModelInvocationOutput AWS API Documentation
    #
    class PreProcessingModelInvocationOutput < Struct.new(
      :metadata,
      :parsed_response,
      :raw_response,
      :trace_id)
      SENSITIVE = [:metadata, :parsed_response, :raw_response]
      include Aws::Structure
    end

    # Details about the response from the Lambda parsing of the output from
    # the pre-processing step.
    #
    # @!attribute [rw] is_valid
    #   Whether the user input is valid or not. If `false`, the agent
    #   doesn't proceed to orchestration.
    #   @return [Boolean]
    #
    # @!attribute [rw] rationale
    #   The text returned by the parsing of the pre-processing step,
    #   explaining the steps that the agent plans to take in orchestration,
    #   if the user input is valid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PreProcessingParsedResponse AWS API Documentation
    #
    class PreProcessingParsedResponse < Struct.new(
      :is_valid,
      :rationale)
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
    # @!attribute [rw] text
    #   The reasoning or thought process of the agent, based on the input.
    #   @return [String]
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Rationale AWS API Documentation
    #
    class Rationale < Struct.new(
      :text,
      :trace_id)
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

    # Contains details about the agent's response to reprompt the input.
    #
    # @!attribute [rw] source
    #   Specifies what output is prompting the agent to reprompt the input.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text reprompting the input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RepromptResponse AWS API Documentation
    #
    class RepromptResponse < Struct.new(
      :source,
      :text)
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
    # @!attribute [rw] and_all
    #   Knowledge base data sources are returned if their metadata
    #   attributes fulfill all the filter conditions inside this list.
    #   @return [Array<Types::RetrievalFilter>]
    #
    # @!attribute [rw] equals
    #   Knowledge base data sources are returned if they contain a metadata
    #   attribute whose name matches the `key` and whose value matches the
    #   `value` in this object.
    #
    #   The following example would return data sources with an `animal`
    #   attribute whose value is `cat`:
    #
    #   `"equals": \{ "key": "animal", "value": "cat" \}`
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
    #   `"greaterThan": \{ "key": "year", "value": 1989 \}`
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
    #   `"greaterThanOrEquals": \{ "key": "year", "value": 1989 \}`
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
    #   `"in": \{ "key": "animal", "value": ["cat", "dog"] \}`
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
    #   `"lessThan": \{ "key": "year", "value": 1989 \}`
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
    #   `"lessThanOrEquals": \{ "key": "year", "value": 1989 \}`
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
    #   `"listContains": \{ "key": "animals", "value": "cat" \}`
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] not_equals
    #   Knowledge base data sources that contain a metadata attribute whose
    #   name matches the `key` and whose value doesn't match the `value` in
    #   this object are returned.
    #
    #   The following example would return data sources that don't contain
    #   an `animal` attribute whose value is `cat`.
    #
    #   `"notEquals": \{ "key": "animal", "value": "cat" \}`
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
    #   `"notIn": \{ "key": "animal", "value": ["cat", "dog"] \}`
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] or_all
    #   Knowledge base data sources are returned if their metadata
    #   attributes fulfill at least one of the filter conditions inside this
    #   list.
    #   @return [Array<Types::RetrievalFilter>]
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
    #   `"startsWith": \{ "key": "animal", "value": "ca" \}`
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
    #     `"stringContains": \{ "key": "animal", "value": "at" \}`
    #
    #   * A list with a member that contains the `value` as a substring. The
    #     following example would return data sources with an `animals`
    #     attribute that is a list containing a member that contains the
    #     substring `at` (for example `["dog", "cat"]`).
    #
    #     `"stringContains": \{ "key": "animals", "value": "at" \}`
    #   @return [Types::FilterAttribute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalFilter AWS API Documentation
    #
    class RetrievalFilter < Struct.new(
      :and_all,
      :equals,
      :greater_than,
      :greater_than_or_equals,
      :in,
      :less_than,
      :less_than_or_equals,
      :list_contains,
      :not_equals,
      :not_in,
      :or_all,
      :starts_with,
      :string_contains,
      :unknown)
      SENSITIVE = [:and_all, :or_all]
      include Aws::Structure
      include Aws::Structure::Union

      class AndAll < RetrievalFilter; end
      class Equals < RetrievalFilter; end
      class GreaterThan < RetrievalFilter; end
      class GreaterThanOrEquals < RetrievalFilter; end
      class In < RetrievalFilter; end
      class LessThan < RetrievalFilter; end
      class LessThanOrEquals < RetrievalFilter; end
      class ListContains < RetrievalFilter; end
      class NotEquals < RetrievalFilter; end
      class NotIn < RetrievalFilter; end
      class OrAll < RetrievalFilter; end
      class StartsWith < RetrievalFilter; end
      class StringContains < RetrievalFilter; end
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

    # Contains the cited text from the data source.
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
    # @!attribute [rw] text
    #   The cited text from the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultContent AWS API Documentation
    #
    class RetrievalResultContent < Struct.new(
      :text)
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
    # * [InvokeAgent response][3] – in the `locatino` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax
    #
    # @!attribute [rw] confluence_location
    #   The Confluence data source location.
    #   @return [Types::RetrievalResultConfluenceLocation]
    #
    # @!attribute [rw] s3_location
    #   The S3 data source location.
    #   @return [Types::RetrievalResultS3Location]
    #
    # @!attribute [rw] salesforce_location
    #   The Salesforce data source location.
    #   @return [Types::RetrievalResultSalesforceLocation]
    #
    # @!attribute [rw] share_point_location
    #   The SharePoint data source location.
    #   @return [Types::RetrievalResultSharePointLocation]
    #
    # @!attribute [rw] type
    #   The type of data source location.
    #   @return [String]
    #
    # @!attribute [rw] web_location
    #   The web URL/URLs data source location.
    #   @return [Types::RetrievalResultWebLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultLocation AWS API Documentation
    #
    class RetrievalResultLocation < Struct.new(
      :confluence_location,
      :s3_location,
      :salesforce_location,
      :share_point_location,
      :type,
      :web_location)
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
    # @!attribute [rw] external_sources_configuration
    #   The configuration for the external source wrapper object in the
    #   `retrieveAndGenerate` function.
    #   @return [Types::ExternalSourcesRetrieveAndGenerateConfiguration]
    #
    # @!attribute [rw] knowledge_base_configuration
    #   Contains details about the knowledge base for retrieving information
    #   and generating responses.
    #   @return [Types::KnowledgeBaseRetrieveAndGenerateConfiguration]
    #
    # @!attribute [rw] type
    #   The type of resource that contains your data for retrieving
    #   information and generating responses.
    #
    #   If you choose ot use `EXTERNAL_SOURCES`, then currently only Claude
    #   3 Sonnet models for knowledge bases are supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateConfiguration AWS API Documentation
    #
    class RetrieveAndGenerateConfiguration < Struct.new(
      :external_sources_configuration,
      :knowledge_base_configuration,
      :type)
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
    # @!attribute [rw] session_id
    #   The unique identifier of the session. When you first make a
    #   `RetrieveAndGenerate` request, Amazon Bedrock automatically
    #   generates this value. You must reuse this value for all subsequent
    #   requests in the same conversational session. This value allows
    #   Amazon Bedrock to maintain context and knowledge from previous
    #   interactions. You can't explicitly set the `sessionId` yourself.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateRequest AWS API Documentation
    #
    class RetrieveAndGenerateRequest < Struct.new(
      :input,
      :retrieve_and_generate_configuration,
      :session_configuration,
      :session_id)
      SENSITIVE = [:input]
      include Aws::Structure
    end

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
    # @!attribute [rw] output
    #   Contains the response generated from querying the knowledge base.
    #   @return [Types::RetrieveAndGenerateOutput]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session. When you first make a
    #   `RetrieveAndGenerate` request, Amazon Bedrock automatically
    #   generates this value. You must reuse this value for all subsequent
    #   requests in the same conversational session. This value allows
    #   Amazon Bedrock to maintain context and knowledge from previous
    #   interactions. You can't explicitly set the `sessionId` yourself.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateResponse AWS API Documentation
    #
    class RetrieveAndGenerateResponse < Struct.new(
      :citations,
      :guardrail_action,
      :output,
      :session_id)
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

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to query.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If there are more results than can fit in the response, the response
    #   returns a `nextToken`. Use this token in the `nextToken` field of
    #   another request to retrieve the next batch of results.
    #   @return [String]
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
    # @!attribute [rw] retrieval_query
    #   Contains the query to send the knowledge base.
    #   @return [Types::KnowledgeBaseQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveRequest AWS API Documentation
    #
    class RetrieveRequest < Struct.new(
      :knowledge_base_id,
      :next_token,
      :retrieval_configuration,
      :retrieval_query)
      SENSITIVE = [:retrieval_query]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more results than can fit in the response, the response
    #   returns a `nextToken`. Use this token in the `nextToken` field of
    #   another request to retrieve the next batch of results.
    #   @return [String]
    #
    # @!attribute [rw] retrieval_results
    #   A list of results from querying the knowledge base.
    #   @return [Array<Types::KnowledgeBaseRetrievalResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveResponse AWS API Documentation
    #
    class RetrieveResponse < Struct.new(
      :next_token,
      :retrieval_results)
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
    # @!attribute [rw] invocation_id
    #   The identifier of the action group invocation.
    #   @return [String]
    #
    # @!attribute [rw] invocation_inputs
    #   A list of objects that contain information about the parameters and
    #   inputs that need to be sent into the API operation or function,
    #   based on what the agent determines from its session with the user.
    #   @return [Array<Types::InvocationInputMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ReturnControlPayload AWS API Documentation
    #
    class ReturnControlPayload < Struct.new(
      :invocation_id,
      :invocation_inputs,
      :event_type)
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
    # @!attribute [rw] files
    #   Contains information about the files used by code interpreter.
    #   @return [Array<Types::InputFile>]
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
    # @!attribute [rw] knowledge_base_configurations
    #   An array of configurations, each of which applies to a knowledge
    #   base attached to the agent.
    #   @return [Array<Types::KnowledgeBaseConfiguration>]
    #
    # @!attribute [rw] prompt_session_attributes
    #   Contains attributes that persist across a prompt and the values of
    #   those attributes. These attributes replace the
    #   $prompt\_session\_attributes$ placeholder variable in the
    #   orchestration prompt template. For more information, see [Prompt
    #   template placeholder variables][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html
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
    # @!attribute [rw] session_attributes
    #   Contains attributes that persist across a session and the values of
    #   those attributes.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/SessionState AWS API Documentation
    #
    class SessionState < Struct.new(
      :files,
      :invocation_id,
      :knowledge_base_configurations,
      :prompt_session_attributes,
      :return_control_invocation_results,
      :session_attributes)
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
    # @!attribute [rw] end
    #   Where the text with a citation ends in the generated output.
    #   @return [Integer]
    #
    # @!attribute [rw] start
    #   Where the text with a citation starts in the generated output.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Span AWS API Documentation
    #
    class Span < Struct.new(
      :end,
      :start)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TextInferenceConfig AWS API Documentation
    #
    class TextInferenceConfig < Struct.new(
      :max_tokens,
      :stop_sequences,
      :temperature,
      :top_p)
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
    # @!attribute [rw] span
    #   Contains information about where the text with a citation begins and
    #   ends in the generated output.
    #   @return [Types::Span]
    #
    # @!attribute [rw] text
    #   The part of the generated text that contains a citation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TextResponsePart AWS API Documentation
    #
    class TextResponsePart < Struct.new(
      :span,
      :text)
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
    # @!attribute [rw] failure_trace
    #   Contains information about the failure of the interaction.
    #   @return [Types::FailureTrace]
    #
    # @!attribute [rw] guardrail_trace
    #   The trace details for a trace defined in the Guardrail filter.
    #   @return [Types::GuardrailTrace]
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
    # @!attribute [rw] pre_processing_trace
    #   Details about the pre-processing step, in which the agent
    #   contextualizes and categorizes user inputs.
    #   @return [Types::PreProcessingTrace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Trace AWS API Documentation
    #
    class Trace < Struct.new(
      :failure_trace,
      :guardrail_trace,
      :orchestration_trace,
      :post_processing_trace,
      :pre_processing_trace,
      :unknown)
      SENSITIVE = [:failure_trace, :guardrail_trace, :orchestration_trace, :post_processing_trace, :pre_processing_trace]
      include Aws::Structure
      include Aws::Structure::Union

      class FailureTrace < Trace; end
      class GuardrailTrace < Trace; end
      class OrchestrationTrace < Trace; end
      class PostProcessingTrace < Trace; end
      class PreProcessingTrace < Trace; end
      class Unknown < Trace; end
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
    # @!attribute [rw] agent_alias_id
    #   The unique identifier of the alias of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TracePart AWS API Documentation
    #
    class TracePart < Struct.new(
      :agent_alias_id,
      :agent_id,
      :agent_version,
      :session_id,
      :trace,
      :event_type)
      SENSITIVE = [:trace]
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

    # The output of the flow.
    #
    # This data type is used in the following API operations:
    #
    # * [InvokeFlow response][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeFlow.html#API_agent_InvokeFlow_ResponseSyntax
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FlowResponseStream AWS API Documentation
    #
    class FlowResponseStream < Enumerator

      def event_types
        [
          :access_denied_exception,
          :bad_gateway_exception,
          :conflict_exception,
          :dependency_failed_exception,
          :flow_completion_event,
          :flow_output_event,
          :internal_server_exception,
          :resource_not_found_exception,
          :service_quota_exceeded_exception,
          :throttling_exception,
          :validation_exception
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
          :access_denied_exception,
          :bad_gateway_exception,
          :chunk,
          :conflict_exception,
          :dependency_failed_exception,
          :files,
          :internal_server_exception,
          :resource_not_found_exception,
          :return_control,
          :service_quota_exceeded_exception,
          :throttling_exception,
          :trace,
          :validation_exception
        ]
      end

    end

  end
end

