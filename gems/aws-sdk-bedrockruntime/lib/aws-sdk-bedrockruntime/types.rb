# frozen_string_literal: true

# This is generated code!

module Aws::BedrockRuntime
  # This module contains the types returned by client operations.
  module Types

    # <p>The request is denied because you do not have sufficient permissions to perform the requested action. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-access-denied">AccessDeniedException</a> in the Amazon Bedrock User Guide</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The model must request at least one tool (no text is generated). For example, <code>{"any" : {}}</code>.</p>
    class AnyToolChoice < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute guardrail_identifier
    #   <p>The guardrail identifier used in the request to apply the guardrail.</p>
    #   @return [String]
    # @!attribute guardrail_version
    #   <p>The guardrail version used in the request to apply the guardrail.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of data used in the request to apply the guardrail.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content details used in the request to apply the guardrail.</p>
    #   @return [Array<Types::GuardrailContentBlock>]
    # @!attribute output_scope
    #   <p>Specifies the scope of the output that you get in the response. Set to <code>FULL</code> to return the entire output, including any detected and non-detected entries in the response for enhanced debugging.</p> <p>Note that the full output scope doesn't apply to word filters or regex in sensitive information filters. It does apply to all other filtering policies, including sensitive information with filters that can detect personally identifiable information (PII).</p>
    #   @return [String]
    class ApplyGuardrailRequest < Struct.new(
      :guardrail_identifier,
      :guardrail_version,
      :source,
      :content,
      :output_scope,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute usage
    #   <p>The usage details in the response from the guardrail.</p>
    #   @return [Types::GuardrailUsage]
    # @!attribute action
    #   <p>The action taken in the response from the guardrail.</p>
    #   @return [String]
    # @!attribute action_reason
    #   <p>The reason for the action taken when harmful content is detected.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p>The output details in the response from the guardrail.</p>
    #   @return [Array<Types::GuardrailOutputContent>]
    # @!attribute assessments
    #   <p>The assessment details in the response from the guardrail.</p>
    #   @return [Array<Types::GuardrailAssessment>]
    # @!attribute guardrail_coverage
    #   <p>The guardrail coverage details in the apply guardrail response.</p>
    #   @return [Types::GuardrailCoverage]
    class ApplyGuardrailResponse < Struct.new(
      :usage,
      :action,
      :action_reason,
      :outputs,
      :assessments,
      :guardrail_coverage,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Asynchronous invocation output data settings.</p>
    # @!attribute s3_output_data_config
    #   <p>A storage location for the output data in an S3 bucket</p>
    #   @return [Types::AsyncInvokeS3OutputDataConfig]
    class AsyncInvokeOutputDataConfig < Struct.new(
      :s3_output_data_config,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class S3OutputDataConfig < AsyncInvokeOutputDataConfig; end
      class Unknown < AsyncInvokeOutputDataConfig; end
    end

    # <p>Asynchronous invocation output data settings.</p>
    # @!attribute s3_uri
    #   <p>An object URI starting with <code>s3://</code>.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>A KMS encryption key ID.</p>
    #   @return [String]
    # @!attribute bucket_owner
    #   <p>If the bucket belongs to another AWS account, specify that account's ID.</p>
    #   @return [String]
    class AsyncInvokeS3OutputDataConfig < Struct.new(
      :s3_uri,
      :kms_key_id,
      :bucket_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AsyncInvokeStatus
      IN_PROGRESS = 'InProgress'
      COMPLETED = 'Completed'
      FAILED = 'Failed'
    end

    # <p>A summary of an asynchronous invocation.</p>
    # @!attribute invocation_arn
    #   <p>The invocation's ARN.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The invoked model's ARN.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>The invocation's idempotency token.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The invocation's status.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>An error message.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>When the invocation was submitted.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>When the invocation was last modified.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>When the invocation ended.</p>
    #   @return [Time]
    # @!attribute output_data_config
    #   <p>The invocation's output data settings.</p>
    #   @return [Types::AsyncInvokeOutputDataConfig]
    class AsyncInvokeSummary < Struct.new(
      :invocation_arn,
      :model_arn,
      :client_request_token,
      :status,
      :failure_message,
      :submit_time,
      :last_modified_time,
      :end_time,
      :output_data_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Model automatically decides if a tool should be called or whether to generate text instead. For example, <code>{"auto" : {}}</code>.</p>
    class AutoToolChoice < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Payload content for the bidirectional input. The input is an audio stream.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute bytes
    #   <p>The audio content for the bidirectional input.</p>
    #   @return [String]
    class BidirectionalInputPayloadPart < Struct.new(
      :bytes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output from the bidirectional stream. The output is speech and a text transcription.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute bytes
    #   <p>The speech output of the bidirectional stream.</p>
    #   @return [String]
    class BidirectionalOutputPayloadPart < Struct.new(
      :bytes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines a section of content to be cached for reuse in subsequent API calls.</p>
    # @!attribute type
    #   <p>Specifies the type of cache point within the CachePointBlock.</p>
    #   @return [String]
    class CachePointBlock < Struct.new(
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CachePointType
      DEFAULT = 'default'
    end

    # <p>Contains information about a citation that references a specific source document. Citations provide traceability between the model's generated response and the source documents that informed that response.</p>
    # @!attribute title
    #   <p>The title or identifier of the source document being cited.</p>
    #   @return [String]
    # @!attribute source_content
    #   <p>The specific content from the source document that was referenced or cited in the generated response.</p>
    #   @return [Array<Types::CitationSourceContent>]
    # @!attribute location
    #   <p>The precise location within the source document where the cited content can be found, including character positions, page numbers, or chunk identifiers.</p>
    #   @return [Types::CitationLocation]
    class Citation < Struct.new(
      :title,
      :source_content,
      :location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the generated text content that corresponds to or is supported by a citation from a source document.</p>
    # @!attribute text
    #   <p>The text content that was generated by the model and is supported by the associated citation.</p>
    #   @return [String]
    class CitationGeneratedContent < Struct.new(
      :text,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Text < CitationGeneratedContent; end
      class Unknown < CitationGeneratedContent; end
    end

    # <p>Specifies the precise location within a source document where cited content can be found. This can include character-level positions, page numbers, or document chunks depending on the document type and indexing method.</p>
    # @!attribute document_char
    #   <p>The character-level location within the document where the cited content is found.</p>
    #   @return [Types::DocumentCharLocation]
    # @!attribute document_page
    #   <p>The page-level location within the document where the cited content is found.</p>
    #   @return [Types::DocumentPageLocation]
    # @!attribute document_chunk
    #   <p>The chunk-level location within the document where the cited content is found, typically used for documents that have been segmented into logical chunks.</p>
    #   @return [Types::DocumentChunkLocation]
    class CitationLocation < Struct.new(
      :document_char,
      :document_page,
      :document_chunk,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class DocumentChar < CitationLocation; end
      class DocumentPage < CitationLocation; end
      class DocumentChunk < CitationLocation; end
      class Unknown < CitationLocation; end
    end

    # <p>Contains the actual text content from a source document that is being cited or referenced in the model's response.</p>
    # @!attribute text
    #   <p>The text content from the source document that is being cited.</p>
    #   @return [String]
    class CitationSourceContent < Struct.new(
      :text,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Text < CitationSourceContent; end
      class Unknown < CitationSourceContent; end
    end

    # <p>Contains incremental updates to the source content text during streaming responses, allowing clients to build up the cited content progressively.</p>
    # @!attribute text
    #   <p>An incremental update to the text content from the source document that is being cited.</p>
    #   @return [String]
    class CitationSourceContentDelta < Struct.new(
      :text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration settings for enabling and controlling document citations in Converse API responses. When enabled, the model can include citation information that links generated content back to specific source documents.</p>
    # @!attribute enabled
    #   <p>Specifies whether document citations should be included in the model's response. When set to true, the model can generate citations that reference the source documents used to inform the response.</p>
    #   @return [Boolean]
    class CitationsConfig < Struct.new(
      :enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A content block that contains both generated text and associated citation information. This block type is returned when document citations are enabled, providing traceability between the generated content and the source documents that informed the response.</p>
    # @!attribute content
    #   <p>The generated content that is supported by the associated citations.</p>
    #   @return [Array<Types::CitationGeneratedContent>]
    # @!attribute citations
    #   <p>An array of citations that reference the source documents used to generate the associated content.</p>
    #   @return [Array<Types::Citation>]
    class CitationsContentBlock < Struct.new(
      :content,
      :citations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains incremental updates to citation information during streaming responses. This allows clients to build up citation data progressively as the response is generated.</p>
    # @!attribute title
    #   <p>The title or identifier of the source document being cited.</p>
    #   @return [String]
    # @!attribute source_content
    #   <p>The specific content from the source document that was referenced or cited in the generated response.</p>
    #   @return [Array<Types::CitationSourceContentDelta>]
    # @!attribute location
    #   <p>Specifies the precise location within a source document where cited content can be found. This can include character-level positions, page numbers, or document chunks depending on the document type and indexing method.</p>
    #   @return [Types::CitationLocation]
    class CitationsDelta < Struct.new(
      :title,
      :source_content,
      :location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Error occurred because of a conflict while performing an operation.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A block of content for a message that you pass to, or receive from, a model with the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a> or <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html">ConverseStream</a> API operations.</p>
    # @!attribute text
    #   <p>Text to include in the message.</p>
    #   @return [String]
    # @!attribute image
    #   <p>Image to include in the message. </p> <note> <p>This field is only supported by Anthropic Claude 3 models.</p> </note>
    #   @return [Types::ImageBlock]
    # @!attribute document
    #   <p>A document to include in the message.</p>
    #   @return [Types::DocumentBlock]
    # @!attribute video
    #   <p>Video to include in the message. </p>
    #   @return [Types::VideoBlock]
    # @!attribute tool_use
    #   <p>Information about a tool use request from a model.</p>
    #   @return [Types::ToolUseBlock]
    # @!attribute tool_result
    #   <p>The result for a tool request that a model makes.</p>
    #   @return [Types::ToolResultBlock]
    # @!attribute guard_content
    #   <p>Contains the content to assess with the guardrail. If you don't specify <code>guardContent</code> in a call to the Converse API, the guardrail (if passed in the Converse API) assesses the entire message.</p> <p>For more information, see <i>Use a guardrail with the Converse API</i> in the <i>Amazon Bedrock User Guide</i>. </p>
    #   @return [Types::GuardrailConverseContentBlock]
    # @!attribute cache_point
    #   <p>CachePoint to include in the message.</p>
    #   @return [Types::CachePointBlock]
    # @!attribute reasoning_content
    #   <p>Contains content regarding the reasoning that is carried out by the model. Reasoning refers to a Chain of Thought (CoT) that the model generates to enhance the accuracy of its final response.</p>
    #   @return [Types::ReasoningContentBlock]
    # @!attribute citations_content
    #   <p>A content block that contains both generated text and associated citation information, providing traceability between the response and source documents.</p>
    #   @return [Types::CitationsContentBlock]
    class ContentBlock < Struct.new(
      :text,
      :image,
      :document,
      :video,
      :tool_use,
      :tool_result,
      :guard_content,
      :cache_point,
      :reasoning_content,
      :citations_content,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Text < ContentBlock; end
      class Image < ContentBlock; end
      class Document < ContentBlock; end
      class Video < ContentBlock; end
      class ToolUse < ContentBlock; end
      class ToolResult < ContentBlock; end
      class GuardContent < ContentBlock; end
      class CachePoint < ContentBlock; end
      class ReasoningContent < ContentBlock; end
      class CitationsContent < ContentBlock; end
      class Unknown < ContentBlock; end
    end

    # <p>A block of content in a streaming response.</p>
    # @!attribute text
    #   <p>The content text.</p>
    #   @return [String]
    # @!attribute tool_use
    #   <p>Information about a tool that the model is requesting to use.</p>
    #   @return [Types::ToolUseBlockDelta]
    # @!attribute reasoning_content
    #   <p>Contains content regarding the reasoning that is carried out by the model. Reasoning refers to a Chain of Thought (CoT) that the model generates to enhance the accuracy of its final response.</p>
    #   @return [Types::ReasoningContentBlockDelta]
    # @!attribute citation
    #   <p>Incremental citation information that is streamed as part of the response generation process.</p>
    #   @return [Types::CitationsDelta]
    class ContentBlockDelta < Struct.new(
      :text,
      :tool_use,
      :reasoning_content,
      :citation,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Text < ContentBlockDelta; end
      class ToolUse < ContentBlockDelta; end
      class ReasoningContent < ContentBlockDelta; end
      class Citation < ContentBlockDelta; end
      class Unknown < ContentBlockDelta; end
    end

    # <p>The content block delta event.</p>
    # @!attribute delta
    #   <p>The delta for a content block delta event.</p>
    #   @return [Types::ContentBlockDelta]
    # @!attribute content_block_index
    #   <p>The block index for a content block delta event. </p>
    #   @return [Integer]
    class ContentBlockDeltaEvent < Struct.new(
      :delta,
      :content_block_index,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Content block start information.</p>
    # @!attribute tool_use
    #   <p>Information about a tool that the model is requesting to use.</p>
    #   @return [Types::ToolUseBlockStart]
    class ContentBlockStart < Struct.new(
      :tool_use,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class ToolUse < ContentBlockStart; end
      class Unknown < ContentBlockStart; end
    end

    # <p>Content block start event.</p>
    # @!attribute start
    #   <p>Start information about a content block start event. </p>
    #   @return [Types::ContentBlockStart]
    # @!attribute content_block_index
    #   <p>The index for a content block start event.</p>
    #   @return [Integer]
    class ContentBlockStartEvent < Struct.new(
      :start,
      :content_block_index,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A content block stop event.</p>
    # @!attribute content_block_index
    #   <p>The index for a content block.</p>
    #   @return [Integer]
    class ContentBlockStopEvent < Struct.new(
      :content_block_index,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConversationRole
      USER = 'user'
      ASSISTANT = 'assistant'
    end

    # <p>Metrics for a call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a>.</p>
    # @!attribute latency_ms
    #   <p>The latency of the call to <code>Converse</code>, in milliseconds. </p>
    #   @return [Integer]
    class ConverseMetrics < Struct.new(
      :latency_ms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output from a call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a>.</p>
    # @!attribute message
    #   <p>The message that the model generates.</p>
    #   @return [Types::Message]
    class ConverseOutput < Struct.new(
      :message,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Message < ConverseOutput; end
      class Unknown < ConverseOutput; end
    end

    # @!attribute model_id
    #   <p>Specifies the model or throughput with which to run inference, or the prompt resource to use in inference. The value depends on the resource that you use:</p> <ul> <li> <p>If you use a base model, specify the model ID or its ARN. For a list of model IDs for base models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns">Amazon Bedrock base model IDs (on-demand throughput)</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an inference profile, specify the inference profile ID or its ARN. For a list of inference profile IDs, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html">Supported Regions and models for cross-region inference</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a provisioned model, specify the ARN of the Provisioned Throughput. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html">Run inference using a Provisioned Throughput</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a custom model, first purchase Provisioned Throughput for it. Then specify the ARN of the resulting provisioned model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html">Use a custom model in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>To include a prompt that was defined in <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html">Prompt management</a>, specify the ARN of the prompt version to use.</p> </li> </ul> <p>The Converse API doesn't support <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">imported models</a>.</p>
    #   @return [String]
    # @!attribute messages
    #   <p>The messages that you want to send to the model.</p>
    #   @return [Array<Types::Message>]
    # @!attribute system
    #   <p>A prompt that provides instructions or context to the model about the task it should perform, or the persona it should adopt during the conversation.</p>
    #   @return [Array<Types::SystemContentBlock>]
    # @!attribute inference_config
    #   <p>Inference parameters to pass to the model. <code>Converse</code> and <code>ConverseStream</code> support a base set of inference parameters. If you need to pass additional parameters that the model supports, use the <code>additionalModelRequestFields</code> request field.</p>
    #   @return [Types::InferenceConfiguration]
    # @!attribute tool_config
    #   <p>Configuration information for the tools that the model can use when generating a response. </p> <p>For information about models that support tool use, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference.html#conversation-inference-supported-models-features">Supported models and model features</a>.</p>
    #   @return [Types::ToolConfiguration]
    # @!attribute guardrail_config
    #   <p>Configuration information for a guardrail that you want to use in the request. If you include <code>guardContent</code> blocks in the <code>content</code> field in the <code>messages</code> field, the guardrail operates only on those messages. If you include no <code>guardContent</code> blocks, the guardrail operates on all messages in the request body and in any included prompt resource.</p>
    #   @return [Types::GuardrailConfiguration]
    # @!attribute additional_model_request_fields
    #   <p>Additional inference parameters that the model supports, beyond the base set of inference parameters that <code>Converse</code> and <code>ConverseStream</code> support in the <code>inferenceConfig</code> field. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Model parameters</a>.</p>
    #   @return [JSON]
    # @!attribute prompt_variables
    #   <p>Contains a map of variables in a prompt from Prompt management to objects containing the values to fill in for them when running model invocation. This field is ignored if you don't specify a prompt resource in the <code>modelId</code> field.</p>
    #   @return [Hash<String, Types::PromptVariableValues>]
    # @!attribute additional_model_response_field_paths
    #   <p>Additional model parameters field paths to return in the response. <code>Converse</code> and <code>ConverseStream</code> return the requested fields as a JSON Pointer object in the <code>additionalModelResponseFields</code> field. The following is example JSON for <code>additionalModelResponseFieldPaths</code>.</p> <p> <code>[ "/stop_sequence" ]</code> </p> <p>For information about the JSON Pointer syntax, see the <a href="https://datatracker.ietf.org/doc/html/rfc6901">Internet Engineering Task Force (IETF)</a> documentation.</p> <p> <code>Converse</code> and <code>ConverseStream</code> reject an empty JSON Pointer or incorrectly structured JSON Pointer with a <code>400</code> error code. if the JSON Pointer is valid, but the requested field is not in the model response, it is ignored by <code>Converse</code>.</p>
    #   @return [Array<String>]
    # @!attribute request_metadata
    #   <p>Key-value pairs that you can use to filter invocation logs.</p>
    #   @return [Hash<String, String>]
    # @!attribute performance_config
    #   <p>Model performance settings for the request.</p>
    #   @return [Types::PerformanceConfiguration]
    class ConverseRequest < Struct.new(
      :model_id,
      :messages,
      :system,
      :inference_config,
      :tool_config,
      :guardrail_config,
      :additional_model_request_fields,
      :prompt_variables,
      :additional_model_response_field_paths,
      :request_metadata,
      :performance_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute output
    #   <p>The result from the call to <code>Converse</code>.</p>
    #   @return [Types::ConverseOutput]
    # @!attribute stop_reason
    #   <p>The reason why the model stopped generating output.</p>
    #   @return [String]
    # @!attribute usage
    #   <p>The total number of tokens used in the call to <code>Converse</code>. The total includes the tokens input to the model and the tokens generated by the model.</p>
    #   @return [Types::TokenUsage]
    # @!attribute metrics
    #   <p>Metrics for the call to <code>Converse</code>.</p>
    #   @return [Types::ConverseMetrics]
    # @!attribute additional_model_response_fields
    #   <p>Additional fields in the response that are unique to the model. </p>
    #   @return [JSON]
    # @!attribute trace
    #   <p>A trace object that contains information about the Guardrail behavior.</p>
    #   @return [Types::ConverseTrace]
    # @!attribute performance_config
    #   <p>Model performance settings for the request.</p>
    #   @return [Types::PerformanceConfiguration]
    class ConverseResponse < Struct.new(
      :output,
      :stop_reason,
      :usage,
      :metrics,
      :additional_model_response_fields,
      :trace,
      :performance_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A conversation stream metadata event.</p>
    # @!attribute usage
    #   <p>Usage information for the conversation stream event.</p>
    #   @return [Types::TokenUsage]
    # @!attribute metrics
    #   <p>The metrics for the conversation stream metadata event.</p>
    #   @return [Types::ConverseStreamMetrics]
    # @!attribute trace
    #   <p>The trace object in the response from <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html">ConverseStream</a> that contains information about the guardrail behavior.</p>
    #   @return [Types::ConverseStreamTrace]
    # @!attribute performance_config
    #   <p>Model performance configuration metadata for the conversation stream event.</p>
    #   @return [Types::PerformanceConfiguration]
    class ConverseStreamMetadataEvent < Struct.new(
      :usage,
      :metrics,
      :trace,
      :performance_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metrics for the stream.</p>
    # @!attribute latency_ms
    #   <p>The latency for the streaming request, in milliseconds.</p>
    #   @return [Integer]
    class ConverseStreamMetrics < Struct.new(
      :latency_ms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The messages output stream</p>
    # @!attribute message_start
    #   <p>Message start information.</p>
    #   @return [Types::MessageStartEvent]
    # @!attribute content_block_start
    #   <p>Start information for a content block.</p>
    #   @return [Types::ContentBlockStartEvent]
    # @!attribute content_block_delta
    #   <p>The messages output content block delta.</p>
    #   @return [Types::ContentBlockDeltaEvent]
    # @!attribute content_block_stop
    #   <p>Stop information for a content block.</p>
    #   @return [Types::ContentBlockStopEvent]
    # @!attribute message_stop
    #   <p>Message stop information.</p>
    #   @return [Types::MessageStopEvent]
    # @!attribute metadata
    #   <p>Metadata for the converse output stream.</p>
    #   @return [Types::ConverseStreamMetadataEvent]
    # @!attribute internal_server_exception
    #   <p>An internal server error occurred. Retry your request.</p>
    #   @return [Types::InternalServerException]
    # @!attribute model_stream_error_exception
    #   <p>A streaming error occurred. Retry your request.</p>
    #   @return [Types::ModelStreamErrorException]
    # @!attribute validation_exception
    #   <p>The input fails to satisfy the constraints specified by <i>Amazon Bedrock</i>. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-validation-error">ValidationError</a> in the Amazon Bedrock User Guide</p>
    #   @return [Types::ValidationException]
    # @!attribute throttling_exception
    #   <p>Your request was denied due to exceeding the account quotas for <i>Amazon Bedrock</i>. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-throttling-exception">ThrottlingException</a> in the Amazon Bedrock User Guide</p>
    #   @return [Types::ThrottlingException]
    # @!attribute service_unavailable_exception
    #   <p>The service isn't currently available. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-service-unavailable">ServiceUnavailable</a> in the Amazon Bedrock User Guide</p>
    #   @return [Types::ServiceUnavailableException]
    class ConverseStreamOutput < Struct.new(
      :message_start,
      :content_block_start,
      :content_block_delta,
      :content_block_stop,
      :message_stop,
      :metadata,
      :internal_server_exception,
      :model_stream_error_exception,
      :validation_exception,
      :throttling_exception,
      :service_unavailable_exception,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class MessageStart < ConverseStreamOutput; end
      class ContentBlockStart < ConverseStreamOutput; end
      class ContentBlockDelta < ConverseStreamOutput; end
      class ContentBlockStop < ConverseStreamOutput; end
      class MessageStop < ConverseStreamOutput; end
      class Metadata < ConverseStreamOutput; end
      class InternalServerException < ConverseStreamOutput; end
      class ModelStreamErrorException < ConverseStreamOutput; end
      class ValidationException < ConverseStreamOutput; end
      class ThrottlingException < ConverseStreamOutput; end
      class ServiceUnavailableException < ConverseStreamOutput; end
      class Unknown < ConverseStreamOutput; end
    end

    # @!attribute model_id
    #   <p>Specifies the model or throughput with which to run inference, or the prompt resource to use in inference. The value depends on the resource that you use:</p> <ul> <li> <p>If you use a base model, specify the model ID or its ARN. For a list of model IDs for base models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns">Amazon Bedrock base model IDs (on-demand throughput)</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an inference profile, specify the inference profile ID or its ARN. For a list of inference profile IDs, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html">Supported Regions and models for cross-region inference</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a provisioned model, specify the ARN of the Provisioned Throughput. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html">Run inference using a Provisioned Throughput</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a custom model, first purchase Provisioned Throughput for it. Then specify the ARN of the resulting provisioned model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html">Use a custom model in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>To include a prompt that was defined in <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html">Prompt management</a>, specify the ARN of the prompt version to use.</p> </li> </ul> <p>The Converse API doesn't support <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">imported models</a>.</p>
    #   @return [String]
    # @!attribute messages
    #   <p>The messages that you want to send to the model.</p>
    #   @return [Array<Types::Message>]
    # @!attribute system
    #   <p>A prompt that provides instructions or context to the model about the task it should perform, or the persona it should adopt during the conversation.</p>
    #   @return [Array<Types::SystemContentBlock>]
    # @!attribute inference_config
    #   <p>Inference parameters to pass to the model. <code>Converse</code> and <code>ConverseStream</code> support a base set of inference parameters. If you need to pass additional parameters that the model supports, use the <code>additionalModelRequestFields</code> request field.</p>
    #   @return [Types::InferenceConfiguration]
    # @!attribute tool_config
    #   <p>Configuration information for the tools that the model can use when generating a response.</p> <p>For information about models that support streaming tool use, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference.html#conversation-inference-supported-models-features">Supported models and model features</a>.</p>
    #   @return [Types::ToolConfiguration]
    # @!attribute guardrail_config
    #   <p>Configuration information for a guardrail that you want to use in the request. If you include <code>guardContent</code> blocks in the <code>content</code> field in the <code>messages</code> field, the guardrail operates only on those messages. If you include no <code>guardContent</code> blocks, the guardrail operates on all messages in the request body and in any included prompt resource.</p>
    #   @return [Types::GuardrailStreamConfiguration]
    # @!attribute additional_model_request_fields
    #   <p>Additional inference parameters that the model supports, beyond the base set of inference parameters that <code>Converse</code> and <code>ConverseStream</code> support in the <code>inferenceConfig</code> field. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Model parameters</a>.</p>
    #   @return [JSON]
    # @!attribute prompt_variables
    #   <p>Contains a map of variables in a prompt from Prompt management to objects containing the values to fill in for them when running model invocation. This field is ignored if you don't specify a prompt resource in the <code>modelId</code> field.</p>
    #   @return [Hash<String, Types::PromptVariableValues>]
    # @!attribute additional_model_response_field_paths
    #   <p>Additional model parameters field paths to return in the response. <code>Converse</code> and <code>ConverseStream</code> return the requested fields as a JSON Pointer object in the <code>additionalModelResponseFields</code> field. The following is example JSON for <code>additionalModelResponseFieldPaths</code>.</p> <p> <code>[ "/stop_sequence" ]</code> </p> <p>For information about the JSON Pointer syntax, see the <a href="https://datatracker.ietf.org/doc/html/rfc6901">Internet Engineering Task Force (IETF)</a> documentation.</p> <p> <code>Converse</code> and <code>ConverseStream</code> reject an empty JSON Pointer or incorrectly structured JSON Pointer with a <code>400</code> error code. if the JSON Pointer is valid, but the requested field is not in the model response, it is ignored by <code>Converse</code>.</p>
    #   @return [Array<String>]
    # @!attribute request_metadata
    #   <p>Key-value pairs that you can use to filter invocation logs.</p>
    #   @return [Hash<String, String>]
    # @!attribute performance_config
    #   <p>Model performance settings for the request.</p>
    #   @return [Types::PerformanceConfiguration]
    class ConverseStreamRequest < Struct.new(
      :model_id,
      :messages,
      :system,
      :inference_config,
      :tool_config,
      :guardrail_config,
      :additional_model_request_fields,
      :prompt_variables,
      :additional_model_response_field_paths,
      :request_metadata,
      :performance_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute stream
    #   <p>The output stream that the model generated.</p>
    #   @return [Types::ConverseStreamOutput]
    class ConverseStreamResponse < Struct.new(
      :stream,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The trace object in a response from <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html">ConverseStream</a>. Currently, you can only trace guardrails.</p>
    # @!attribute guardrail
    #   <p>The guardrail trace object. </p>
    #   @return [Types::GuardrailTraceAssessment]
    # @!attribute prompt_router
    #   <p>The request's prompt router.</p>
    #   @return [Types::PromptRouterTrace]
    class ConverseStreamTrace < Struct.new(
      :guardrail,
      :prompt_router,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The trace object in a response from <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a>. Currently, you can only trace guardrails.</p>
    # @!attribute guardrail
    #   <p>The guardrail trace object. </p>
    #   @return [Types::GuardrailTraceAssessment]
    # @!attribute prompt_router
    #   <p>The request's prompt router.</p>
    #   @return [Types::PromptRouterTrace]
    class ConverseTrace < Struct.new(
      :guardrail,
      :prompt_router,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A document to include in a message.</p>
    # @!attribute format
    #   <p>The format of a document, or its extension.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the document. The name can only contain the following characters:</p> <ul> <li> <p>Alphanumeric characters</p> </li> <li> <p>Whitespace characters (no more than one in a row)</p> </li> <li> <p>Hyphens</p> </li> <li> <p>Parentheses</p> </li> <li> <p>Square brackets</p> </li> </ul> <note> <p>This field is vulnerable to prompt injections, because the model might inadvertently interpret it as instructions. Therefore, we recommend that you specify a neutral name.</p> </note>
    #   @return [String]
    # @!attribute source
    #   <p>Contains the content of the document.</p>
    #   @return [Types::DocumentSource]
    # @!attribute context
    #   <p>Contextual information about how the document should be processed or interpreted by the model when generating citations.</p>
    #   @return [String]
    # @!attribute citations
    #   <p>Configuration settings that control how citations should be generated for this specific document.</p>
    #   @return [Types::CitationsConfig]
    class DocumentBlock < Struct.new(
      :format,
      :name,
      :source,
      :context,
      :citations,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:format] = 'txt' unless options.key?(:format)
        super
      end
    end

    # <p>Specifies a character-level location within a document, providing precise positioning information for cited content using start and end character indices.</p>
    # @!attribute document_index
    #   <p>The index of the document within the array of documents provided in the request.</p>
    #   @return [Integer]
    # @!attribute start
    #   <p>The starting character position of the cited content within the document.</p>
    #   @return [Integer]
    # @!attribute end
    #   <p>The ending character position of the cited content within the document.</p>
    #   @return [Integer]
    class DocumentCharLocation < Struct.new(
      :document_index,
      :start,
      :end,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies a chunk-level location within a document, providing positioning information for cited content using logical document segments or chunks.</p>
    # @!attribute document_index
    #   <p>The index of the document within the array of documents provided in the request.</p>
    #   @return [Integer]
    # @!attribute start
    #   <p>The starting chunk identifier or index of the cited content within the document.</p>
    #   @return [Integer]
    # @!attribute end
    #   <p>The ending chunk identifier or index of the cited content within the document.</p>
    #   @return [Integer]
    class DocumentChunkLocation < Struct.new(
      :document_index,
      :start,
      :end,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the actual content of a document that can be processed by the model and potentially cited in the response.</p>
    # @!attribute text
    #   <p>The text content of the document.</p>
    #   @return [String]
    class DocumentContentBlock < Struct.new(
      :text,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Text < DocumentContentBlock; end
      class Unknown < DocumentContentBlock; end
    end

    module DocumentFormat
      PDF = 'pdf'
      CSV = 'csv'
      DOC = 'doc'
      DOCX = 'docx'
      XLS = 'xls'
      XLSX = 'xlsx'
      HTML = 'html'
      TXT = 'txt'
      MD = 'md'
    end

    # <p>Specifies a page-level location within a document, providing positioning information for cited content using page numbers.</p>
    # @!attribute document_index
    #   <p>The index of the document within the array of documents provided in the request.</p>
    #   @return [Integer]
    # @!attribute start
    #   <p>The starting page number of the cited content within the document.</p>
    #   @return [Integer]
    # @!attribute end
    #   <p>The ending page number of the cited content within the document.</p>
    #   @return [Integer]
    class DocumentPageLocation < Struct.new(
      :document_index,
      :start,
      :end,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the content of a document.</p>
    # @!attribute bytes
    #   <p>The raw bytes for the document. If you use an Amazon Web Services SDK, you don't need to encode the bytes in base64.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>The location of a document object in an Amazon S3 bucket. To see which models support S3 uploads, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html">Supported models and features for Converse</a>.</p>
    #   @return [Types::S3Location]
    # @!attribute text
    #   <p>The text content of the document source.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The structured content of the document source, which may include various content blocks such as text, images, or other document elements.</p>
    #   @return [Array<Types::DocumentContentBlock>]
    class DocumentSource < Struct.new(
      :bytes,
      :s3_location,
      :text,
      :content,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Bytes < DocumentSource; end
      class S3Location < DocumentSource; end
      class Text < DocumentSource; end
      class Content < DocumentSource; end
      class Unknown < DocumentSource; end
    end

    # @!attribute invocation_arn
    #   <p>The invocation's ARN.</p>
    #   @return [String]
    class GetAsyncInvokeRequest < Struct.new(
      :invocation_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute invocation_arn
    #   <p>The invocation's ARN.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The invocation's model ARN.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>The invocation's idempotency token.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The invocation's status.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>An error message.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>When the invocation request was submitted.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The invocation's last modified time.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>When the invocation ended.</p>
    #   @return [Time]
    # @!attribute output_data_config
    #   <p>Output data settings.</p>
    #   @return [Types::AsyncInvokeOutputDataConfig]
    class GetAsyncInvokeResponse < Struct.new(
      :invocation_arn,
      :model_arn,
      :client_request_token,
      :status,
      :failure_message,
      :submit_time,
      :last_modified_time,
      :end_time,
      :output_data_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailAction
      NONE = 'NONE'
      GUARDRAIL_INTERVENED = 'GUARDRAIL_INTERVENED'
    end

    # <p>A behavior assessment of the guardrail policies used in a call to the Converse API. </p>
    # @!attribute topic_policy
    #   <p>The topic policy.</p>
    #   @return [Types::GuardrailTopicPolicyAssessment]
    # @!attribute content_policy
    #   <p>The content policy.</p>
    #   @return [Types::GuardrailContentPolicyAssessment]
    # @!attribute word_policy
    #   <p>The word policy.</p>
    #   @return [Types::GuardrailWordPolicyAssessment]
    # @!attribute sensitive_information_policy
    #   <p>The sensitive information policy.</p>
    #   @return [Types::GuardrailSensitiveInformationPolicyAssessment]
    # @!attribute contextual_grounding_policy
    #   <p>The contextual grounding policy used for the guardrail assessment.</p>
    #   @return [Types::GuardrailContextualGroundingPolicyAssessment]
    # @!attribute automated_reasoning_policy
    #   <p>The automated reasoning policy assessment results, including logical validation findings for the input content.</p>
    #   @return [Types::GuardrailAutomatedReasoningPolicyAssessment]
    # @!attribute invocation_metrics
    #   <p>The invocation metrics for the guardrail assessment.</p>
    #   @return [Types::GuardrailInvocationMetrics]
    class GuardrailAssessment < Struct.new(
      :topic_policy,
      :content_policy,
      :word_policy,
      :sensitive_information_policy,
      :contextual_grounding_policy,
      :automated_reasoning_policy,
      :invocation_metrics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a logical validation result from automated reasoning policy evaluation. The finding indicates whether claims in the input are logically valid, invalid, satisfiable, impossible, or have other logical issues.</p>
    # @!attribute valid
    #   <p>Indicates that the claims are definitively true and logically implied by the premises, with no possible alternative interpretations.</p>
    #   @return [Types::GuardrailAutomatedReasoningValidFinding]
    # @!attribute invalid
    #   <p>Indicates that the claims are logically false and contradictory to the established rules or premises.</p>
    #   @return [Types::GuardrailAutomatedReasoningInvalidFinding]
    # @!attribute satisfiable
    #   <p>Indicates that the claims could be either true or false depending on additional assumptions not provided in the input.</p>
    #   @return [Types::GuardrailAutomatedReasoningSatisfiableFinding]
    # @!attribute impossible
    #   <p>Indicates that no valid claims can be made due to logical contradictions in the premises or rules.</p>
    #   @return [Types::GuardrailAutomatedReasoningImpossibleFinding]
    # @!attribute translation_ambiguous
    #   <p>Indicates that the input has multiple valid logical interpretations, requiring additional context or clarification.</p>
    #   @return [Types::GuardrailAutomatedReasoningTranslationAmbiguousFinding]
    # @!attribute too_complex
    #   <p>Indicates that the input exceeds the processing capacity due to the volume or complexity of the logical information.</p>
    #   @return [Types::GuardrailAutomatedReasoningTooComplexFinding]
    # @!attribute no_translations
    #   <p>Indicates that no relevant logical information could be extracted from the input for validation.</p>
    #   @return [Types::GuardrailAutomatedReasoningNoTranslationsFinding]
    class GuardrailAutomatedReasoningFinding < Struct.new(
      :valid,
      :invalid,
      :satisfiable,
      :impossible,
      :translation_ambiguous,
      :too_complex,
      :no_translations,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Valid < GuardrailAutomatedReasoningFinding; end
      class Invalid < GuardrailAutomatedReasoningFinding; end
      class Satisfiable < GuardrailAutomatedReasoningFinding; end
      class Impossible < GuardrailAutomatedReasoningFinding; end
      class TranslationAmbiguous < GuardrailAutomatedReasoningFinding; end
      class TooComplex < GuardrailAutomatedReasoningFinding; end
      class NoTranslations < GuardrailAutomatedReasoningFinding; end
      class Unknown < GuardrailAutomatedReasoningFinding; end
    end

    # <p>Indicates that no valid claims can be made due to logical contradictions in the premises or rules.</p>
    # @!attribute translation
    #   <p>The logical translation of the input that this finding evaluates.</p>
    #   @return [Types::GuardrailAutomatedReasoningTranslation]
    # @!attribute contradicting_rules
    #   <p>The automated reasoning policy rules that contradict the claims and/or premises in the input.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningRule>]
    # @!attribute logic_warning
    #   <p>Indication of a logic issue with the translation without needing to consider the automated reasoning policy rules.</p>
    #   @return [Types::GuardrailAutomatedReasoningLogicWarning]
    class GuardrailAutomatedReasoningImpossibleFinding < Struct.new(
      :translation,
      :contradicting_rules,
      :logic_warning,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>References a portion of the original input text that corresponds to logical elements.</p>
    # @!attribute text
    #   <p>The specific text from the original input that this reference points to.</p>
    #   @return [String]
    class GuardrailAutomatedReasoningInputTextReference < Struct.new(
      :text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates that the claims are logically false and contradictory to the established rules or premises.</p>
    # @!attribute translation
    #   <p>The logical translation of the input that this finding invalidates.</p>
    #   @return [Types::GuardrailAutomatedReasoningTranslation]
    # @!attribute contradicting_rules
    #   <p>The automated reasoning policy rules that contradict the claims in the input.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningRule>]
    # @!attribute logic_warning
    #   <p>Indication of a logic issue with the translation without needing to consider the automated reasoning policy rules.</p>
    #   @return [Types::GuardrailAutomatedReasoningLogicWarning]
    class GuardrailAutomatedReasoningInvalidFinding < Struct.new(
      :translation,
      :contradicting_rules,
      :logic_warning,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Identifies logical issues in the translated statements that exist independent of any policy rules, such as statements that are always true or always false.</p>
    # @!attribute type
    #   <p>The category of the detected logical issue, such as statements that are always true or always false.</p>
    #   @return [String]
    # @!attribute premises
    #   <p>The logical statements that serve as premises under which the claims are validated.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningStatement>]
    # @!attribute claims
    #   <p>The logical statements that are validated while assuming the policy and premises.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningStatement>]
    class GuardrailAutomatedReasoningLogicWarning < Struct.new(
      :type,
      :premises,
      :claims,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailAutomatedReasoningLogicWarningType
      ALWAYS_FALSE = 'ALWAYS_FALSE'
      ALWAYS_TRUE = 'ALWAYS_TRUE'
    end

    # <p>Indicates that no relevant logical information could be extracted from the input for validation.</p>
    class GuardrailAutomatedReasoningNoTranslationsFinding < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the results of automated reasoning policy evaluation, including logical findings about the validity of claims made in the input content.</p>
    # @!attribute findings
    #   <p>List of logical validation results produced by evaluating the input content against automated reasoning policies.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningFinding>]
    class GuardrailAutomatedReasoningPolicyAssessment < Struct.new(
      :findings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>References a specific automated reasoning policy rule that was applied during evaluation.</p>
    # @!attribute identifier
    #   <p>The unique identifier of the automated reasoning rule.</p>
    #   @return [String]
    # @!attribute policy_version_arn
    #   <p>The ARN of the automated reasoning policy version that contains this rule.</p>
    #   @return [String]
    class GuardrailAutomatedReasoningRule < Struct.new(
      :identifier,
      :policy_version_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates that the claims could be either true or false depending on additional assumptions not provided in the input.</p>
    # @!attribute translation
    #   <p>The logical translation of the input that this finding evaluates.</p>
    #   @return [Types::GuardrailAutomatedReasoningTranslation]
    # @!attribute claims_true_scenario
    #   <p>An example scenario demonstrating how the claims could be logically true.</p>
    #   @return [Types::GuardrailAutomatedReasoningScenario]
    # @!attribute claims_false_scenario
    #   <p>An example scenario demonstrating how the claims could be logically false.</p>
    #   @return [Types::GuardrailAutomatedReasoningScenario]
    # @!attribute logic_warning
    #   <p>Indication of a logic issue with the translation without needing to consider the automated reasoning policy rules.</p>
    #   @return [Types::GuardrailAutomatedReasoningLogicWarning]
    class GuardrailAutomatedReasoningSatisfiableFinding < Struct.new(
      :translation,
      :claims_true_scenario,
      :claims_false_scenario,
      :logic_warning,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a logical scenario where claims can be evaluated as true or false, containing specific logical assignments.</p>
    # @!attribute statements
    #   <p>List of logical assignments and statements that define this scenario.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningStatement>]
    class GuardrailAutomatedReasoningScenario < Struct.new(
      :statements,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A logical statement that includes both formal logic representation and natural language explanation.</p>
    # @!attribute logic
    #   <p>The formal logical representation of the statement.</p>
    #   @return [String]
    # @!attribute natural_language
    #   <p>The natural language explanation of the logical statement.</p>
    #   @return [String]
    class GuardrailAutomatedReasoningStatement < Struct.new(
      :logic,
      :natural_language,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates that the input exceeds the processing capacity due to the volume or complexity of the logical information.</p>
    class GuardrailAutomatedReasoningTooComplexFinding < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the logical translation of natural language input into formal logical statements, including premises, claims, and confidence scores.</p>
    # @!attribute premises
    #   <p>The logical statements that serve as the foundation or assumptions for the claims.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningStatement>]
    # @!attribute claims
    #   <p>The logical statements that are being validated against the premises and policy rules.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningStatement>]
    # @!attribute untranslated_premises
    #   <p>References to portions of the original input text that correspond to the premises but could not be fully translated.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningInputTextReference>]
    # @!attribute untranslated_claims
    #   <p>References to portions of the original input text that correspond to the claims but could not be fully translated.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningInputTextReference>]
    # @!attribute confidence
    #   <p>A confidence score between 0 and 1 indicating how certain the system is about the logical translation.</p>
    #   @return [Float]
    class GuardrailAutomatedReasoningTranslation < Struct.new(
      :premises,
      :claims,
      :untranslated_premises,
      :untranslated_claims,
      :confidence,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates that the input has multiple valid logical interpretations, requiring additional context or clarification.</p>
    # @!attribute options
    #   <p>Different logical interpretations that were detected during translation of the input.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningTranslationOption>]
    # @!attribute difference_scenarios
    #   <p>Scenarios showing how the different translation options differ in meaning.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningScenario>]
    class GuardrailAutomatedReasoningTranslationAmbiguousFinding < Struct.new(
      :options,
      :difference_scenarios,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents one possible logical interpretation of ambiguous input content.</p>
    # @!attribute translations
    #   <p>Example translations that provide this possible interpretation of the input.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningTranslation>]
    class GuardrailAutomatedReasoningTranslationOption < Struct.new(
      :translations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates that the claims are definitively true and logically implied by the premises, with no possible alternative interpretations.</p>
    # @!attribute translation
    #   <p>The logical translation of the input that this finding validates.</p>
    #   @return [Types::GuardrailAutomatedReasoningTranslation]
    # @!attribute claims_true_scenario
    #   <p>An example scenario demonstrating how the claims are logically true.</p>
    #   @return [Types::GuardrailAutomatedReasoningScenario]
    # @!attribute supporting_rules
    #   <p>The automated reasoning policy rules that support why this result is considered valid.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningRule>]
    # @!attribute logic_warning
    #   <p>Indication of a logic issue with the translation without needing to consider the automated reasoning policy rules.</p>
    #   @return [Types::GuardrailAutomatedReasoningLogicWarning]
    class GuardrailAutomatedReasoningValidFinding < Struct.new(
      :translation,
      :claims_true_scenario,
      :supporting_rules,
      :logic_warning,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration information for a guardrail that you use with the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a> operation.</p>
    # @!attribute guardrail_identifier
    #   <p>The identifier for the guardrail.</p>
    #   @return [String]
    # @!attribute guardrail_version
    #   <p>The version of the guardrail.</p>
    #   @return [String]
    # @!attribute trace
    #   <p>The trace behavior for the guardrail.</p>
    #   @return [String]
    class GuardrailConfiguration < Struct.new(
      :guardrail_identifier,
      :guardrail_version,
      :trace,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:trace] = 'disabled' unless options.key?(:trace)
        super
      end
    end

    # <p>The content block to be evaluated by the guardrail.</p>
    # @!attribute text
    #   <p>Text within content block to be evaluated by the guardrail.</p>
    #   @return [Types::GuardrailTextBlock]
    # @!attribute image
    #   <p>Image within guardrail content block to be evaluated by the guardrail.</p>
    #   @return [Types::GuardrailImageBlock]
    class GuardrailContentBlock < Struct.new(
      :text,
      :image,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Text < GuardrailContentBlock; end
      class Image < GuardrailContentBlock; end
      class Unknown < GuardrailContentBlock; end
    end

    # <p>The content filter for a guardrail.</p>
    # @!attribute type
    #   <p>The guardrail type.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The guardrail confidence.</p>
    #   @return [String]
    # @!attribute filter_strength
    #   <p>The filter strength setting for the guardrail content filter.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The guardrail action.</p>
    #   @return [String]
    # @!attribute detected
    #   <p>Indicates whether content that breaches the guardrail configuration is detected.</p>
    #   @return [Boolean]
    class GuardrailContentFilter < Struct.new(
      :type,
      :confidence,
      :filter_strength,
      :action,
      :detected,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailContentFilterConfidence
      NONE = 'NONE'
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
    end

    module GuardrailContentFilterStrength
      NONE = 'NONE'
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
    end

    module GuardrailContentFilterType
      INSULTS = 'INSULTS'
      HATE = 'HATE'
      SEXUAL = 'SEXUAL'
      VIOLENCE = 'VIOLENCE'
      MISCONDUCT = 'MISCONDUCT'
      PROMPT_ATTACK = 'PROMPT_ATTACK'
    end

    module GuardrailContentPolicyAction
      BLOCKED = 'BLOCKED'
      NONE = 'NONE'
    end

    # <p>An assessment of a content policy for a guardrail.</p>
    # @!attribute filters
    #   <p>The content policy filters.</p>
    #   @return [Array<Types::GuardrailContentFilter>]
    class GuardrailContentPolicyAssessment < Struct.new(
      :filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailContentQualifier
      GROUNDING_SOURCE = 'grounding_source'
      QUERY = 'query'
      GUARD_CONTENT = 'guard_content'
    end

    module GuardrailContentSource
      INPUT = 'INPUT'
      OUTPUT = 'OUTPUT'
    end

    # <p>The details for the guardrails contextual grounding filter.</p>
    # @!attribute type
    #   <p>The contextual grounding filter type.</p>
    #   @return [String]
    # @!attribute threshold
    #   <p>The threshold used by contextual grounding filter to determine whether the content is grounded or not.</p>
    #   @return [Float]
    # @!attribute score
    #   <p>The score generated by contextual grounding filter.</p>
    #   @return [Float]
    # @!attribute action
    #   <p>The action performed by the guardrails contextual grounding filter.</p>
    #   @return [String]
    # @!attribute detected
    #   <p>Indicates whether content that fails the contextual grounding evaluation (grounding or relevance score less than the corresponding threshold) was detected.</p>
    #   @return [Boolean]
    class GuardrailContextualGroundingFilter < Struct.new(
      :type,
      :threshold,
      :score,
      :action,
      :detected,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailContextualGroundingFilterType
      GROUNDING = 'GROUNDING'
      RELEVANCE = 'RELEVANCE'
    end

    module GuardrailContextualGroundingPolicyAction
      BLOCKED = 'BLOCKED'
      NONE = 'NONE'
    end

    # <p>The policy assessment details for the guardrails contextual grounding filter.</p>
    # @!attribute filters
    #   <p>The filter details for the guardrails contextual grounding filter.</p>
    #   @return [Array<Types::GuardrailContextualGroundingFilter>]
    class GuardrailContextualGroundingPolicyAssessment < Struct.new(
      :filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p/> <p>A content block for selective guarding with the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a> or <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html">ConverseStream</a> API operations. </p>
    # @!attribute text
    #   <p>The text to guard.</p>
    #   @return [Types::GuardrailConverseTextBlock]
    # @!attribute image
    #   <p>Image within converse content block to be evaluated by the guardrail.</p>
    #   @return [Types::GuardrailConverseImageBlock]
    class GuardrailConverseContentBlock < Struct.new(
      :text,
      :image,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Text < GuardrailConverseContentBlock; end
      class Image < GuardrailConverseContentBlock; end
      class Unknown < GuardrailConverseContentBlock; end
    end

    module GuardrailConverseContentQualifier
      GROUNDING_SOURCE = 'grounding_source'
      QUERY = 'query'
      GUARD_CONTENT = 'guard_content'
    end

    # <p>An image block that contains images that you want to assess with a guardrail.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute format
    #   <p>The format details for the image type of the guardrail converse image block.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The image source (image bytes) of the guardrail converse image block.</p>
    #   @return [Types::GuardrailConverseImageSource]
    class GuardrailConverseImageBlock < Struct.new(
      :format,
      :source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailConverseImageFormat
      PNG = 'png'
      JPEG = 'jpeg'
    end

    # <p>The image source (image bytes) of the guardrail converse image source.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute bytes
    #   <p>The raw image bytes for the image.</p>
    #   @return [String]
    class GuardrailConverseImageSource < Struct.new(
      :bytes,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Bytes < GuardrailConverseImageSource; end
      class Unknown < GuardrailConverseImageSource; end
    end

    # <p>A text block that contains text that you want to assess with a guardrail. For more information, see <a>GuardrailConverseContentBlock</a>.</p>
    # @!attribute text
    #   <p>The text that you want to guard.</p>
    #   @return [String]
    # @!attribute qualifiers
    #   <p>The qualifier details for the guardrails contextual grounding filter.</p>
    #   @return [Array<String>]
    class GuardrailConverseTextBlock < Struct.new(
      :text,
      :qualifiers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The action of the guardrail coverage details.</p>
    # @!attribute text_characters
    #   <p>The text characters of the guardrail coverage details.</p>
    #   @return [Types::GuardrailTextCharactersCoverage]
    # @!attribute images
    #   <p>The guardrail coverage for images (the number of images that guardrails guarded).</p>
    #   @return [Types::GuardrailImageCoverage]
    class GuardrailCoverage < Struct.new(
      :text_characters,
      :images,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A custom word configured in a guardrail.</p>
    # @!attribute match
    #   <p>The match for the custom word.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action for the custom word.</p>
    #   @return [String]
    # @!attribute detected
    #   <p>Indicates whether custom word content that breaches the guardrail configuration is detected.</p>
    #   @return [Boolean]
    class GuardrailCustomWord < Struct.new(
      :match,
      :action,
      :detected,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contain an image which user wants guarded. This block is accepted by the guardrails independent API.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute format
    #   <p>The format details for the file type of the image blocked by the guardrail.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The image source (image bytes) details of the image blocked by the guardrail.</p>
    #   @return [Types::GuardrailImageSource]
    class GuardrailImageBlock < Struct.new(
      :format,
      :source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the guardrail image coverage.</p>
    # @!attribute guarded
    #   <p>The count (integer) of images guardrails guarded.</p>
    #   @return [Integer]
    # @!attribute total
    #   <p>Represents the total number of images (integer) that were in the request (guarded and unguarded).</p>
    #   @return [Integer]
    class GuardrailImageCoverage < Struct.new(
      :guarded,
      :total,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailImageFormat
      PNG = 'png'
      JPEG = 'jpeg'
    end

    # <p>The image source (image bytes) of the guardrail image source. Object used in independent api.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute bytes
    #   <p>The bytes details of the guardrail image source. Object used in independent api.</p>
    #   @return [String]
    class GuardrailImageSource < Struct.new(
      :bytes,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Bytes < GuardrailImageSource; end
      class Unknown < GuardrailImageSource; end
    end

    # <p>The invocation metrics for the guardrail.</p>
    # @!attribute guardrail_processing_latency
    #   <p>The processing latency details for the guardrail invocation metrics.</p>
    #   @return [Integer]
    # @!attribute usage
    #   <p>The usage details for the guardrail invocation metrics.</p>
    #   @return [Types::GuardrailUsage]
    # @!attribute guardrail_coverage
    #   <p>The coverage details for the guardrail invocation metrics.</p>
    #   @return [Types::GuardrailCoverage]
    class GuardrailInvocationMetrics < Struct.new(
      :guardrail_processing_latency,
      :usage,
      :guardrail_coverage,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A managed word configured in a guardrail.</p>
    # @!attribute match
    #   <p>The match for the managed word.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type for the managed word.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action for the managed word.</p>
    #   @return [String]
    # @!attribute detected
    #   <p>Indicates whether managed word content that breaches the guardrail configuration is detected.</p>
    #   @return [Boolean]
    class GuardrailManagedWord < Struct.new(
      :match,
      :type,
      :action,
      :detected,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailManagedWordType
      PROFANITY = 'PROFANITY'
    end

    # <p>The output content produced by the guardrail.</p>
    # @!attribute text
    #   <p>The specific text for the output content produced by the guardrail.</p>
    #   @return [String]
    class GuardrailOutputContent < Struct.new(
      :text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailOutputScope
      INTERVENTIONS = 'INTERVENTIONS'
      FULL = 'FULL'
    end

    # <p>A Personally Identifiable Information (PII) entity configured in a guardrail.</p>
    # @!attribute match
    #   <p>The PII entity filter match.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The PII entity filter type.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The PII entity filter action.</p>
    #   @return [String]
    # @!attribute detected
    #   <p>Indicates whether personally identifiable information (PII) that breaches the guardrail configuration is detected.</p>
    #   @return [Boolean]
    class GuardrailPiiEntityFilter < Struct.new(
      :match,
      :type,
      :action,
      :detected,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailPiiEntityType
      ADDRESS = 'ADDRESS'
      AGE = 'AGE'
      AWS_ACCESS_KEY = 'AWS_ACCESS_KEY'
      AWS_SECRET_KEY = 'AWS_SECRET_KEY'
      CA_HEALTH_NUMBER = 'CA_HEALTH_NUMBER'
      CA_SOCIAL_INSURANCE_NUMBER = 'CA_SOCIAL_INSURANCE_NUMBER'
      CREDIT_DEBIT_CARD_CVV = 'CREDIT_DEBIT_CARD_CVV'
      CREDIT_DEBIT_CARD_EXPIRY = 'CREDIT_DEBIT_CARD_EXPIRY'
      CREDIT_DEBIT_CARD_NUMBER = 'CREDIT_DEBIT_CARD_NUMBER'
      DRIVER_ID = 'DRIVER_ID'
      EMAIL = 'EMAIL'
      INTERNATIONAL_BANK_ACCOUNT_NUMBER = 'INTERNATIONAL_BANK_ACCOUNT_NUMBER'
      IP_ADDRESS = 'IP_ADDRESS'
      LICENSE_PLATE = 'LICENSE_PLATE'
      MAC_ADDRESS = 'MAC_ADDRESS'
      NAME = 'NAME'
      PASSWORD = 'PASSWORD'
      PHONE = 'PHONE'
      PIN = 'PIN'
      SWIFT_CODE = 'SWIFT_CODE'
      UK_NATIONAL_HEALTH_SERVICE_NUMBER = 'UK_NATIONAL_HEALTH_SERVICE_NUMBER'
      UK_NATIONAL_INSURANCE_NUMBER = 'UK_NATIONAL_INSURANCE_NUMBER'
      UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER = 'UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER'
      URL = 'URL'
      USERNAME = 'USERNAME'
      US_BANK_ACCOUNT_NUMBER = 'US_BANK_ACCOUNT_NUMBER'
      US_BANK_ROUTING_NUMBER = 'US_BANK_ROUTING_NUMBER'
      US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER = 'US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER'
      US_PASSPORT_NUMBER = 'US_PASSPORT_NUMBER'
      US_SOCIAL_SECURITY_NUMBER = 'US_SOCIAL_SECURITY_NUMBER'
      VEHICLE_IDENTIFICATION_NUMBER = 'VEHICLE_IDENTIFICATION_NUMBER'
    end

    # <p>A Regex filter configured in a guardrail.</p>
    # @!attribute name
    #   <p>The regex filter name.</p>
    #   @return [String]
    # @!attribute match
    #   <p>The regesx filter match.</p>
    #   @return [String]
    # @!attribute regex
    #   <p>The regex query.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The region filter action.</p>
    #   @return [String]
    # @!attribute detected
    #   <p>Indicates whether custom regex entities that breach the guardrail configuration are detected.</p>
    #   @return [Boolean]
    class GuardrailRegexFilter < Struct.new(
      :name,
      :match,
      :regex,
      :action,
      :detected,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailSensitiveInformationPolicyAction
      ANONYMIZED = 'ANONYMIZED'
      BLOCKED = 'BLOCKED'
      NONE = 'NONE'
    end

    # <p>The assessment for aPersonally Identifiable Information (PII) policy. </p>
    # @!attribute pii_entities
    #   <p>The PII entities in the assessment.</p>
    #   @return [Array<Types::GuardrailPiiEntityFilter>]
    # @!attribute regexes
    #   <p>The regex queries in the assessment.</p>
    #   @return [Array<Types::GuardrailRegexFilter>]
    class GuardrailSensitiveInformationPolicyAssessment < Struct.new(
      :pii_entities,
      :regexes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration information for a guardrail that you use with the <a>ConverseStream</a> action. </p>
    # @!attribute guardrail_identifier
    #   <p>The identifier for the guardrail.</p>
    #   @return [String]
    # @!attribute guardrail_version
    #   <p>The version of the guardrail.</p>
    #   @return [String]
    # @!attribute trace
    #   <p>The trace behavior for the guardrail.</p>
    #   @return [String]
    # @!attribute stream_processing_mode
    #   <p>The processing mode. </p> <p>The processing mode. For more information, see <i>Configure streaming response behavior</i> in the <i>Amazon Bedrock User Guide</i>. </p>
    #   @return [String]
    class GuardrailStreamConfiguration < Struct.new(
      :guardrail_identifier,
      :guardrail_version,
      :trace,
      :stream_processing_mode,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:trace] = 'disabled' unless options.key?(:trace)
        options[:stream_processing_mode] = 'sync' unless options.key?(:stream_processing_mode)
        super
      end
    end

    module GuardrailStreamProcessingMode
      SYNC = 'sync'
      ASYNC = 'async'
    end

    # <p>The text block to be evaluated by the guardrail.</p>
    # @!attribute text
    #   <p>The input text details to be evaluated by the guardrail.</p>
    #   @return [String]
    # @!attribute qualifiers
    #   <p>The qualifiers describing the text block.</p>
    #   @return [Array<String>]
    class GuardrailTextBlock < Struct.new(
      :text,
      :qualifiers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The guardrail coverage for the text characters.</p>
    # @!attribute guarded
    #   <p>The text characters that were guarded by the guardrail coverage.</p>
    #   @return [Integer]
    # @!attribute total
    #   <p>The total text characters by the guardrail coverage.</p>
    #   @return [Integer]
    class GuardrailTextCharactersCoverage < Struct.new(
      :guarded,
      :total,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a topic guardrail.</p>
    # @!attribute name
    #   <p>The name for the guardrail.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type behavior that the guardrail should perform when the model detects the topic.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action the guardrail should take when it intervenes on a topic.</p>
    #   @return [String]
    # @!attribute detected
    #   <p>Indicates whether topic content that breaches the guardrail configuration is detected.</p>
    #   @return [Boolean]
    class GuardrailTopic < Struct.new(
      :name,
      :type,
      :action,
      :detected,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailTopicPolicyAction
      BLOCKED = 'BLOCKED'
      NONE = 'NONE'
    end

    # <p>A behavior assessment of a topic policy.</p>
    # @!attribute topics
    #   <p>The topics in the assessment.</p>
    #   @return [Array<Types::GuardrailTopic>]
    class GuardrailTopicPolicyAssessment < Struct.new(
      :topics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailTopicType
      DENY = 'DENY'
    end

    module GuardrailTrace
      ENABLED = 'enabled'
      DISABLED = 'disabled'
      ENABLED_FULL = 'enabled_full'
    end

    # <p>A Top level guardrail trace object. For more information, see <a>ConverseTrace</a>.</p>
    # @!attribute model_output
    #   <p>The output from the model.</p>
    #   @return [Array<String>]
    # @!attribute input_assessment
    #   <p>The input assessment.</p>
    #   @return [Hash<String, Types::GuardrailAssessment>]
    # @!attribute output_assessments
    #   <p>the output assessments.</p>
    #   @return [Hash<String, Array<Types::GuardrailAssessment>>]
    # @!attribute action_reason
    #   <p>Provides the reason for the action taken when harmful content is detected.</p>
    #   @return [String]
    class GuardrailTraceAssessment < Struct.new(
      :model_output,
      :input_assessment,
      :output_assessments,
      :action_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details on the use of the guardrail.</p>
    # @!attribute topic_policy_units
    #   <p>The topic policy units processed by the guardrail.</p>
    #   @return [Integer]
    # @!attribute content_policy_units
    #   <p>The content policy units processed by the guardrail.</p>
    #   @return [Integer]
    # @!attribute word_policy_units
    #   <p>The word policy units processed by the guardrail.</p>
    #   @return [Integer]
    # @!attribute sensitive_information_policy_units
    #   <p>The sensitive information policy units processed by the guardrail.</p>
    #   @return [Integer]
    # @!attribute sensitive_information_policy_free_units
    #   <p>The sensitive information policy free units processed by the guardrail.</p>
    #   @return [Integer]
    # @!attribute contextual_grounding_policy_units
    #   <p>The contextual grounding policy units processed by the guardrail.</p>
    #   @return [Integer]
    # @!attribute content_policy_image_units
    #   <p>The content policy image units processed by the guardrail.</p>
    #   @return [Integer]
    # @!attribute automated_reasoning_policy_units
    #   <p>The number of text units processed by the automated reasoning policy.</p>
    #   @return [Integer]
    # @!attribute automated_reasoning_policies
    #   <p>The number of automated reasoning policies that were processed during the guardrail evaluation.</p>
    #   @return [Integer]
    class GuardrailUsage < Struct.new(
      :topic_policy_units,
      :content_policy_units,
      :word_policy_units,
      :sensitive_information_policy_units,
      :sensitive_information_policy_free_units,
      :contextual_grounding_policy_units,
      :content_policy_image_units,
      :automated_reasoning_policy_units,
      :automated_reasoning_policies,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailWordPolicyAction
      BLOCKED = 'BLOCKED'
      NONE = 'NONE'
    end

    # <p>The word policy assessment.</p>
    # @!attribute custom_words
    #   <p>Custom words in the assessment.</p>
    #   @return [Array<Types::GuardrailCustomWord>]
    # @!attribute managed_word_lists
    #   <p>Managed word lists in the assessment.</p>
    #   @return [Array<Types::GuardrailManagedWord>]
    class GuardrailWordPolicyAssessment < Struct.new(
      :custom_words,
      :managed_word_lists,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Image content for a message.</p>
    # @!attribute format
    #   <p>The format of the image.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source for the image.</p>
    #   @return [Types::ImageSource]
    class ImageBlock < Struct.new(
      :format,
      :source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ImageFormat
      PNG = 'png'
      JPEG = 'jpeg'
      GIF = 'gif'
      WEBP = 'webp'
    end

    # <p>The source for an image.</p>
    # @!attribute bytes
    #   <p>The raw image bytes for the image. If you use an AWS SDK, you don't need to encode the image bytes in base64.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>The location of an image object in an Amazon S3 bucket. To see which models support S3 uploads, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html">Supported models and features for Converse</a>.</p>
    #   @return [Types::S3Location]
    class ImageSource < Struct.new(
      :bytes,
      :s3_location,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Bytes < ImageSource; end
      class S3Location < ImageSource; end
      class Unknown < ImageSource; end
    end

    # <p>Base inference parameters to pass to a model in a call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a> or <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html">ConverseStream</a>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters for foundation models</a>.</p> <p>If you need to pass additional parameters that the model supports, use the <code>additionalModelRequestFields</code> request field in the call to <code>Converse</code> or <code>ConverseStream</code>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Model parameters</a>.</p>
    # @!attribute max_tokens
    #   <p>The maximum number of tokens to allow in the generated response. The default value is the maximum allowed value for the model that you are using. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters for foundation models</a>. </p>
    #   @return [Integer]
    # @!attribute temperature
    #   <p>The likelihood of the model selecting higher-probability options while generating a response. A lower value makes the model more likely to choose higher-probability options, while a higher value makes the model more likely to choose lower-probability options.</p> <p>The default value is the default value for the model that you are using. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters for foundation models</a>. </p>
    #   @return [Float]
    # @!attribute top_p
    #   <p>The percentage of most-likely candidates that the model considers for the next token. For example, if you choose a value of 0.8 for <code>topP</code>, the model selects from the top 80% of the probability distribution of tokens that could be next in the sequence.</p> <p>The default value is the default value for the model that you are using. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters for foundation models</a>. </p>
    #   @return [Float]
    # @!attribute stop_sequences
    #   <p>A list of stop sequences. A stop sequence is a sequence of characters that causes the model to stop generating the response. </p>
    #   @return [Array<String>]
    class InferenceConfiguration < Struct.new(
      :max_tokens,
      :temperature,
      :top_p,
      :stop_sequences,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An internal server error occurred. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-internal-failure">InternalFailure</a> in the Amazon Bedrock User Guide</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>The prompt and inference parameters in the format specified in the <code>contentType</code> in the header. You must provide the body in JSON format. To see the format and content of the request and response bodies for different models, refer to <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters</a>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html">Run inference</a> in the Bedrock User Guide.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MIME type of the input data in the request. You must specify <code>application/json</code>.</p>
    #   @return [String]
    # @!attribute accept
    #   <p>The desired MIME type of the inference body in the response. The default value is <code>application/json</code>.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The unique identifier of the model to invoke to run inference.</p> <p>The <code>modelId</code> to provide depends on the type of model or throughput that you use:</p> <ul> <li> <p>If you use a base model, specify the model ID or its ARN. For a list of model IDs for base models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns">Amazon Bedrock base model IDs (on-demand throughput)</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an inference profile, specify the inference profile ID or its ARN. For a list of inference profile IDs, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html">Supported Regions and models for cross-region inference</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a provisioned model, specify the ARN of the Provisioned Throughput. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html">Run inference using a Provisioned Throughput</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a custom model, specify the ARN of the custom model deployment (for on-demand inference) or the ARN of your provisioned model (for Provisioned Throughput). For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html">Use a custom model in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">imported model</a>, specify the ARN of the imported model. You can get the model ARN from a successful call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html">CreateModelImportJob</a> or from the Imported models page in the Amazon Bedrock console.</p> </li> </ul>
    #   @return [String]
    # @!attribute trace
    #   <p>Specifies whether to enable or disable the Bedrock trace. If enabled, you can see the full Bedrock trace.</p>
    #   @return [String]
    # @!attribute guardrail_identifier
    #   <p>The unique identifier of the guardrail that you want to use. If you don't provide a value, no guardrail is applied to the invocation.</p> <p>An error will be thrown in the following situations.</p> <ul> <li> <p>You don't provide a guardrail identifier but you specify the <code>amazon-bedrock-guardrailConfig</code> field in the request body.</p> </li> <li> <p>You enable the guardrail but the <code>contentType</code> isn't <code>application/json</code>.</p> </li> <li> <p>You provide a guardrail identifier, but <code>guardrailVersion</code> isn't specified.</p> </li> </ul>
    #   @return [String]
    # @!attribute guardrail_version
    #   <p>The version number for the guardrail. The value can also be <code>DRAFT</code>.</p>
    #   @return [String]
    # @!attribute performance_config_latency
    #   <p>Model performance settings for the request.</p>
    #   @return [String]
    class InvokeModelRequest < Struct.new(
      :body,
      :content_type,
      :accept,
      :model_id,
      :trace,
      :guardrail_identifier,
      :guardrail_version,
      :performance_config_latency,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>Inference response from the model in the format specified in the <code>contentType</code> header. To see the format and content of the request and response bodies for different models, refer to <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters</a>.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MIME type of the inference result.</p>
    #   @return [String]
    # @!attribute performance_config_latency
    #   <p>Model performance settings for the request.</p>
    #   @return [String]
    class InvokeModelResponse < Struct.new(
      :body,
      :content_type,
      :performance_config_latency,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Payload content, the speech chunk, for the bidirectional input of the invocation step.</p>
    # @!attribute chunk
    #   <p>The audio chunk that is used as input for the invocation step.</p>
    #   @return [Types::BidirectionalInputPayloadPart]
    class InvokeModelWithBidirectionalStreamInput < Struct.new(
      :chunk,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Chunk < InvokeModelWithBidirectionalStreamInput; end
      class Unknown < InvokeModelWithBidirectionalStreamInput; end
    end

    # <p>Output from the bidirectional stream that was used for model invocation.</p>
    # @!attribute chunk
    #   <p>The speech chunk that was provided as output from the invocation step.</p>
    #   @return [Types::BidirectionalOutputPayloadPart]
    # @!attribute internal_server_exception
    #   <p>The request encountered an unknown internal error.</p>
    #   @return [Types::InternalServerException]
    # @!attribute model_stream_error_exception
    #   <p>The request encountered an error with the model stream.</p>
    #   @return [Types::ModelStreamErrorException]
    # @!attribute validation_exception
    #   <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    #   @return [Types::ValidationException]
    # @!attribute throttling_exception
    #   <p>The request was denied due to request throttling.</p>
    #   @return [Types::ThrottlingException]
    # @!attribute model_timeout_exception
    #   <p>The connection was closed because a request was not received within the timeout period.</p>
    #   @return [Types::ModelTimeoutException]
    # @!attribute service_unavailable_exception
    #   <p>The request has failed due to a temporary failure of the server.</p>
    #   @return [Types::ServiceUnavailableException]
    class InvokeModelWithBidirectionalStreamOutput < Struct.new(
      :chunk,
      :internal_server_exception,
      :model_stream_error_exception,
      :validation_exception,
      :throttling_exception,
      :model_timeout_exception,
      :service_unavailable_exception,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Chunk < InvokeModelWithBidirectionalStreamOutput; end
      class InternalServerException < InvokeModelWithBidirectionalStreamOutput; end
      class ModelStreamErrorException < InvokeModelWithBidirectionalStreamOutput; end
      class ValidationException < InvokeModelWithBidirectionalStreamOutput; end
      class ThrottlingException < InvokeModelWithBidirectionalStreamOutput; end
      class ModelTimeoutException < InvokeModelWithBidirectionalStreamOutput; end
      class ServiceUnavailableException < InvokeModelWithBidirectionalStreamOutput; end
      class Unknown < InvokeModelWithBidirectionalStreamOutput; end
    end

    # @!attribute model_id
    #   <p>The model ID or ARN of the model ID to use. Currently, only <code>amazon.nova-sonic-v1:0</code> is supported.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The prompt and inference parameters in the format specified in the <code>BidirectionalInputPayloadPart</code> in the header. You must provide the body in JSON format. To see the format and content of the request and response bodies for different models, refer to <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters</a>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html">Run inference</a> in the Bedrock User Guide.</p>
    #   @return [Types::InvokeModelWithBidirectionalStreamInput]
    class InvokeModelWithBidirectionalStreamRequest < Struct.new(
      :model_id,
      :body,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>Streaming response from the model in the format specified by the <code>BidirectionalOutputPayloadPart</code> header.</p>
    #   @return [Types::InvokeModelWithBidirectionalStreamOutput]
    class InvokeModelWithBidirectionalStreamResponse < Struct.new(
      :body,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>The prompt and inference parameters in the format specified in the <code>contentType</code> in the header. You must provide the body in JSON format. To see the format and content of the request and response bodies for different models, refer to <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters</a>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html">Run inference</a> in the Bedrock User Guide.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MIME type of the input data in the request. You must specify <code>application/json</code>.</p>
    #   @return [String]
    # @!attribute accept
    #   <p>The desired MIME type of the inference body in the response. The default value is <code>application/json</code>.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The unique identifier of the model to invoke to run inference.</p> <p>The <code>modelId</code> to provide depends on the type of model or throughput that you use:</p> <ul> <li> <p>If you use a base model, specify the model ID or its ARN. For a list of model IDs for base models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns">Amazon Bedrock base model IDs (on-demand throughput)</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an inference profile, specify the inference profile ID or its ARN. For a list of inference profile IDs, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html">Supported Regions and models for cross-region inference</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a provisioned model, specify the ARN of the Provisioned Throughput. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html">Run inference using a Provisioned Throughput</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a custom model, specify the ARN of the custom model deployment (for on-demand inference) or the ARN of your provisioned model (for Provisioned Throughput). For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html">Use a custom model in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">imported model</a>, specify the ARN of the imported model. You can get the model ARN from a successful call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html">CreateModelImportJob</a> or from the Imported models page in the Amazon Bedrock console.</p> </li> </ul>
    #   @return [String]
    # @!attribute trace
    #   <p>Specifies whether to enable or disable the Bedrock trace. If enabled, you can see the full Bedrock trace.</p>
    #   @return [String]
    # @!attribute guardrail_identifier
    #   <p>The unique identifier of the guardrail that you want to use. If you don't provide a value, no guardrail is applied to the invocation.</p> <p>An error is thrown in the following situations.</p> <ul> <li> <p>You don't provide a guardrail identifier but you specify the <code>amazon-bedrock-guardrailConfig</code> field in the request body.</p> </li> <li> <p>You enable the guardrail but the <code>contentType</code> isn't <code>application/json</code>.</p> </li> <li> <p>You provide a guardrail identifier, but <code>guardrailVersion</code> isn't specified.</p> </li> </ul>
    #   @return [String]
    # @!attribute guardrail_version
    #   <p>The version number for the guardrail. The value can also be <code>DRAFT</code>.</p>
    #   @return [String]
    # @!attribute performance_config_latency
    #   <p>Model performance settings for the request.</p>
    #   @return [String]
    class InvokeModelWithResponseStreamRequest < Struct.new(
      :body,
      :content_type,
      :accept,
      :model_id,
      :trace,
      :guardrail_identifier,
      :guardrail_version,
      :performance_config_latency,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>Inference response from the model in the format specified by the <code>contentType</code> header. To see the format and content of this field for different models, refer to <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters</a>.</p>
    #   @return [Types::ResponseStream]
    # @!attribute content_type
    #   <p>The MIME type of the inference result.</p>
    #   @return [String]
    # @!attribute performance_config_latency
    #   <p>Model performance settings for the request.</p>
    #   @return [String]
    class InvokeModelWithResponseStreamResponse < Struct.new(
      :body,
      :content_type,
      :performance_config_latency,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute submit_time_after
    #   <p>Include invocations submitted after this time.</p>
    #   @return [Time]
    # @!attribute submit_time_before
    #   <p>Include invocations submitted before this time.</p>
    #   @return [Time]
    # @!attribute status_equals
    #   <p>Filter invocations by status.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of invocations to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>How to sort the response.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sorting order for the response.</p>
    #   @return [String]
    class ListAsyncInvokesRequest < Struct.new(
      :submit_time_after,
      :submit_time_before,
      :status_equals,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute async_invoke_summaries
    #   <p>A list of invocation summaries.</p>
    #   @return [Array<Types::AsyncInvokeSummary>]
    class ListAsyncInvokesResponse < Struct.new(
      :next_token,
      :async_invoke_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A message input, or returned from, a call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a> or <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html">ConverseStream</a>.</p>
    # @!attribute role
    #   <p>The role that the message plays in the message.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The message content. Note the following restrictions:</p> <ul> <li> <p>You can include up to 20 images. Each image's size, height, and width must be no more than 3.75 MB, 8000 px, and 8000 px, respectively.</p> </li> <li> <p>You can include up to five documents. Each document's size must be no more than 4.5 MB.</p> </li> <li> <p>If you include a <code>ContentBlock</code> with a <code>document</code> field in the array, you must also include a <code>ContentBlock</code> with a <code>text</code> field.</p> </li> <li> <p>You can only include images and documents if the <code>role</code> is <code>user</code>.</p> </li> </ul>
    #   @return [Array<Types::ContentBlock>]
    class Message < Struct.new(
      :role,
      :content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The start of a message.</p>
    # @!attribute role
    #   <p>The role for the message.</p>
    #   @return [String]
    class MessageStartEvent < Struct.new(
      :role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The stop event for a message.</p>
    # @!attribute stop_reason
    #   <p>The reason why the model stopped generating output.</p>
    #   @return [String]
    # @!attribute additional_model_response_fields
    #   <p>The additional model response fields.</p>
    #   @return [JSON]
    class MessageStopEvent < Struct.new(
      :stop_reason,
      :additional_model_response_fields,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request failed due to an error while processing the model.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute original_status_code
    #   <p>The original status code.</p>
    #   @return [Integer]
    # @!attribute resource_name
    #   <p>The resource name.</p>
    #   @return [String]
    class ModelErrorException < Struct.new(
      :message,
      :original_status_code,
      :resource_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The model specified in the request is not ready to serve inference requests. The AWS SDK will automatically retry the operation up to 5 times. For information about configuring automatic retries, see <a href="https://docs.aws.amazon.com/sdkref/latest/guide/feature-retry-behavior.html">Retry behavior</a> in the <i>AWS SDKs and Tools</i> reference guide.</p>
    # @!attribute message
    #   @return [String]
    class ModelNotReadyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An error occurred while streaming the response. Retry your request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute original_status_code
    #   <p>The original status code.</p>
    #   @return [Integer]
    # @!attribute original_message
    #   <p>The original message.</p>
    #   @return [String]
    class ModelStreamErrorException < Struct.new(
      :message,
      :original_status_code,
      :original_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request took too long to process. Processing time exceeded the model timeout length.</p>
    # @!attribute message
    #   @return [String]
    class ModelTimeoutException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Payload content included in the response.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute bytes
    #   <p>Base64-encoded bytes of payload data.</p>
    #   @return [String]
    class PayloadPart < Struct.new(
      :bytes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PerformanceConfigLatency
      STANDARD = 'standard'
      OPTIMIZED = 'optimized'
    end

    # <p>Performance settings for a model.</p>
    # @!attribute latency
    #   <p>To use a latency-optimized version of the model, set to <code>optimized</code>.</p>
    #   @return [String]
    class PerformanceConfiguration < Struct.new(
      :latency,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:latency] = 'standard' unless options.key?(:latency)
        super
      end
    end

    # <p>A prompt router trace.</p>
    # @!attribute invoked_model_id
    #   <p>The ID of the invoked model.</p>
    #   @return [String]
    class PromptRouterTrace < Struct.new(
      :invoked_model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains a map of variables in a prompt from Prompt management to an object containing the values to fill in for them when running model invocation. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-how.html">How Prompt management works</a>.</p>
    # @!attribute text
    #   <p>The text value that the variable maps to.</p>
    #   @return [String]
    class PromptVariableValues < Struct.new(
      :text,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Text < PromptVariableValues; end
      class Unknown < PromptVariableValues; end
    end

    # <p>Contains content regarding the reasoning that is carried out by the model with respect to the content in the content block. Reasoning refers to a Chain of Thought (CoT) that the model generates to enhance the accuracy of its final response.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute reasoning_text
    #   <p>The reasoning that the model used to return the output.</p>
    #   @return [Types::ReasoningTextBlock]
    # @!attribute redacted_content
    #   <p>The content in the reasoning that was encrypted by the model provider for safety reasons. The encryption doesn't affect the quality of responses.</p>
    #   @return [String]
    class ReasoningContentBlock < Struct.new(
      :reasoning_text,
      :redacted_content,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class ReasoningText < ReasoningContentBlock; end
      class RedactedContent < ReasoningContentBlock; end
      class Unknown < ReasoningContentBlock; end
    end

    # <p>Contains content regarding the reasoning that is carried out by the model with respect to the content in the content block. Reasoning refers to a Chain of Thought (CoT) that the model generates to enhance the accuracy of its final response.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The reasoning that the model used to return the output.</p>
    #   @return [String]
    # @!attribute redacted_content
    #   <p>The content in the reasoning that was encrypted by the model provider for safety reasons. The encryption doesn't affect the quality of responses.</p>
    #   @return [String]
    # @!attribute signature
    #   <p>A token that verifies that the reasoning text was generated by the model. If you pass a reasoning block back to the API in a multi-turn conversation, include the text and its signature unmodified.</p>
    #   @return [String]
    class ReasoningContentBlockDelta < Struct.new(
      :text,
      :redacted_content,
      :signature,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Text < ReasoningContentBlockDelta; end
      class RedactedContent < ReasoningContentBlockDelta; end
      class Signature < ReasoningContentBlockDelta; end
      class Unknown < ReasoningContentBlockDelta; end
    end

    # <p>Contains the reasoning that the model used to return the output.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The reasoning that the model used to return the output.</p>
    #   @return [String]
    # @!attribute signature
    #   <p>A token that verifies that the reasoning text was generated by the model. If you pass a reasoning block back to the API in a multi-turn conversation, include the text and its signature unmodified.</p>
    #   @return [String]
    class ReasoningTextBlock < Struct.new(
      :text,
      :signature,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified resource ARN was not found. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-resource-not-found">ResourceNotFound</a> in the Amazon Bedrock User Guide</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Definition of content in the response stream.</p>
    # @!attribute chunk
    #   <p>Content included in the response.</p>
    #   @return [Types::PayloadPart]
    # @!attribute internal_server_exception
    #   <p>An internal server error occurred. Retry your request.</p>
    #   @return [Types::InternalServerException]
    # @!attribute model_stream_error_exception
    #   <p>An error occurred while streaming the response. Retry your request.</p>
    #   @return [Types::ModelStreamErrorException]
    # @!attribute validation_exception
    #   <p>Input validation failed. Check your request parameters and retry the request.</p>
    #   @return [Types::ValidationException]
    # @!attribute throttling_exception
    #   <p>Your request was throttled because of service-wide limitations. Resubmit your request later or in a different region. You can also purchase <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html">Provisioned Throughput</a> to increase the rate or number of tokens you can process.</p>
    #   @return [Types::ThrottlingException]
    # @!attribute model_timeout_exception
    #   <p>The request took too long to process. Processing time exceeded the model timeout length.</p>
    #   @return [Types::ModelTimeoutException]
    # @!attribute service_unavailable_exception
    #   <p>The service isn't available. Try again later.</p>
    #   @return [Types::ServiceUnavailableException]
    class ResponseStream < Struct.new(
      :chunk,
      :internal_server_exception,
      :model_stream_error_exception,
      :validation_exception,
      :throttling_exception,
      :model_timeout_exception,
      :service_unavailable_exception,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Chunk < ResponseStream; end
      class InternalServerException < ResponseStream; end
      class ModelStreamErrorException < ResponseStream; end
      class ValidationException < ResponseStream; end
      class ThrottlingException < ResponseStream; end
      class ModelTimeoutException < ResponseStream; end
      class ServiceUnavailableException < ResponseStream; end
      class Unknown < ResponseStream; end
    end

    # <p>A storage location in an Amazon S3 bucket.</p>
    # @!attribute uri
    #   <p>An object URI starting with <code>s3://</code>.</p>
    #   @return [String]
    # @!attribute bucket_owner
    #   <p>If the bucket belongs to another AWS account, specify that account's ID.</p>
    #   @return [String]
    class S3Location < Struct.new(
      :uri,
      :bucket_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Your request exceeds the service quota for your account. You can view your quotas at <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/gs-request-quota.html">Viewing service quotas</a>. You can resubmit your request later.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The service isn't currently available. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-service-unavailable">ServiceUnavailable</a> in the Amazon Bedrock User Guide</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SortAsyncInvocationBy
      SUBMISSION_TIME = 'SubmissionTime'
    end

    module SortOrder
      ASCENDING = 'Ascending'
      DESCENDING = 'Descending'
    end

    # <p>The model must request a specific tool. For example, <code>{"tool" : {"name" : "Your tool name"}}</code>.</p> <note> <p>This field is only supported by Anthropic Claude 3 models.</p> </note>
    # @!attribute name
    #   <p>The name of the tool that the model must request. </p>
    #   @return [String]
    class SpecificToolChoice < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>Specify idempotency token to ensure that requests are not duplicated.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model to invoke.</p>
    #   @return [String]
    # @!attribute model_input
    #   <p>Input to send to the model.</p>
    #   @return [JSON]
    # @!attribute output_data_config
    #   <p>Where to store the output.</p>
    #   @return [Types::AsyncInvokeOutputDataConfig]
    # @!attribute tags
    #   <p>Tags to apply to the invocation.</p>
    #   @return [Array<Types::Tag>]
    class StartAsyncInvokeRequest < Struct.new(
      :client_request_token,
      :model_id,
      :model_input,
      :output_data_config,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute invocation_arn
    #   <p>The ARN of the invocation.</p>
    #   @return [String]
    class StartAsyncInvokeResponse < Struct.new(
      :invocation_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module StopReason
      END_TURN = 'end_turn'
      TOOL_USE = 'tool_use'
      MAX_TOKENS = 'max_tokens'
      STOP_SEQUENCE = 'stop_sequence'
      GUARDRAIL_INTERVENED = 'guardrail_intervened'
      CONTENT_FILTERED = 'content_filtered'
    end

    # <p>A system content block.</p>
    # @!attribute text
    #   <p>A system prompt for the model. </p>
    #   @return [String]
    # @!attribute guard_content
    #   <p>A content block to assess with the guardrail. Use with the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a> or <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html">ConverseStream</a> API operations. </p> <p>For more information, see <i>Use a guardrail with the Converse API</i> in the <i>Amazon Bedrock User Guide</i>.</p>
    #   @return [Types::GuardrailConverseContentBlock]
    # @!attribute cache_point
    #   <p>CachePoint to include in the system prompt.</p>
    #   @return [Types::CachePointBlock]
    class SystemContentBlock < Struct.new(
      :text,
      :guard_content,
      :cache_point,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Text < SystemContentBlock; end
      class GuardContent < SystemContentBlock; end
      class CachePoint < SystemContentBlock; end
      class Unknown < SystemContentBlock; end
    end

    # <p>A tag.</p>
    # @!attribute key
    #   <p>The tag's key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag's value.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Your request was denied due to exceeding the account quotas for <i>Amazon Bedrock</i>. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-throttling-exception">ThrottlingException</a> in the Amazon Bedrock User Guide</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The tokens used in a message API inference call. </p>
    # @!attribute input_tokens
    #   <p>The number of tokens sent in the request to the model.</p>
    #   @return [Integer]
    # @!attribute output_tokens
    #   <p>The number of tokens that the model generated for the request.</p>
    #   @return [Integer]
    # @!attribute total_tokens
    #   <p>The total of input tokens and tokens generated by the model.</p>
    #   @return [Integer]
    # @!attribute cache_read_input_tokens
    #   <p>The number of input tokens read from the cache for the request.</p>
    #   @return [Integer]
    # @!attribute cache_write_input_tokens
    #   <p>The number of input tokens written to the cache for the request.</p>
    #   @return [Integer]
    class TokenUsage < Struct.new(
      :input_tokens,
      :output_tokens,
      :total_tokens,
      :cache_read_input_tokens,
      :cache_write_input_tokens,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a tool that you can use with the Converse API. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Tool use (function calling)</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute tool_spec
    #   <p>The specfication for the tool.</p>
    #   @return [Types::ToolSpecification]
    # @!attribute cache_point
    #   <p>CachePoint to include in the tool configuration.</p>
    #   @return [Types::CachePointBlock]
    class Tool < Struct.new(
      :tool_spec,
      :cache_point,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class ToolSpec < Tool; end
      class CachePoint < Tool; end
      class Unknown < Tool; end
    end

    # <p>Determines which tools the model should request in a call to <code>Converse</code> or <code>ConverseStream</code>. <code>ToolChoice</code> is only supported by Anthropic Claude 3 models and by Mistral AI Mistral Large.</p>
    # @!attribute auto
    #   <p>(Default). The Model automatically decides if a tool should be called or whether to generate text instead. </p>
    #   @return [Types::AutoToolChoice]
    # @!attribute any
    #   <p>The model must request at least one tool (no text is generated).</p>
    #   @return [Types::AnyToolChoice]
    # @!attribute tool
    #   <p>The Model must request the specified tool. Only supported by Anthropic Claude 3 models. </p>
    #   @return [Types::SpecificToolChoice]
    class ToolChoice < Struct.new(
      :auto,
      :any,
      :tool,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Auto < ToolChoice; end
      class Any < ToolChoice; end
      class Tool < ToolChoice; end
      class Unknown < ToolChoice; end
    end

    # <p>Configuration information for the tools that you pass to a model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Tool use (function calling)</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute tools
    #   <p>An array of tools that you want to pass to a model.</p>
    #   @return [Array<Types::Tool>]
    # @!attribute tool_choice
    #   <p>If supported by model, forces the model to request a tool.</p>
    #   @return [Types::ToolChoice]
    class ToolConfiguration < Struct.new(
      :tools,
      :tool_choice,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The schema for the tool. The top level schema type must be <code>object</code>. </p>
    # @!attribute json
    #   <p>The JSON schema for the tool. For more information, see <a href="https://json-schema.org/understanding-json-schema/reference">JSON Schema Reference</a>.</p>
    #   @return [JSON]
    class ToolInputSchema < Struct.new(
      :json,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Json < ToolInputSchema; end
      class Unknown < ToolInputSchema; end
    end

    # <p>A tool result block that contains the results for a tool request that the model previously made.</p>
    # @!attribute tool_use_id
    #   <p>The ID of the tool request that this is the result for.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content for tool result content block.</p>
    #   @return [Array<Types::ToolResultContentBlock>]
    # @!attribute status
    #   <p>The status for the tool result content block.</p> <note> <p>This field is only supported Anthropic Claude 3 models.</p> </note>
    #   @return [String]
    class ToolResultBlock < Struct.new(
      :tool_use_id,
      :content,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The tool result content block.</p>
    # @!attribute json
    #   <p>A tool result that is JSON format data.</p>
    #   @return [JSON]
    # @!attribute text
    #   <p>A tool result that is text.</p>
    #   @return [String]
    # @!attribute image
    #   <p>A tool result that is an image.</p> <note> <p>This field is only supported by Anthropic Claude 3 models.</p> </note>
    #   @return [Types::ImageBlock]
    # @!attribute document
    #   <p>A tool result that is a document.</p>
    #   @return [Types::DocumentBlock]
    # @!attribute video
    #   <p>A tool result that is video.</p>
    #   @return [Types::VideoBlock]
    class ToolResultContentBlock < Struct.new(
      :json,
      :text,
      :image,
      :document,
      :video,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Json < ToolResultContentBlock; end
      class Text < ToolResultContentBlock; end
      class Image < ToolResultContentBlock; end
      class Document < ToolResultContentBlock; end
      class Video < ToolResultContentBlock; end
      class Unknown < ToolResultContentBlock; end
    end

    module ToolResultStatus
      SUCCESS = 'success'
      ERROR = 'error'
    end

    # <p>The specification for the tool.</p>
    # @!attribute name
    #   <p>The name for the tool.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the tool.</p>
    #   @return [String]
    # @!attribute input_schema
    #   <p>The input schema for the tool in JSON format.</p>
    #   @return [Types::ToolInputSchema]
    class ToolSpecification < Struct.new(
      :name,
      :description,
      :input_schema,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A tool use content block. Contains information about a tool that the model is requesting be run., The model uses the result from the tool to generate a response. </p>
    # @!attribute tool_use_id
    #   <p>The ID for the tool request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the tool that the model wants to use.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The input to pass to the tool. </p>
    #   @return [JSON]
    class ToolUseBlock < Struct.new(
      :tool_use_id,
      :name,
      :input,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The delta for a tool use block.</p>
    # @!attribute input
    #   <p>The input for a requested tool.</p>
    #   @return [String]
    class ToolUseBlockDelta < Struct.new(
      :input,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The start of a tool use block.</p>
    # @!attribute tool_use_id
    #   <p>The ID for the tool request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the tool that the model is requesting to use.</p>
    #   @return [String]
    class ToolUseBlockStart < Struct.new(
      :tool_use_id,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Trace
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
      ENABLED_FULL = 'ENABLED_FULL'
    end

    # <p>The input fails to satisfy the constraints specified by <i>Amazon Bedrock</i>. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-validation-error">ValidationError</a> in the Amazon Bedrock User Guide</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A video block.</p>
    # @!attribute format
    #   <p>The block's format.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The block's source.</p>
    #   @return [Types::VideoSource]
    class VideoBlock < Struct.new(
      :format,
      :source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module VideoFormat
      MKV = 'mkv'
      MOV = 'mov'
      MP4 = 'mp4'
      WEBM = 'webm'
      FLV = 'flv'
      MPEG = 'mpeg'
      MPG = 'mpg'
      WMV = 'wmv'
      THREE_GP = 'three_gp'
    end

    # <p>A video source. You can upload a smaller video as a base64-encoded string as long as the encoded file is less than 25MB. You can also transfer videos up to 1GB in size from an S3 bucket.</p>
    # @!attribute bytes
    #   <p>Video content encoded in base64.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>The location of a video object in an Amazon S3 bucket. To see which models support S3 uploads, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html">Supported models and features for Converse</a>.</p>
    #   @return [Types::S3Location]
    class VideoSource < Struct.new(
      :bytes,
      :s3_location,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Bytes < VideoSource; end
      class S3Location < VideoSource; end
      class Unknown < VideoSource; end
    end

  end
end
