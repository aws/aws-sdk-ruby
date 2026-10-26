# frozen_string_literal: true

# This is generated code!

module Aws::BedrockRuntime
  # This module contains the types returned by client operations.
  module Types

    # <p>The request is denied because you do not have sufficient permissions to perform the requested action. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-access-denied">AccessDeniedException</a> in the Amazon Bedrock User Guide</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The model must request at least one tool (no text is generated). For example, <code>{"any" : {}}</code>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Call a tool with the Converse API</a> in the Amazon Bedrock User Guide.</p>
    class AnyToolChoice < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the specific guardrail that was applied during this assessment, including its identifier, version, ARN, origin, and ownership information.</p>
    # @!attribute guardrail_id
    #   <p>The unique ID of the guardrail that was applied.</p>
    #   @return [String]
    # @!attribute guardrail_version
    #   <p>The version of the guardrail that was applied.</p>
    #   @return [String]
    # @!attribute guardrail_arn
    #   <p>The ARN of the guardrail that was applied.</p>
    #   @return [String]
    # @!attribute guardrail_origin
    #   <p>The origin of how the guardrail was applied. This can be either requested at the API level or enforced at the account or organization level as a default guardrail.</p>
    #   @return [Array<String>]
    # @!attribute guardrail_ownership
    #   <p>The ownership type of the guardrail, indicating whether it is owned by the requesting account or is a cross-account guardrail shared from another AWS account.</p>
    #   @return [String]
    class AppliedGuardrailDetails < Struct.new(
      nil,
      :guardrail_id,
      :guardrail_version,
      :guardrail_arn,
      :guardrail_origin,
      :guardrail_ownership,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :guardrail_identifier,
      :guardrail_version,
      :source,
      :content,
      :output_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :usage,
      :action,
      :action_reason,
      :outputs,
      :assessments,
      :guardrail_coverage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Asynchronous invocation output data settings.</p>
    # @!attribute s3_output_data_config
    #   <p>A storage location for the output data in an S3 bucket</p>
    #   @return [Types::AsyncInvokeS3OutputDataConfig]
    class AsyncInvokeOutputDataConfig < Struct.new(
      :s3_output_data_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
      nil,
      :s3_uri,
      :kms_key_id,
      :bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :invocation_arn,
      :model_arn,
      :client_request_token,
      :status,
      :failure_message,
      :submit_time,
      :last_modified_time,
      :end_time,
      :output_data_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An audio content block that contains audio data in various supported formats.</p>
    # @!attribute format
    #   <p>The format of the audio data, such as MP3, WAV, FLAC, or other supported audio formats.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the audio data, which can be provided as raw bytes or an S3 location.</p>
    #   @return [Types::AudioSource]
    # @!attribute error
    #   <p>Error information if the audio block could not be processed or contains invalid data.</p>
    #   @return [Types::ErrorBlock]
    class AudioBlock < Struct.new(
      nil,
      :format,
      :source,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source of audio data, which can be provided either as raw bytes or a reference to an S3 location.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute bytes
    #   <p>Audio data encoded in base64.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>A reference to audio data stored in an Amazon S3 bucket. To see which models support S3 uploads, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html">Supported models and features for Converse</a>.</p>
    #   @return [Types::S3Location]
    class AudioSource < Struct.new(
      :bytes,
      :s3_location,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Bytes < AudioSource; end
      class S3Location < AudioSource; end
      class Unknown < AudioSource; end
    end

    # <p>The Model automatically decides if a tool should be called or whether to generate text instead. For example, <code>{"auto" : {}}</code>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Call a tool with the Converse API</a> in the Amazon Bedrock User Guide</p>
    class AutoToolChoice < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Payload content for the bidirectional input. The input is an audio stream.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute bytes
    #   <p>The audio content for the bidirectional input.</p>
    #   @return [String]
    class BidirectionalInputPayloadPart < Struct.new(
      nil,
      :bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output from the bidirectional stream. The output is speech and a text transcription.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute bytes
    #   <p>The speech output of the bidirectional stream.</p>
    #   @return [String]
    class BidirectionalOutputPayloadPart < Struct.new(
      nil,
      :bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Cache creation metrics for a specific TTL duration</p>
    # @!attribute ttl
    #   <p>TTL duration for these cached tokens</p>
    #   @return [String]
    # @!attribute input_tokens
    #   <p>Number of tokens written to cache with this TTL (cache creation tokens)</p>
    #   @return [Integer]
    class CacheDetail < Struct.new(
      nil,
      :ttl,
      :input_tokens,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a section of content to be cached for reuse in subsequent API calls.</p>
    # @!attribute type
    #   <p>Specifies the type of cache point within the CachePointBlock.</p>
    #   @return [String]
    # @!attribute ttl
    #   <p>Optional TTL duration for cache entries. When specified, enables extended TTL caching with the specified duration. When omitted, uses <code>type</code> value for caching behavior.</p>
    #   @return [String]
    class CachePointBlock < Struct.new(
      nil,
      :type,
      :ttl,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a citation that references a specific source document. Citations provide traceability between the model's generated response and the source documents that informed that response.</p>
    # @!attribute title
    #   <p>The title or identifier of the source document being cited.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source from the original search result that provided the cited content.</p>
    #   @return [String]
    # @!attribute source_content
    #   <p>The specific content from the source document that was referenced or cited in the generated response.</p>
    #   @return [Array<Types::CitationSourceContent>]
    # @!attribute location
    #   <p>The precise location within the source document where the cited content can be found, including character positions, page numbers, or chunk identifiers.</p>
    #   @return [Types::CitationLocation]
    class Citation < Struct.new(
      nil,
      :title,
      :source,
      :source_content,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the generated text content that corresponds to or is supported by a citation from a source document.</p>
    # @!attribute text
    #   <p>The text content that was generated by the model and is supported by the associated citation.</p>
    #   @return [String]
    class CitationGeneratedContent < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < CitationGeneratedContent; end
      class Unknown < CitationGeneratedContent; end
    end

    # <p>Specifies the precise location within a source document where cited content can be found. This can include character-level positions, page numbers, or document chunks depending on the document type and indexing method.</p>
    # @!attribute web
    #   <p>The web URL that was cited for this reference.</p>
    #   @return [Types::WebLocation]
    # @!attribute document_char
    #   <p>The character-level location within the document where the cited content is found.</p>
    #   @return [Types::DocumentCharLocation]
    # @!attribute document_page
    #   <p>The page-level location within the document where the cited content is found.</p>
    #   @return [Types::DocumentPageLocation]
    # @!attribute document_chunk
    #   <p>The chunk-level location within the document where the cited content is found, typically used for documents that have been segmented into logical chunks.</p>
    #   @return [Types::DocumentChunkLocation]
    # @!attribute search_result_location
    #   <p>The search result location where the cited content is found, including the search result index and block positions within the content array.</p>
    #   @return [Types::SearchResultLocation]
    class CitationLocation < Struct.new(
      :web,
      :document_char,
      :document_page,
      :document_chunk,
      :search_result_location,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Web < CitationLocation; end
      class DocumentChar < CitationLocation; end
      class DocumentPage < CitationLocation; end
      class DocumentChunk < CitationLocation; end
      class SearchResultLocation < CitationLocation; end
      class Unknown < CitationLocation; end
    end

    # <p>Contains the actual text content from a source document that is being cited or referenced in the model's response.</p>
    # @!attribute text
    #   <p>The text content from the source document that is being cited.</p>
    #   @return [String]
    class CitationSourceContent < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < CitationSourceContent; end
      class Unknown < CitationSourceContent; end
    end

    # <p>Contains incremental updates to the source content text during streaming responses, allowing clients to build up the cited content progressively.</p>
    # @!attribute text
    #   <p>An incremental update to the text content from the source document that is being cited.</p>
    #   @return [String]
    class CitationSourceContentDelta < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for enabling and controlling document citations in Converse API responses. When enabled, the model can include citation information that links generated content back to specific source documents.</p>
    # @!attribute enabled
    #   <p>Specifies whether citations from the selected document should be used in the model's response. When set to true, the model can generate citations that reference the source documents used to inform the response.</p>
    #   @return [Boolean]
    class CitationsConfig < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A content block that contains both generated text and associated citation information. This block type is returned when document citations are enabled, providing traceability between the generated content and the source documents that informed the response.</p>
    # @!attribute content
    #   <p>The generated content that is supported by the associated citations.</p>
    #   @return [Array<Types::CitationGeneratedContent>]
    # @!attribute citations
    #   <p>An array of citations that reference the source documents used to generate the associated content.</p>
    #   @return [Array<Types::Citation>]
    class CitationsContentBlock < Struct.new(
      nil,
      :content,
      :citations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains incremental updates to citation information during streaming responses. This allows clients to build up citation data progressively as the response is generated.</p>
    # @!attribute title
    #   <p>The title or identifier of the source document being cited.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source from the original search result that provided the cited content.</p>
    #   @return [String]
    # @!attribute source_content
    #   <p>The specific content from the source document that was referenced or cited in the generated response.</p>
    #   @return [Array<Types::CitationSourceContentDelta>]
    # @!attribute location
    #   <p>Specifies the precise location within a source document where cited content can be found. This can include character-level positions, page numbers, or document chunks depending on the document type and indexing method.</p>
    #   @return [Types::CitationLocation]
    class CitationsDelta < Struct.new(
      nil,
      :title,
      :source,
      :source_content,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error occurred because of a conflict while performing an operation.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    # @!attribute audio
    #   <p>An audio content block containing audio data in the conversation.</p>
    #   @return [Types::AudioBlock]
    # @!attribute tool_use
    #   <p>Information about a tool use request from a model.</p>
    #   @return [Types::ToolUseBlock]
    # @!attribute tool_result
    #   <p>The result for a tool request that a model makes.</p>
    #   @return [Types::ToolResultBlock]
    # @!attribute guard_content
    #   <p>Contains the content to assess with the guardrail. If you don't specify <code>guardContent</code> in a call to the Converse API, the guardrail (if passed in the Converse API) assesses the entire message.</p> <p>For more information, see <i>Use a guardrail with the Converse API</i> in the <i>Amazon Bedrock User Guide</i>.</p>
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
    # @!attribute search_result
    #   <p>Search result to include in the message.</p>
    #   @return [Types::SearchResultBlock]
    # @!attribute tool_addition
    #   <p>A content block for adding a tool to the available tool set mid-conversation. Each block references a single tool via its <code>tool</code> field. Use within a <code>system</code> role message to make a tool available without re-sending the full tool configuration.</p>
    #   @return [Types::ToolAdditionBlock]
    # @!attribute tool_removal
    #   <p>A content block for removing a tool from the available tool set mid-conversation. Each block references a single tool via its <code>tool</code> field. Use within a <code>system</code> role message to remove a tool without re-sending the full tool configuration.</p>
    #   @return [Types::ToolRemovalBlock]
    class ContentBlock < Struct.new(
      :text,
      :image,
      :document,
      :video,
      :audio,
      :tool_use,
      :tool_result,
      :guard_content,
      :cache_point,
      :reasoning_content,
      :citations_content,
      :search_result,
      :tool_addition,
      :tool_removal,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < ContentBlock; end
      class Image < ContentBlock; end
      class Document < ContentBlock; end
      class Video < ContentBlock; end
      class Audio < ContentBlock; end
      class ToolUse < ContentBlock; end
      class ToolResult < ContentBlock; end
      class GuardContent < ContentBlock; end
      class CachePoint < ContentBlock; end
      class ReasoningContent < ContentBlock; end
      class CitationsContent < ContentBlock; end
      class SearchResult < ContentBlock; end
      class ToolAddition < ContentBlock; end
      class ToolRemoval < ContentBlock; end
      class Unknown < ContentBlock; end
    end

    # <p>A block of content in a streaming response.</p>
    # @!attribute text
    #   <p>The content text.</p>
    #   @return [String]
    # @!attribute tool_use
    #   <p>Information about a tool that the model is requesting to use.</p>
    #   @return [Types::ToolUseBlockDelta]
    # @!attribute tool_result
    #   <p>An incremental update that contains the results from a tool call.</p>
    #   @return [Array<Types::ToolResultBlockDelta>]
    # @!attribute reasoning_content
    #   <p>Contains content regarding the reasoning that is carried out by the model. Reasoning refers to a Chain of Thought (CoT) that the model generates to enhance the accuracy of its final response.</p>
    #   @return [Types::ReasoningContentBlockDelta]
    # @!attribute citation
    #   <p>Incremental citation information that is streamed as part of the response generation process.</p>
    #   @return [Types::CitationsDelta]
    # @!attribute image
    #   <p>A streaming delta event containing incremental image data.</p>
    #   @return [Types::ImageBlockDelta]
    class ContentBlockDelta < Struct.new(
      :text,
      :tool_use,
      :tool_result,
      :reasoning_content,
      :citation,
      :image,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < ContentBlockDelta; end
      class ToolUse < ContentBlockDelta; end
      class ToolResult < ContentBlockDelta; end
      class ReasoningContent < ContentBlockDelta; end
      class Citation < ContentBlockDelta; end
      class Image < ContentBlockDelta; end
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
      nil,
      :delta,
      :content_block_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Content block start information.</p>
    # @!attribute tool_use
    #   <p>Information about a tool that the model is requesting to use.</p>
    #   @return [Types::ToolUseBlockStart]
    # @!attribute tool_result
    #   <p>The </p>
    #   @return [Types::ToolResultBlockStart]
    # @!attribute image
    #   <p>The initial event indicating the start of a streaming image block.</p>
    #   @return [Types::ImageBlockStart]
    class ContentBlockStart < Struct.new(
      :tool_use,
      :tool_result,
      :image,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ToolUse < ContentBlockStart; end
      class ToolResult < ContentBlockStart; end
      class Image < ContentBlockStart; end
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
      nil,
      :start,
      :content_block_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A content block stop event.</p>
    # @!attribute content_block_index
    #   <p>The index for a content block.</p>
    #   @return [Integer]
    class ContentBlockStopEvent < Struct.new(
      nil,
      :content_block_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metrics for a call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a>.</p>
    # @!attribute latency_ms
    #   <p>The latency of the call to <code>Converse</code>, in milliseconds. </p>
    #   @return [Integer]
    class ConverseMetrics < Struct.new(
      nil,
      :latency_ms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from a call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a>.</p>
    # @!attribute message
    #   <p>The message that the model generates.</p>
    #   @return [Types::Message]
    class ConverseOutput < Struct.new(
      :message,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
    # @!attribute service_tier
    #   <p>Specifies the processing tier configuration used for serving the request.</p>
    #   @return [Types::ServiceTier]
    # @!attribute output_config
    #   <p>Output configuration for a model response.</p>
    #   @return [Types::OutputConfig]
    class ConverseRequest < Struct.new(
      nil,
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
      :service_tier,
      :output_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    # @!attribute service_tier
    #   <p>Specifies the processing tier configuration used for serving the request.</p>
    #   @return [Types::ServiceTier]
    class ConverseResponse < Struct.new(
      nil,
      :output,
      :stop_reason,
      :usage,
      :metrics,
      :additional_model_response_fields,
      :trace,
      :performance_config,
      :service_tier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    # @!attribute service_tier
    #   <p>Specifies the processing tier configuration used for serving the request.</p>
    #   @return [Types::ServiceTier]
    class ConverseStreamMetadataEvent < Struct.new(
      nil,
      :usage,
      :metrics,
      :trace,
      :performance_config,
      :service_tier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metrics for the stream.</p>
    # @!attribute latency_ms
    #   <p>The latency for the streaming request, in milliseconds.</p>
    #   @return [Integer]
    class ConverseStreamMetrics < Struct.new(
      nil,
      :latency_ms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    #   <p>The input fails to satisfy the constraints specified by <i>Amazon Bedrock</i>. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-validation-error">ValidationError</a> in the Amazon Bedrock User Guide.</p>
    #   @return [Types::ValidationException]
    # @!attribute throttling_exception
    #   <p>Your request was denied due to exceeding the account quotas for <i>Amazon Bedrock</i>. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-throttling-exception">ThrottlingException</a> in the Amazon Bedrock User Guide.</p>
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
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
    # @!attribute service_tier
    #   <p>Specifies the processing tier configuration used for serving the request.</p>
    #   @return [Types::ServiceTier]
    # @!attribute output_config
    #   <p>Output configuration for a model response.</p>
    #   @return [Types::OutputConfig]
    class ConverseStreamRequest < Struct.new(
      nil,
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
      :service_tier,
      :output_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream
    #   <p>The output stream that the model generated.</p>
    #   @return [Types::ConverseStreamOutput]
    class ConverseStreamResponse < Struct.new(
      nil,
      :stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The trace object in a response from <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html">ConverseStream</a>.</p>
    # @!attribute guardrail
    #   <p>The guardrail trace object. </p>
    #   @return [Types::GuardrailTraceAssessment]
    # @!attribute prompt_router
    #   <p>The request's prompt router.</p>
    #   @return [Types::PromptRouterTrace]
    class ConverseStreamTrace < Struct.new(
      nil,
      :guardrail,
      :prompt_router,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The inputs from a <code>Converse</code> API request for token counting.</p> <p>This structure mirrors the input format for the <code>Converse</code> operation, allowing you to count tokens for conversation-based inference requests.</p>
    # @!attribute messages
    #   <p>An array of messages to count tokens for.</p>
    #   @return [Array<Types::Message>]
    # @!attribute system
    #   <p>The system content blocks to count tokens for. System content provides instructions or context to the model about how it should behave or respond. The token count will include any system content provided.</p>
    #   @return [Array<Types::SystemContentBlock>]
    # @!attribute tool_config
    #   <p>The toolConfig of Converse input request to count tokens for. Configuration information for the tools that the model can use when generating a response.</p>
    #   @return [Types::ToolConfiguration]
    # @!attribute additional_model_request_fields
    #   <p>The additionalModelRequestFields of Converse input request to count tokens for. Use this field when you want to pass additional parameters that the model supports.</p>
    #   @return [JSON]
    class ConverseTokensRequest < Struct.new(
      nil,
      :messages,
      :system,
      :tool_config,
      :additional_model_request_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The trace object in a response from <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a>.</p>
    # @!attribute guardrail
    #   <p>The guardrail trace object. </p>
    #   @return [Types::GuardrailTraceAssessment]
    # @!attribute prompt_router
    #   <p>The request's prompt router.</p>
    #   @return [Types::PromptRouterTrace]
    class ConverseTrace < Struct.new(
      nil,
      :guardrail,
      :prompt_router,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input value for token counting. The value should be either an <code>InvokeModel</code> or <code>Converse</code> request body. </p>
    # @!attribute invoke_model
    #   <p>An <code>InvokeModel</code> request for which to count tokens. Use this field when you want to count tokens for a raw text input that would be sent to the <code>InvokeModel</code> operation.</p>
    #   @return [Types::InvokeModelTokensRequest]
    # @!attribute converse
    #   <p>A <code>Converse</code> request for which to count tokens. Use this field when you want to count tokens for a conversation-based input that would be sent to the <code>Converse</code> operation.</p>
    #   @return [Types::ConverseTokensRequest]
    class CountTokensInput < Struct.new(
      :invoke_model,
      :converse,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class InvokeModel < CountTokensInput; end
      class Converse < CountTokensInput; end
      class Unknown < CountTokensInput; end
    end

    # @!attribute model_id
    #   <p>The unique identifier or ARN of the foundation model to use for token counting. Each model processes tokens differently, so the token count is specific to the model you specify.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The input for which to count tokens. The structure of this parameter depends on whether you're counting tokens for an <code>InvokeModel</code> or <code>Converse</code> request:</p> <ul> <li> <p>For <code>InvokeModel</code> requests, provide the request body in the <code>invokeModel</code> field</p> </li> <li> <p>For <code>Converse</code> requests, provide the messages and system content in the <code>converse</code> field</p> </li> </ul> <p>The input format must be compatible with the model specified in the <code>modelId</code> parameter.</p>
    #   @return [Types::CountTokensInput]
    class CountTokensRequest < Struct.new(
      nil,
      :model_id,
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_tokens
    #   <p>The number of tokens in the provided input according to the specified model's tokenization rules. This count represents the number of input tokens that would be processed if the same input were sent to the model in an inference request. Use this value to estimate costs and ensure your inputs stay within model token limits.</p>
    #   @return [Integer]
    class CountTokensResponse < Struct.new(
      nil,
      :input_tokens,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :format,
      :name,
      :source,
      :context,
      :citations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

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
      nil,
      :document_index,
      :start,
      :end,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :document_index,
      :start,
      :end,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the actual content of a document that can be processed by the model and potentially cited in the response.</p>
    # @!attribute text
    #   <p>The text content of the document.</p>
    #   @return [String]
    class DocumentContentBlock < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < DocumentContentBlock; end
      class Unknown < DocumentContentBlock; end
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
      nil,
      :document_index,
      :start,
      :end,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Bytes < DocumentSource; end
      class S3Location < DocumentSource; end
      class Text < DocumentSource; end
      class Content < DocumentSource; end
      class Unknown < DocumentSource; end
    end

    # <p>A block containing error information when content processing fails.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute message
    #   <p>A human-readable error message describing what went wrong during content processing.</p>
    #   @return [String]
    class ErrorBlock < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invocation_arn
    #   <p>The invocation's ARN.</p>
    #   @return [String]
    class GetAsyncInvokeRequest < Struct.new(
      nil,
      :invocation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :invocation_arn,
      :model_arn,
      :client_request_token,
      :status,
      :failure_message,
      :submit_time,
      :last_modified_time,
      :end_time,
      :output_data_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    # @!attribute applied_guardrail_details
    #   <p>Details about the specific guardrail that was applied during this assessment, including its identifier, version, ARN, origin, and ownership information.</p>
    #   @return [Types::AppliedGuardrailDetails]
    class GuardrailAssessment < Struct.new(
      nil,
      :topic_policy,
      :content_policy,
      :word_policy,
      :sensitive_information_policy,
      :contextual_grounding_policy,
      :automated_reasoning_policy,
      :invocation_metrics,
      :applied_guardrail_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a logical validation result from automated reasoning policy evaluation. The finding indicates whether claims in the input are logically valid, invalid, satisfiable, impossible, or have other logical issues.</p>
    # @!attribute valid
    #   <p>Contains the result when the automated reasoning evaluation determines that the claims in the input are logically valid and definitively true based on the provided premises and policy rules.</p>
    #   @return [Types::GuardrailAutomatedReasoningValidFinding]
    # @!attribute invalid
    #   <p>Contains the result when the automated reasoning evaluation determines that the claims in the input are logically invalid and contradict the established premises or policy rules.</p>
    #   @return [Types::GuardrailAutomatedReasoningInvalidFinding]
    # @!attribute satisfiable
    #   <p>Contains the result when the automated reasoning evaluation determines that the claims in the input could be either true or false depending on additional assumptions not provided in the input context.</p>
    #   @return [Types::GuardrailAutomatedReasoningSatisfiableFinding]
    # @!attribute impossible
    #   <p>Contains the result when the automated reasoning evaluation determines that no valid logical conclusions can be drawn due to contradictions in the premises or policy rules themselves.</p>
    #   @return [Types::GuardrailAutomatedReasoningImpossibleFinding]
    # @!attribute translation_ambiguous
    #   <p>Contains the result when the automated reasoning evaluation detects that the input has multiple valid logical interpretations, requiring additional context or clarification to proceed with validation.</p>
    #   @return [Types::GuardrailAutomatedReasoningTranslationAmbiguousFinding]
    # @!attribute too_complex
    #   <p>Contains the result when the automated reasoning evaluation cannot process the input due to its complexity or volume exceeding the system's processing capacity for logical analysis.</p>
    #   @return [Types::GuardrailAutomatedReasoningTooComplexFinding]
    # @!attribute no_translations
    #   <p>Contains the result when the automated reasoning evaluation cannot extract any relevant logical information from the input that can be validated against the policy rules.</p>
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
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
      nil,
      :translation,
      :contradicting_rules,
      :logic_warning,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>References a portion of the original input text that corresponds to logical elements.</p>
    # @!attribute text
    #   <p>The specific text from the original input that this reference points to.</p>
    #   @return [String]
    class GuardrailAutomatedReasoningInputTextReference < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :translation,
      :contradicting_rules,
      :logic_warning,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :type,
      :premises,
      :claims,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that no relevant logical information could be extracted from the input for validation.</p>
    class GuardrailAutomatedReasoningNoTranslationsFinding < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of automated reasoning policy evaluation, including logical findings about the validity of claims made in the input content.</p>
    # @!attribute findings
    #   <p>List of logical validation results produced by evaluating the input content against automated reasoning policies.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningFinding>]
    class GuardrailAutomatedReasoningPolicyAssessment < Struct.new(
      nil,
      :findings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>References a specific automated reasoning policy rule that was applied during evaluation.</p>
    # @!attribute identifier
    #   <p>The unique identifier of the automated reasoning rule.</p>
    #   @return [String]
    # @!attribute policy_version_arn
    #   <p>The ARN of the automated reasoning policy version that contains this rule.</p>
    #   @return [String]
    class GuardrailAutomatedReasoningRule < Struct.new(
      nil,
      :identifier,
      :policy_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :translation,
      :claims_true_scenario,
      :claims_false_scenario,
      :logic_warning,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a logical scenario where claims can be evaluated as true or false, containing specific logical assignments.</p>
    # @!attribute statements
    #   <p>List of logical assignments and statements that define this scenario.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningStatement>]
    class GuardrailAutomatedReasoningScenario < Struct.new(
      nil,
      :statements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A logical statement that includes both formal logic representation and natural language explanation.</p>
    # @!attribute logic
    #   <p>The formal logical representation of the statement.</p>
    #   @return [String]
    # @!attribute natural_language
    #   <p>The natural language explanation of the logical statement.</p>
    #   @return [String]
    class GuardrailAutomatedReasoningStatement < Struct.new(
      nil,
      :logic,
      :natural_language,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the input exceeds the processing capacity due to the volume or complexity of the logical information.</p>
    class GuardrailAutomatedReasoningTooComplexFinding < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :premises,
      :claims,
      :untranslated_premises,
      :untranslated_claims,
      :confidence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the input has multiple valid logical interpretations, requiring additional context or clarification.</p>
    # @!attribute options
    #   <p>Different logical interpretations that were detected during translation of the input.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningTranslationOption>]
    # @!attribute difference_scenarios
    #   <p>Scenarios showing how the different translation options differ in meaning.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningScenario>]
    class GuardrailAutomatedReasoningTranslationAmbiguousFinding < Struct.new(
      nil,
      :options,
      :difference_scenarios,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents one possible logical interpretation of ambiguous input content.</p>
    # @!attribute translations
    #   <p>Example translations that provide this possible interpretation of the input.</p>
    #   @return [Array<Types::GuardrailAutomatedReasoningTranslation>]
    class GuardrailAutomatedReasoningTranslationOption < Struct.new(
      nil,
      :translations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :translation,
      :claims_true_scenario,
      :supporting_rules,
      :logic_warning,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for inline guardrail checks. Specify one or more check types to run against the messages.</p>
    # @!attribute content_filter
    #   <p>The content filter check configuration.</p>
    #   @return [Types::GuardrailChecksContentFilterConfig]
    # @!attribute prompt_attack
    #   <p>The prompt attack check configuration.</p>
    #   @return [Types::GuardrailChecksPromptAttackConfig]
    # @!attribute sensitive_information
    #   <p>The sensitive information check configuration.</p>
    #   @return [Types::GuardrailChecksSensitiveInformationConfig]
    class GuardrailChecksConfig < Struct.new(
      nil,
      :content_filter,
      :prompt_attack,
      :sensitive_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A content block within a message to evaluate.</p>
    # @!attribute text
    #   <p>The text content to evaluate.</p>
    #   @return [String]
    class GuardrailChecksContentBlock < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < GuardrailChecksContentBlock; end
      class Unknown < GuardrailChecksContentBlock; end
    end

    # <p>The configuration for a single content filter category to evaluate.</p>
    # @!attribute category
    #   <p>The content filter category to evaluate.</p>
    #   @return [String]
    class GuardrailChecksContentFilterCategoryConfig < Struct.new(
      nil,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the content filter check, specifying which categories to evaluate.</p>
    # @!attribute categories
    #   <p>The content filter categories to evaluate.</p>
    #   @return [Array<Types::GuardrailChecksContentFilterCategoryConfig>]
    class GuardrailChecksContentFilterConfig < Struct.new(
      nil,
      :categories,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content filter check results.</p>
    # @!attribute results
    #   <p>The per-category content filter results.</p>
    #   @return [Array<Types::GuardrailChecksContentFilterResultEntry>]
    class GuardrailChecksContentFilterResult < Struct.new(
      nil,
      :results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The evaluation result for a single content filter category.</p>
    # @!attribute category
    #   <p>The content filter category that was evaluated.</p>
    #   @return [String]
    # @!attribute severity_score
    #   <p>The severity score for the category, ranging from 0.0 to 1.0. Higher values indicate greater severity.</p>
    #   @return [Float]
    class GuardrailChecksContentFilterResultEntry < Struct.new(
      nil,
      :category,
      :severity_score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The text unit usage for the content filter check.</p>
    # @!attribute text_units
    #   <p>The number of text units consumed by the content filter check.</p>
    #   @return [Integer]
    class GuardrailChecksContentFilterUsage < Struct.new(
      nil,
      :text_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A message to evaluate against guardrail checks, containing a role and content blocks.</p>
    # @!attribute role
    #   <p>The role of the message sender.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content blocks for the message.</p>
    #   @return [Array<Types::GuardrailChecksContentBlock>]
    class GuardrailChecksMessage < Struct.new(
      nil,
      :role,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a single prompt attack category to evaluate.</p>
    # @!attribute category
    #   <p>The prompt attack category to evaluate.</p>
    #   @return [String]
    class GuardrailChecksPromptAttackCategoryConfig < Struct.new(
      nil,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the prompt attack check, specifying which categories to evaluate.</p>
    # @!attribute categories
    #   <p>The prompt attack categories to evaluate.</p>
    #   @return [Array<Types::GuardrailChecksPromptAttackCategoryConfig>]
    class GuardrailChecksPromptAttackConfig < Struct.new(
      nil,
      :categories,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The prompt attack check results.</p>
    # @!attribute results
    #   <p>The per-category prompt attack results.</p>
    #   @return [Array<Types::GuardrailChecksPromptAttackResultEntry>]
    class GuardrailChecksPromptAttackResult < Struct.new(
      nil,
      :results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The evaluation result for a single prompt attack category.</p>
    # @!attribute category
    #   <p>The prompt attack category that was evaluated.</p>
    #   @return [String]
    # @!attribute severity_score
    #   <p>The severity score for the category, ranging from 0.0 to 1.0. Higher values indicate greater severity.</p>
    #   @return [Float]
    class GuardrailChecksPromptAttackResultEntry < Struct.new(
      nil,
      :category,
      :severity_score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The text unit usage for the prompt attack check.</p>
    # @!attribute text_units
    #   <p>The number of text units consumed by the prompt attack check.</p>
    #   @return [Integer]
    class GuardrailChecksPromptAttackUsage < Struct.new(
      nil,
      :text_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The results from the guardrail checks evaluation, organized by check type.</p>
    # @!attribute content_filter
    #   <p>The content filter check results.</p>
    #   @return [Types::GuardrailChecksContentFilterResult]
    # @!attribute prompt_attack
    #   <p>The prompt attack check results.</p>
    #   @return [Types::GuardrailChecksPromptAttackResult]
    # @!attribute sensitive_information
    #   <p>The sensitive information check results.</p>
    #   @return [Types::GuardrailChecksSensitiveInformationResult]
    class GuardrailChecksResults < Struct.new(
      nil,
      :content_filter,
      :prompt_attack,
      :sensitive_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the sensitive information check, specifying which entity types to detect.</p>
    # @!attribute entities
    #   <p>The sensitive information entity types to detect.</p>
    #   @return [Array<Types::GuardrailChecksSensitiveInformationEntityConfig>]
    class GuardrailChecksSensitiveInformationConfig < Struct.new(
      nil,
      :entities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a single sensitive information entity type to detect.</p>
    # @!attribute type
    #   <p>The PII entity type to detect.</p>
    #   @return [String]
    class GuardrailChecksSensitiveInformationEntityConfig < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The sensitive information check results.</p>
    # @!attribute results
    #   <p>The detected sensitive information entities.</p>
    #   @return [Array<Types::GuardrailChecksSensitiveInformationResultEntry>]
    # @!attribute truncated
    #   <p>Specifies whether the results were truncated because the number of detected entities exceeded the maximum limit.</p>
    #   @return [Boolean]
    class GuardrailChecksSensitiveInformationResult < Struct.new(
      nil,
      :results,
      :truncated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The detection result for a single sensitive information entity found in the evaluated messages.</p>
    # @!attribute type
    #   <p>The PII entity type that was detected.</p>
    #   @return [String]
    # @!attribute confidence_score
    #   <p>The confidence score for the detection, ranging from 0.0 to 1.0. Higher values indicate greater confidence.</p>
    #   @return [Float]
    # @!attribute begin_offset
    #   <p>The start character offset of the detected entity within the content block.</p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>The end character offset of the detected entity within the content block.</p>
    #   @return [Integer]
    # @!attribute message_index
    #   <p>The zero-based index of the message in the input messages array where the entity was detected.</p>
    #   @return [Integer]
    # @!attribute content_index
    #   <p>The zero-based index of the content block within the message where the entity was detected.</p>
    #   @return [Integer]
    class GuardrailChecksSensitiveInformationResultEntry < Struct.new(
      nil,
      :type,
      :confidence_score,
      :begin_offset,
      :end_offset,
      :message_index,
      :content_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The text unit usage for the sensitive information check.</p>
    # @!attribute text_units
    #   <p>The number of text units consumed by the sensitive information check.</p>
    #   @return [Integer]
    class GuardrailChecksSensitiveInformationUsage < Struct.new(
      nil,
      :text_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The text unit usage for the guardrail checks evaluation, organized by check type.</p>
    # @!attribute content_filter
    #   <p>The text unit usage for the content filter check.</p>
    #   @return [Types::GuardrailChecksContentFilterUsage]
    # @!attribute prompt_attack
    #   <p>The text unit usage for the prompt attack check.</p>
    #   @return [Types::GuardrailChecksPromptAttackUsage]
    # @!attribute sensitive_information
    #   <p>The text unit usage for the sensitive information check.</p>
    #   @return [Types::GuardrailChecksSensitiveInformationUsage]
    class GuardrailChecksUsageResults < Struct.new(
      nil,
      :content_filter,
      :prompt_attack,
      :sensitive_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :guardrail_identifier,
      :guardrail_version,
      :trace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:guardrail_identifier] = '' unless options.key?(:guardrail_identifier)
        options[:guardrail_version] = '' unless options.key?(:guardrail_version)
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
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
      nil,
      :type,
      :confidence,
      :filter_strength,
      :action,
      :detected,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An assessment of a content policy for a guardrail.</p>
    # @!attribute filters
    #   <p>The content policy filters.</p>
    #   @return [Array<Types::GuardrailContentFilter>]
    class GuardrailContentPolicyAssessment < Struct.new(
      nil,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :type,
      :threshold,
      :score,
      :action,
      :detected,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The policy assessment details for the guardrails contextual grounding filter.</p>
    # @!attribute filters
    #   <p>The filter details for the guardrails contextual grounding filter.</p>
    #   @return [Array<Types::GuardrailContextualGroundingFilter>]
    class GuardrailContextualGroundingPolicyAssessment < Struct.new(
      nil,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < GuardrailConverseContentBlock; end
      class Image < GuardrailConverseContentBlock; end
      class Unknown < GuardrailConverseContentBlock; end
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
      nil,
      :format,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The image source (image bytes) of the guardrail converse image source.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute bytes
    #   <p>The raw image bytes for the image.</p>
    #   @return [String]
    class GuardrailConverseImageSource < Struct.new(
      :bytes,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Bytes < GuardrailConverseImageSource; end
      class Unknown < GuardrailConverseImageSource; end
    end

    # <p>A text block that contains text that you want to assess with a guardrail. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_GuardrailConverseContentBlock.html">GuardrailConverseContentBlock</a>.</p>
    # @!attribute text
    #   <p>The text that you want to guard.</p>
    #   @return [String]
    # @!attribute qualifiers
    #   <p>The qualifier details for the guardrails contextual grounding filter.</p>
    #   @return [Array<String>]
    class GuardrailConverseTextBlock < Struct.new(
      nil,
      :text,
      :qualifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The action of the guardrail coverage details.</p>
    # @!attribute text_characters
    #   <p>The text characters of the guardrail coverage details.</p>
    #   @return [Types::GuardrailTextCharactersCoverage]
    # @!attribute images
    #   <p>The guardrail coverage for images (the number of images that guardrails guarded).</p>
    #   @return [Types::GuardrailImageCoverage]
    class GuardrailCoverage < Struct.new(
      nil,
      :text_characters,
      :images,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :match,
      :action,
      :detected,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :format,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the guardrail image coverage.</p>
    # @!attribute guarded
    #   <p>The count (integer) of images guardrails guarded.</p>
    #   @return [Integer]
    # @!attribute total
    #   <p>Represents the total number of images (integer) that were in the request (guarded and unguarded).</p>
    #   @return [Integer]
    class GuardrailImageCoverage < Struct.new(
      nil,
      :guarded,
      :total,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The image source (image bytes) of the guardrail image source. Object used in independent api.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute bytes
    #   <p>The bytes details of the guardrail image source. Object used in independent api.</p>
    #   @return [String]
    class GuardrailImageSource < Struct.new(
      :bytes,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
      nil,
      :guardrail_processing_latency,
      :usage,
      :guardrail_coverage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :match,
      :type,
      :action,
      :detected,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output content produced by the guardrail.</p>
    # @!attribute text
    #   <p>The specific text for the output content produced by the guardrail.</p>
    #   @return [String]
    class GuardrailOutputContent < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :match,
      :type,
      :action,
      :detected,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :name,
      :match,
      :regex,
      :action,
      :detected,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The assessment for a Personally Identifiable Information (PII) policy. </p>
    # @!attribute pii_entities
    #   <p>The PII entities in the assessment.</p>
    #   @return [Array<Types::GuardrailPiiEntityFilter>]
    # @!attribute regexes
    #   <p>The regex queries in the assessment.</p>
    #   @return [Array<Types::GuardrailRegexFilter>]
    class GuardrailSensitiveInformationPolicyAssessment < Struct.new(
      nil,
      :pii_entities,
      :regexes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information for a guardrail that you use with the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html">ConverseStream</a> action. </p>
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
      nil,
      :guardrail_identifier,
      :guardrail_version,
      :trace,
      :stream_processing_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:guardrail_identifier] = '' unless options.key?(:guardrail_identifier)
        options[:guardrail_version] = '' unless options.key?(:guardrail_version)
        options[:trace] = 'disabled' unless options.key?(:trace)
        options[:stream_processing_mode] = 'sync' unless options.key?(:stream_processing_mode)
        super
      end
    end

    # <p>The text block to be evaluated by the guardrail.</p>
    # @!attribute text
    #   <p>The input text details to be evaluated by the guardrail.</p>
    #   @return [String]
    # @!attribute qualifiers
    #   <p>The qualifiers describing the text block.</p>
    #   @return [Array<String>]
    class GuardrailTextBlock < Struct.new(
      nil,
      :text,
      :qualifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The guardrail coverage for the text characters.</p>
    # @!attribute guarded
    #   <p>The text characters that were guarded by the guardrail coverage.</p>
    #   @return [Integer]
    # @!attribute total
    #   <p>The total text characters by the guardrail coverage.</p>
    #   @return [Integer]
    class GuardrailTextCharactersCoverage < Struct.new(
      nil,
      :guarded,
      :total,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :name,
      :type,
      :action,
      :detected,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A behavior assessment of a topic policy.</p>
    # @!attribute topics
    #   <p>The topics in the assessment.</p>
    #   @return [Array<Types::GuardrailTopic>]
    class GuardrailTopicPolicyAssessment < Struct.new(
      nil,
      :topics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A Top level guardrail trace object. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseTrace.html">ConverseTrace</a>.</p>
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
      nil,
      :model_output,
      :input_assessment,
      :output_assessments,
      :action_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :topic_policy_units,
      :content_policy_units,
      :word_policy_units,
      :sensitive_information_policy_units,
      :sensitive_information_policy_free_units,
      :contextual_grounding_policy_units,
      :content_policy_image_units,
      :automated_reasoning_policy_units,
      :automated_reasoning_policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The word policy assessment.</p>
    # @!attribute custom_words
    #   <p>Custom words in the assessment.</p>
    #   @return [Array<Types::GuardrailCustomWord>]
    # @!attribute managed_word_lists
    #   <p>Managed word lists in the assessment.</p>
    #   @return [Array<Types::GuardrailManagedWord>]
    class GuardrailWordPolicyAssessment < Struct.new(
      nil,
      :custom_words,
      :managed_word_lists,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Image content for a message.</p>
    # @!attribute format
    #   <p>The format of the image.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source for the image.</p>
    #   @return [Types::ImageSource]
    # @!attribute error
    #   <p>Error information if the image block could not be processed or contains invalid data.</p>
    #   @return [Types::ErrorBlock]
    class ImageBlock < Struct.new(
      nil,
      :format,
      :source,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A streaming delta event that contains incremental image data during streaming responses.</p>
    # @!attribute source
    #   <p>The incremental image source data for this delta event.</p>
    #   @return [Types::ImageSource]
    # @!attribute error
    #   <p>Error information if this image delta could not be processed.</p>
    #   @return [Types::ErrorBlock]
    class ImageBlockDelta < Struct.new(
      nil,
      :source,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The initial event in a streaming image block that indicates the start of image content.</p>
    # @!attribute format
    #   <p>The format of the image data that will be streamed in subsequent delta events.</p>
    #   @return [String]
    class ImageBlockStart < Struct.new(
      nil,
      :format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source for an image.</p>
    # @note This shape contains sensitive data and should be treated as such.
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
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
      nil,
      :max_tokens,
      :temperature,
      :top_p,
      :stop_sequences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-internal-failure">InternalFailure</a> in the Amazon Bedrock User Guide</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute messages
    #   <p>The messages to evaluate against the specified guardrail checks. Each message includes a role and one or more content blocks.</p>
    #   @return [Array<Types::GuardrailChecksMessage>]
    # @!attribute checks
    #   <p>The inline check configurations that specify which guardrail checks to run against the messages.</p>
    #   @return [Types::GuardrailChecksConfig]
    class InvokeGuardrailChecksRequest < Struct.new(
      nil,
      :messages,
      :checks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The per-check results containing findings from the guardrail evaluation.</p>
    #   @return [Types::GuardrailChecksResults]
    # @!attribute usage
    #   <p>The per-check text unit consumption for the guardrail evaluation.</p>
    #   @return [Types::GuardrailChecksUsageResults]
    class InvokeGuardrailChecksResponse < Struct.new(
      nil,
      :results,
      :usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    # @!attribute service_tier
    #   <p>Specifies the processing tier type used for serving the request.</p>
    #   @return [String]
    # @!attribute request_metadata
    #   <p>Key-value pairs that you can use to filter invocation logs.</p>
    #   @return [String]
    class InvokeModelRequest < Struct.new(
      nil,
      :body,
      :content_type,
      :accept,
      :model_id,
      :trace,
      :guardrail_identifier,
      :guardrail_version,
      :performance_config_latency,
      :service_tier,
      :request_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    # @!attribute service_tier
    #   <p>Specifies the processing tier type used for serving the request.</p>
    #   @return [String]
    class InvokeModelResponse < Struct.new(
      nil,
      :body,
      :content_type,
      :performance_config_latency,
      :service_tier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The body of an <code>InvokeModel</code> API request for token counting. This structure mirrors the input format for the <code>InvokeModel</code> operation, allowing you to count tokens for raw text inference requests.</p>
    # @!attribute body
    #   <p>The request body to count tokens for, formatted according to the model's expected input format. To learn about the input format for different models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Model inference parameters and responses</a>.</p>
    #   @return [String]
    class InvokeModelTokensRequest < Struct.new(
      nil,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Payload content, the speech chunk, for the bidirectional input of the invocation step.</p>
    # @!attribute chunk
    #   <p>The audio chunk that is used as input for the invocation step.</p>
    #   @return [Types::BidirectionalInputPayloadPart]
    class InvokeModelWithBidirectionalStreamInput < Struct.new(
      :chunk,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
      nil,
      :model_id,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>Streaming response from the model in the format specified by the <code>BidirectionalOutputPayloadPart</code> header.</p>
    #   @return [Types::InvokeModelWithBidirectionalStreamOutput]
    class InvokeModelWithBidirectionalStreamResponse < Struct.new(
      nil,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    # @!attribute service_tier
    #   <p>Specifies the processing tier type used for serving the request.</p>
    #   @return [String]
    # @!attribute request_metadata
    #   <p>Key-value pairs that you can use to filter invocation logs.</p>
    #   @return [String]
    class InvokeModelWithResponseStreamRequest < Struct.new(
      nil,
      :body,
      :content_type,
      :accept,
      :model_id,
      :trace,
      :guardrail_identifier,
      :guardrail_version,
      :performance_config_latency,
      :service_tier,
      :request_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    # @!attribute service_tier
    #   <p>Specifies the processing tier type used for serving the request.</p>
    #   @return [String]
    class InvokeModelWithResponseStreamResponse < Struct.new(
      nil,
      :body,
      :content_type,
      :performance_config_latency,
      :service_tier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> JSON schema structured output format options. </p>
    # @!attribute schema
    #   <p> The JSON schema to constrain the model's output. For more information, see <a href="https://json-schema.org/understanding-json-schema/reference">JSON Schema Reference</a>. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the JSON schema. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A description of the JSON schema. </p>
    #   @return [String]
    class JsonSchemaDefinition < Struct.new(
      nil,
      :schema,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :submit_time_after,
      :submit_time_before,
      :status_equals,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute async_invoke_summaries
    #   <p>A list of invocation summaries.</p>
    #   @return [Array<Types::AsyncInvokeSummary>]
    class ListAsyncInvokesResponse < Struct.new(
      nil,
      :next_token,
      :async_invoke_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A message input, or returned from, a call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a> or <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html">ConverseStream</a>.</p>
    # @!attribute role
    #   <p>The role that the message plays in the message.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The message content. Note the following restrictions:</p> <ul> <li> <p>You can include up to 20 images. Each image's size, height, and width must be no more than 3.75 MB, 8000 px, and 8000 px, respectively.</p> </li> <li> <p>You can include up to five documents. Each document's size must be no more than 4.5 MB.</p> </li> <li> <p>If you include a <code>ContentBlock</code> with a <code>document</code> field in the array, you must also include a <code>ContentBlock</code> with a <code>text</code> field.</p> </li> <li> <p>You can only include images and documents if the <code>role</code> is <code>user</code>.</p> </li> </ul>
    #   @return [Array<Types::ContentBlock>]
    class Message < Struct.new(
      nil,
      :role,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The start of a message.</p>
    # @!attribute role
    #   <p>The role for the message.</p>
    #   @return [String]
    class MessageStartEvent < Struct.new(
      nil,
      :role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The stop event for a message.</p>
    # @!attribute stop_reason
    #   <p>The reason why the model stopped generating output.</p>
    #   @return [String]
    # @!attribute additional_model_response_fields
    #   <p>The additional model response fields.</p>
    #   @return [JSON]
    class MessageStopEvent < Struct.new(
      nil,
      :stop_reason,
      :additional_model_response_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :message,
      :original_status_code,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The model specified in the request is not ready to serve inference requests. The AWS SDK will automatically retry the operation up to 5 times. For information about configuring automatic retries, see <a href="https://docs.aws.amazon.com/sdkref/latest/guide/feature-retry-behavior.html">Retry behavior</a> in the <i>AWS SDKs and Tools</i> reference guide.</p>
    # @!attribute message
    #   @return [String]
    class ModelNotReadyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :message,
      :original_status_code,
      :original_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request took too long to process. Processing time exceeded the model timeout length.</p>
    # @!attribute message
    #   @return [String]
    class ModelTimeoutException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output configuration for a model response in a call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a> or <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html">ConverseStream</a>.</p>
    # @!attribute text_format
    #   <p>Structured output parameters to control the model's text response. </p>
    #   @return [Types::OutputFormat]
    # @!attribute effort
    #   <p>The effort level for the model to use when generating a response. Higher effort levels allow the model to spend more time reasoning before responding. Supported values are <code>low</code>, <code>medium</code>, <code>high</code>, <code>xhigh</code>, and <code>max</code>.</p> <note> <p>When extended thinking is disabled, the effort level is capped at <code>high</code>. Use effort <code>high</code> or below, or enable thinking to use higher effort levels.</p> </note>
    #   @return [String]
    class OutputConfig < Struct.new(
      nil,
      :text_format,
      :effort,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Structured output parameters to control the model's response. </p>
    # @!attribute type
    #   <p> The type of structured output format. </p>
    #   @return [String]
    # @!attribute structure
    #   <p> The structure that the model's output must adhere to. </p>
    #   @return [Types::OutputFormatStructure]
    class OutputFormat < Struct.new(
      nil,
      :type,
      :structure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The structure that the model's output must adhere to. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute json_schema
    #   <p> A JSON schema structure that the model's output must adhere to. </p>
    #   @return [Types::JsonSchemaDefinition]
    class OutputFormatStructure < Struct.new(
      :json_schema,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class JsonSchema < OutputFormatStructure; end
      class Unknown < OutputFormatStructure; end
    end

    # <p>Payload content included in the response.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute bytes
    #   <p>Base64-encoded bytes of payload data.</p>
    #   @return [String]
    class PayloadPart < Struct.new(
      nil,
      :bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Performance settings for a model.</p>
    # @!attribute latency
    #   <p>To use a latency-optimized version of the model, set to <code>optimized</code>.</p>
    #   @return [String]
    class PerformanceConfiguration < Struct.new(
      nil,
      :latency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

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
      nil,
      :invoked_model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a map of variables in a prompt from Prompt management to an object containing the values to fill in for them when running model invocation. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-how.html">How Prompt management works</a>.</p>
    # @!attribute text
    #   <p>The text value that the variable maps to.</p>
    #   @return [String]
    class PromptVariableValues < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
      nil,
      :text,
      :signature,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource ARN was not found. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-resource-not-found">ResourceNotFound</a> in the Amazon Bedrock User Guide</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
      nil,
      :uri,
      :bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A search result block that enables natural citations with proper source attribution for retrieved content.</p> <note> <p>This field is only supported by Anthropic Claude Opus 4.1, Opus 4, Sonnet 4.5, Sonnet 4, Sonnet 3.7, and 3.5 Haiku models.</p> </note>
    # @!attribute source
    #   <p>The source URL or identifier for the content.</p>
    #   @return [String]
    # @!attribute title
    #   <p>A descriptive title for the search result.</p>
    #   @return [String]
    # @!attribute content
    #   <p>An array of search result content block.</p>
    #   @return [Array<Types::SearchResultContentBlock>]
    # @!attribute citations
    #   <p>Configuration setting for citations</p>
    #   @return [Types::CitationsConfig]
    class SearchResultBlock < Struct.new(
      nil,
      :source,
      :title,
      :content,
      :citations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A block within a search result that contains the content.</p>
    # @!attribute text
    #   <p>The actual text content</p>
    #   @return [String]
    class SearchResultContentBlock < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a search result location within the content array, providing positioning information for cited content using search result index and block positions.</p>
    # @!attribute search_result_index
    #   <p>The index of the search result content block where the cited content is found.</p>
    #   @return [Integer]
    # @!attribute start
    #   <p>The starting position in the content array where the cited content begins.</p>
    #   @return [Integer]
    # @!attribute end
    #   <p>The ending position in the content array where the cited content ends.</p>
    #   @return [Integer]
    class SearchResultLocation < Struct.new(
      nil,
      :search_result_index,
      :start,
      :end,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your request exceeds the service quota for your account. You can view your quotas at <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/gs-request-quota.html">Viewing service quotas</a>. You can resubmit your request later.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the processing tier configuration used for serving the request.</p>
    # @!attribute type
    #   <p>Specifies the processing tier type used for serving the request.</p>
    #   @return [String]
    class ServiceTier < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service isn't currently available. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-service-unavailable">ServiceUnavailable</a> in the Amazon Bedrock User Guide</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The model must request a specific tool. For example, <code>{"tool" : {"name" : "Your tool name"}}</code>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Call a tool with the Converse API</a> in the Amazon Bedrock User Guide</p> <note> <p>This field is only supported by Anthropic Claude 3 models.</p> </note>
    # @!attribute name
    #   <p>The name of the tool that the model must request. </p>
    #   @return [String]
    class SpecificToolChoice < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      nil,
      :client_request_token,
      :model_id,
      :model_input,
      :output_data_config,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invocation_arn
    #   <p>The ARN of the invocation.</p>
    #   @return [String]
    class StartAsyncInvokeResponse < Struct.new(
      nil,
      :invocation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for instructions to provide the model for how to handle input. To learn more, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-call.html">Using the Converse API</a>.</p>
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
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < SystemContentBlock; end
      class GuardContent < SystemContentBlock; end
      class CachePoint < SystemContentBlock; end
      class Unknown < SystemContentBlock; end
    end

    # <p>Specifies a system-defined tool for the model to use. <i>System-defined tools</i> are tools that are created and provided by the model provider.</p>
    # @!attribute name
    #   <p>The name of the system-defined tool that you want to call. </p>
    #   @return [String]
    class SystemTool < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tag.</p>
    # @!attribute key
    #   <p>The tag's key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag's value.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your request was denied due to exceeding the account quotas for <i>Amazon Bedrock</i>. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-throttling-exception">ThrottlingException</a> in the Amazon Bedrock User Guide</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    # @!attribute cache_details
    #   <p>Detailed breakdown of cache writes by TTL. Empty if no cache creation occurred. Sorted by TTL duration (1h before 5m).</p>
    #   @return [Array<Types::CacheDetail>]
    class TokenUsage < Struct.new(
      nil,
      :input_tokens,
      :output_tokens,
      :total_tokens,
      :cache_read_input_tokens,
      :cache_write_input_tokens,
      :cache_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a tool that you can use with the Converse API. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Call a tool with the Converse API</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute tool_spec
    #   <p>The specfication for the tool. </p>
    #   @return [Types::ToolSpecification]
    # @!attribute system_tool
    #   <p>Specifies the system-defined tool that you want use.</p>
    #   @return [Types::SystemTool]
    # @!attribute cache_point
    #   <p>CachePoint to include in the tool configuration.</p>
    #   @return [Types::CachePointBlock]
    class Tool < Struct.new(
      :tool_spec,
      :system_tool,
      :cache_point,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ToolSpec < Tool; end
      class SystemTool < Tool; end
      class CachePoint < Tool; end
      class Unknown < Tool; end
    end

    # <p>A content block for adding a tool to the available tool set mid-conversation. Each block references a single tool via its <code>tool</code> field. Use within a <code>system</code> role message to make a tool available without re-sending the full tool configuration.</p>
    # @!attribute tool
    #   <p>A reference to the tool to add to the available tool set.</p>
    #   @return [Types::ToolReference]
    class ToolAdditionBlock < Struct.new(
      nil,
      :tool,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Determines which tools the model should request in a call to <code>Converse</code> or <code>ConverseStream</code>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Call a tool with the Converse API</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute auto
    #   <p>(Default). The Model automatically decides if a tool should be called or whether to generate text instead. </p>
    #   @return [Types::AutoToolChoice]
    # @!attribute any
    #   <p>The model must request at least one tool (no text is generated).</p>
    #   @return [Types::AnyToolChoice]
    # @!attribute tool
    #   <p>The Model must request the specified tool. Only supported by Anthropic Claude 3 and Amazon Nova models. </p>
    #   @return [Types::SpecificToolChoice]
    class ToolChoice < Struct.new(
      :auto,
      :any,
      :tool,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Auto < ToolChoice; end
      class Any < ToolChoice; end
      class Tool < ToolChoice; end
      class Unknown < ToolChoice; end
    end

    # <p>Configuration information for the tools that you pass to a model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Tool use (function calling)</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute tools
    #   <p>An array of tools that you want to pass to a model. </p>
    #   @return [Array<Types::Tool>]
    # @!attribute tool_choice
    #   <p>If supported by model, forces the model to request a tool. </p>
    #   @return [Types::ToolChoice]
    class ToolConfiguration < Struct.new(
      nil,
      :tools,
      :tool_choice,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The schema for the tool. The top level schema type must be <code>object</code>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Call a tool with the Converse API</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute json
    #   <p>The JSON schema for the tool. For more information, see <a href="https://json-schema.org/understanding-json-schema/reference">JSON Schema Reference</a>.</p>
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

    # <p>A reference to a tool in the tool configuration. Used with <code>ToolAdditionBlock</code> and <code>ToolRemovalBlock</code> to identify which tool to add or remove mid-conversation.</p>
    # @!attribute type
    #   <p>The type of tool reference.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the tool. Must match the name of a tool declared in the top-level tool configuration.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>The name of the MCP server that provides the tool. Required when referencing an MCP tool.</p>
    #   @return [String]
    class ToolReference < Struct.new(
      nil,
      :type,
      :name,
      :server_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A content block for removing a tool from the available tool set mid-conversation. Each block references a single tool via its <code>tool</code> field. Use within a <code>system</code> role message to remove a tool without re-sending the full tool configuration.</p>
    # @!attribute tool
    #   <p>A reference to the tool to remove from the available tool set.</p>
    #   @return [Types::ToolReference]
    class ToolRemovalBlock < Struct.new(
      nil,
      :tool,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tool result block that contains the results for a tool request that the model previously made. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Call a tool with the Converse API</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute tool_use_id
    #   <p>The ID of the tool request that this is the result for. </p>
    #   @return [String]
    # @!attribute content
    #   <p>The content for tool result content block.</p>
    #   @return [Array<Types::ToolResultContentBlock>]
    # @!attribute status
    #   <p>The status for the tool result content block.</p> <note> <p>This field is only supported by Amazon Nova and Anthropic Claude 3 and 4 models.</p> </note>
    #   @return [String]
    # @!attribute type
    #   <p>The type for the tool result content block.</p>
    #   @return [String]
    class ToolResultBlock < Struct.new(
      nil,
      :tool_use_id,
      :content,
      :status,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains incremental updates to tool results information during streaming responses. This allows clients to build up tool results data progressively as the response is generated.</p>
    # @!attribute text
    #   <p>The reasoning the model used to return the output.</p>
    #   @return [String]
    # @!attribute json
    #   <p>The JSON schema for the tool result content block. see <a href="https://json-schema.org/understanding-json-schema/reference">JSON Schema Reference</a>.</p>
    #   @return [JSON]
    class ToolResultBlockDelta < Struct.new(
      :text,
      :json,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < ToolResultBlockDelta; end
      class Json < ToolResultBlockDelta; end
      class Unknown < ToolResultBlockDelta; end
    end

    # <p>The start of a tool result block. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Call a tool with the Converse API</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute tool_use_id
    #   <p>The ID of the tool that was used to generate this tool result block.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type for the tool that was used to generate this tool result block.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the tool result block.</p>
    #   @return [String]
    class ToolResultBlockStart < Struct.new(
      nil,
      :tool_use_id,
      :type,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tool result content block. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Call a tool with the Converse API</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute json
    #   <p>A tool result that is JSON format data. </p>
    #   @return [JSON]
    # @!attribute text
    #   <p>A tool result that is text. </p>
    #   @return [String]
    # @!attribute image
    #   <p>A tool result that is an image. </p> <note> <p>This field is only supported by Amazon Nova and Anthropic Claude 3 and 4 models.</p> </note>
    #   @return [Types::ImageBlock]
    # @!attribute document
    #   <p>A tool result that is a document.</p>
    #   @return [Types::DocumentBlock]
    # @!attribute video
    #   <p>A tool result that is video.</p>
    #   @return [Types::VideoBlock]
    # @!attribute search_result
    #   <p>A tool result that is a search result.</p>
    #   @return [Types::SearchResultBlock]
    class ToolResultContentBlock < Struct.new(
      :json,
      :text,
      :image,
      :document,
      :video,
      :search_result,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Json < ToolResultContentBlock; end
      class Text < ToolResultContentBlock; end
      class Image < ToolResultContentBlock; end
      class Document < ToolResultContentBlock; end
      class Video < ToolResultContentBlock; end
      class SearchResult < ToolResultContentBlock; end
      class Unknown < ToolResultContentBlock; end
    end

    # <p>The specification for the tool. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Call a tool with the Converse API</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute name
    #   <p>The name for the tool.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the tool.</p>
    #   @return [String]
    # @!attribute input_schema
    #   <p>The input schema for the tool in JSON format.</p>
    #   @return [Types::ToolInputSchema]
    # @!attribute strict
    #   <p>Flag to enable structured output enforcement on a tool usage response.</p>
    #   @return [Boolean]
    class ToolSpecification < Struct.new(
      nil,
      :name,
      :description,
      :input_schema,
      :strict,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tool use content block. Contains information about a tool that the model is requesting be run., The model uses the result from the tool to generate a response. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Call a tool with the Converse API</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute tool_use_id
    #   <p>The ID for the tool request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the tool that the model wants to use.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The input to pass to the tool. </p>
    #   @return [JSON]
    # @!attribute type
    #   <p>The type for the tool request.</p>
    #   @return [String]
    class ToolUseBlock < Struct.new(
      nil,
      :tool_use_id,
      :name,
      :input,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The delta for a tool use block.</p>
    # @!attribute input
    #   <p>The input for a requested tool.</p>
    #   @return [String]
    class ToolUseBlockDelta < Struct.new(
      nil,
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The start of a tool use block. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Call a tool with the Converse API</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute tool_use_id
    #   <p>The ID for the tool request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the tool that the model is requesting to use.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type for the tool request.</p>
    #   @return [String]
    class ToolUseBlockStart < Struct.new(
      nil,
      :tool_use_id,
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by <i>Amazon Bedrock</i>. For troubleshooting this error, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-validation-error">ValidationError</a> in the Amazon Bedrock User Guide</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A video block.</p>
    # @!attribute format
    #   <p>The block's format.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The block's source.</p>
    #   @return [Types::VideoSource]
    class VideoBlock < Struct.new(
      nil,
      :format,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Bytes < VideoSource; end
      class S3Location < VideoSource; end
      class Unknown < VideoSource; end
    end

    # <p>Provides the URL and domain information for the website that was cited when performing a web search.</p>
    # @!attribute url
    #   <p>The URL that was cited when performing a web search.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain that was cited when performing a web search.</p>
    #   @return [String]
    class WebLocation < Struct.new(
      nil,
      :url,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
