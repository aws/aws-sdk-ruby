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

    # The model must request at least one tool (no text is generated).
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/AnyToolChoice AWS API Documentation
    #
    class AnyToolChoice < Aws::EmptyStructure; end

    # The Model automatically decides if a tool should be called or to
    # whether to generate text instead.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/AutoToolChoice AWS API Documentation
    #
    class AutoToolChoice < Aws::EmptyStructure; end

    # A block of content for a message.
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
    # @!attribute [rw] tool_use
    #   Information about a tool use request from a model.
    #   @return [Types::ToolUseBlock]
    #
    # @!attribute [rw] tool_result
    #   The result for a tool request that a model makes.
    #   @return [Types::ToolResultBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ContentBlock AWS API Documentation
    #
    class ContentBlock < Struct.new(
      :text,
      :image,
      :tool_use,
      :tool_result,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < ContentBlock; end
      class Image < ContentBlock; end
      class ToolUse < ContentBlock; end
      class ToolResult < ContentBlock; end
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
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
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
    #   the `additionalModelResultFields` field. The following is example
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseResponse AWS API Documentation
    #
    class ConverseResponse < Struct.new(
      :output,
      :stop_reason,
      :usage,
      :metrics,
      :additional_model_response_fields)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseStreamMetadataEvent AWS API Documentation
    #
    class ConverseStreamMetadataEvent < Struct.new(
      :usage,
      :metrics,
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
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
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
    # @!attribute [rw] additional_model_request_fields
    #   Additional inference parameters that the model supports, beyond the
    #   base set of inference parameters that `ConverseStream` supports in
    #   the `inferenceConfig` field.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] additional_model_response_field_paths
    #   Additional model parameters field paths to return in the response.
    #   `ConverseStream` returns the requested fields as a JSON Pointer
    #   object in the `additionalModelResultFields` field. The following is
    #   example JSON for `additionalModelResponseFieldPaths`.
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
    #   need to base64 encode the image bytes.
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
    #   foundatio\\\{ "messages": \[ \\\{ "role": "user", "content":
    #   \[ \\\{ "text": "what's the weather in Queens, NY and Austin,
    #   TX?" \\} \] \\}, \\\{ "role": "assistant", "content": \[ \\\{
    #   "toolUse": \\\{ "toolUseId": "1", "name": "get\_weather",
    #   "input": \\\{ "city": "Queens", "state": "NY" \\} \\} \\},
    #   \\\{ "toolUse": \\\{ "toolUseId": "2", "name":
    #   "get\_weather", "input": \\\{ "city": "Austin", "state":
    #   "TX" \\} \\} \\} \] \\}, \\\{ "role": "user", "content": \[
    #   \\\{ "toolResult": \\\{ "toolUseId": "2", "content": \[ \\\{
    #   "json": \\\{ "weather": "40" \\} \\} \] \\} \\}, \\\{
    #   "text": "..." \\}, \\\{ "toolResult": \\\{ "toolUseId":
    #   "1", "content": \[ \\\{ "text": "result text" \\} \] \\} \\}
    #   \] \\} \], "toolConfig": \\\{ "tools": \[ \\\{ "name":
    #   "get\_weather", "description": "Get weather", "inputSchema":
    #   \\\{ "type": "object", "properties": \\\{ "city": \\\{
    #   "type": "string", "description": "City of location" \\},
    #   "state": \\\{ "type": "string", "description": "State of
    #   location" \\} \\}, "required": \["city", "state"\] \\} \\} \]
    #   \\} \\} n models][1].
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
    #   `contentType` in the header. To see the format and content of the
    #   request and response bodies for different models, refer to
    #   [Inference parameters][1]. For more information, see [Run
    #   inference][2] in the Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in the request. The default value is
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
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
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
    #   `contentType` in the header. To see the format and content of the
    #   request and response bodies for different models, refer to
    #   [Inference parameters][1]. For more information, see [Run
    #   inference][2] in the Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in the request. The default value is
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
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
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

    # A message in the [Message][1] field. Use to send a message in a call
    # to [Converse][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Message.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html
    #
    # @!attribute [rw] role
    #   The role that the message plays in the message.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The message content.
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
    # requests.
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

    # The number of requests exceeds the service quota. Resubmit your
    # request later.
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

    # The model must request a specific tool.
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

    # A system content block
    #
    # @note SystemContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] text
    #   A system prompt for the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/SystemContentBlock AWS API Documentation
    #
    class SystemContentBlock < Struct.new(
      :text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < SystemContentBlock; end
      class Unknown < SystemContentBlock; end
    end

    # The number of requests exceeds the limit. Resubmit your request later.
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

    # Information about a tool that you can use with the Converse API.
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

    # Forces a model to use a tool.
    #
    # @note ToolChoice is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] auto
    #   The Model automatically decides if a tool should be called or to
    #   whether to generate text instead.
    #   @return [Types::AutoToolChoice]
    #
    # @!attribute [rw] any
    #   The model must request at least one tool (no text is generated).
    #   @return [Types::AnyToolChoice]
    #
    # @!attribute [rw] tool
    #   The Model must request the specified tool.
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

    # Configuration information for the tools that you pass to a model.
    #
    # <note markdown="1"> This field is only supported by Anthropic Claude 3, Cohere Command R,
    # Cohere Command R+, and Mistral Large models.
    #
    #  </note>
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ToolResultContentBlock AWS API Documentation
    #
    class ToolResultContentBlock < Struct.new(
      :json,
      :text,
      :image,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Json < ToolResultContentBlock; end
      class Text < ToolResultContentBlock; end
      class Image < ToolResultContentBlock; end
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
          :throttling_exception
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
          :model_timeout_exception
        ]
      end

    end

  end
end
