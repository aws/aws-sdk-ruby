# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockRuntime
  module Types

    # The request is denied because of missing access permissions.
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
    # example, `\{"any" : \{\}\}`.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/AnyToolChoice AWS API Documentation
    #
    class AnyToolChoice < Aws::EmptyStructure; end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ApplyGuardrailRequest AWS API Documentation
    #
    class ApplyGuardrailRequest < Struct.new(
      :guardrail_identifier,
      :guardrail_version,
      :source,
      :content)
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
    # @!attribute [rw] outputs
    #   The output details in the response from the guardrail.
    #   @return [Array<Types::GuardrailOutputContent>]
    #
    # @!attribute [rw] assessments
    #   The assessment details in the response from the guardrail.
    #   @return [Array<Types::GuardrailAssessment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ApplyGuardrailResponse AWS API Documentation
    #
    class ApplyGuardrailResponse < Struct.new(
      :usage,
      :action,
      :outputs,
      :assessments)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Model automatically decides if a tool should be called or whether
    # to generate text instead. For example, `\{"auto" : \{\}\}`.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/AutoToolChoice AWS API Documentation
    #
    class AutoToolChoice < Aws::EmptyStructure; end

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
    #   the *Amazon Bedrock User Guide*.      </p>
    #   @return [Types::GuardrailConverseContentBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ContentBlock AWS API Documentation
    #
    class ContentBlock < Struct.new(
      :text,
      :image,
      :document,
      :tool_use,
      :tool_result,
      :guard_content,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < ContentBlock; end
      class Image < ContentBlock; end
      class Document < ContentBlock; end
      class ToolUse < ContentBlock; end
      class ToolResult < ContentBlock; end
      class GuardContent < ContentBlock; end
      class Unknown < ContentBlock; end
    end

    # A bock of content in a streaming response.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ContentBlockDelta AWS API Documentation
    #
    class ContentBlockDelta < Struct.new(
      :text,
      :tool_use,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < ContentBlockDelta; end
      class ToolUse < ContentBlockDelta; end
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ContentBlockStart AWS API Documentation
    #
    class ContentBlockStart < Struct.new(
      :tool_use,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ToolUse < ContentBlockStart; end
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
    #   The identifier for the model that you want to call.
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
    #   * If you use a custom model, first purchase Provisioned Throughput
    #     for it. Then specify the ARN of the resulting provisioned model.
    #     For more information, see [Use a custom model in Amazon
    #     Bedrock][4] in the Amazon Bedrock User Guide.
    #
    #   The Converse API doesn't support [imported models][5].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [4]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #   [5]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   The messages that you want to send to the model.
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] system
    #   A system prompt to pass to the model.
    #   @return [Array<Types::SystemContentBlock>]
    #
    # @!attribute [rw] inference_config
    #   Inference parameters to pass to the model. `Converse` supports a
    #   base set of inference parameters. If you need to pass additional
    #   parameters that the model supports, use the
    #   `additionalModelRequestFields` request field.
    #   @return [Types::InferenceConfiguration]
    #
    # @!attribute [rw] tool_config
    #   Configuration information for the tools that the model can use when
    #   generating a response.
    #
    #   <note markdown="1"> This field is only supported by Anthropic Claude 3, Cohere Command
    #   R, Cohere Command R+, and Mistral Large models.
    #
    #    </note>
    #   @return [Types::ToolConfiguration]
    #
    # @!attribute [rw] guardrail_config
    #   Configuration information for a guardrail that you want to use in
    #   the request.
    #   @return [Types::GuardrailConfiguration]
    #
    # @!attribute [rw] additional_model_request_fields
    #   Additional inference parameters that the model supports, beyond the
    #   base set of inference parameters that `Converse` supports in the
    #   `inferenceConfig` field. For more information, see [Model
    #   parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] additional_model_response_field_paths
    #   Additional model parameters field paths to return in the response.
    #   `Converse` returns the requested fields as a JSON Pointer object in
    #   the `additionalModelResponseFields` field. The following is example
    #   JSON for `additionalModelResponseFieldPaths`.
    #
    #   `[ "/stop_sequence" ]`
    #
    #   For information about the JSON Pointer syntax, see the [Internet
    #   Engineering Task Force (IETF)][1] documentation.
    #
    #   `Converse` rejects an empty JSON Pointer or incorrectly structured
    #   JSON Pointer with a `400` error code. if the JSON Pointer is valid,
    #   but the requested field is not in the model response, it is ignored
    #   by `Converse`.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc6901
    #   @return [Array<String>]
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
      :additional_model_response_field_paths)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseResponse AWS API Documentation
    #
    class ConverseResponse < Struct.new(
      :output,
      :stop_reason,
      :usage,
      :metrics,
      :additional_model_response_fields,
      :trace)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseStreamMetadataEvent AWS API Documentation
    #
    class ConverseStreamMetadataEvent < Struct.new(
      :usage,
      :metrics,
      :trace,
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
    #   The ID for the model.
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
    #   * If you use a custom model, first purchase Provisioned Throughput
    #     for it. Then specify the ARN of the resulting provisioned model.
    #     For more information, see [Use a custom model in Amazon
    #     Bedrock][4] in the Amazon Bedrock User Guide.
    #
    #   The Converse API doesn't support [imported models][5].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [4]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #   [5]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   The messages that you want to send to the model.
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] system
    #   A system prompt to send to the model.
    #   @return [Array<Types::SystemContentBlock>]
    #
    # @!attribute [rw] inference_config
    #   Inference parameters to pass to the model. `ConverseStream` supports
    #   a base set of inference parameters. If you need to pass additional
    #   parameters that the model supports, use the
    #   `additionalModelRequestFields` request field.
    #   @return [Types::InferenceConfiguration]
    #
    # @!attribute [rw] tool_config
    #   Configuration information for the tools that the model can use when
    #   generating a response.
    #
    #   <note markdown="1"> This field is only supported by Anthropic Claude 3 models.
    #
    #    </note>
    #   @return [Types::ToolConfiguration]
    #
    # @!attribute [rw] guardrail_config
    #   Configuration information for a guardrail that you want to use in
    #   the request.
    #   @return [Types::GuardrailStreamConfiguration]
    #
    # @!attribute [rw] additional_model_request_fields
    #   Additional inference parameters that the model supports, beyond the
    #   base set of inference parameters that `ConverseStream` supports in
    #   the `inferenceConfig` field.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] additional_model_response_field_paths
    #   Additional model parameters field paths to return in the response.
    #   `ConverseStream` returns the requested fields as a JSON Pointer
    #   object in the `additionalModelResponseFields` field. The following
    #   is example JSON for `additionalModelResponseFieldPaths`.
    #
    #   `[ "/stop_sequence" ]`
    #
    #   For information about the JSON Pointer syntax, see the [Internet
    #   Engineering Task Force (IETF)][1] documentation.
    #
    #   `ConverseStream` rejects an empty JSON Pointer or incorrectly
    #   structured JSON Pointer with a `400` error code. if the JSON Pointer
    #   is valid, but the requested field is not in the model response, it
    #   is ignored by `ConverseStream`.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc6901
    #   @return [Array<String>]
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
      :additional_model_response_field_paths)
      SENSITIVE = []
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

    # The trace object in a response from [ConverseStream][1]. Currently,
    # you can only trace guardrails.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html
    #
    # @!attribute [rw] guardrail
    #   The guardrail trace object.
    #   @return [Types::GuardrailTraceAssessment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseStreamTrace AWS API Documentation
    #
    class ConverseStreamTrace < Struct.new(
      :guardrail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The trace object in a response from [Converse][1]. Currently, you can
    # only trace guardrails.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html
    #
    # @!attribute [rw] guardrail
    #   The guardrail trace object.
    #   @return [Types::GuardrailTraceAssessment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseTrace AWS API Documentation
    #
    class ConverseTrace < Struct.new(
      :guardrail)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/DocumentBlock AWS API Documentation
    #
    class DocumentBlock < Struct.new(
      :format,
      :name,
      :source)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/DocumentSource AWS API Documentation
    #
    class DocumentSource < Struct.new(
      :bytes,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Bytes < DocumentSource; end
      class Unknown < DocumentSource; end
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailAssessment AWS API Documentation
    #
    class GuardrailAssessment < Struct.new(
      :topic_policy,
      :content_policy,
      :word_policy,
      :sensitive_information_policy,
      :contextual_grounding_policy)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailContentBlock AWS API Documentation
    #
    class GuardrailContentBlock < Struct.new(
      :text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < GuardrailContentBlock; end
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
    # @!attribute [rw] action
    #   The guardrail action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailContentFilter AWS API Documentation
    #
    class GuardrailContentFilter < Struct.new(
      :type,
      :confidence,
      :action)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailContextualGroundingFilter AWS API Documentation
    #
    class GuardrailContextualGroundingFilter < Struct.new(
      :type,
      :threshold,
      :score,
      :action)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailConverseContentBlock AWS API Documentation
    #
    class GuardrailConverseContentBlock < Struct.new(
      :text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < GuardrailConverseContentBlock; end
      class Unknown < GuardrailConverseContentBlock; end
    end

    # A text block that contains text that you want to assess with a
    # guardrail. For more information, see GuardrailConverseContentBlock.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailCustomWord AWS API Documentation
    #
    class GuardrailCustomWord < Struct.new(
      :match,
      :action)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailManagedWord AWS API Documentation
    #
    class GuardrailManagedWord < Struct.new(
      :match,
      :type,
      :action)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailPiiEntityFilter AWS API Documentation
    #
    class GuardrailPiiEntityFilter < Struct.new(
      :match,
      :type,
      :action)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailRegexFilter AWS API Documentation
    #
    class GuardrailRegexFilter < Struct.new(
      :name,
      :match,
      :regex,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # The assessment for aPersonally Identifiable Information (PII) policy.
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
    # ConverseStream action.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailTopic AWS API Documentation
    #
    class GuardrailTopic < Struct.new(
      :name,
      :type,
      :action)
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
    # ConverseTrace.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailTraceAssessment AWS API Documentation
    #
    class GuardrailTraceAssessment < Struct.new(
      :model_output,
      :input_assessment,
      :output_assessments)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/GuardrailUsage AWS API Documentation
    #
    class GuardrailUsage < Struct.new(
      :topic_policy_units,
      :content_policy_units,
      :word_policy_units,
      :sensitive_information_policy_units,
      :sensitive_information_policy_free_units,
      :contextual_grounding_policy_units)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ImageBlock AWS API Documentation
    #
    class ImageBlock < Struct.new(
      :format,
      :source)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ImageSource AWS API Documentation
    #
    class ImageSource < Struct.new(
      :bytes,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Bytes < ImageSource; end
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

    # An internal server error occurred. Retry your request.
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
    #   The `modelId` to provide depends on the type of model that you use:
    #
    #   * If you use a base model, specify the model ID or its ARN. For a
    #     list of model IDs for base models, see [Amazon Bedrock base model
    #     IDs (on-demand throughput)][1] in the Amazon Bedrock User Guide.
    #
    #   * If you use a provisioned model, specify the ARN of the Provisioned
    #     Throughput. For more information, see [Run inference using a
    #     Provisioned Throughput][2] in the Amazon Bedrock User Guide.
    #
    #   * If you use a custom model, first purchase Provisioned Throughput
    #     for it. Then specify the ARN of the resulting provisioned model.
    #     For more information, see [Use a custom model in Amazon
    #     Bedrock][3] in the Amazon Bedrock User Guide.
    #
    #   * If you use an [imported model][4], specify the ARN of the imported
    #     model. You can get the model ARN from a successful call to
    #     [CreateModelImportJob][5] or from the Imported models page in the
    #     Amazon Bedrock console.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #   [4]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    #   [5]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelRequest AWS API Documentation
    #
    class InvokeModelRequest < Struct.new(
      :body,
      :content_type,
      :accept,
      :model_id,
      :trace,
      :guardrail_identifier,
      :guardrail_version)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelResponse AWS API Documentation
    #
    class InvokeModelResponse < Struct.new(
      :body,
      :content_type)
      SENSITIVE = [:body]
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
    #   The `modelId` to provide depends on the type of model that you use:
    #
    #   * If you use a base model, specify the model ID or its ARN. For a
    #     list of model IDs for base models, see [Amazon Bedrock base model
    #     IDs (on-demand throughput)][1] in the Amazon Bedrock User Guide.
    #
    #   * If you use a provisioned model, specify the ARN of the Provisioned
    #     Throughput. For more information, see [Run inference using a
    #     Provisioned Throughput][2] in the Amazon Bedrock User Guide.
    #
    #   * If you use a custom model, first purchase Provisioned Throughput
    #     for it. Then specify the ARN of the resulting provisioned model.
    #     For more information, see [Use a custom model in Amazon
    #     Bedrock][3] in the Amazon Bedrock User Guide.
    #
    #   * If you use an [imported model][4], specify the ARN of the imported
    #     model. You can get the model ARN from a successful call to
    #     [CreateModelImportJob][5] or from the Imported models page in the
    #     Amazon Bedrock console.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #   [4]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    #   [5]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelWithResponseStreamRequest AWS API Documentation
    #
    class InvokeModelWithResponseStreamRequest < Struct.new(
      :body,
      :content_type,
      :accept,
      :model_id,
      :trace,
      :guardrail_identifier,
      :guardrail_version)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelWithResponseStreamResponse AWS API Documentation
    #
    class InvokeModelWithResponseStreamResponse < Struct.new(
      :body,
      :content_type)
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

    # The specified resource ARN was not found. Check the ARN and try your
    # request again.
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

    # The service isn't currently available. Try again later.
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

    # The model must request a specific tool. For example, `\{"tool" :
    # \{"name" : "Your tool name"\}\}`.
    #
    # <note markdown="1"> This field is only supported by Anthropic Claude 3 models.
    #
    #  </note>
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

    # A system content block.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/SystemContentBlock AWS API Documentation
    #
    class SystemContentBlock < Struct.new(
      :text,
      :guard_content,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < SystemContentBlock; end
      class GuardContent < SystemContentBlock; end
      class Unknown < SystemContentBlock; end
    end

    # Your request was throttled because of service-wide limitations.
    # Resubmit your request later or in a different region. You can also
    # purchase [Provisioned Throughput][1] to increase the rate or number of
    # tokens you can process.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/TokenUsage AWS API Documentation
    #
    class TokenUsage < Struct.new(
      :input_tokens,
      :output_tokens,
      :total_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a tool that you can use with the Converse API. For
    # more information, see [Tool use (function calling)][1] in the Amazon
    # Bedrock User Guide.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/Tool AWS API Documentation
    #
    class Tool < Struct.new(
      :tool_spec,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ToolSpec < Tool; end
      class Unknown < Tool; end
    end

    # Determines which tools the model should request in a call to
    # `Converse` or `ConverseStream`. `ToolChoice` is only supported by
    # Anthropic Claude 3 models and by Mistral AI Mistral Large.
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
    #   Anthropic Claude 3 models.
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
    # <note markdown="1"> This field is only supported by Anthropic Claude 3, Cohere Command R,
    # Cohere Command R+, and Mistral Large models.
    #
    #  </note>
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
    # the model previously made.
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
    #   <note markdown="1"> This field is only supported Anthropic Claude 3 models.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolResultBlock AWS API Documentation
    #
    class ToolResultBlock < Struct.new(
      :tool_use_id,
      :content,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tool result content block.
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
    #   <note markdown="1"> This field is only supported by Anthropic Claude 3 models.
    #
    #    </note>
    #   @return [Types::ImageBlock]
    #
    # @!attribute [rw] document
    #   A tool result that is a document.
    #   @return [Types::DocumentBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolResultContentBlock AWS API Documentation
    #
    class ToolResultContentBlock < Struct.new(
      :json,
      :text,
      :image,
      :document,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Json < ToolResultContentBlock; end
      class Text < ToolResultContentBlock; end
      class Image < ToolResultContentBlock; end
      class Document < ToolResultContentBlock; end
      class Unknown < ToolResultContentBlock; end
    end

    # The specification for the tool.
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
    # to generate a response.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolUseBlock AWS API Documentation
    #
    class ToolUseBlock < Struct.new(
      :tool_use_id,
      :name,
      :input)
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

    # The start of a tool use block.
    #
    # @!attribute [rw] tool_use_id
    #   The ID for the tool request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the tool that the model is requesting to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolUseBlockStart AWS API Documentation
    #
    class ToolUseBlockStart < Struct.new(
      :tool_use_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input validation failed. Check your request parameters and retry the
    # request.
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
