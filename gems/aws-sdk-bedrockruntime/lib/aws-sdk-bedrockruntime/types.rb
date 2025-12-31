# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockRuntime
  module Types

    # The request is denied because you do not have sufficient permissions
    # to perform the requested action. For troubleshooting this error, see
    # [AccessDeniedException][1] in the Amazon Bedrock User Guide
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-access-denied
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The model must request at least one tool (no text is generated). For
    # example, `{"any" : {}}`. For more information, see [Call a tool with
    # the Converse API][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/AnyToolChoice AWS API Documentation
    #
    class AnyToolChoice < Aws::EmptyStructure; end

    # Details about the specific guardrail that was applied during this
    # assessment, including its identifier, version, ARN, origin, and
    # ownership information.
    #
    # @!attribute [rw] guardrail_id
    #   The unique ID of the guardrail that was applied.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_version
    #   The version of the guardrail that was applied.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_arn
    #   The ARN of the guardrail that was applied.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_origin
    #   The origin of how the guardrail was applied. This can be either
    #   requested at the API level or enforced at the account or
    #   organization level as a default guardrail.
    #   @return [Array<String>]
    #
    # @!attribute [rw] guardrail_ownership
    #   The ownership type of the guardrail, indicating whether it is owned
    #   by the requesting account or is a cross-account guardrail shared
    #   from another AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/AppliedGuardrailDetails AWS API Documentation
    #
    class AppliedGuardrailDetails < Struct.new(
      :guardrail_id,
      :guardrail_version,
      :guardrail_arn,
      :guardrail_origin,
      :guardrail_ownership)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] guardrail_identifier
    #   The guardrail identifier used in the request to apply the guardrail.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_version
    #   The guardrail version used in the request to apply the guardrail.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of data used in the request to apply the guardrail.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content details used in the request to apply the guardrail.
    #   @return [Array<Types::GuardrailContentBlock>]
    #
    # @!attribute [rw] output_scope
    #   Specifies the scope of the output that you get in the response. Set
    #   to `FULL` to return the entire output, including any detected and
    #   non-detected entries in the response for enhanced debugging.
    #
    #   Note that the full output scope doesn't apply to word filters or
    #   regex in sensitive information filters. It does apply to all other
    #   filtering policies, including sensitive information with filters
    #   that can detect personally identifiable information (PII).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ApplyGuardrailRequest AWS API Documentation
    #
    class ApplyGuardrailRequest < Struct.new(
      :guardrail_identifier,
      :guardrail_version,
      :source,
      :content,
      :output_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] usage
    #   The usage details in the response from the guardrail.
    #   @return [Types::GuardrailUsage]
    #
    # @!attribute [rw] action
    #   The action taken in the response from the guardrail.
    #   @return [String]
    #
    # @!attribute [rw] action_reason
    #   The reason for the action taken when harmful content is detected.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The output details in the response from the guardrail.
    #   @return [Array<Types::GuardrailOutputContent>]
    #
    # @!attribute [rw] assessments
    #   The assessment details in the response from the guardrail.
    #   @return [Array<Types::GuardrailAssessment>]
    #
    # @!attribute [rw] guardrail_coverage
    #   The guardrail coverage details in the apply guardrail response.
    #   @return [Types::GuardrailCoverage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ApplyGuardrailResponse AWS API Documentation
    #
    class ApplyGuardrailResponse < Struct.new(
      :usage,
      :action,
      :action_reason,
      :outputs,
      :assessments,
      :guardrail_coverage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Asynchronous invocation output data settings.
    #
    # @note AsyncInvokeOutputDataConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AsyncInvokeOutputDataConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AsyncInvokeOutputDataConfig corresponding to the set member.
    #
    # @!attribute [rw] s3_output_data_config
    #   A storage location for the output data in an S3 bucket
    #   @return [Types::AsyncInvokeS3OutputDataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/AsyncInvokeOutputDataConfig AWS API Documentation
    #
    class AsyncInvokeOutputDataConfig < Struct.new(
      :s3_output_data_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3OutputDataConfig < AsyncInvokeOutputDataConfig; end
      class Unknown < AsyncInvokeOutputDataConfig; end
    end

    # Asynchronous invocation output data settings.
    #
    # @!attribute [rw] s3_uri
    #   An object URI starting with `s3://`.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   A KMS encryption key ID.
    #   @return [String]
    #
    # @!attribute [rw] bucket_owner
    #   If the bucket belongs to another AWS account, specify that
    #   account's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/AsyncInvokeS3OutputDataConfig AWS API Documentation
    #
    class AsyncInvokeS3OutputDataConfig < Struct.new(
      :s3_uri,
      :kms_key_id,
      :bucket_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of an asynchronous invocation.
    #
    # @!attribute [rw] invocation_arn
    #   The invocation's ARN.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The invoked model's ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The invocation's idempotency token.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The invocation's status.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   An error message.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   When the invocation was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   When the invocation was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   When the invocation ended.
    #   @return [Time]
    #
    # @!attribute [rw] output_data_config
    #   The invocation's output data settings.
    #   @return [Types::AsyncInvokeOutputDataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/AsyncInvokeSummary AWS API Documentation
    #
    class AsyncInvokeSummary < Struct.new(
      :invocation_arn,
      :model_arn,
      :client_request_token,
      :status,
      :failure_message,
      :submit_time,
      :last_modified_time,
      :end_time,
      :output_data_config)
      SENSITIVE = [:failure_message]
      include Aws::Structure
    end

    # An audio content block that contains audio data in various supported
    # formats.
    #
    # @!attribute [rw] format
    #   The format of the audio data, such as MP3, WAV, FLAC, or other
    #   supported audio formats.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the audio data, which can be provided as raw bytes or
    #   an S3 location.
    #   @return [Types::AudioSource]
    #
    # @!attribute [rw] error
    #   Error information if the audio block could not be processed or
    #   contains invalid data.
    #   @return [Types::ErrorBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/AudioBlock AWS API Documentation
    #
    class AudioBlock < Struct.new(
      :format,
      :source,
      :error)
      SENSITIVE = [:source, :error]
      include Aws::Structure
    end

    # The source of audio data, which can be provided either as raw bytes or
    # a reference to an S3 location.
    #
    # @note AudioSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AudioSource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AudioSource corresponding to the set member.
    #
    # @!attribute [rw] bytes
    #   Audio data encoded in base64.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   A reference to audio data stored in an Amazon S3 bucket. To see
    #   which models support S3 uploads, see [Supported models and features
    #   for Converse][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/AudioSource AWS API Documentation
    #
    class AudioSource < Struct.new(
      :bytes,
      :s3_location,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Bytes < AudioSource; end
      class S3Location < AudioSource; end
      class Unknown < AudioSource; end
    end

    # The Model automatically decides if a tool should be called or whether
    # to generate text instead. For example, `{"auto" : {}}`. For more
    # information, see [Call a tool with the Converse API][1] in the Amazon
    # Bedrock User Guide
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/AutoToolChoice AWS API Documentation
    #
    class AutoToolChoice < Aws::EmptyStructure; end

    # Payload content for the bidirectional input. The input is an audio
    # stream.
    #
    # @!attribute [rw] bytes
    #   The audio content for the bidirectional input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/BidirectionalInputPayloadPart AWS API Documentation
    #
    class BidirectionalInputPayloadPart < Struct.new(
      :bytes,
      :event_type)
      SENSITIVE = [:bytes]
      include Aws::Structure
    end

    # Output from the bidirectional stream. The output is speech and a text
    # transcription.
    #
    # @!attribute [rw] bytes
    #   The speech output of the bidirectional stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/BidirectionalOutputPayloadPart AWS API Documentation
    #
    class BidirectionalOutputPayloadPart < Struct.new(
      :bytes,
      :event_type)
      SENSITIVE = [:bytes]
      include Aws::Structure
    end

    # Defines a section of content to be cached for reuse in subsequent API
    # calls.
    #
    # @!attribute [rw] type
    #   Specifies the type of cache point within the CachePointBlock.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/CachePointBlock AWS API Documentation
    #
    class CachePointBlock < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a citation that references a specific
    # source document. Citations provide traceability between the model's
    # generated response and the source documents that informed that
    # response.
    #
    # @!attribute [rw] title
    #   The title or identifier of the source document being cited.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source from the original search result that provided the cited
    #   content.
    #   @return [String]
    #
    # @!attribute [rw] source_content
    #   The specific content from the source document that was referenced or
    #   cited in the generated response.
    #   @return [Array<Types::CitationSourceContent>]
    #
    # @!attribute [rw] location
    #   The precise location within the source document where the cited
    #   content can be found, including character positions, page numbers,
    #   or chunk identifiers.
    #   @return [Types::CitationLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/Citation AWS API Documentation
    #
    class Citation < Struct.new(
      :title,
      :source,
      :source_content,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the generated text content that corresponds to or is
    # supported by a citation from a source document.
    #
    # @note CitationGeneratedContent is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CitationGeneratedContent is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CitationGeneratedContent corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The text content that was generated by the model and is supported by
    #   the associated citation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/CitationGeneratedContent AWS API Documentation
    #
    class CitationGeneratedContent < Struct.new(
      :text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < CitationGeneratedContent; end
      class Unknown < CitationGeneratedContent; end
    end

    # Specifies the precise location within a source document where cited
    # content can be found. This can include character-level positions, page
    # numbers, or document chunks depending on the document type and
    # indexing method.
    #
    # @note CitationLocation is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CitationLocation is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CitationLocation corresponding to the set member.
    #
    # @!attribute [rw] web
    #   The web URL that was cited for this reference.
    #   @return [Types::WebLocation]
    #
    # @!attribute [rw] document_char
    #   The character-level location within the document where the cited
    #   content is found.
    #   @return [Types::DocumentCharLocation]
    #
    # @!attribute [rw] document_page
    #   The page-level location within the document where the cited content
    #   is found.
    #   @return [Types::DocumentPageLocation]
    #
    # @!attribute [rw] document_chunk
    #   The chunk-level location within the document where the cited content
    #   is found, typically used for documents that have been segmented into
    #   logical chunks.
    #   @return [Types::DocumentChunkLocation]
    #
    # @!attribute [rw] search_result_location
    #   The search result location where the cited content is found,
    #   including the search result index and block positions within the
    #   content array.
    #   @return [Types::SearchResultLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/CitationLocation AWS API Documentation
    #
    class CitationLocation < Struct.new(
      :web,
      :document_char,
      :document_page,
      :document_chunk,
      :search_result_location,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Web < CitationLocation; end
      class DocumentChar < CitationLocation; end
      class DocumentPage < CitationLocation; end
      class DocumentChunk < CitationLocation; end
      class SearchResultLocation < CitationLocation; end
      class Unknown < CitationLocation; end
    end

    # Contains the actual text content from a source document that is being
    # cited or referenced in the model's response.
    #
    # @note CitationSourceContent is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CitationSourceContent is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CitationSourceContent corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The text content from the source document that is being cited.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/CitationSourceContent AWS API Documentation
    #
    class CitationSourceContent < Struct.new(
      :text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < CitationSourceContent; end
      class Unknown < CitationSourceContent; end
    end

    # Contains incremental updates to the source content text during
    # streaming responses, allowing clients to build up the cited content
    # progressively.
    #
    # @!attribute [rw] text
    #   An incremental update to the text content from the source document
    #   that is being cited.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/CitationSourceContentDelta AWS API Documentation
    #
    class CitationSourceContentDelta < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for enabling and controlling document citations
    # in Converse API responses. When enabled, the model can include
    # citation information that links generated content back to specific
    # source documents.
    #
    # @!attribute [rw] enabled
    #   Specifies whether citations from the selected document should be
    #   used in the model's response. When set to true, the model can
    #   generate citations that reference the source documents used to
    #   inform the response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/CitationsConfig AWS API Documentation
    #
    class CitationsConfig < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # A content block that contains both generated text and associated
    # citation information. This block type is returned when document
    # citations are enabled, providing traceability between the generated
    # content and the source documents that informed the response.
    #
    # @!attribute [rw] content
    #   The generated content that is supported by the associated citations.
    #   @return [Array<Types::CitationGeneratedContent>]
    #
    # @!attribute [rw] citations
    #   An array of citations that reference the source documents used to
    #   generate the associated content.
    #   @return [Array<Types::Citation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/CitationsContentBlock AWS API Documentation
    #
    class CitationsContentBlock < Struct.new(
      :content,
      :citations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains incremental updates to citation information during streaming
    # responses. This allows clients to build up citation data progressively
    # as the response is generated.
    #
    # @!attribute [rw] title
    #   The title or identifier of the source document being cited.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source from the original search result that provided the cited
    #   content.
    #   @return [String]
    #
    # @!attribute [rw] source_content
    #   The specific content from the source document that was referenced or
    #   cited in the generated response.
    #   @return [Array<Types::CitationSourceContentDelta>]
    #
    # @!attribute [rw] location
    #   Specifies the precise location within a source document where cited
    #   content can be found. This can include character-level positions,
    #   page numbers, or document chunks depending on the document type and
    #   indexing method.
    #   @return [Types::CitationLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/CitationsDelta AWS API Documentation
    #
    class CitationsDelta < Struct.new(
      :title,
      :source,
      :source_content,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error occurred because of a conflict while performing an operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A block of content for a message that you pass to, or receive from, a
    # model with the [Converse][1] or [ConverseStream][2] API operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html
    #
    # @note ContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ContentBlock is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ContentBlock corresponding to the set member.
    #
    # @!attribute [rw] text
    #   Text to include in the message.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   Image to include in the message.
    #
    #   <note markdown="1"> This field is only supported by Anthropic Claude 3 models.
    #
    #    </note>
    #   @return [Types::ImageBlock]
    #
    # @!attribute [rw] document
    #   A document to include in the message.
    #   @return [Types::DocumentBlock]
    #
    # @!attribute [rw] video
    #   Video to include in the message.
    #   @return [Types::VideoBlock]
    #
    # @!attribute [rw] audio
    #   An audio content block containing audio data in the conversation.
    #   @return [Types::AudioBlock]
    #
    # @!attribute [rw] tool_use
    #   Information about a tool use request from a model.
    #   @return [Types::ToolUseBlock]
    #
    # @!attribute [rw] tool_result
    #   The result for a tool request that a model makes.
    #   @return [Types::ToolResultBlock]
    #
    # @!attribute [rw] guard_content
    #   Contains the content to assess with the guardrail. If you don't
    #   specify `guardContent` in a call to the Converse API, the guardrail
    #   (if passed in the Converse API) assesses the entire message.
    #
    #   For more information, see *Use a guardrail with the Converse API* in
    #   the *Amazon Bedrock User Guide*.
    #   @return [Types::GuardrailConverseContentBlock]
    #
    # @!attribute [rw] cache_point
    #   CachePoint to include in the message.
    #   @return [Types::CachePointBlock]
    #
    # @!attribute [rw] reasoning_content
    #   Contains content regarding the reasoning that is carried out by the
    #   model. Reasoning refers to a Chain of Thought (CoT) that the model
    #   generates to enhance the accuracy of its final response.
    #   @return [Types::ReasoningContentBlock]
    #
    # @!attribute [rw] citations_content
    #   A content block that contains both generated text and associated
    #   citation information, providing traceability between the response
    #   and source documents.
    #   @return [Types::CitationsContentBlock]
    #
    # @!attribute [rw] search_result
    #   Search result to include in the message.
    #   @return [Types::SearchResultBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ContentBlock AWS API Documentation
    #
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
      :unknown)
      SENSITIVE = [:reasoning_content]
      include Aws::Structure
      include Aws::Structure::Union

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
      class Unknown < ContentBlock; end
    end

    # A block of content in a streaming response.
    #
    # @note ContentBlockDelta is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ContentBlockDelta corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The content text.
    #   @return [String]
    #
    # @!attribute [rw] tool_use
    #   Information about a tool that the model is requesting to use.
    #   @return [Types::ToolUseBlockDelta]
    #
    # @!attribute [rw] tool_result
    #   An incremental update that contains the results from a tool call.
    #   @return [Array<Types::ToolResultBlockDelta>]
    #
    # @!attribute [rw] reasoning_content
    #   Contains content regarding the reasoning that is carried out by the
    #   model. Reasoning refers to a Chain of Thought (CoT) that the model
    #   generates to enhance the accuracy of its final response.
    #   @return [Types::ReasoningContentBlockDelta]
    #
    # @!attribute [rw] citation
    #   Incremental citation information that is streamed as part of the
    #   response generation process.
    #   @return [Types::CitationsDelta]
    #
    # @!attribute [rw] image
    #   A streaming delta event containing incremental image data.
    #   @return [Types::ImageBlockDelta]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ContentBlockDelta AWS API Documentation
    #
    class ContentBlockDelta < Struct.new(
      :text,
      :tool_use,
      :tool_result,
      :reasoning_content,
      :citation,
      :image,
      :unknown)
      SENSITIVE = [:reasoning_content]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < ContentBlockDelta; end
      class ToolUse < ContentBlockDelta; end
      class ToolResult < ContentBlockDelta; end
      class ReasoningContent < ContentBlockDelta; end
      class Citation < ContentBlockDelta; end
      class Image < ContentBlockDelta; end
      class Unknown < ContentBlockDelta; end
    end

    # The content block delta event.
    #
    # @!attribute [rw] delta
    #   The delta for a content block delta event.
    #   @return [Types::ContentBlockDelta]
    #
    # @!attribute [rw] content_block_index
    #   The block index for a content block delta event.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ContentBlockDeltaEvent AWS API Documentation
    #
    class ContentBlockDeltaEvent < Struct.new(
      :delta,
      :content_block_index,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Content block start information.
    #
    # @note ContentBlockStart is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ContentBlockStart corresponding to the set member.
    #
    # @!attribute [rw] tool_use
    #   Information about a tool that the model is requesting to use.
    #   @return [Types::ToolUseBlockStart]
    #
    # @!attribute [rw] tool_result
    #   The
    #   @return [Types::ToolResultBlockStart]
    #
    # @!attribute [rw] image
    #   The initial event indicating the start of a streaming image block.
    #   @return [Types::ImageBlockStart]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ContentBlockStart AWS API Documentation
    #
    class ContentBlockStart < Struct.new(
      :tool_use,
      :tool_result,
      :image,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ToolUse < ContentBlockStart; end
      class ToolResult < ContentBlockStart; end
      class Image < ContentBlockStart; end
      class Unknown < ContentBlockStart; end
    end

    # Content block start event.
    #
    # @!attribute [rw] start
    #   Start information about a content block start event.
    #   @return [Types::ContentBlockStart]
    #
    # @!attribute [rw] content_block_index
    #   The index for a content block start event.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ContentBlockStartEvent AWS API Documentation
    #
    class ContentBlockStartEvent < Struct.new(
      :start,
      :content_block_index,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A content block stop event.
    #
    # @!attribute [rw] content_block_index
    #   The index for a content block.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ContentBlockStopEvent AWS API Documentation
    #
    class ContentBlockStopEvent < Struct.new(
      :content_block_index,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metrics for a call to [Converse][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html
    #
    # @!attribute [rw] latency_ms
    #   The latency of the call to `Converse`, in milliseconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseMetrics AWS API Documentation
    #
    class ConverseMetrics < Struct.new(
      :latency_ms)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from a call to [Converse][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html
    #
    # @note ConverseOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ConverseOutput corresponding to the set member.
    #
    # @!attribute [rw] message
    #   The message that the model generates.
    #   @return [Types::Message]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseOutput AWS API Documentation
    #
    class ConverseOutput < Struct.new(
      :message,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Message < ConverseOutput; end
      class Unknown < ConverseOutput; end
    end

    # @!attribute [rw] model_id
    #   Specifies the model or throughput with which to run inference, or
    #   the prompt resource to use in inference. The value depends on the
    #   resource that you use:
    #
    #   * If you use a base model, specify the model ID or its ARN. For a
    #     list of model IDs for base models, see [Amazon Bedrock base model
    #     IDs (on-demand throughput)][1] in the Amazon Bedrock User Guide.
    #
    #   * If you use an inference profile, specify the inference profile ID
    #     or its ARN. For a list of inference profile IDs, see [Supported
    #     Regions and models for cross-region inference][2] in the Amazon
    #     Bedrock User Guide.
    #
    #   * If you use a provisioned model, specify the ARN of the Provisioned
    #     Throughput. For more information, see [Run inference using a
    #     Provisioned Throughput][3] in the Amazon Bedrock User Guide.
    #
    #   * If you use a custom model, first purchase Provisioned Throughput
    #     for it. Then specify the ARN of the resulting provisioned model.
    #     For more information, see [Use a custom model in Amazon
    #     Bedrock][4] in the Amazon Bedrock User Guide.
    #
    #   * To include a prompt that was defined in [Prompt management][5],
    #     specify the ARN of the prompt version to use.
    #
    #   The Converse API doesn't support [imported models][6].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [4]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #   [5]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html
    #   [6]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   The messages that you want to send to the model.
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] system
    #   A prompt that provides instructions or context to the model about
    #   the task it should perform, or the persona it should adopt during
    #   the conversation.
    #   @return [Array<Types::SystemContentBlock>]
    #
    # @!attribute [rw] inference_config
    #   Inference parameters to pass to the model. `Converse` and
    #   `ConverseStream` support a base set of inference parameters. If you
    #   need to pass additional parameters that the model supports, use the
    #   `additionalModelRequestFields` request field.
    #   @return [Types::InferenceConfiguration]
    #
    # @!attribute [rw] tool_config
    #   Configuration information for the tools that the model can use when
    #   generating a response.
    #
    #   For information about models that support tool use, see [Supported
    #   models and model features][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference.html#conversation-inference-supported-models-features
    #   @return [Types::ToolConfiguration]
    #
    # @!attribute [rw] guardrail_config
    #   Configuration information for a guardrail that you want to use in
    #   the request. If you include `guardContent` blocks in the `content`
    #   field in the `messages` field, the guardrail operates only on those
    #   messages. If you include no `guardContent` blocks, the guardrail
    #   operates on all messages in the request body and in any included
    #   prompt resource.
    #   @return [Types::GuardrailConfiguration]
    #
    # @!attribute [rw] additional_model_request_fields
    #   Additional inference parameters that the model supports, beyond the
    #   base set of inference parameters that `Converse` and
    #   `ConverseStream` support in the `inferenceConfig` field. For more
    #   information, see [Model parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] prompt_variables
    #   Contains a map of variables in a prompt from Prompt management to
    #   objects containing the values to fill in for them when running model
    #   invocation. This field is ignored if you don't specify a prompt
    #   resource in the `modelId` field.
    #   @return [Hash<String,Types::PromptVariableValues>]
    #
    # @!attribute [rw] additional_model_response_field_paths
    #   Additional model parameters field paths to return in the response.
    #   `Converse` and `ConverseStream` return the requested fields as a
    #   JSON Pointer object in the `additionalModelResponseFields` field.
    #   The following is example JSON for
    #   `additionalModelResponseFieldPaths`.
    #
    #   `[ "/stop_sequence" ]`
    #
    #   For information about the JSON Pointer syntax, see the [Internet
    #   Engineering Task Force (IETF)][1] documentation.
    #
    #   `Converse` and `ConverseStream` reject an empty JSON Pointer or
    #   incorrectly structured JSON Pointer with a `400` error code. if the
    #   JSON Pointer is valid, but the requested field is not in the model
    #   response, it is ignored by `Converse`.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc6901
    #   @return [Array<String>]
    #
    # @!attribute [rw] request_metadata
    #   Key-value pairs that you can use to filter invocation logs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] performance_config
    #   Model performance settings for the request.
    #   @return [Types::PerformanceConfiguration]
    #
    # @!attribute [rw] service_tier
    #   Specifies the processing tier configuration used for serving the
    #   request.
    #   @return [Types::ServiceTier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseRequest AWS API Documentation
    #
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
      :service_tier)
      SENSITIVE = [:prompt_variables, :request_metadata]
      include Aws::Structure
    end

    # @!attribute [rw] output
    #   The result from the call to `Converse`.
    #   @return [Types::ConverseOutput]
    #
    # @!attribute [rw] stop_reason
    #   The reason why the model stopped generating output.
    #   @return [String]
    #
    # @!attribute [rw] usage
    #   The total number of tokens used in the call to `Converse`. The total
    #   includes the tokens input to the model and the tokens generated by
    #   the model.
    #   @return [Types::TokenUsage]
    #
    # @!attribute [rw] metrics
    #   Metrics for the call to `Converse`.
    #   @return [Types::ConverseMetrics]
    #
    # @!attribute [rw] additional_model_response_fields
    #   Additional fields in the response that are unique to the model.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] trace
    #   A trace object that contains information about the Guardrail
    #   behavior.
    #   @return [Types::ConverseTrace]
    #
    # @!attribute [rw] performance_config
    #   Model performance settings for the request.
    #   @return [Types::PerformanceConfiguration]
    #
    # @!attribute [rw] service_tier
    #   Specifies the processing tier configuration used for serving the
    #   request.
    #   @return [Types::ServiceTier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseResponse AWS API Documentation
    #
    class ConverseResponse < Struct.new(
      :output,
      :stop_reason,
      :usage,
      :metrics,
      :additional_model_response_fields,
      :trace,
      :performance_config,
      :service_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conversation stream metadata event.
    #
    # @!attribute [rw] usage
    #   Usage information for the conversation stream event.
    #   @return [Types::TokenUsage]
    #
    # @!attribute [rw] metrics
    #   The metrics for the conversation stream metadata event.
    #   @return [Types::ConverseStreamMetrics]
    #
    # @!attribute [rw] trace
    #   The trace object in the response from [ConverseStream][1] that
    #   contains information about the guardrail behavior.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html
    #   @return [Types::ConverseStreamTrace]
    #
    # @!attribute [rw] performance_config
    #   Model performance configuration metadata for the conversation stream
    #   event.
    #   @return [Types::PerformanceConfiguration]
    #
    # @!attribute [rw] service_tier
    #   Specifies the processing tier configuration used for serving the
    #   request.
    #   @return [Types::ServiceTier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseStreamMetadataEvent AWS API Documentation
    #
    class ConverseStreamMetadataEvent < Struct.new(
      :usage,
      :metrics,
      :trace,
      :performance_config,
      :service_tier,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metrics for the stream.
    #
    # @!attribute [rw] latency_ms
    #   The latency for the streaming request, in milliseconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseStreamMetrics AWS API Documentation
    #
    class ConverseStreamMetrics < Struct.new(
      :latency_ms)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_id
    #   Specifies the model or throughput with which to run inference, or
    #   the prompt resource to use in inference. The value depends on the
    #   resource that you use:
    #
    #   * If you use a base model, specify the model ID or its ARN. For a
    #     list of model IDs for base models, see [Amazon Bedrock base model
    #     IDs (on-demand throughput)][1] in the Amazon Bedrock User Guide.
    #
    #   * If you use an inference profile, specify the inference profile ID
    #     or its ARN. For a list of inference profile IDs, see [Supported
    #     Regions and models for cross-region inference][2] in the Amazon
    #     Bedrock User Guide.
    #
    #   * If you use a provisioned model, specify the ARN of the Provisioned
    #     Throughput. For more information, see [Run inference using a
    #     Provisioned Throughput][3] in the Amazon Bedrock User Guide.
    #
    #   * If you use a custom model, first purchase Provisioned Throughput
    #     for it. Then specify the ARN of the resulting provisioned model.
    #     For more information, see [Use a custom model in Amazon
    #     Bedrock][4] in the Amazon Bedrock User Guide.
    #
    #   * To include a prompt that was defined in [Prompt management][5],
    #     specify the ARN of the prompt version to use.
    #
    #   The Converse API doesn't support [imported models][6].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [4]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #   [5]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html
    #   [6]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   The messages that you want to send to the model.
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] system
    #   A prompt that provides instructions or context to the model about
    #   the task it should perform, or the persona it should adopt during
    #   the conversation.
    #   @return [Array<Types::SystemContentBlock>]
    #
    # @!attribute [rw] inference_config
    #   Inference parameters to pass to the model. `Converse` and
    #   `ConverseStream` support a base set of inference parameters. If you
    #   need to pass additional parameters that the model supports, use the
    #   `additionalModelRequestFields` request field.
    #   @return [Types::InferenceConfiguration]
    #
    # @!attribute [rw] tool_config
    #   Configuration information for the tools that the model can use when
    #   generating a response.
    #
    #   For information about models that support streaming tool use, see
    #   [Supported models and model features][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference.html#conversation-inference-supported-models-features
    #   @return [Types::ToolConfiguration]
    #
    # @!attribute [rw] guardrail_config
    #   Configuration information for a guardrail that you want to use in
    #   the request. If you include `guardContent` blocks in the `content`
    #   field in the `messages` field, the guardrail operates only on those
    #   messages. If you include no `guardContent` blocks, the guardrail
    #   operates on all messages in the request body and in any included
    #   prompt resource.
    #   @return [Types::GuardrailStreamConfiguration]
    #
    # @!attribute [rw] additional_model_request_fields
    #   Additional inference parameters that the model supports, beyond the
    #   base set of inference parameters that `Converse` and
    #   `ConverseStream` support in the `inferenceConfig` field. For more
    #   information, see [Model parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] prompt_variables
    #   Contains a map of variables in a prompt from Prompt management to
    #   objects containing the values to fill in for them when running model
    #   invocation. This field is ignored if you don't specify a prompt
    #   resource in the `modelId` field.
    #   @return [Hash<String,Types::PromptVariableValues>]
    #
    # @!attribute [rw] additional_model_response_field_paths
    #   Additional model parameters field paths to return in the response.
    #   `Converse` and `ConverseStream` return the requested fields as a
    #   JSON Pointer object in the `additionalModelResponseFields` field.
    #   The following is example JSON for
    #   `additionalModelResponseFieldPaths`.
    #
    #   `[ "/stop_sequence" ]`
    #
    #   For information about the JSON Pointer syntax, see the [Internet
    #   Engineering Task Force (IETF)][1] documentation.
    #
    #   `Converse` and `ConverseStream` reject an empty JSON Pointer or
    #   incorrectly structured JSON Pointer with a `400` error code. if the
    #   JSON Pointer is valid, but the requested field is not in the model
    #   response, it is ignored by `Converse`.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc6901
    #   @return [Array<String>]
    #
    # @!attribute [rw] request_metadata
    #   Key-value pairs that you can use to filter invocation logs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] performance_config
    #   Model performance settings for the request.
    #   @return [Types::PerformanceConfiguration]
    #
    # @!attribute [rw] service_tier
    #   Specifies the processing tier configuration used for serving the
    #   request.
    #   @return [Types::ServiceTier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseStreamRequest AWS API Documentation
    #
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
      :service_tier)
      SENSITIVE = [:prompt_variables, :request_metadata]
      include Aws::Structure
    end

    # @!attribute [rw] stream
    #   The output stream that the model generated.
    #   @return [Types::ConverseStreamOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseStreamResponse AWS API Documentation
    #
    class ConverseStreamResponse < Struct.new(
      :stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # The trace object in a response from [ConverseStream][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html
    #
    # @!attribute [rw] guardrail
    #   The guardrail trace object.
    #   @return [Types::GuardrailTraceAssessment]
    #
    # @!attribute [rw] prompt_router
    #   The request's prompt router.
    #   @return [Types::PromptRouterTrace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseStreamTrace AWS API Documentation
    #
    class ConverseStreamTrace < Struct.new(
      :guardrail,
      :prompt_router)
      SENSITIVE = []
      include Aws::Structure
    end

    # The inputs from a `Converse` API request for token counting.
    #
    # This structure mirrors the input format for the `Converse` operation,
    # allowing you to count tokens for conversation-based inference
    # requests.
    #
    # @!attribute [rw] messages
    #   An array of messages to count tokens for.
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] system
    #   The system content blocks to count tokens for. System content
    #   provides instructions or context to the model about how it should
    #   behave or respond. The token count will include any system content
    #   provided.
    #   @return [Array<Types::SystemContentBlock>]
    #
    # @!attribute [rw] tool_config
    #   The toolConfig of Converse input request to count tokens for.
    #   Configuration information for the tools that the model can use when
    #   generating a response.
    #   @return [Types::ToolConfiguration]
    #
    # @!attribute [rw] additional_model_request_fields
    #   The additionalModelRequestFields of Converse input request to count
    #   tokens for. Use this field when you want to pass additional
    #   parameters that the model supports.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseTokensRequest AWS API Documentation
    #
    class ConverseTokensRequest < Struct.new(
      :messages,
      :system,
      :tool_config,
      :additional_model_request_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # The trace object in a response from [Converse][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html
    #
    # @!attribute [rw] guardrail
    #   The guardrail trace object.
    #   @return [Types::GuardrailTraceAssessment]
    #
    # @!attribute [rw] prompt_router
    #   The request's prompt router.
    #   @return [Types::PromptRouterTrace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseTrace AWS API Documentation
    #
    class ConverseTrace < Struct.new(
      :guardrail,
      :prompt_router)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input value for token counting. The value should be either an
    # `InvokeModel` or `Converse` request body.
    #
    # @note CountTokensInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] invoke_model
    #   An `InvokeModel` request for which to count tokens. Use this field
    #   when you want to count tokens for a raw text input that would be
    #   sent to the `InvokeModel` operation.
    #   @return [Types::InvokeModelTokensRequest]
    #
    # @!attribute [rw] converse
    #   A `Converse` request for which to count tokens. Use this field when
    #   you want to count tokens for a conversation-based input that would
    #   be sent to the `Converse` operation.
    #   @return [Types::ConverseTokensRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/CountTokensInput AWS API Documentation
    #
    class CountTokensInput < Struct.new(
      :invoke_model,
      :converse,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class InvokeModel < CountTokensInput; end
      class Converse < CountTokensInput; end
      class Unknown < CountTokensInput; end
    end

    # @!attribute [rw] model_id
    #   The unique identifier or ARN of the foundation model to use for
    #   token counting. Each model processes tokens differently, so the
    #   token count is specific to the model you specify.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The input for which to count tokens. The structure of this parameter
    #   depends on whether you're counting tokens for an `InvokeModel` or
    #   `Converse` request:
    #
    #   * For `InvokeModel` requests, provide the request body in the
    #     `invokeModel` field
    #
    #   * For `Converse` requests, provide the messages and system content
    #     in the `converse` field
    #
    #   The input format must be compatible with the model specified in the
    #   `modelId` parameter.
    #   @return [Types::CountTokensInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/CountTokensRequest AWS API Documentation
    #
    class CountTokensRequest < Struct.new(
      :model_id,
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_tokens
    #   The number of tokens in the provided input according to the
    #   specified model's tokenization rules. This count represents the
    #   number of input tokens that would be processed if the same input
    #   were sent to the model in an inference request. Use this value to
    #   estimate costs and ensure your inputs stay within model token
    #   limits.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/CountTokensResponse AWS API Documentation
    #
    class CountTokensResponse < Struct.new(
      :input_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # A document to include in a message.
    #
    # @!attribute [rw] format
    #   The format of a document, or its extension.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the document. The name can only contain the following
    #   characters:
    #
    #   * Alphanumeric characters
    #
    #   * Whitespace characters (no more than one in a row)
    #
    #   * Hyphens
    #
    #   * Parentheses
    #
    #   * Square brackets
    #
    #   <note markdown="1"> This field is vulnerable to prompt injections, because the model
    #   might inadvertently interpret it as instructions. Therefore, we
    #   recommend that you specify a neutral name.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Contains the content of the document.
    #   @return [Types::DocumentSource]
    #
    # @!attribute [rw] context
    #   Contextual information about how the document should be processed or
    #   interpreted by the model when generating citations.
    #   @return [String]
    #
    # @!attribute [rw] citations
    #   Configuration settings that control how citations should be
    #   generated for this specific document.
    #   @return [Types::CitationsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/DocumentBlock AWS API Documentation
    #
    class DocumentBlock < Struct.new(
      :format,
      :name,
      :source,
      :context,
      :citations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a character-level location within a document, providing
    # precise positioning information for cited content using start and end
    # character indices.
    #
    # @!attribute [rw] document_index
    #   The index of the document within the array of documents provided in
    #   the request.
    #   @return [Integer]
    #
    # @!attribute [rw] start
    #   The starting character position of the cited content within the
    #   document.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   The ending character position of the cited content within the
    #   document.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/DocumentCharLocation AWS API Documentation
    #
    class DocumentCharLocation < Struct.new(
      :document_index,
      :start,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a chunk-level location within a document, providing
    # positioning information for cited content using logical document
    # segments or chunks.
    #
    # @!attribute [rw] document_index
    #   The index of the document within the array of documents provided in
    #   the request.
    #   @return [Integer]
    #
    # @!attribute [rw] start
    #   The starting chunk identifier or index of the cited content within
    #   the document.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   The ending chunk identifier or index of the cited content within the
    #   document.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/DocumentChunkLocation AWS API Documentation
    #
    class DocumentChunkLocation < Struct.new(
      :document_index,
      :start,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the actual content of a document that can be processed by the
    # model and potentially cited in the response.
    #
    # @note DocumentContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DocumentContentBlock is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DocumentContentBlock corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The text content of the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/DocumentContentBlock AWS API Documentation
    #
    class DocumentContentBlock < Struct.new(
      :text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < DocumentContentBlock; end
      class Unknown < DocumentContentBlock; end
    end

    # Specifies a page-level location within a document, providing
    # positioning information for cited content using page numbers.
    #
    # @!attribute [rw] document_index
    #   The index of the document within the array of documents provided in
    #   the request.
    #   @return [Integer]
    #
    # @!attribute [rw] start
    #   The starting page number of the cited content within the document.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   The ending page number of the cited content within the document.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/DocumentPageLocation AWS API Documentation
    #
    class DocumentPageLocation < Struct.new(
      :document_index,
      :start,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the content of a document.
    #
    # @note DocumentSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DocumentSource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DocumentSource corresponding to the set member.
    #
    # @!attribute [rw] bytes
    #   The raw bytes for the document. If you use an Amazon Web Services
    #   SDK, you don't need to encode the bytes in base64.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The location of a document object in an Amazon S3 bucket. To see
    #   which models support S3 uploads, see [Supported models and features
    #   for Converse][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] text
    #   The text content of the document source.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The structured content of the document source, which may include
    #   various content blocks such as text, images, or other document
    #   elements.
    #   @return [Array<Types::DocumentContentBlock>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/DocumentSource AWS API Documentation
    #
    class DocumentSource < Struct.new(
      :bytes,
      :s3_location,
      :text,
      :content,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Bytes < DocumentSource; end
      class S3Location < DocumentSource; end
      class Text < DocumentSource; end
      class Content < DocumentSource; end
      class Unknown < DocumentSource; end
    end

    # A block containing error information when content processing fails.
    #
    # @!attribute [rw] message
    #   A human-readable error message describing what went wrong during
    #   content processing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ErrorBlock AWS API Documentation
    #
    class ErrorBlock < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invocation_arn
    #   The invocation's ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GetAsyncInvokeRequest AWS API Documentation
    #
    class GetAsyncInvokeRequest < Struct.new(
      :invocation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invocation_arn
    #   The invocation's ARN.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The invocation's model ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The invocation's idempotency token.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The invocation's status.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   An error message.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   When the invocation request was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The invocation's last modified time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   When the invocation ended.
    #   @return [Time]
    #
    # @!attribute [rw] output_data_config
    #   Output data settings.
    #   @return [Types::AsyncInvokeOutputDataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GetAsyncInvokeResponse AWS API Documentation
    #
    class GetAsyncInvokeResponse < Struct.new(
      :invocation_arn,
      :model_arn,
      :client_request_token,
      :status,
      :failure_message,
      :submit_time,
      :last_modified_time,
      :end_time,
      :output_data_config)
      SENSITIVE = [:failure_message]
      include Aws::Structure
    end

    # A behavior assessment of the guardrail policies used in a call to the
    # Converse API.
    #
    # @!attribute [rw] topic_policy
    #   The topic policy.
    #   @return [Types::GuardrailTopicPolicyAssessment]
    #
    # @!attribute [rw] content_policy
    #   The content policy.
    #   @return [Types::GuardrailContentPolicyAssessment]
    #
    # @!attribute [rw] word_policy
    #   The word policy.
    #   @return [Types::GuardrailWordPolicyAssessment]
    #
    # @!attribute [rw] sensitive_information_policy
    #   The sensitive information policy.
    #   @return [Types::GuardrailSensitiveInformationPolicyAssessment]
    #
    # @!attribute [rw] contextual_grounding_policy
    #   The contextual grounding policy used for the guardrail assessment.
    #   @return [Types::GuardrailContextualGroundingPolicyAssessment]
    #
    # @!attribute [rw] automated_reasoning_policy
    #   The automated reasoning policy assessment results, including logical
    #   validation findings for the input content.
    #   @return [Types::GuardrailAutomatedReasoningPolicyAssessment]
    #
    # @!attribute [rw] invocation_metrics
    #   The invocation metrics for the guardrail assessment.
    #   @return [Types::GuardrailInvocationMetrics]
    #
    # @!attribute [rw] applied_guardrail_details
    #   Details about the specific guardrail that was applied during this
    #   assessment, including its identifier, version, ARN, origin, and
    #   ownership information.
    #   @return [Types::AppliedGuardrailDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAssessment AWS API Documentation
    #
    class GuardrailAssessment < Struct.new(
      :topic_policy,
      :content_policy,
      :word_policy,
      :sensitive_information_policy,
      :contextual_grounding_policy,
      :automated_reasoning_policy,
      :invocation_metrics,
      :applied_guardrail_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a logical validation result from automated reasoning policy
    # evaluation. The finding indicates whether claims in the input are
    # logically valid, invalid, satisfiable, impossible, or have other
    # logical issues.
    #
    # @note GuardrailAutomatedReasoningFinding is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of GuardrailAutomatedReasoningFinding corresponding to the set member.
    #
    # @!attribute [rw] valid
    #   Contains the result when the automated reasoning evaluation
    #   determines that the claims in the input are logically valid and
    #   definitively true based on the provided premises and policy rules.
    #   @return [Types::GuardrailAutomatedReasoningValidFinding]
    #
    # @!attribute [rw] invalid
    #   Contains the result when the automated reasoning evaluation
    #   determines that the claims in the input are logically invalid and
    #   contradict the established premises or policy rules.
    #   @return [Types::GuardrailAutomatedReasoningInvalidFinding]
    #
    # @!attribute [rw] satisfiable
    #   Contains the result when the automated reasoning evaluation
    #   determines that the claims in the input could be either true or
    #   false depending on additional assumptions not provided in the input
    #   context.
    #   @return [Types::GuardrailAutomatedReasoningSatisfiableFinding]
    #
    # @!attribute [rw] impossible
    #   Contains the result when the automated reasoning evaluation
    #   determines that no valid logical conclusions can be drawn due to
    #   contradictions in the premises or policy rules themselves.
    #   @return [Types::GuardrailAutomatedReasoningImpossibleFinding]
    #
    # @!attribute [rw] translation_ambiguous
    #   Contains the result when the automated reasoning evaluation detects
    #   that the input has multiple valid logical interpretations, requiring
    #   additional context or clarification to proceed with validation.
    #   @return [Types::GuardrailAutomatedReasoningTranslationAmbiguousFinding]
    #
    # @!attribute [rw] too_complex
    #   Contains the result when the automated reasoning evaluation cannot
    #   process the input due to its complexity or volume exceeding the
    #   system's processing capacity for logical analysis.
    #   @return [Types::GuardrailAutomatedReasoningTooComplexFinding]
    #
    # @!attribute [rw] no_translations
    #   Contains the result when the automated reasoning evaluation cannot
    #   extract any relevant logical information from the input that can be
    #   validated against the policy rules.
    #   @return [Types::GuardrailAutomatedReasoningNoTranslationsFinding]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningFinding AWS API Documentation
    #
    class GuardrailAutomatedReasoningFinding < Struct.new(
      :valid,
      :invalid,
      :satisfiable,
      :impossible,
      :translation_ambiguous,
      :too_complex,
      :no_translations,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Valid < GuardrailAutomatedReasoningFinding; end
      class Invalid < GuardrailAutomatedReasoningFinding; end
      class Satisfiable < GuardrailAutomatedReasoningFinding; end
      class Impossible < GuardrailAutomatedReasoningFinding; end
      class TranslationAmbiguous < GuardrailAutomatedReasoningFinding; end
      class TooComplex < GuardrailAutomatedReasoningFinding; end
      class NoTranslations < GuardrailAutomatedReasoningFinding; end
      class Unknown < GuardrailAutomatedReasoningFinding; end
    end

    # Indicates that no valid claims can be made due to logical
    # contradictions in the premises or rules.
    #
    # @!attribute [rw] translation
    #   The logical translation of the input that this finding evaluates.
    #   @return [Types::GuardrailAutomatedReasoningTranslation]
    #
    # @!attribute [rw] contradicting_rules
    #   The automated reasoning policy rules that contradict the claims
    #   and/or premises in the input.
    #   @return [Array<Types::GuardrailAutomatedReasoningRule>]
    #
    # @!attribute [rw] logic_warning
    #   Indication of a logic issue with the translation without needing to
    #   consider the automated reasoning policy rules.
    #   @return [Types::GuardrailAutomatedReasoningLogicWarning]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningImpossibleFinding AWS API Documentation
    #
    class GuardrailAutomatedReasoningImpossibleFinding < Struct.new(
      :translation,
      :contradicting_rules,
      :logic_warning)
      SENSITIVE = []
      include Aws::Structure
    end

    # References a portion of the original input text that corresponds to
    # logical elements.
    #
    # @!attribute [rw] text
    #   The specific text from the original input that this reference points
    #   to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningInputTextReference AWS API Documentation
    #
    class GuardrailAutomatedReasoningInputTextReference < Struct.new(
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # Indicates that the claims are logically false and contradictory to the
    # established rules or premises.
    #
    # @!attribute [rw] translation
    #   The logical translation of the input that this finding invalidates.
    #   @return [Types::GuardrailAutomatedReasoningTranslation]
    #
    # @!attribute [rw] contradicting_rules
    #   The automated reasoning policy rules that contradict the claims in
    #   the input.
    #   @return [Array<Types::GuardrailAutomatedReasoningRule>]
    #
    # @!attribute [rw] logic_warning
    #   Indication of a logic issue with the translation without needing to
    #   consider the automated reasoning policy rules.
    #   @return [Types::GuardrailAutomatedReasoningLogicWarning]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningInvalidFinding AWS API Documentation
    #
    class GuardrailAutomatedReasoningInvalidFinding < Struct.new(
      :translation,
      :contradicting_rules,
      :logic_warning)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies logical issues in the translated statements that exist
    # independent of any policy rules, such as statements that are always
    # true or always false.
    #
    # @!attribute [rw] type
    #   The category of the detected logical issue, such as statements that
    #   are always true or always false.
    #   @return [String]
    #
    # @!attribute [rw] premises
    #   The logical statements that serve as premises under which the claims
    #   are validated.
    #   @return [Array<Types::GuardrailAutomatedReasoningStatement>]
    #
    # @!attribute [rw] claims
    #   The logical statements that are validated while assuming the policy
    #   and premises.
    #   @return [Array<Types::GuardrailAutomatedReasoningStatement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningLogicWarning AWS API Documentation
    #
    class GuardrailAutomatedReasoningLogicWarning < Struct.new(
      :type,
      :premises,
      :claims)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that no relevant logical information could be extracted from
    # the input for validation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningNoTranslationsFinding AWS API Documentation
    #
    class GuardrailAutomatedReasoningNoTranslationsFinding < Aws::EmptyStructure; end

    # Contains the results of automated reasoning policy evaluation,
    # including logical findings about the validity of claims made in the
    # input content.
    #
    # @!attribute [rw] findings
    #   List of logical validation results produced by evaluating the input
    #   content against automated reasoning policies.
    #   @return [Array<Types::GuardrailAutomatedReasoningFinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningPolicyAssessment AWS API Documentation
    #
    class GuardrailAutomatedReasoningPolicyAssessment < Struct.new(
      :findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # References a specific automated reasoning policy rule that was applied
    # during evaluation.
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the automated reasoning rule.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_arn
    #   The ARN of the automated reasoning policy version that contains this
    #   rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningRule AWS API Documentation
    #
    class GuardrailAutomatedReasoningRule < Struct.new(
      :identifier,
      :policy_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the claims could be either true or false depending on
    # additional assumptions not provided in the input.
    #
    # @!attribute [rw] translation
    #   The logical translation of the input that this finding evaluates.
    #   @return [Types::GuardrailAutomatedReasoningTranslation]
    #
    # @!attribute [rw] claims_true_scenario
    #   An example scenario demonstrating how the claims could be logically
    #   true.
    #   @return [Types::GuardrailAutomatedReasoningScenario]
    #
    # @!attribute [rw] claims_false_scenario
    #   An example scenario demonstrating how the claims could be logically
    #   false.
    #   @return [Types::GuardrailAutomatedReasoningScenario]
    #
    # @!attribute [rw] logic_warning
    #   Indication of a logic issue with the translation without needing to
    #   consider the automated reasoning policy rules.
    #   @return [Types::GuardrailAutomatedReasoningLogicWarning]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningSatisfiableFinding AWS API Documentation
    #
    class GuardrailAutomatedReasoningSatisfiableFinding < Struct.new(
      :translation,
      :claims_true_scenario,
      :claims_false_scenario,
      :logic_warning)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a logical scenario where claims can be evaluated as true or
    # false, containing specific logical assignments.
    #
    # @!attribute [rw] statements
    #   List of logical assignments and statements that define this
    #   scenario.
    #   @return [Array<Types::GuardrailAutomatedReasoningStatement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningScenario AWS API Documentation
    #
    class GuardrailAutomatedReasoningScenario < Struct.new(
      :statements)
      SENSITIVE = []
      include Aws::Structure
    end

    # A logical statement that includes both formal logic representation and
    # natural language explanation.
    #
    # @!attribute [rw] logic
    #   The formal logical representation of the statement.
    #   @return [String]
    #
    # @!attribute [rw] natural_language
    #   The natural language explanation of the logical statement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningStatement AWS API Documentation
    #
    class GuardrailAutomatedReasoningStatement < Struct.new(
      :logic,
      :natural_language)
      SENSITIVE = [:logic, :natural_language]
      include Aws::Structure
    end

    # Indicates that the input exceeds the processing capacity due to the
    # volume or complexity of the logical information.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningTooComplexFinding AWS API Documentation
    #
    class GuardrailAutomatedReasoningTooComplexFinding < Aws::EmptyStructure; end

    # Contains the logical translation of natural language input into formal
    # logical statements, including premises, claims, and confidence scores.
    #
    # @!attribute [rw] premises
    #   The logical statements that serve as the foundation or assumptions
    #   for the claims.
    #   @return [Array<Types::GuardrailAutomatedReasoningStatement>]
    #
    # @!attribute [rw] claims
    #   The logical statements that are being validated against the premises
    #   and policy rules.
    #   @return [Array<Types::GuardrailAutomatedReasoningStatement>]
    #
    # @!attribute [rw] untranslated_premises
    #   References to portions of the original input text that correspond to
    #   the premises but could not be fully translated.
    #   @return [Array<Types::GuardrailAutomatedReasoningInputTextReference>]
    #
    # @!attribute [rw] untranslated_claims
    #   References to portions of the original input text that correspond to
    #   the claims but could not be fully translated.
    #   @return [Array<Types::GuardrailAutomatedReasoningInputTextReference>]
    #
    # @!attribute [rw] confidence
    #   A confidence score between 0 and 1 indicating how certain the system
    #   is about the logical translation.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningTranslation AWS API Documentation
    #
    class GuardrailAutomatedReasoningTranslation < Struct.new(
      :premises,
      :claims,
      :untranslated_premises,
      :untranslated_claims,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the input has multiple valid logical interpretations,
    # requiring additional context or clarification.
    #
    # @!attribute [rw] options
    #   Different logical interpretations that were detected during
    #   translation of the input.
    #   @return [Array<Types::GuardrailAutomatedReasoningTranslationOption>]
    #
    # @!attribute [rw] difference_scenarios
    #   Scenarios showing how the different translation options differ in
    #   meaning.
    #   @return [Array<Types::GuardrailAutomatedReasoningScenario>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningTranslationAmbiguousFinding AWS API Documentation
    #
    class GuardrailAutomatedReasoningTranslationAmbiguousFinding < Struct.new(
      :options,
      :difference_scenarios)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents one possible logical interpretation of ambiguous input
    # content.
    #
    # @!attribute [rw] translations
    #   Example translations that provide this possible interpretation of
    #   the input.
    #   @return [Array<Types::GuardrailAutomatedReasoningTranslation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningTranslationOption AWS API Documentation
    #
    class GuardrailAutomatedReasoningTranslationOption < Struct.new(
      :translations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the claims are definitively true and logically implied
    # by the premises, with no possible alternative interpretations.
    #
    # @!attribute [rw] translation
    #   The logical translation of the input that this finding validates.
    #   @return [Types::GuardrailAutomatedReasoningTranslation]
    #
    # @!attribute [rw] claims_true_scenario
    #   An example scenario demonstrating how the claims are logically true.
    #   @return [Types::GuardrailAutomatedReasoningScenario]
    #
    # @!attribute [rw] supporting_rules
    #   The automated reasoning policy rules that support why this result is
    #   considered valid.
    #   @return [Array<Types::GuardrailAutomatedReasoningRule>]
    #
    # @!attribute [rw] logic_warning
    #   Indication of a logic issue with the translation without needing to
    #   consider the automated reasoning policy rules.
    #   @return [Types::GuardrailAutomatedReasoningLogicWarning]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAutomatedReasoningValidFinding AWS API Documentation
    #
    class GuardrailAutomatedReasoningValidFinding < Struct.new(
      :translation,
      :claims_true_scenario,
      :supporting_rules,
      :logic_warning)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for a guardrail that you use with the
    # [Converse][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html
    #
    # @!attribute [rw] guardrail_identifier
    #   The identifier for the guardrail.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_version
    #   The version of the guardrail.
    #   @return [String]
    #
    # @!attribute [rw] trace
    #   The trace behavior for the guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailConfiguration AWS API Documentation
    #
    class GuardrailConfiguration < Struct.new(
      :guardrail_identifier,
      :guardrail_version,
      :trace)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content block to be evaluated by the guardrail.
    #
    # @note GuardrailContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] text
    #   Text within content block to be evaluated by the guardrail.
    #   @return [Types::GuardrailTextBlock]
    #
    # @!attribute [rw] image
    #   Image within guardrail content block to be evaluated by the
    #   guardrail.
    #   @return [Types::GuardrailImageBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailContentBlock AWS API Documentation
    #
    class GuardrailContentBlock < Struct.new(
      :text,
      :image,
      :unknown)
      SENSITIVE = [:image]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < GuardrailContentBlock; end
      class Image < GuardrailContentBlock; end
      class Unknown < GuardrailContentBlock; end
    end

    # The content filter for a guardrail.
    #
    # @!attribute [rw] type
    #   The guardrail type.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The guardrail confidence.
    #   @return [String]
    #
    # @!attribute [rw] filter_strength
    #   The filter strength setting for the guardrail content filter.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The guardrail action.
    #   @return [String]
    #
    # @!attribute [rw] detected
    #   Indicates whether content that breaches the guardrail configuration
    #   is detected.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailContentFilter AWS API Documentation
    #
    class GuardrailContentFilter < Struct.new(
      :type,
      :confidence,
      :filter_strength,
      :action,
      :detected)
      SENSITIVE = []
      include Aws::Structure
    end

    # An assessment of a content policy for a guardrail.
    #
    # @!attribute [rw] filters
    #   The content policy filters.
    #   @return [Array<Types::GuardrailContentFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailContentPolicyAssessment AWS API Documentation
    #
    class GuardrailContentPolicyAssessment < Struct.new(
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for the guardrails contextual grounding filter.
    #
    # @!attribute [rw] type
    #   The contextual grounding filter type.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The threshold used by contextual grounding filter to determine
    #   whether the content is grounded or not.
    #   @return [Float]
    #
    # @!attribute [rw] score
    #   The score generated by contextual grounding filter.
    #   @return [Float]
    #
    # @!attribute [rw] action
    #   The action performed by the guardrails contextual grounding filter.
    #   @return [String]
    #
    # @!attribute [rw] detected
    #   Indicates whether content that fails the contextual grounding
    #   evaluation (grounding or relevance score less than the corresponding
    #   threshold) was detected.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailContextualGroundingFilter AWS API Documentation
    #
    class GuardrailContextualGroundingFilter < Struct.new(
      :type,
      :threshold,
      :score,
      :action,
      :detected)
      SENSITIVE = []
      include Aws::Structure
    end

    # The policy assessment details for the guardrails contextual grounding
    # filter.
    #
    # @!attribute [rw] filters
    #   The filter details for the guardrails contextual grounding filter.
    #   @return [Array<Types::GuardrailContextualGroundingFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailContextualGroundingPolicyAssessment AWS API Documentation
    #
    class GuardrailContextualGroundingPolicyAssessment < Struct.new(
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A content block for selective guarding with the [Converse][1] or
    # [ConverseStream][2] API operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html
    #
    # @note GuardrailConverseContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @note GuardrailConverseContentBlock is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of GuardrailConverseContentBlock corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The text to guard.
    #   @return [Types::GuardrailConverseTextBlock]
    #
    # @!attribute [rw] image
    #   Image within converse content block to be evaluated by the
    #   guardrail.
    #   @return [Types::GuardrailConverseImageBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailConverseContentBlock AWS API Documentation
    #
    class GuardrailConverseContentBlock < Struct.new(
      :text,
      :image,
      :unknown)
      SENSITIVE = [:image]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < GuardrailConverseContentBlock; end
      class Image < GuardrailConverseContentBlock; end
      class Unknown < GuardrailConverseContentBlock; end
    end

    # An image block that contains images that you want to assess with a
    # guardrail.
    #
    # @!attribute [rw] format
    #   The format details for the image type of the guardrail converse
    #   image block.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The image source (image bytes) of the guardrail converse image
    #   block.
    #   @return [Types::GuardrailConverseImageSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailConverseImageBlock AWS API Documentation
    #
    class GuardrailConverseImageBlock < Struct.new(
      :format,
      :source)
      SENSITIVE = [:source]
      include Aws::Structure
    end

    # The image source (image bytes) of the guardrail converse image source.
    #
    # @note GuardrailConverseImageSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note GuardrailConverseImageSource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of GuardrailConverseImageSource corresponding to the set member.
    #
    # @!attribute [rw] bytes
    #   The raw image bytes for the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailConverseImageSource AWS API Documentation
    #
    class GuardrailConverseImageSource < Struct.new(
      :bytes,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Bytes < GuardrailConverseImageSource; end
      class Unknown < GuardrailConverseImageSource; end
    end

    # A text block that contains text that you want to assess with a
    # guardrail. For more information, see
    # [GuardrailConverseContentBlock][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_GuardrailConverseContentBlock.html
    #
    # @!attribute [rw] text
    #   The text that you want to guard.
    #   @return [String]
    #
    # @!attribute [rw] qualifiers
    #   The qualifier details for the guardrails contextual grounding
    #   filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailConverseTextBlock AWS API Documentation
    #
    class GuardrailConverseTextBlock < Struct.new(
      :text,
      :qualifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action of the guardrail coverage details.
    #
    # @!attribute [rw] text_characters
    #   The text characters of the guardrail coverage details.
    #   @return [Types::GuardrailTextCharactersCoverage]
    #
    # @!attribute [rw] images
    #   The guardrail coverage for images (the number of images that
    #   guardrails guarded).
    #   @return [Types::GuardrailImageCoverage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailCoverage AWS API Documentation
    #
    class GuardrailCoverage < Struct.new(
      :text_characters,
      :images)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom word configured in a guardrail.
    #
    # @!attribute [rw] match
    #   The match for the custom word.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action for the custom word.
    #   @return [String]
    #
    # @!attribute [rw] detected
    #   Indicates whether custom word content that breaches the guardrail
    #   configuration is detected.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailCustomWord AWS API Documentation
    #
    class GuardrailCustomWord < Struct.new(
      :match,
      :action,
      :detected)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contain an image which user wants guarded. This block is accepted by
    # the guardrails independent API.
    #
    # @!attribute [rw] format
    #   The format details for the file type of the image blocked by the
    #   guardrail.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The image source (image bytes) details of the image blocked by the
    #   guardrail.
    #   @return [Types::GuardrailImageSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailImageBlock AWS API Documentation
    #
    class GuardrailImageBlock < Struct.new(
      :format,
      :source)
      SENSITIVE = [:source]
      include Aws::Structure
    end

    # The details of the guardrail image coverage.
    #
    # @!attribute [rw] guarded
    #   The count (integer) of images guardrails guarded.
    #   @return [Integer]
    #
    # @!attribute [rw] total
    #   Represents the total number of images (integer) that were in the
    #   request (guarded and unguarded).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailImageCoverage AWS API Documentation
    #
    class GuardrailImageCoverage < Struct.new(
      :guarded,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # The image source (image bytes) of the guardrail image source. Object
    # used in independent api.
    #
    # @note GuardrailImageSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] bytes
    #   The bytes details of the guardrail image source. Object used in
    #   independent api.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailImageSource AWS API Documentation
    #
    class GuardrailImageSource < Struct.new(
      :bytes,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Bytes < GuardrailImageSource; end
      class Unknown < GuardrailImageSource; end
    end

    # The invocation metrics for the guardrail.
    #
    # @!attribute [rw] guardrail_processing_latency
    #   The processing latency details for the guardrail invocation metrics.
    #   @return [Integer]
    #
    # @!attribute [rw] usage
    #   The usage details for the guardrail invocation metrics.
    #   @return [Types::GuardrailUsage]
    #
    # @!attribute [rw] guardrail_coverage
    #   The coverage details for the guardrail invocation metrics.
    #   @return [Types::GuardrailCoverage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailInvocationMetrics AWS API Documentation
    #
    class GuardrailInvocationMetrics < Struct.new(
      :guardrail_processing_latency,
      :usage,
      :guardrail_coverage)
      SENSITIVE = []
      include Aws::Structure
    end

    # A managed word configured in a guardrail.
    #
    # @!attribute [rw] match
    #   The match for the managed word.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type for the managed word.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action for the managed word.
    #   @return [String]
    #
    # @!attribute [rw] detected
    #   Indicates whether managed word content that breaches the guardrail
    #   configuration is detected.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailManagedWord AWS API Documentation
    #
    class GuardrailManagedWord < Struct.new(
      :match,
      :type,
      :action,
      :detected)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output content produced by the guardrail.
    #
    # @!attribute [rw] text
    #   The specific text for the output content produced by the guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailOutputContent AWS API Documentation
    #
    class GuardrailOutputContent < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Personally Identifiable Information (PII) entity configured in a
    # guardrail.
    #
    # @!attribute [rw] match
    #   The PII entity filter match.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The PII entity filter type.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The PII entity filter action.
    #   @return [String]
    #
    # @!attribute [rw] detected
    #   Indicates whether personally identifiable information (PII) that
    #   breaches the guardrail configuration is detected.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailPiiEntityFilter AWS API Documentation
    #
    class GuardrailPiiEntityFilter < Struct.new(
      :match,
      :type,
      :action,
      :detected)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Regex filter configured in a guardrail.
    #
    # @!attribute [rw] name
    #   The regex filter name.
    #   @return [String]
    #
    # @!attribute [rw] match
    #   The regesx filter match.
    #   @return [String]
    #
    # @!attribute [rw] regex
    #   The regex query.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The region filter action.
    #   @return [String]
    #
    # @!attribute [rw] detected
    #   Indicates whether custom regex entities that breach the guardrail
    #   configuration are detected.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailRegexFilter AWS API Documentation
    #
    class GuardrailRegexFilter < Struct.new(
      :name,
      :match,
      :regex,
      :action,
      :detected)
      SENSITIVE = []
      include Aws::Structure
    end

    # The assessment for a Personally Identifiable Information (PII) policy.
    #
    # @!attribute [rw] pii_entities
    #   The PII entities in the assessment.
    #   @return [Array<Types::GuardrailPiiEntityFilter>]
    #
    # @!attribute [rw] regexes
    #   The regex queries in the assessment.
    #   @return [Array<Types::GuardrailRegexFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailSensitiveInformationPolicyAssessment AWS API Documentation
    #
    class GuardrailSensitiveInformationPolicyAssessment < Struct.new(
      :pii_entities,
      :regexes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for a guardrail that you use with the
    # [ConverseStream][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html
    #
    # @!attribute [rw] guardrail_identifier
    #   The identifier for the guardrail.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_version
    #   The version of the guardrail.
    #   @return [String]
    #
    # @!attribute [rw] trace
    #   The trace behavior for the guardrail.
    #   @return [String]
    #
    # @!attribute [rw] stream_processing_mode
    #   The processing mode.
    #
    #   The processing mode. For more information, see *Configure streaming
    #   response behavior* in the *Amazon Bedrock User Guide*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailStreamConfiguration AWS API Documentation
    #
    class GuardrailStreamConfiguration < Struct.new(
      :guardrail_identifier,
      :guardrail_version,
      :trace,
      :stream_processing_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The text block to be evaluated by the guardrail.
    #
    # @!attribute [rw] text
    #   The input text details to be evaluated by the guardrail.
    #   @return [String]
    #
    # @!attribute [rw] qualifiers
    #   The qualifiers describing the text block.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailTextBlock AWS API Documentation
    #
    class GuardrailTextBlock < Struct.new(
      :text,
      :qualifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # The guardrail coverage for the text characters.
    #
    # @!attribute [rw] guarded
    #   The text characters that were guarded by the guardrail coverage.
    #   @return [Integer]
    #
    # @!attribute [rw] total
    #   The total text characters by the guardrail coverage.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailTextCharactersCoverage AWS API Documentation
    #
    class GuardrailTextCharactersCoverage < Struct.new(
      :guarded,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a topic guardrail.
    #
    # @!attribute [rw] name
    #   The name for the guardrail.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type behavior that the guardrail should perform when the model
    #   detects the topic.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action the guardrail should take when it intervenes on a topic.
    #   @return [String]
    #
    # @!attribute [rw] detected
    #   Indicates whether topic content that breaches the guardrail
    #   configuration is detected.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailTopic AWS API Documentation
    #
    class GuardrailTopic < Struct.new(
      :name,
      :type,
      :action,
      :detected)
      SENSITIVE = []
      include Aws::Structure
    end

    # A behavior assessment of a topic policy.
    #
    # @!attribute [rw] topics
    #   The topics in the assessment.
    #   @return [Array<Types::GuardrailTopic>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailTopicPolicyAssessment AWS API Documentation
    #
    class GuardrailTopicPolicyAssessment < Struct.new(
      :topics)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Top level guardrail trace object. For more information, see
    # [ConverseTrace][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseTrace.html
    #
    # @!attribute [rw] model_output
    #   The output from the model.
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_assessment
    #   The input assessment.
    #   @return [Hash<String,Types::GuardrailAssessment>]
    #
    # @!attribute [rw] output_assessments
    #   the output assessments.
    #   @return [Hash<String,Array<Types::GuardrailAssessment>>]
    #
    # @!attribute [rw] action_reason
    #   Provides the reason for the action taken when harmful content is
    #   detected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailTraceAssessment AWS API Documentation
    #
    class GuardrailTraceAssessment < Struct.new(
      :model_output,
      :input_assessment,
      :output_assessments,
      :action_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details on the use of the guardrail.
    #
    # @!attribute [rw] topic_policy_units
    #   The topic policy units processed by the guardrail.
    #   @return [Integer]
    #
    # @!attribute [rw] content_policy_units
    #   The content policy units processed by the guardrail.
    #   @return [Integer]
    #
    # @!attribute [rw] word_policy_units
    #   The word policy units processed by the guardrail.
    #   @return [Integer]
    #
    # @!attribute [rw] sensitive_information_policy_units
    #   The sensitive information policy units processed by the guardrail.
    #   @return [Integer]
    #
    # @!attribute [rw] sensitive_information_policy_free_units
    #   The sensitive information policy free units processed by the
    #   guardrail.
    #   @return [Integer]
    #
    # @!attribute [rw] contextual_grounding_policy_units
    #   The contextual grounding policy units processed by the guardrail.
    #   @return [Integer]
    #
    # @!attribute [rw] content_policy_image_units
    #   The content policy image units processed by the guardrail.
    #   @return [Integer]
    #
    # @!attribute [rw] automated_reasoning_policy_units
    #   The number of text units processed by the automated reasoning
    #   policy.
    #   @return [Integer]
    #
    # @!attribute [rw] automated_reasoning_policies
    #   The number of automated reasoning policies that were processed
    #   during the guardrail evaluation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailUsage AWS API Documentation
    #
    class GuardrailUsage < Struct.new(
      :topic_policy_units,
      :content_policy_units,
      :word_policy_units,
      :sensitive_information_policy_units,
      :sensitive_information_policy_free_units,
      :contextual_grounding_policy_units,
      :content_policy_image_units,
      :automated_reasoning_policy_units,
      :automated_reasoning_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # The word policy assessment.
    #
    # @!attribute [rw] custom_words
    #   Custom words in the assessment.
    #   @return [Array<Types::GuardrailCustomWord>]
    #
    # @!attribute [rw] managed_word_lists
    #   Managed word lists in the assessment.
    #   @return [Array<Types::GuardrailManagedWord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailWordPolicyAssessment AWS API Documentation
    #
    class GuardrailWordPolicyAssessment < Struct.new(
      :custom_words,
      :managed_word_lists)
      SENSITIVE = []
      include Aws::Structure
    end

    # Image content for a message.
    #
    # @!attribute [rw] format
    #   The format of the image.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source for the image.
    #   @return [Types::ImageSource]
    #
    # @!attribute [rw] error
    #   Error information if the image block could not be processed or
    #   contains invalid data.
    #   @return [Types::ErrorBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ImageBlock AWS API Documentation
    #
    class ImageBlock < Struct.new(
      :format,
      :source,
      :error)
      SENSITIVE = [:source, :error]
      include Aws::Structure
    end

    # A streaming delta event that contains incremental image data during
    # streaming responses.
    #
    # @!attribute [rw] source
    #   The incremental image source data for this delta event.
    #   @return [Types::ImageSource]
    #
    # @!attribute [rw] error
    #   Error information if this image delta could not be processed.
    #   @return [Types::ErrorBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ImageBlockDelta AWS API Documentation
    #
    class ImageBlockDelta < Struct.new(
      :source,
      :error)
      SENSITIVE = [:source, :error]
      include Aws::Structure
    end

    # The initial event in a streaming image block that indicates the start
    # of image content.
    #
    # @!attribute [rw] format
    #   The format of the image data that will be streamed in subsequent
    #   delta events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ImageBlockStart AWS API Documentation
    #
    class ImageBlockStart < Struct.new(
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source for an image.
    #
    # @note ImageSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ImageSource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ImageSource corresponding to the set member.
    #
    # @!attribute [rw] bytes
    #   The raw image bytes for the image. If you use an AWS SDK, you don't
    #   need to encode the image bytes in base64.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The location of an image object in an Amazon S3 bucket. To see which
    #   models support S3 uploads, see [Supported models and features for
    #   Converse][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ImageSource AWS API Documentation
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

    # Base inference parameters to pass to a model in a call to
    # [Converse][1] or [ConverseStream][2]. For more information, see
    # [Inference parameters for foundation models][3].
    #
    # If you need to pass additional parameters that the model supports, use
    # the `additionalModelRequestFields` request field in the call to
    # `Converse` or `ConverseStream`. For more information, see [Model
    # parameters][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html
    # [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens to allow in the generated response. The
    #   default value is the maximum allowed value for the model that you
    #   are using. For more information, see [Inference parameters for
    #   foundation models][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   @return [Integer]
    #
    # @!attribute [rw] temperature
    #   The likelihood of the model selecting higher-probability options
    #   while generating a response. A lower value makes the model more
    #   likely to choose higher-probability options, while a higher value
    #   makes the model more likely to choose lower-probability options.
    #
    #   The default value is the default value for the model that you are
    #   using. For more information, see [Inference parameters for
    #   foundation models][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   The percentage of most-likely candidates that the model considers
    #   for the next token. For example, if you choose a value of 0.8 for
    #   `topP`, the model selects from the top 80% of the probability
    #   distribution of tokens that could be next in the sequence.
    #
    #   The default value is the default value for the model that you are
    #   using. For more information, see [Inference parameters for
    #   foundation models][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   @return [Float]
    #
    # @!attribute [rw] stop_sequences
    #   A list of stop sequences. A stop sequence is a sequence of
    #   characters that causes the model to stop generating the response.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InferenceConfiguration AWS API Documentation
    #
    class InferenceConfiguration < Struct.new(
      :max_tokens,
      :temperature,
      :top_p,
      :stop_sequences)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. For troubleshooting this error, see
    # [InternalFailure][1] in the Amazon Bedrock User Guide
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-internal-failure
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   The prompt and inference parameters in the format specified in the
    #   `contentType` in the header. You must provide the body in JSON
    #   format. To see the format and content of the request and response
    #   bodies for different models, refer to [Inference parameters][1]. For
    #   more information, see [Run inference][2] in the Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in the request. You must specify
    #   `application/json`.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The desired MIME type of the inference body in the response. The
    #   default value is `application/json`.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The unique identifier of the model to invoke to run inference.
    #
    #   The `modelId` to provide depends on the type of model or throughput
    #   that you use:
    #
    #   * If you use a base model, specify the model ID or its ARN. For a
    #     list of model IDs for base models, see [Amazon Bedrock base model
    #     IDs (on-demand throughput)][1] in the Amazon Bedrock User Guide.
    #
    #   * If you use an inference profile, specify the inference profile ID
    #     or its ARN. For a list of inference profile IDs, see [Supported
    #     Regions and models for cross-region inference][2] in the Amazon
    #     Bedrock User Guide.
    #
    #   * If you use a provisioned model, specify the ARN of the Provisioned
    #     Throughput. For more information, see [Run inference using a
    #     Provisioned Throughput][3] in the Amazon Bedrock User Guide.
    #
    #   * If you use a custom model, specify the ARN of the custom model
    #     deployment (for on-demand inference) or the ARN of your
    #     provisioned model (for Provisioned Throughput). For more
    #     information, see [Use a custom model in Amazon Bedrock][4] in the
    #     Amazon Bedrock User Guide.
    #
    #   * If you use an [imported model][5], specify the ARN of the imported
    #     model. You can get the model ARN from a successful call to
    #     [CreateModelImportJob][6] or from the Imported models page in the
    #     Amazon Bedrock console.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [4]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #   [5]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    #   [6]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html
    #   @return [String]
    #
    # @!attribute [rw] trace
    #   Specifies whether to enable or disable the Bedrock trace. If
    #   enabled, you can see the full Bedrock trace.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_identifier
    #   The unique identifier of the guardrail that you want to use. If you
    #   don't provide a value, no guardrail is applied to the invocation.
    #
    #   An error will be thrown in the following situations.
    #
    #   * You don't provide a guardrail identifier but you specify the
    #     `amazon-bedrock-guardrailConfig` field in the request body.
    #
    #   * You enable the guardrail but the `contentType` isn't
    #     `application/json`.
    #
    #   * You provide a guardrail identifier, but `guardrailVersion` isn't
    #     specified.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_version
    #   The version number for the guardrail. The value can also be `DRAFT`.
    #   @return [String]
    #
    # @!attribute [rw] performance_config_latency
    #   Model performance settings for the request.
    #   @return [String]
    #
    # @!attribute [rw] service_tier
    #   Specifies the processing tier type used for serving the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelRequest AWS API Documentation
    #
    class InvokeModelRequest < Struct.new(
      :body,
      :content_type,
      :accept,
      :model_id,
      :trace,
      :guardrail_identifier,
      :guardrail_version,
      :performance_config_latency,
      :service_tier)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   Inference response from the model in the format specified in the
    #   `contentType` header. To see the format and content of the request
    #   and response bodies for different models, refer to [Inference
    #   parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the inference result.
    #   @return [String]
    #
    # @!attribute [rw] performance_config_latency
    #   Model performance settings for the request.
    #   @return [String]
    #
    # @!attribute [rw] service_tier
    #   Specifies the processing tier type used for serving the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelResponse AWS API Documentation
    #
    class InvokeModelResponse < Struct.new(
      :body,
      :content_type,
      :performance_config_latency,
      :service_tier)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # The body of an `InvokeModel` API request for token counting. This
    # structure mirrors the input format for the `InvokeModel` operation,
    # allowing you to count tokens for raw text inference requests.
    #
    # @!attribute [rw] body
    #   The request body to count tokens for, formatted according to the
    #   model's expected input format. To learn about the input format for
    #   different models, see [Model inference parameters and responses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelTokensRequest AWS API Documentation
    #
    class InvokeModelTokensRequest < Struct.new(
      :body)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # @!attribute [rw] model_id
    #   The model ID or ARN of the model ID to use. Currently, only
    #   `amazon.nova-sonic-v1:0` is supported.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The prompt and inference parameters in the format specified in the
    #   `BidirectionalInputPayloadPart` in the header. You must provide the
    #   body in JSON format. To see the format and content of the request
    #   and response bodies for different models, refer to [Inference
    #   parameters][1]. For more information, see [Run inference][2] in the
    #   Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html
    #   @return [Types::InvokeModelWithBidirectionalStreamInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelWithBidirectionalStreamRequest AWS API Documentation
    #
    class InvokeModelWithBidirectionalStreamRequest < Struct.new(
      :model_id,
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   Streaming response from the model in the format specified by the
    #   `BidirectionalOutputPayloadPart` header.
    #   @return [Types::InvokeModelWithBidirectionalStreamOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelWithBidirectionalStreamResponse AWS API Documentation
    #
    class InvokeModelWithBidirectionalStreamResponse < Struct.new(
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   The prompt and inference parameters in the format specified in the
    #   `contentType` in the header. You must provide the body in JSON
    #   format. To see the format and content of the request and response
    #   bodies for different models, refer to [Inference parameters][1]. For
    #   more information, see [Run inference][2] in the Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in the request. You must specify
    #   `application/json`.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The desired MIME type of the inference body in the response. The
    #   default value is `application/json`.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The unique identifier of the model to invoke to run inference.
    #
    #   The `modelId` to provide depends on the type of model or throughput
    #   that you use:
    #
    #   * If you use a base model, specify the model ID or its ARN. For a
    #     list of model IDs for base models, see [Amazon Bedrock base model
    #     IDs (on-demand throughput)][1] in the Amazon Bedrock User Guide.
    #
    #   * If you use an inference profile, specify the inference profile ID
    #     or its ARN. For a list of inference profile IDs, see [Supported
    #     Regions and models for cross-region inference][2] in the Amazon
    #     Bedrock User Guide.
    #
    #   * If you use a provisioned model, specify the ARN of the Provisioned
    #     Throughput. For more information, see [Run inference using a
    #     Provisioned Throughput][3] in the Amazon Bedrock User Guide.
    #
    #   * If you use a custom model, specify the ARN of the custom model
    #     deployment (for on-demand inference) or the ARN of your
    #     provisioned model (for Provisioned Throughput). For more
    #     information, see [Use a custom model in Amazon Bedrock][4] in the
    #     Amazon Bedrock User Guide.
    #
    #   * If you use an [imported model][5], specify the ARN of the imported
    #     model. You can get the model ARN from a successful call to
    #     [CreateModelImportJob][6] or from the Imported models page in the
    #     Amazon Bedrock console.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [4]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #   [5]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    #   [6]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html
    #   @return [String]
    #
    # @!attribute [rw] trace
    #   Specifies whether to enable or disable the Bedrock trace. If
    #   enabled, you can see the full Bedrock trace.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_identifier
    #   The unique identifier of the guardrail that you want to use. If you
    #   don't provide a value, no guardrail is applied to the invocation.
    #
    #   An error is thrown in the following situations.
    #
    #   * You don't provide a guardrail identifier but you specify the
    #     `amazon-bedrock-guardrailConfig` field in the request body.
    #
    #   * You enable the guardrail but the `contentType` isn't
    #     `application/json`.
    #
    #   * You provide a guardrail identifier, but `guardrailVersion` isn't
    #     specified.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_version
    #   The version number for the guardrail. The value can also be `DRAFT`.
    #   @return [String]
    #
    # @!attribute [rw] performance_config_latency
    #   Model performance settings for the request.
    #   @return [String]
    #
    # @!attribute [rw] service_tier
    #   Specifies the processing tier type used for serving the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelWithResponseStreamRequest AWS API Documentation
    #
    class InvokeModelWithResponseStreamRequest < Struct.new(
      :body,
      :content_type,
      :accept,
      :model_id,
      :trace,
      :guardrail_identifier,
      :guardrail_version,
      :performance_config_latency,
      :service_tier)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   Inference response from the model in the format specified by the
    #   `contentType` header. To see the format and content of this field
    #   for different models, refer to [Inference parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   @return [Types::ResponseStream]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the inference result.
    #   @return [String]
    #
    # @!attribute [rw] performance_config_latency
    #   Model performance settings for the request.
    #   @return [String]
    #
    # @!attribute [rw] service_tier
    #   Specifies the processing tier type used for serving the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelWithResponseStreamResponse AWS API Documentation
    #
    class InvokeModelWithResponseStreamResponse < Struct.new(
      :body,
      :content_type,
      :performance_config_latency,
      :service_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] submit_time_after
    #   Include invocations submitted after this time.
    #   @return [Time]
    #
    # @!attribute [rw] submit_time_before
    #   Include invocations submitted before this time.
    #   @return [Time]
    #
    # @!attribute [rw] status_equals
    #   Filter invocations by status.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of invocations to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   How to sort the response.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sorting order for the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ListAsyncInvokesRequest AWS API Documentation
    #
    class ListAsyncInvokesRequest < Struct.new(
      :submit_time_after,
      :submit_time_before,
      :status_equals,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] async_invoke_summaries
    #   A list of invocation summaries.
    #   @return [Array<Types::AsyncInvokeSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ListAsyncInvokesResponse AWS API Documentation
    #
    class ListAsyncInvokesResponse < Struct.new(
      :next_token,
      :async_invoke_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # A message input, or returned from, a call to [Converse][1] or
    # [ConverseStream][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html
    #
    # @!attribute [rw] role
    #   The role that the message plays in the message.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The message content. Note the following restrictions:
    #
    #   * You can include up to 20 images. Each image's size, height, and
    #     width must be no more than 3.75 MB, 8000 px, and 8000 px,
    #     respectively.
    #
    #   * You can include up to five documents. Each document's size must
    #     be no more than 4.5 MB.
    #
    #   * If you include a `ContentBlock` with a `document` field in the
    #     array, you must also include a `ContentBlock` with a `text` field.
    #
    #   * You can only include images and documents if the `role` is `user`.
    #   @return [Array<Types::ContentBlock>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/Message AWS API Documentation
    #
    class Message < Struct.new(
      :role,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The start of a message.
    #
    # @!attribute [rw] role
    #   The role for the message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/MessageStartEvent AWS API Documentation
    #
    class MessageStartEvent < Struct.new(
      :role,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The stop event for a message.
    #
    # @!attribute [rw] stop_reason
    #   The reason why the model stopped generating output.
    #   @return [String]
    #
    # @!attribute [rw] additional_model_response_fields
    #   The additional model response fields.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/MessageStopEvent AWS API Documentation
    #
    class MessageStopEvent < Struct.new(
      :stop_reason,
      :additional_model_response_fields,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed due to an error while processing the model.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] original_status_code
    #   The original status code.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_name
    #   The resource name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ModelErrorException AWS API Documentation
    #
    class ModelErrorException < Struct.new(
      :message,
      :original_status_code,
      :resource_name)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ModelNotReadyException AWS API Documentation
    #
    class ModelNotReadyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred while streaming the response. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] original_status_code
    #   The original status code.
    #   @return [Integer]
    #
    # @!attribute [rw] original_message
    #   The original message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ModelStreamErrorException AWS API Documentation
    #
    class ModelStreamErrorException < Struct.new(
      :message,
      :original_status_code,
      :original_message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request took too long to process. Processing time exceeded the
    # model timeout length.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ModelTimeoutException AWS API Documentation
    #
    class ModelTimeoutException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Payload content included in the response.
    #
    # @!attribute [rw] bytes
    #   Base64-encoded bytes of payload data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/PayloadPart AWS API Documentation
    #
    class PayloadPart < Struct.new(
      :bytes,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/PerformanceConfiguration AWS API Documentation
    #
    class PerformanceConfiguration < Struct.new(
      :latency)
      SENSITIVE = []
      include Aws::Structure
    end

    # A prompt router trace.
    #
    # @!attribute [rw] invoked_model_id
    #   The ID of the invoked model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/PromptRouterTrace AWS API Documentation
    #
    class PromptRouterTrace < Struct.new(
      :invoked_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a map of variables in a prompt from Prompt management to an
    # object containing the values to fill in for them when running model
    # invocation. For more information, see [How Prompt management
    # works][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-how.html
    #
    # @note PromptVariableValues is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] text
    #   The text value that the variable maps to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/PromptVariableValues AWS API Documentation
    #
    class PromptVariableValues < Struct.new(
      :text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < PromptVariableValues; end
      class Unknown < PromptVariableValues; end
    end

    # Contains content regarding the reasoning that is carried out by the
    # model with respect to the content in the content block. Reasoning
    # refers to a Chain of Thought (CoT) that the model generates to enhance
    # the accuracy of its final response.
    #
    # @note ReasoningContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ReasoningContentBlock is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ReasoningContentBlock corresponding to the set member.
    #
    # @!attribute [rw] reasoning_text
    #   The reasoning that the model used to return the output.
    #   @return [Types::ReasoningTextBlock]
    #
    # @!attribute [rw] redacted_content
    #   The content in the reasoning that was encrypted by the model
    #   provider for safety reasons. The encryption doesn't affect the
    #   quality of responses.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ReasoningContentBlock AWS API Documentation
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

    # Contains content regarding the reasoning that is carried out by the
    # model with respect to the content in the content block. Reasoning
    # refers to a Chain of Thought (CoT) that the model generates to enhance
    # the accuracy of its final response.
    #
    # @note ReasoningContentBlockDelta is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ReasoningContentBlockDelta corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The reasoning that the model used to return the output.
    #   @return [String]
    #
    # @!attribute [rw] redacted_content
    #   The content in the reasoning that was encrypted by the model
    #   provider for safety reasons. The encryption doesn't affect the
    #   quality of responses.
    #   @return [String]
    #
    # @!attribute [rw] signature
    #   A token that verifies that the reasoning text was generated by the
    #   model. If you pass a reasoning block back to the API in a multi-turn
    #   conversation, include the text and its signature unmodified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ReasoningContentBlockDelta AWS API Documentation
    #
    class ReasoningContentBlockDelta < Struct.new(
      :text,
      :redacted_content,
      :signature,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < ReasoningContentBlockDelta; end
      class RedactedContent < ReasoningContentBlockDelta; end
      class Signature < ReasoningContentBlockDelta; end
      class Unknown < ReasoningContentBlockDelta; end
    end

    # Contains the reasoning that the model used to return the output.
    #
    # @!attribute [rw] text
    #   The reasoning that the model used to return the output.
    #   @return [String]
    #
    # @!attribute [rw] signature
    #   A token that verifies that the reasoning text was generated by the
    #   model. If you pass a reasoning block back to the API in a multi-turn
    #   conversation, include the text and its signature unmodified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ReasoningTextBlock AWS API Documentation
    #
    class ReasoningTextBlock < Struct.new(
      :text,
      :signature)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource ARN was not found. For troubleshooting this
    # error, see [ResourceNotFound][1] in the Amazon Bedrock User Guide
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-resource-not-found
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A storage location in an Amazon S3 bucket.
    #
    # @!attribute [rw] uri
    #   An object URI starting with `s3://`.
    #   @return [String]
    #
    # @!attribute [rw] bucket_owner
    #   If the bucket belongs to another AWS account, specify that
    #   account's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :uri,
      :bucket_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # A search result block that enables natural citations with proper
    # source attribution for retrieved content.
    #
    # <note markdown="1"> This field is only supported by Anthropic Claude Opus 4.1, Opus 4,
    # Sonnet 4.5, Sonnet 4, Sonnet 3.7, and 3.5 Haiku models.
    #
    #  </note>
    #
    # @!attribute [rw] source
    #   The source URL or identifier for the content.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A descriptive title for the search result.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   An array of search result content block.
    #   @return [Array<Types::SearchResultContentBlock>]
    #
    # @!attribute [rw] citations
    #   Configuration setting for citations
    #   @return [Types::CitationsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/SearchResultBlock AWS API Documentation
    #
    class SearchResultBlock < Struct.new(
      :source,
      :title,
      :content,
      :citations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A block within a search result that contains the content.
    #
    # @!attribute [rw] text
    #   The actual text content
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/SearchResultContentBlock AWS API Documentation
    #
    class SearchResultContentBlock < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a search result location within the content array, providing
    # positioning information for cited content using search result index
    # and block positions.
    #
    # @!attribute [rw] search_result_index
    #   The index of the search result content block where the cited content
    #   is found.
    #   @return [Integer]
    #
    # @!attribute [rw] start
    #   The starting position in the content array where the cited content
    #   begins.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   The ending position in the content array where the cited content
    #   ends.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/SearchResultLocation AWS API Documentation
    #
    class SearchResultLocation < Struct.new(
      :search_result_index,
      :start,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request exceeds the service quota for your account. You can view
    # your quotas at [Viewing service quotas][1]. You can resubmit your
    # request later.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/gs-request-quota.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the processing tier configuration used for serving the
    # request.
    #
    # @!attribute [rw] type
    #   Specifies the processing tier type used for serving the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ServiceTier AWS API Documentation
    #
    class ServiceTier < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service isn't currently available. For troubleshooting this
    # error, see [ServiceUnavailable][1] in the Amazon Bedrock User Guide
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-service-unavailable
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The model must request a specific tool. For example, `{"tool" :
    # {"name" : "Your tool name"}}`. For more information, see [Call a tool
    # with the Converse API][1] in the Amazon Bedrock User Guide
    #
    # <note markdown="1"> This field is only supported by Anthropic Claude 3 models.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @!attribute [rw] name
    #   The name of the tool that the model must request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/SpecificToolChoice AWS API Documentation
    #
    class SpecificToolChoice < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_request_token
    #   Specify idempotency token to ensure that requests are not
    #   duplicated.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model to invoke.
    #   @return [String]
    #
    # @!attribute [rw] model_input
    #   Input to send to the model.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] output_data_config
    #   Where to store the output.
    #   @return [Types::AsyncInvokeOutputDataConfig]
    #
    # @!attribute [rw] tags
    #   Tags to apply to the invocation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/StartAsyncInvokeRequest AWS API Documentation
    #
    class StartAsyncInvokeRequest < Struct.new(
      :client_request_token,
      :model_id,
      :model_input,
      :output_data_config,
      :tags)
      SENSITIVE = [:model_input]
      include Aws::Structure
    end

    # @!attribute [rw] invocation_arn
    #   The ARN of the invocation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/StartAsyncInvokeResponse AWS API Documentation
    #
    class StartAsyncInvokeResponse < Struct.new(
      :invocation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for instructions to provide the model for how
    # to handle input. To learn more, see [Using the Converse API][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-call.html
    #
    # @note SystemContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] text
    #   A system prompt for the model.
    #   @return [String]
    #
    # @!attribute [rw] guard_content
    #   A content block to assess with the guardrail. Use with the
    #   [Converse][1] or [ConverseStream][2] API operations.
    #
    #   For more information, see *Use a guardrail with the Converse API* in
    #   the *Amazon Bedrock User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html
    #   @return [Types::GuardrailConverseContentBlock]
    #
    # @!attribute [rw] cache_point
    #   CachePoint to include in the system prompt.
    #   @return [Types::CachePointBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/SystemContentBlock AWS API Documentation
    #
    class SystemContentBlock < Struct.new(
      :text,
      :guard_content,
      :cache_point,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < SystemContentBlock; end
      class GuardContent < SystemContentBlock; end
      class CachePoint < SystemContentBlock; end
      class Unknown < SystemContentBlock; end
    end

    # Specifies a system-defined tool for the model to use. *System-defined
    # tools* are tools that are created and provided by the model provider.
    #
    # @!attribute [rw] name
    #   The name of the system-defined tool that you want to call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/SystemTool AWS API Documentation
    #
    class SystemTool < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag.
    #
    # @!attribute [rw] key
    #   The tag's key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag's value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request was denied due to exceeding the account quotas for
    # *Amazon Bedrock*. For troubleshooting this error, see
    # [ThrottlingException][1] in the Amazon Bedrock User Guide
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-throttling-exception
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tokens used in a message API inference call.
    #
    # @!attribute [rw] input_tokens
    #   The number of tokens sent in the request to the model.
    #   @return [Integer]
    #
    # @!attribute [rw] output_tokens
    #   The number of tokens that the model generated for the request.
    #   @return [Integer]
    #
    # @!attribute [rw] total_tokens
    #   The total of input tokens and tokens generated by the model.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_read_input_tokens
    #   The number of input tokens read from the cache for the request.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_write_input_tokens
    #   The number of input tokens written to the cache for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/TokenUsage AWS API Documentation
    #
    class TokenUsage < Struct.new(
      :input_tokens,
      :output_tokens,
      :total_tokens,
      :cache_read_input_tokens,
      :cache_write_input_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a tool that you can use with the Converse API. For
    # more information, see [Call a tool with the Converse API][1] in the
    # Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @note Tool is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] tool_spec
    #   The specfication for the tool.
    #   @return [Types::ToolSpecification]
    #
    # @!attribute [rw] system_tool
    #   Specifies the system-defined tool that you want use.
    #   @return [Types::SystemTool]
    #
    # @!attribute [rw] cache_point
    #   CachePoint to include in the tool configuration.
    #   @return [Types::CachePointBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/Tool AWS API Documentation
    #
    class Tool < Struct.new(
      :tool_spec,
      :system_tool,
      :cache_point,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ToolSpec < Tool; end
      class SystemTool < Tool; end
      class CachePoint < Tool; end
      class Unknown < Tool; end
    end

    # Determines which tools the model should request in a call to
    # `Converse` or `ConverseStream`. For more information, see [Call a tool
    # with the Converse API][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @note ToolChoice is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] auto
    #   (Default). The Model automatically decides if a tool should be
    #   called or whether to generate text instead.
    #   @return [Types::AutoToolChoice]
    #
    # @!attribute [rw] any
    #   The model must request at least one tool (no text is generated).
    #   @return [Types::AnyToolChoice]
    #
    # @!attribute [rw] tool
    #   The Model must request the specified tool. Only supported by
    #   Anthropic Claude 3 and Amazon Nova models.
    #   @return [Types::SpecificToolChoice]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolChoice AWS API Documentation
    #
    class ToolChoice < Struct.new(
      :auto,
      :any,
      :tool,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Auto < ToolChoice; end
      class Any < ToolChoice; end
      class Tool < ToolChoice; end
      class Unknown < ToolChoice; end
    end

    # Configuration information for the tools that you pass to a model. For
    # more information, see [Tool use (function calling)][1] in the Amazon
    # Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @!attribute [rw] tools
    #   An array of tools that you want to pass to a model.
    #   @return [Array<Types::Tool>]
    #
    # @!attribute [rw] tool_choice
    #   If supported by model, forces the model to request a tool.
    #   @return [Types::ToolChoice]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolConfiguration AWS API Documentation
    #
    class ToolConfiguration < Struct.new(
      :tools,
      :tool_choice)
      SENSITIVE = []
      include Aws::Structure
    end

    # The schema for the tool. The top level schema type must be `object`.
    # For more information, see [Call a tool with the Converse API][1] in
    # the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @note ToolInputSchema is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] json
    #   The JSON schema for the tool. For more information, see [JSON Schema
    #   Reference][1].
    #
    #
    #
    #   [1]: https://json-schema.org/understanding-json-schema/reference
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolInputSchema AWS API Documentation
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

    # A tool result block that contains the results for a tool request that
    # the model previously made. For more information, see [Call a tool with
    # the Converse API][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @!attribute [rw] tool_use_id
    #   The ID of the tool request that this is the result for.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content for tool result content block.
    #   @return [Array<Types::ToolResultContentBlock>]
    #
    # @!attribute [rw] status
    #   The status for the tool result content block.
    #
    #   <note markdown="1"> This field is only supported by Amazon Nova and Anthropic Claude 3
    #   and 4 models.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type for the tool result content block.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolResultBlock AWS API Documentation
    #
    class ToolResultBlock < Struct.new(
      :tool_use_id,
      :content,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains incremental updates to tool results information during
    # streaming responses. This allows clients to build up tool results data
    # progressively as the response is generated.
    #
    # @note ToolResultBlockDelta is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ToolResultBlockDelta corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The reasoning the model used to return the output.
    #   @return [String]
    #
    # @!attribute [rw] json
    #   The JSON schema for the tool result content block. see [JSON Schema
    #   Reference][1].
    #
    #
    #
    #   [1]: https://json-schema.org/understanding-json-schema/reference
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolResultBlockDelta AWS API Documentation
    #
    class ToolResultBlockDelta < Struct.new(
      :text,
      :json,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < ToolResultBlockDelta; end
      class Json < ToolResultBlockDelta; end
      class Unknown < ToolResultBlockDelta; end
    end

    # The start of a tool result block. For more information, see [Call a
    # tool with the Converse API][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @!attribute [rw] tool_use_id
    #   The ID of the tool that was used to generate this tool result block.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type for the tool that was used to generate this tool result
    #   block.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the tool result block.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolResultBlockStart AWS API Documentation
    #
    class ToolResultBlockStart < Struct.new(
      :tool_use_id,
      :type,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tool result content block. For more information, see [Call a tool
    # with the Converse API][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @note ToolResultContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ToolResultContentBlock is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ToolResultContentBlock corresponding to the set member.
    #
    # @!attribute [rw] json
    #   A tool result that is JSON format data.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] text
    #   A tool result that is text.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   A tool result that is an image.
    #
    #   <note markdown="1"> This field is only supported by Amazon Nova and Anthropic Claude 3
    #   and 4 models.
    #
    #    </note>
    #   @return [Types::ImageBlock]
    #
    # @!attribute [rw] document
    #   A tool result that is a document.
    #   @return [Types::DocumentBlock]
    #
    # @!attribute [rw] video
    #   A tool result that is video.
    #   @return [Types::VideoBlock]
    #
    # @!attribute [rw] search_result
    #   A tool result that is a search result.
    #   @return [Types::SearchResultBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolResultContentBlock AWS API Documentation
    #
    class ToolResultContentBlock < Struct.new(
      :json,
      :text,
      :image,
      :document,
      :video,
      :search_result,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Json < ToolResultContentBlock; end
      class Text < ToolResultContentBlock; end
      class Image < ToolResultContentBlock; end
      class Document < ToolResultContentBlock; end
      class Video < ToolResultContentBlock; end
      class SearchResult < ToolResultContentBlock; end
      class Unknown < ToolResultContentBlock; end
    end

    # The specification for the tool. For more information, see [Call a tool
    # with the Converse API][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @!attribute [rw] name
    #   The name for the tool.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the tool.
    #   @return [String]
    #
    # @!attribute [rw] input_schema
    #   The input schema for the tool in JSON format.
    #   @return [Types::ToolInputSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolSpecification AWS API Documentation
    #
    class ToolSpecification < Struct.new(
      :name,
      :description,
      :input_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tool use content block. Contains information about a tool that the
    # model is requesting be run., The model uses the result from the tool
    # to generate a response. For more information, see [Call a tool with
    # the Converse API][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @!attribute [rw] tool_use_id
    #   The ID for the tool request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the tool that the model wants to use.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The input to pass to the tool.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] type
    #   The type for the tool request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolUseBlock AWS API Documentation
    #
    class ToolUseBlock < Struct.new(
      :tool_use_id,
      :name,
      :input,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The delta for a tool use block.
    #
    # @!attribute [rw] input
    #   The input for a requested tool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolUseBlockDelta AWS API Documentation
    #
    class ToolUseBlockDelta < Struct.new(
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # The start of a tool use block. For more information, see [Call a tool
    # with the Converse API][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @!attribute [rw] tool_use_id
    #   The ID for the tool request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the tool that the model is requesting to use.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type for the tool request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolUseBlockStart AWS API Documentation
    #
    class ToolUseBlockStart < Struct.new(
      :tool_use_id,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by *Amazon
    # Bedrock*. For troubleshooting this error, see [ValidationError][1] in
    # the Amazon Bedrock User Guide
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-validation-error
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A video block.
    #
    # @!attribute [rw] format
    #   The block's format.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The block's source.
    #   @return [Types::VideoSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/VideoBlock AWS API Documentation
    #
    class VideoBlock < Struct.new(
      :format,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # A video source. You can upload a smaller video as a base64-encoded
    # string as long as the encoded file is less than 25MB. You can also
    # transfer videos up to 1GB in size from an S3 bucket.
    #
    # @note VideoSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note VideoSource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VideoSource corresponding to the set member.
    #
    # @!attribute [rw] bytes
    #   Video content encoded in base64.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The location of a video object in an Amazon S3 bucket. To see which
    #   models support S3 uploads, see [Supported models and features for
    #   Converse][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/VideoSource AWS API Documentation
    #
    class VideoSource < Struct.new(
      :bytes,
      :s3_location,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Bytes < VideoSource; end
      class S3Location < VideoSource; end
      class Unknown < VideoSource; end
    end

    # Provides the URL and domain information for the website that was cited
    # when performing a web search.
    #
    # @!attribute [rw] url
    #   The URL that was cited when performing a web search.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain that was cited when performing a web search.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/WebLocation AWS API Documentation
    #
    class WebLocation < Struct.new(
      :url,
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # The messages output stream
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseStreamOutput AWS API Documentation
    #
    class ConverseStreamOutput < Enumerator

      def event_types
        [
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
          :service_unavailable_exception
        ]
      end

    end

    # Payload content, the speech chunk, for the bidirectional input of the
    # invocation step.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelWithBidirectionalStreamInput AWS API Documentation
    #
    class InvokeModelWithBidirectionalStreamInput < Enumerator

      def event_types
        [
          :chunk
        ]
      end

    end

    # Output from the bidirectional stream that was used for model
    # invocation.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelWithBidirectionalStreamOutput AWS API Documentation
    #
    class InvokeModelWithBidirectionalStreamOutput < Enumerator

      def event_types
        [
          :chunk,
          :internal_server_exception,
          :model_stream_error_exception,
          :validation_exception,
          :throttling_exception,
          :model_timeout_exception,
          :service_unavailable_exception
        ]
      end

    end

    # Definition of content in the response stream.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ResponseStream AWS API Documentation
    #
    class ResponseStream < Enumerator

      def event_types
        [
          :chunk,
          :internal_server_exception,
          :model_stream_error_exception,
          :validation_exception,
          :throttling_exception,
          :model_timeout_exception,
          :service_unavailable_exception
        ]
      end

    end

  end
end

