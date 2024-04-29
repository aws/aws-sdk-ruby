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
