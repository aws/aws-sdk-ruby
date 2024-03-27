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

    # Contains information about the action group being invoked.
    #
    # @!attribute [rw] action_group_name
    #   The name of the action group.
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
    # @!attribute [rw] verb
    #   The API method being used, based off the action group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ActionGroupInvocationInput AWS API Documentation
    #
    class ActionGroupInvocationInput < Struct.new(
      :action_group_name,
      :api_path,
      :parameters,
      :request_body,
      :verb)
      SENSITIVE = [:action_group_name, :api_path, :verb]
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

    # An object containing a segment of the generated response that is based
    # on a source in the knowledge base, alongside information about the
    # source.
    #
    # This data type is used in the following API operations:
    #
    # * [Retrieve response][1] – in the `citations` field
    #
    # * [RetrieveAndGenerate response][2] – in the `citations` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax
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

    # Contains metadata about a part of the generated response that is
    # accompanied by a citation.
    #
    # This data type is used in the following API operations:
    #
    # * [Retrieve response][1] – in the `generatedResponsePart` field
    #
    # * [RetrieveAndGenerate response][2] – in the `generatedResponsePart`
    #   field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax
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
    #   response generation.
    #   @return [Types::PromptTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GenerationConfiguration AWS API Documentation
    #
    class GenerationConfiguration < Struct.new(
      :prompt_template)
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
    #   if you set `topP` to 80, the model only selects the next token from
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
      :invocation_type,
      :knowledge_base_lookup_input,
      :trace_id)
      SENSITIVE = []
      include Aws::Structure
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
    # @!attribute [rw] session_id
    #   The unique identifier of the session with the agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeAgentResponse AWS API Documentation
    #
    class InvokeAgentResponse < Struct.new(
      :completion,
      :content_type,
      :session_id)
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

    # Contains configurations for the knowledge base query and retrieval
    # process. For more information, see [Query configurations][1].
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
    #   knowwledge base query results.
    #   @return [Types::GenerationConfiguration]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base that is queried and the
    #   foundation model used for generation.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The ARN of the foundation model used to generate a response.
    #   @return [String]
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
      :final_response,
      :knowledge_base_lookup_output,
      :reprompt_response,
      :trace_id,
      :type)
      SENSITIVE = [:reprompt_response]
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
      :observation,
      :rationale,
      :unknown)
      SENSITIVE = [:invocation_input, :model_invocation_input, :observation, :rationale]
      include Aws::Structure
      include Aws::Structure::Union

      class InvocationInput < OrchestrationTrace; end
      class ModelInvocationInput < OrchestrationTrace; end
      class Observation < OrchestrationTrace; end
      class Rationale < OrchestrationTrace; end
      class Unknown < OrchestrationTrace; end
    end

    # A parameter in the Lambda input event.
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
    # @!attribute [rw] parsed_response
    #   Details about the response from the Lambda parsing of the output of
    #   the post-processing step.
    #   @return [Types::PostProcessingParsedResponse]
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PostProcessingModelInvocationOutput AWS API Documentation
    #
    class PostProcessingModelInvocationOutput < Struct.new(
      :parsed_response,
      :trace_id)
      SENSITIVE = [:parsed_response]
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
    # @!attribute [rw] parsed_response
    #   Details about the response from the Lambda parsing of the output of
    #   the pre-processing step.
    #   @return [Types::PreProcessingParsedResponse]
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PreProcessingModelInvocationOutput AWS API Documentation
    #
    class PreProcessingModelInvocationOutput < Struct.new(
      :parsed_response,
      :trace_id)
      SENSITIVE = [:parsed_response]
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

    # The parameters in the request body for the Lambda input event.
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

    # The specified resource ARN was not found. Check the ARN and try your
    # request again.
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
    # information, see [Query configurations][1].
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
    #   Knowledge base data sources whose metadata attributes fulfill all
    #   the filter conditions inside this list are returned.
    #   @return [Array<Types::RetrievalFilter>]
    #
    # @!attribute [rw] equals
    #   Knowledge base data sources that contain a metadata attribute whose
    #   name matches the `key` and whose value matches the `value` in this
    #   object are returned.
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] greater_than
    #   Knowledge base data sources that contain a metadata attribute whose
    #   name matches the `key` and whose value is greater than the `value`
    #   in this object are returned.
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] greater_than_or_equals
    #   Knowledge base data sources that contain a metadata attribute whose
    #   name matches the `key` and whose value is greater than or equal to
    #   the `value` in this object are returned.
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] in
    #   Knowledge base data sources that contain a metadata attribute whose
    #   name matches the `key` and whose value is in the list specified in
    #   the `value` in this object are returned.
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] less_than
    #   Knowledge base data sources that contain a metadata attribute whose
    #   name matches the `key` and whose value is less than the `value` in
    #   this object are returned.
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] less_than_or_equals
    #   Knowledge base data sources that contain a metadata attribute whose
    #   name matches the `key` and whose value is less than or equal to the
    #   `value` in this object are returned.
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] not_equals
    #   Knowledge base data sources that contain a metadata attribute whose
    #   name matches the `key` and whose value doesn't match the `value` in
    #   this object are returned.
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] not_in
    #   Knowledge base data sources that contain a metadata attribute whose
    #   name matches the `key` and whose value isn't in the list specified
    #   in the `value` in this object are returned.
    #   @return [Types::FilterAttribute]
    #
    # @!attribute [rw] or_all
    #   Knowledge base data sources whose metadata attributes fulfill at
    #   least one of the filter conditions inside this list are returned.
    #   @return [Array<Types::RetrievalFilter>]
    #
    # @!attribute [rw] starts_with
    #   Knowledge base data sources that contain a metadata attribute whose
    #   name matches the `key` and whose value starts with the `value` in
    #   this object are returned. This filter is currently only supported
    #   for Amazon OpenSearch Serverless vector stores.
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
      :not_equals,
      :not_in,
      :or_all,
      :starts_with,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AndAll < RetrievalFilter; end
      class Equals < RetrievalFilter; end
      class GreaterThan < RetrievalFilter; end
      class GreaterThanOrEquals < RetrievalFilter; end
      class In < RetrievalFilter; end
      class LessThan < RetrievalFilter; end
      class LessThanOrEquals < RetrievalFilter; end
      class NotEquals < RetrievalFilter; end
      class NotIn < RetrievalFilter; end
      class OrAll < RetrievalFilter; end
      class StartsWith < RetrievalFilter; end
      class Unknown < RetrievalFilter; end
    end

    # Contains the cited text from the data source.
    #
    # This data type is used in the following API operations:
    #
    # * [Retrieve response][1] – in the `content` field
    #
    # * [RetrieveAndGenerate response][2] – in the `content` field
    #
    # * [Retrieve response][1] – in the `content` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
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

    # Contains information about the location of the data source.
    #
    # This data type is used in the following API operations:
    #
    # * [Retrieve response][1] – in the `location` field
    #
    # * [RetrieveAndGenerate response][2] – in the `location` field
    #
    # * [Retrieve response][1] – in the `locatino` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    #
    # @!attribute [rw] s3_location
    #   Contains the S3 location of the data source.
    #   @return [Types::RetrievalResultS3Location]
    #
    # @!attribute [rw] type
    #   The type of the location of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultLocation AWS API Documentation
    #
    class RetrievalResultLocation < Struct.new(
      :s3_location,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the S3 location of the data source.
    #
    # This data type is used in the following API operations:
    #
    # * [Retrieve response][1] – in the `s3Location` field
    #
    # * [RetrieveAndGenerate response][2] – in the `s3Location` field
    #
    # * [Retrieve response][1] – in the `s3Location` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    #
    # @!attribute [rw] uri
    #   The S3 URI of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultS3Location AWS API Documentation
    #
    class RetrievalResultS3Location < Struct.new(
      :uri)
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
    # @!attribute [rw] knowledge_base_configuration
    #   Contains details about the resource being queried.
    #   @return [Types::KnowledgeBaseRetrieveAndGenerateConfiguration]
    #
    # @!attribute [rw] type
    #   The type of resource that is queried by the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateConfiguration AWS API Documentation
    #
    class RetrieveAndGenerateConfiguration < Struct.new(
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
    #   The unique identifier of the session. Reuse the same value to
    #   continue the same session with the knowledge base.
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
    # @!attribute [rw] output
    #   Contains the response generated from querying the knowledge base.
    #   @return [Types::RetrieveAndGenerateOutput]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session. Reuse the same value to
    #   continue the same session with the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateResponse AWS API Documentation
    #
    class RetrieveAndGenerateResponse < Struct.new(
      :citations,
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
    # * [Retrieve response][2] – in the `retrievedReferences` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax
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
    # @!attribute [rw] session_attributes
    #   Contains attributes that persist across a session and the values of
    #   those attributes.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/SessionState AWS API Documentation
    #
    class SessionState < Struct.new(
      :prompt_session_attributes,
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
    # * [Retrieve response][2] – in the `span` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax
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

    # Contains the part of the generated text that contains a citation,
    # alongside where it begins and ends.
    #
    # This data type is used in the following API operations:
    #
    # * [RetrieveAndGenerate response][1] – in the `textResponsePart` field
    #
    # * [Retrieve response][2] – in the `textResponsePart` field
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax
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
      :orchestration_trace,
      :post_processing_trace,
      :pre_processing_trace,
      :unknown)
      SENSITIVE = [:failure_trace, :orchestration_trace, :post_processing_trace, :pre_processing_trace]
      include Aws::Structure
      include Aws::Structure::Union

      class FailureTrace < Trace; end
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
      :session_id,
      :trace,
      :event_type)
      SENSITIVE = [:trace]
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
          :internal_server_exception,
          :resource_not_found_exception,
          :service_quota_exceeded_exception,
          :throttling_exception,
          :trace,
          :validation_exception
        ]
      end

    end

  end
end
