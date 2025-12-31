# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerRuntimeHTTP2
  module Types

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Error code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-runtime-http2-2025-10-01/InputValidationError AWS API Documentation
    #
    class InputValidationError < Struct.new(
      :message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Error code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-runtime-http2-2025-10-01/InternalServerError AWS API Documentation
    #
    class InternalServerError < Struct.new(
      :message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Internal stream failure that occurs during streaming.
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-runtime-http2-2025-10-01/InternalStreamFailure AWS API Documentation
    #
    class InternalStreamFailure < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_name
    #   The name of the endpoint to invoke.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The request payload stream.
    #   @return [Types::RequestStreamEvent]
    #
    # @!attribute [rw] target_variant
    #   Target variant for the request.
    #   @return [String]
    #
    # @!attribute [rw] model_invocation_path
    #   Model invocation path.
    #   @return [String]
    #
    # @!attribute [rw] model_query_string
    #   Model query string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-runtime-http2-2025-10-01/InvokeEndpointWithBidirectionalStreamInput AWS API Documentation
    #
    class InvokeEndpointWithBidirectionalStreamInput < Struct.new(
      :endpoint_name,
      :body,
      :target_variant,
      :model_invocation_path,
      :model_query_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   The response payload stream.
    #   @return [Types::ResponseStreamEvent]
    #
    # @!attribute [rw] invoked_production_variant
    #   The invoked production variant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-runtime-http2-2025-10-01/InvokeEndpointWithBidirectionalStreamOutput AWS API Documentation
    #
    class InvokeEndpointWithBidirectionalStreamOutput < Struct.new(
      :body,
      :invoked_production_variant)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred while processing the model.
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @!attribute [rw] original_status_code
    #   HTTP status code returned by model.
    #   @return [Integer]
    #
    # @!attribute [rw] original_message
    #   Original error message from the model.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_arn
    #   CloudWatch log stream ARN.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Error code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-runtime-http2-2025-10-01/ModelError AWS API Documentation
    #
    class ModelError < Struct.new(
      :message,
      :original_status_code,
      :original_message,
      :log_stream_arn,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Model stream error that occurs during streaming.
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Error code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-runtime-http2-2025-10-01/ModelStreamError AWS API Documentation
    #
    class ModelStreamError < Struct.new(
      :message,
      :error_code,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request payload part structure.
    #
    # @!attribute [rw] bytes
    #   The payload bytes.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   Data type header. Can be one of these possible values: "UTF8",
    #   "BINARY".
    #   @return [String]
    #
    # @!attribute [rw] completion_state
    #   Completion state header. Can be one of these possible values:
    #   "PARTIAL", "COMPLETE".
    #   @return [String]
    #
    # @!attribute [rw] p
    #   Padding string for alignment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-runtime-http2-2025-10-01/RequestPayloadPart AWS API Documentation
    #
    class RequestPayloadPart < Struct.new(
      :bytes,
      :data_type,
      :completion_state,
      :p,
      :event_type)
      SENSITIVE = [:bytes]
      include Aws::Structure
    end

    # Response payload part structure.
    #
    # @!attribute [rw] bytes
    #   The payload bytes.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   Data type header. Can be one of these possible values: "UTF8",
    #   "BINARY".
    #   @return [String]
    #
    # @!attribute [rw] completion_state
    #   Completion state header. Can be one of these possible values:
    #   "PARTIAL", "COMPLETE".
    #   @return [String]
    #
    # @!attribute [rw] p
    #   Padding string for alignment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-runtime-http2-2025-10-01/ResponsePayloadPart AWS API Documentation
    #
    class ResponsePayloadPart < Struct.new(
      :bytes,
      :data_type,
      :completion_state,
      :p,
      :event_type)
      SENSITIVE = [:bytes]
      include Aws::Structure
    end

    # The request has failed due to a temporary failure of the server.
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Error code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-runtime-http2-2025-10-01/ServiceUnavailableError AWS API Documentation
    #
    class ServiceUnavailableError < Struct.new(
      :message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request stream event union.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-runtime-http2-2025-10-01/RequestStreamEvent AWS API Documentation
    #
    class RequestStreamEvent < Enumerator

      def event_types
        [
          :payload_part
        ]
      end

    end

    # Response stream event union.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-runtime-http2-2025-10-01/ResponseStreamEvent AWS API Documentation
    #
    class ResponseStreamEvent < Enumerator

      def event_types
        [
          :payload_part,
          :model_stream_error,
          :internal_stream_failure
        ]
      end

    end

  end
end

