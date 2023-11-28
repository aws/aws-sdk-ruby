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
    #   Input data in the format specified in the content-type request
    #   header. To see the format and content of this field for different
    #   models, refer to [Inference parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
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
    #   Identifier of the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelRequest AWS API Documentation
    #
    class InvokeModelRequest < Struct.new(
      :body,
      :content_type,
      :accept,
      :model_id)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   Inference response from the model in the format specified in the
    #   content-type header field. To see the format and content of this
    #   field for different models, refer to [Inference parameters][1].
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
    #   Inference input in the format specified by the content-type. To see
    #   the format and content of this field for different models, refer to
    #   [Inference parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
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
    #   Id of the model to invoke using the streaming request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelWithResponseStreamRequest AWS API Documentation
    #
    class InvokeModelWithResponseStreamRequest < Struct.new(
      :body,
      :content_type,
      :accept,
      :model_id)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   Inference response from the model in the format specified by
    #   Content-Type. To see the format and content of this field for
    #   different models, refer to [Inference parameters][1].
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

    # An error occurred while streaming the response.
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
