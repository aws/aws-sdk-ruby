# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerRuntimeHTTP2
  # This module contains the types returned by client operations.
  module Types

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
    # @!attribute message
    #   <p>Error message.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Error code.</p>
    #   @return [String]
    class InputValidationError < Struct.new(
      nil,
      :message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.</p>
    # @!attribute message
    #   <p>Error message.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Error code.</p>
    #   @return [String]
    class InternalServerError < Struct.new(
      nil,
      :message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Internal stream failure that occurs during streaming.</p>
    # @!attribute message
    #   <p>Error message.</p>
    #   @return [String]
    class InternalStreamFailure < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name of the endpoint to invoke.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The request payload stream.</p>
    #   @return [Types::RequestStreamEvent]
    # @!attribute target_variant
    #   <p>Target variant for the request.</p>
    #   @return [String]
    # @!attribute model_invocation_path
    #   <p>Model invocation path.</p>
    #   @return [String]
    # @!attribute model_query_string
    #   <p>Model query string.</p>
    #   @return [String]
    class InvokeEndpointWithBidirectionalStreamInput < Struct.new(
      nil,
      :endpoint_name,
      :body,
      :target_variant,
      :model_invocation_path,
      :model_query_string,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>The response payload stream.</p>
    #   @return [Types::ResponseStreamEvent]
    # @!attribute invoked_production_variant
    #   <p>The invoked production variant.</p>
    #   @return [String]
    class InvokeEndpointWithBidirectionalStreamOutput < Struct.new(
      nil,
      :body,
      :invoked_production_variant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred while processing the model.</p>
    # @!attribute message
    #   <p>Error message.</p>
    #   @return [String]
    # @!attribute original_status_code
    #   <p>HTTP status code returned by model.</p>
    #   @return [Integer]
    # @!attribute original_message
    #   <p>Original error message from the model.</p>
    #   @return [String]
    # @!attribute log_stream_arn
    #   <p>CloudWatch log stream ARN.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Error code.</p>
    #   @return [String]
    class ModelError < Struct.new(
      nil,
      :message,
      :original_status_code,
      :original_message,
      :log_stream_arn,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Model stream error that occurs during streaming.</p>
    # @!attribute message
    #   <p>Error message.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Error code.</p>
    #   @return [String]
    class ModelStreamError < Struct.new(
      nil,
      :message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request payload part structure.</p>
    # @!attribute bytes
    #   <p>The payload bytes.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>Data type header. Can be one of these possible values: "UTF8", "BINARY".</p>
    #   @return [String]
    # @!attribute completion_state
    #   <p>Completion state header. Can be one of these possible values: "PARTIAL", "COMPLETE".</p>
    #   @return [String]
    # @!attribute p
    #   <p>Padding string for alignment.</p>
    #   @return [String]
    class RequestPayloadPart < Struct.new(
      nil,
      :bytes,
      :data_type,
      :completion_state,
      :p,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request stream event union.</p>
    # @!attribute payload_part
    #   <p>Payload part event.</p>
    #   @return [Types::RequestPayloadPart]
    class RequestStreamEvent < Struct.new(
      :payload_part,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PayloadPart < RequestStreamEvent; end
      class Unknown < RequestStreamEvent; end
    end

    # <p>Response payload part structure.</p>
    # @!attribute bytes
    #   <p>The payload bytes.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>Data type header. Can be one of these possible values: "UTF8", "BINARY".</p>
    #   @return [String]
    # @!attribute completion_state
    #   <p>Completion state header. Can be one of these possible values: "PARTIAL", "COMPLETE".</p>
    #   @return [String]
    # @!attribute p
    #   <p>Padding string for alignment.</p>
    #   @return [String]
    class ResponsePayloadPart < Struct.new(
      nil,
      :bytes,
      :data_type,
      :completion_state,
      :p,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response stream event union.</p>
    # @!attribute payload_part
    #   <p>Payload part event.</p>
    #   @return [Types::ResponsePayloadPart]
    # @!attribute model_stream_error
    #   <p>Model stream error event.</p>
    #   @return [Types::ModelStreamError]
    # @!attribute internal_stream_failure
    #   <p>Internal stream failure event.</p>
    #   @return [Types::InternalStreamFailure]
    class ResponseStreamEvent < Struct.new(
      :payload_part,
      :model_stream_error,
      :internal_stream_failure,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PayloadPart < ResponseStreamEvent; end
      class ModelStreamError < ResponseStreamEvent; end
      class InternalStreamFailure < ResponseStreamEvent; end
      class Unknown < ResponseStreamEvent; end
    end

    # <p>The request has failed due to a temporary failure of the server.</p>
    # @!attribute message
    #   <p>Error message.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Error code.</p>
    #   @return [String]
    class ServiceUnavailableError < Struct.new(
      nil,
      :message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
