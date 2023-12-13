# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockAgentRuntime
  module Types

    # This exception is thrown when a request is denied per access
    # permissions
    #
    # @!attribute [rw] message
    #   Non Blank String
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

    # input to lambda used in action group
    #
    # @!attribute [rw] action_group_name
    #   Agent Trace Action Group Name
    #   @return [String]
    #
    # @!attribute [rw] verb
    #   Agent Trace Action Group Action verb
    #   @return [String]
    #
    # @!attribute [rw] api_path
    #   Agent Trace Action Group API path
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   list of parameters included in action group invocation
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] request_body
    #   Request Body Content Map
    #   @return [Types::RequestBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ActionGroupInvocationInput AWS API Documentation
    #
    class ActionGroupInvocationInput < Struct.new(
      :action_group_name,
      :verb,
      :api_path,
      :parameters,
      :request_body)
      SENSITIVE = [:action_group_name, :verb, :api_path]
      include Aws::Structure
    end

    # output from lambda used in action group
    #
    # @!attribute [rw] text
    #   Agent Trace Action Group Lambda Invocation Output String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ActionGroupInvocationOutput AWS API Documentation
    #
    class ActionGroupInvocationOutput < Struct.new(
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # Citations associated with final agent response
    #
    # @!attribute [rw] citations
    #   List of citations
    #   @return [Array<Types::Citation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Attribution AWS API Documentation
    #
    class Attribution < Struct.new(
      :citations)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a request fails due to dependency like
    # Lambda, Bedrock, STS resource
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   Non Blank String
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

    # Citation associated with the agent response
    #
    # @!attribute [rw] generated_response_part
    #   Generate response part
    #   @return [Types::GeneratedResponsePart]
    #
    # @!attribute [rw] retrieved_references
    #   list of retrieved references
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

    # This exception is thrown when there is a conflict performing an
    # operation
    #
    # @!attribute [rw] message
    #   Non Blank String
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

    # This exception is thrown when a request fails due to dependency like
    # Lambda, Bedrock, STS resource due to a customer fault (i.e. bad
    # configuration)
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   Non Blank String
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

    # Trace Part which is emitted when agent trace could not be generated
    #
    # @!attribute [rw] trace_id
    #   Identifier for trace
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   Agent Trace Failed Reason String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FailureTrace AWS API Documentation
    #
    class FailureTrace < Struct.new(
      :trace_id,
      :failure_reason)
      SENSITIVE = [:failure_reason]
      include Aws::Structure
    end

    # Agent finish output
    #
    # @!attribute [rw] text
    #   Agent Trace Action Group Lambda Invocation Output String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/FinalResponse AWS API Documentation
    #
    class FinalResponse < Struct.new(
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # Generate response part
    #
    # @!attribute [rw] text_response_part
    #   Text response part
    #   @return [Types::TextResponsePart]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GeneratedResponsePart AWS API Documentation
    #
    class GeneratedResponsePart < Struct.new(
      :text_response_part)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configurations for controlling the inference response of an
    # InvokeAgent API call
    #
    # @!attribute [rw] temperature
    #   Controls randomness, higher values increase diversity
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   Cumulative probability cutoff for token selection
    #   @return [Float]
    #
    # @!attribute [rw] top_k
    #   Sample from the k most likely next tokens
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_length
    #   Maximum length of output
    #   @return [Integer]
    #
    # @!attribute [rw] stop_sequences
    #   List of stop sequences
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

    # This exception is thrown if there was an unexpected error during
    # processing of request
    #
    # @!attribute [rw] message
    #   Non Blank String
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

    # Trace Part which contains input details for action group or knowledge
    # base
    #
    # @!attribute [rw] trace_id
    #   Identifier for trace
    #   @return [String]
    #
    # @!attribute [rw] invocation_type
    #   types of invocations
    #   @return [String]
    #
    # @!attribute [rw] action_group_invocation_input
    #   input to lambda used in action group
    #   @return [Types::ActionGroupInvocationInput]
    #
    # @!attribute [rw] knowledge_base_lookup_input
    #   Input to lambda used in action group
    #   @return [Types::KnowledgeBaseLookupInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvocationInput AWS API Documentation
    #
    class InvocationInput < Struct.new(
      :trace_id,
      :invocation_type,
      :action_group_invocation_input,
      :knowledge_base_lookup_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # InvokeAgent Request
    #
    # @!attribute [rw] session_state
    #   Session state passed by customer. Base64 encoded json string
    #   representation of SessionState.
    #   @return [Types::SessionState]
    #
    # @!attribute [rw] agent_id
    #   Identifier for Agent
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   Identifier for Agent Alias
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   Identifier used for the current session
    #   @return [String]
    #
    # @!attribute [rw] end_session
    #   End current session
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_trace
    #   Enable agent trace events for improved debugging
    #   @return [Boolean]
    #
    # @!attribute [rw] input_text
    #   Input data in the format specified in the Content-Type request
    #   header.
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
      :input_text)
      SENSITIVE = [:input_text]
      include Aws::Structure
    end

    # InvokeAgent Response
    #
    # @!attribute [rw] completion
    #   Inference response from the model in the format specified in the
    #   Content-Type response header.
    #   @return [Types::ResponseStream]
    #
    # @!attribute [rw] content_type
    #   streaming response mimetype of the model
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   streaming response mimetype of the model
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

    # Input to lambda used in action group
    #
    # @!attribute [rw] text
    #   Agent Trace Action Group Lambda Invocation Output String
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   Agent Trace Action Group Knowledge Base Id
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

    # Input to lambda used in action group
    #
    # @!attribute [rw] retrieved_references
    #   list of retrieved references
    #   @return [Array<Types::RetrievedReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseLookupOutput AWS API Documentation
    #
    class KnowledgeBaseLookupOutput < Struct.new(
      :retrieved_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # Knowledge base input query.
    #
    # @!attribute [rw] text
    #   Knowledge base input query in text
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseQuery AWS API Documentation
    #
    class KnowledgeBaseQuery < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Search parameters for retrieving from knowledge base.
    #
    # @!attribute [rw] vector_search_configuration
    #   Knowledge base vector search configuration
    #   @return [Types::KnowledgeBaseVectorSearchConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseRetrievalConfiguration AWS API Documentation
    #
    class KnowledgeBaseRetrievalConfiguration < Struct.new(
      :vector_search_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Result item returned from a knowledge base retrieval.
    #
    # @!attribute [rw] content
    #   Content of a retrieval result.
    #   @return [Types::RetrievalResultContent]
    #
    # @!attribute [rw] location
    #   The source location of a retrieval result.
    #   @return [Types::RetrievalResultLocation]
    #
    # @!attribute [rw] score
    #   The relevance score of a result.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseRetrievalResult AWS API Documentation
    #
    class KnowledgeBaseRetrievalResult < Struct.new(
      :content,
      :location,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configurations for retrieval and generation for knowledge base.
    #
    # @!attribute [rw] knowledge_base_id
    #   Identifier of the KnowledgeBase
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   Arn of a Bedrock model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseRetrieveAndGenerateConfiguration AWS API Documentation
    #
    class KnowledgeBaseRetrieveAndGenerateConfiguration < Struct.new(
      :knowledge_base_id,
      :model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Knowledge base vector search configuration
    #
    # @!attribute [rw] number_of_results
    #   Top-K results to retrieve from knowledge base.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/KnowledgeBaseVectorSearchConfiguration AWS API Documentation
    #
    class KnowledgeBaseVectorSearchConfiguration < Struct.new(
      :number_of_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Trace Part which contains information used to call Invoke Model
    #
    # @!attribute [rw] trace_id
    #   Identifier for trace
    #   @return [String]
    #
    # @!attribute [rw] text
    #   Prompt Message
    #   @return [String]
    #
    # @!attribute [rw] type
    #   types of prompts
    #   @return [String]
    #
    # @!attribute [rw] inference_configuration
    #   Configurations for controlling the inference response of an
    #   InvokeAgent API call
    #   @return [Types::InferenceConfiguration]
    #
    # @!attribute [rw] override_lambda
    #   ARN of a Lambda.
    #   @return [String]
    #
    # @!attribute [rw] prompt_creation_mode
    #   indicates if agent uses default prompt or overriden prompt
    #   @return [String]
    #
    # @!attribute [rw] parser_mode
    #   indicates if agent uses default prompt or overriden prompt
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ModelInvocationInput AWS API Documentation
    #
    class ModelInvocationInput < Struct.new(
      :trace_id,
      :text,
      :type,
      :inference_configuration,
      :override_lambda,
      :prompt_creation_mode,
      :parser_mode)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # Trace Part which contains output details for action group or knowledge
    # base or final response
    #
    # @!attribute [rw] trace_id
    #   Identifier for trace
    #   @return [String]
    #
    # @!attribute [rw] type
    #   types of observations
    #   @return [String]
    #
    # @!attribute [rw] action_group_invocation_output
    #   output from lambda used in action group
    #   @return [Types::ActionGroupInvocationOutput]
    #
    # @!attribute [rw] knowledge_base_lookup_output
    #   Input to lambda used in action group
    #   @return [Types::KnowledgeBaseLookupOutput]
    #
    # @!attribute [rw] final_response
    #   Agent finish output
    #   @return [Types::FinalResponse]
    #
    # @!attribute [rw] reprompt_response
    #   Observation information if there were reprompts
    #   @return [Types::RepromptResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Observation AWS API Documentation
    #
    class Observation < Struct.new(
      :trace_id,
      :type,
      :action_group_invocation_output,
      :knowledge_base_lookup_output,
      :final_response,
      :reprompt_response)
      SENSITIVE = [:reprompt_response]
      include Aws::Structure
    end

    # Trace contains intermidate response during orchestration
    #
    # @note OrchestrationTrace is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OrchestrationTrace corresponding to the set member.
    #
    # @!attribute [rw] rationale
    #   Trace Part which contains information related to reasoning
    #   @return [Types::Rationale]
    #
    # @!attribute [rw] invocation_input
    #   Trace Part which contains input details for action group or
    #   knowledge base
    #   @return [Types::InvocationInput]
    #
    # @!attribute [rw] observation
    #   Trace Part which contains output details for action group or
    #   knowledge base or final response
    #   @return [Types::Observation]
    #
    # @!attribute [rw] model_invocation_input
    #   Trace Part which contains information used to call Invoke Model
    #   @return [Types::ModelInvocationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OrchestrationTrace AWS API Documentation
    #
    class OrchestrationTrace < Struct.new(
      :rationale,
      :invocation_input,
      :observation,
      :model_invocation_input,
      :unknown)
      SENSITIVE = [:rationale, :invocation_input, :observation, :model_invocation_input]
      include Aws::Structure
      include Aws::Structure::Union

      class Rationale < OrchestrationTrace; end
      class InvocationInput < OrchestrationTrace; end
      class Observation < OrchestrationTrace; end
      class ModelInvocationInput < OrchestrationTrace; end
      class Unknown < OrchestrationTrace; end
    end

    # parameters included in action group invocation
    #
    # @!attribute [rw] name
    #   Name of parameter
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of parameter
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value of parameter
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

    # Base 64 endoded byte response
    #
    # @!attribute [rw] bytes
    #   PartBody of the payload in bytes
    #   @return [String]
    #
    # @!attribute [rw] attribution
    #   Citations associated with final agent response
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

    # Trace Part which contains information related to postprocessing
    #
    # @!attribute [rw] trace_id
    #   Identifier for trace
    #   @return [String]
    #
    # @!attribute [rw] parsed_response
    #   Trace Part which contains information if preprocessing was
    #   successful
    #   @return [Types::PostProcessingParsedResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PostProcessingModelInvocationOutput AWS API Documentation
    #
    class PostProcessingModelInvocationOutput < Struct.new(
      :trace_id,
      :parsed_response)
      SENSITIVE = [:parsed_response]
      include Aws::Structure
    end

    # Trace Part which contains information if preprocessing was successful
    #
    # @!attribute [rw] text
    #   Agent Trace Output String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PostProcessingParsedResponse AWS API Documentation
    #
    class PostProcessingParsedResponse < Struct.new(
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # Trace Part which contains information related to post processing step
    #
    # @note PostProcessingTrace is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PostProcessingTrace corresponding to the set member.
    #
    # @!attribute [rw] model_invocation_input
    #   Trace Part which contains information used to call Invoke Model
    #   @return [Types::ModelInvocationInput]
    #
    # @!attribute [rw] model_invocation_output
    #   Trace Part which contains information related to postprocessing
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

    # Trace Part which contains information related to preprocessing
    #
    # @!attribute [rw] trace_id
    #   Identifier for trace
    #   @return [String]
    #
    # @!attribute [rw] parsed_response
    #   Trace Part which contains information if preprocessing was
    #   successful
    #   @return [Types::PreProcessingParsedResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PreProcessingModelInvocationOutput AWS API Documentation
    #
    class PreProcessingModelInvocationOutput < Struct.new(
      :trace_id,
      :parsed_response)
      SENSITIVE = [:parsed_response]
      include Aws::Structure
    end

    # Trace Part which contains information if preprocessing was successful
    #
    # @!attribute [rw] rationale
    #   Agent Trace Rationale String
    #   @return [String]
    #
    # @!attribute [rw] is_valid
    #   Boolean value
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

    # Trace Part which contains information related to preprocessing step
    #
    # @note PreProcessingTrace is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PreProcessingTrace corresponding to the set member.
    #
    # @!attribute [rw] model_invocation_input
    #   Trace Part which contains information used to call Invoke Model
    #   @return [Types::ModelInvocationInput]
    #
    # @!attribute [rw] model_invocation_output
    #   Trace Part which contains information related to preprocessing
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

    # Trace Part which contains information related to reasoning
    #
    # @!attribute [rw] trace_id
    #   Identifier for trace
    #   @return [String]
    #
    # @!attribute [rw] text
    #   Agent Trace Rationale String
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

    # Observation information if there were reprompts
    #
    # @!attribute [rw] text
    #   Reprompt response text
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Parsing error source
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

    # Request Body Content Map
    #
    # @!attribute [rw] content
    #   Content type paramter map
    #   @return [Hash<String,Array<Types::Parameter>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RequestBody AWS API Documentation
    #
    class RequestBody < Struct.new(
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a resource referenced by the operation
    # does not exist
    #
    # @!attribute [rw] message
    #   Non Blank String
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

    # Content of a retrieval result.
    #
    # @!attribute [rw] text
    #   Content of a retrieval result in text
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultContent AWS API Documentation
    #
    class RetrievalResultContent < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source location of a retrieval result.
    #
    # @!attribute [rw] type
    #   The location type of a retrieval result.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The S3 location of a retrieval result.
    #   @return [Types::RetrievalResultS3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultLocation AWS API Documentation
    #
    class RetrievalResultLocation < Struct.new(
      :type,
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 location of a retrieval result.
    #
    # @!attribute [rw] uri
    #   URI of S3 location
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievalResultS3Location AWS API Documentation
    #
    class RetrievalResultS3Location < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the retrieval and generation for the session.
    #
    # @!attribute [rw] type
    #   The type of RetrieveAndGenerate.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_configuration
    #   Configurations for retrieval and generation for knowledge base.
    #   @return [Types::KnowledgeBaseRetrieveAndGenerateConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateConfiguration AWS API Documentation
    #
    class RetrieveAndGenerateConfiguration < Struct.new(
      :type,
      :knowledge_base_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Customer input of the turn
    #
    # @!attribute [rw] text
    #   Customer input of the turn in text
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateInput AWS API Documentation
    #
    class RetrieveAndGenerateInput < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Service response of the turn
    #
    # @!attribute [rw] text
    #   Service response of the turn in text
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateOutput AWS API Documentation
    #
    class RetrieveAndGenerateOutput < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   Identifier of the session.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   Customer input of the turn
    #   @return [Types::RetrieveAndGenerateInput]
    #
    # @!attribute [rw] retrieve_and_generate_configuration
    #   Configures the retrieval and generation for the session.
    #   @return [Types::RetrieveAndGenerateConfiguration]
    #
    # @!attribute [rw] session_configuration
    #   Configures common parameters of the session.
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
    #   Identifier of the session.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   Service response of the turn
    #   @return [Types::RetrieveAndGenerateOutput]
    #
    # @!attribute [rw] citations
    #   List of citations
    #   @return [Array<Types::Citation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateResponse AWS API Documentation
    #
    class RetrieveAndGenerateResponse < Struct.new(
      :session_id,
      :output,
      :citations)
      SENSITIVE = [:output]
      include Aws::Structure
    end

    # Configures common parameters of the session.
    #
    # @!attribute [rw] kms_key_arn
    #   The KMS key arn to encrypt the customer data of the session.
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
    #   Identifier of the KnowledgeBase
    #   @return [String]
    #
    # @!attribute [rw] retrieval_query
    #   Knowledge base input query.
    #   @return [Types::KnowledgeBaseQuery]
    #
    # @!attribute [rw] retrieval_configuration
    #   Search parameters for retrieving from knowledge base.
    #   @return [Types::KnowledgeBaseRetrievalConfiguration]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveRequest AWS API Documentation
    #
    class RetrieveRequest < Struct.new(
      :knowledge_base_id,
      :retrieval_query,
      :retrieval_configuration,
      :next_token)
      SENSITIVE = [:retrieval_query]
      include Aws::Structure
    end

    # @!attribute [rw] retrieval_results
    #   List of knowledge base retrieval results
    #   @return [Array<Types::KnowledgeBaseRetrievalResult>]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveResponse AWS API Documentation
    #
    class RetrieveResponse < Struct.new(
      :retrieval_results,
      :next_token)
      SENSITIVE = [:retrieval_results]
      include Aws::Structure
    end

    # Retrieved reference
    #
    # @!attribute [rw] content
    #   Content of a retrieval result.
    #   @return [Types::RetrievalResultContent]
    #
    # @!attribute [rw] location
    #   The source location of a retrieval result.
    #   @return [Types::RetrievalResultLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrievedReference AWS API Documentation
    #
    class RetrievedReference < Struct.new(
      :content,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a request is made beyond the service
    # quota
    #
    # @!attribute [rw] message
    #   Non Blank String
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

    # Session state provided
    #
    # @!attribute [rw] session_attributes
    #   Session Attributes
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] prompt_session_attributes
    #   Prompt Session Attributes
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/SessionState AWS API Documentation
    #
    class SessionState < Struct.new(
      :session_attributes,
      :prompt_session_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Span of text
    #
    # @!attribute [rw] start
    #   Start of span
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   End of span
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

    # Text response part
    #
    # @!attribute [rw] text
    #   Response part in text
    #   @return [String]
    #
    # @!attribute [rw] span
    #   Span of text
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

    # This exception is thrown when the number of requests exceeds the limit
    #
    # @!attribute [rw] message
    #   Non Blank String
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

    # Trace contains intermidate response for customer
    #
    # @note Trace is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Trace corresponding to the set member.
    #
    # @!attribute [rw] pre_processing_trace
    #   Trace Part which contains information related to preprocessing step
    #   @return [Types::PreProcessingTrace]
    #
    # @!attribute [rw] orchestration_trace
    #   Trace contains intermidate response during orchestration
    #   @return [Types::OrchestrationTrace]
    #
    # @!attribute [rw] post_processing_trace
    #   Trace Part which contains information related to post processing
    #   step
    #   @return [Types::PostProcessingTrace]
    #
    # @!attribute [rw] failure_trace
    #   Trace Part which is emitted when agent trace could not be generated
    #   @return [Types::FailureTrace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Trace AWS API Documentation
    #
    class Trace < Struct.new(
      :pre_processing_trace,
      :orchestration_trace,
      :post_processing_trace,
      :failure_trace,
      :unknown)
      SENSITIVE = [:pre_processing_trace, :orchestration_trace, :post_processing_trace, :failure_trace]
      include Aws::Structure
      include Aws::Structure::Union

      class PreProcessingTrace < Trace; end
      class OrchestrationTrace < Trace; end
      class PostProcessingTrace < Trace; end
      class FailureTrace < Trace; end
      class Unknown < Trace; end
    end

    # Trace Part which contains intermidate response for customer
    #
    # @!attribute [rw] agent_id
    #   Identifier of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   Identifier of the agent alias.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   Identifier of the session.
    #   @return [String]
    #
    # @!attribute [rw] trace
    #   Trace contains intermidate response for customer
    #   @return [Types::Trace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TracePart AWS API Documentation
    #
    class TracePart < Struct.new(
      :agent_id,
      :agent_alias_id,
      :session_id,
      :trace,
      :event_type)
      SENSITIVE = [:trace]
      include Aws::Structure
    end

    # This exception is thrown when the request's input validation fails
    #
    # @!attribute [rw] message
    #   Non Blank String
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

    # Response body of is a stream
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
