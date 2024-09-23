# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerRuntime
  module Types

    # Your request caused an exception with an internal dependency. Contact
    # customer support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InternalDependencyException AWS API Documentation
    #
    class InternalDependencyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal failure occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InternalFailure AWS API Documentation
    #
    class InternalFailure < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The stream processing failed because of an unknown error, exception or
    # failure. Try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InternalStreamFailure AWS API Documentation
    #
    class InternalStreamFailure < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_name
    #   The name of the endpoint that you specified when you created the
    #   endpoint using the [CreateEndpoint][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in the request body.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The desired MIME type of the inference response from the model
    #   container.
    #   @return [String]
    #
    # @!attribute [rw] custom_attributes
    #   Provides additional information about a request for an inference
    #   submitted to a model hosted at an Amazon SageMaker endpoint. The
    #   information is an opaque value that is forwarded verbatim. You could
    #   use this value, for example, to provide an ID that you can use to
    #   track a request or to provide other metadata that a service endpoint
    #   was programmed to process. The value must consist of no more than
    #   1024 visible US-ASCII characters as specified in [Section 3.3.6.
    #   Field Value Components][1] of the Hypertext Transfer Protocol
    #   (HTTP/1.1).
    #
    #   The code in your model is responsible for setting or updating any
    #   custom attributes in the response. If your code does not set this
    #   value in the response, an empty value is returned. For example, if a
    #   custom attribute represents the trace ID, your model can prepend the
    #   custom attribute with `Trace ID:` in your post-processing function.
    #
    #   This feature is currently supported in the Amazon Web Services SDKs
    #   but not in the Amazon SageMaker Python SDK.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6
    #   @return [String]
    #
    # @!attribute [rw] inference_id
    #   The identifier for the inference request. Amazon SageMaker will
    #   generate an identifier for you if none is specified.
    #   @return [String]
    #
    # @!attribute [rw] input_location
    #   The Amazon S3 URI where the inference request payload is stored.
    #   @return [String]
    #
    # @!attribute [rw] request_ttl_seconds
    #   Maximum age in seconds a request can be in the queue before it is
    #   marked as expired. The default is 6 hours, or 21,600 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] invocation_timeout_seconds
    #   Maximum amount of time in seconds a request can be processed before
    #   it is marked as expired. The default is 15 minutes, or 900 seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InvokeEndpointAsyncInput AWS API Documentation
    #
    class InvokeEndpointAsyncInput < Struct.new(
      :endpoint_name,
      :content_type,
      :accept,
      :custom_attributes,
      :inference_id,
      :input_location,
      :request_ttl_seconds,
      :invocation_timeout_seconds)
      SENSITIVE = [:custom_attributes]
      include Aws::Structure
    end

    # @!attribute [rw] inference_id
    #   Identifier for an inference request. This will be the same as the
    #   `InferenceId` specified in the input. Amazon SageMaker will generate
    #   an identifier for you if you do not specify one.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   The Amazon S3 URI where the inference response payload is stored.
    #   @return [String]
    #
    # @!attribute [rw] failure_location
    #   The Amazon S3 URI where the inference failure response payload is
    #   stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InvokeEndpointAsyncOutput AWS API Documentation
    #
    class InvokeEndpointAsyncOutput < Struct.new(
      :inference_id,
      :output_location,
      :failure_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_name
    #   The name of the endpoint that you specified when you created the
    #   endpoint using the [CreateEndpoint][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html
    #   @return [String]
    #
    # @!attribute [rw] body
    #   Provides input data, in the format specified in the `ContentType`
    #   request header. Amazon SageMaker passes all of the data in the body
    #   to the model.
    #
    #   For information about the format of the request body, see [Common
    #   Data Formats-Inference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in the request body.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The desired MIME type of the inference response from the model
    #   container.
    #   @return [String]
    #
    # @!attribute [rw] custom_attributes
    #   Provides additional information about a request for an inference
    #   submitted to a model hosted at an Amazon SageMaker endpoint. The
    #   information is an opaque value that is forwarded verbatim. You could
    #   use this value, for example, to provide an ID that you can use to
    #   track a request or to provide other metadata that a service endpoint
    #   was programmed to process. The value must consist of no more than
    #   1024 visible US-ASCII characters as specified in [Section 3.3.6.
    #   Field Value Components][1] of the Hypertext Transfer Protocol
    #   (HTTP/1.1).
    #
    #   The code in your model is responsible for setting or updating any
    #   custom attributes in the response. If your code does not set this
    #   value in the response, an empty value is returned. For example, if a
    #   custom attribute represents the trace ID, your model can prepend the
    #   custom attribute with `Trace ID:` in your post-processing function.
    #
    #   This feature is currently supported in the Amazon Web Services SDKs
    #   but not in the Amazon SageMaker Python SDK.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6
    #   @return [String]
    #
    # @!attribute [rw] target_model
    #   The model to request for inference when invoking a multi-model
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] target_variant
    #   Specify the production variant to send the inference request to when
    #   invoking an endpoint that is running two or more variants. Note that
    #   this parameter overrides the default behavior for the endpoint,
    #   which is to distribute the invocation traffic based on the variant
    #   weights.
    #
    #   For information about how to use variant targeting to perform a/b
    #   testing, see [Test models in production][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html
    #   @return [String]
    #
    # @!attribute [rw] target_container_hostname
    #   If the endpoint hosts multiple containers and is configured to use
    #   direct invocation, this parameter specifies the host name of the
    #   container to invoke.
    #   @return [String]
    #
    # @!attribute [rw] inference_id
    #   If you provide a value, it is added to the captured data when you
    #   enable data capture on the endpoint. For information about data
    #   capture, see [Capture Data][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html
    #   @return [String]
    #
    # @!attribute [rw] enable_explanations
    #   An optional JMESPath expression used to override the
    #   `EnableExplanations` parameter of the `ClarifyExplainerConfig` API.
    #   See the [EnableExplanations][1] section in the developer guide for
    #   more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/clarify-online-explainability-create-endpoint.html#clarify-online-explainability-create-endpoint-enable
    #   @return [String]
    #
    # @!attribute [rw] inference_component_name
    #   If the endpoint hosts one or more inference components, this
    #   parameter specifies the name of inference component to invoke.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   Creates a stateful session or identifies an existing one. You can do
    #   one of the following:
    #
    #   * Create a stateful session by specifying the value `NEW_SESSION`.
    #
    #   * Send your request to an existing stateful session by specifying
    #     the ID of that session.
    #
    #   With a stateful session, you can send multiple requests to a
    #   stateful model. When you create a session with a stateful model, the
    #   model must create the session ID and set the expiration time. The
    #   model must also provide that information in the response to your
    #   request. You can get the ID and timestamp from the `NewSessionId`
    #   response parameter. For any subsequent request where you specify
    #   that session ID, SageMaker routes the request to the same instance
    #   that supports the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InvokeEndpointInput AWS API Documentation
    #
    class InvokeEndpointInput < Struct.new(
      :endpoint_name,
      :body,
      :content_type,
      :accept,
      :custom_attributes,
      :target_model,
      :target_variant,
      :target_container_hostname,
      :inference_id,
      :enable_explanations,
      :inference_component_name,
      :session_id)
      SENSITIVE = [:body, :custom_attributes]
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   Includes the inference provided by the model.
    #
    #   For information about the format of the response body, see [Common
    #   Data Formats-Inference][1].
    #
    #   If the explainer is activated, the body includes the explanations
    #   provided by the model. For more information, see the **Response
    #   section** under [Invoke the Endpoint][2] in the Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/clarify-online-explainability-invoke-endpoint.html#clarify-online-explainability-response
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the inference returned from the model container.
    #   @return [String]
    #
    # @!attribute [rw] invoked_production_variant
    #   Identifies the production variant that was invoked.
    #   @return [String]
    #
    # @!attribute [rw] custom_attributes
    #   Provides additional information in the response about the inference
    #   returned by a model hosted at an Amazon SageMaker endpoint. The
    #   information is an opaque value that is forwarded verbatim. You could
    #   use this value, for example, to return an ID received in the
    #   `CustomAttributes` header of a request or other metadata that a
    #   service endpoint was programmed to produce. The value must consist
    #   of no more than 1024 visible US-ASCII characters as specified in
    #   [Section 3.3.6. Field Value Components][1] of the Hypertext Transfer
    #   Protocol (HTTP/1.1). If the customer wants the custom attribute
    #   returned, the model must set the custom attribute to be included on
    #   the way back.
    #
    #   The code in your model is responsible for setting or updating any
    #   custom attributes in the response. If your code does not set this
    #   value in the response, an empty value is returned. For example, if a
    #   custom attribute represents the trace ID, your model can prepend the
    #   custom attribute with `Trace ID:` in your post-processing function.
    #
    #   This feature is currently supported in the Amazon Web Services SDKs
    #   but not in the Amazon SageMaker Python SDK.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc7230#section-3.2.6
    #   @return [String]
    #
    # @!attribute [rw] new_session_id
    #   If you created a stateful session with your request, the ID and
    #   expiration time that the model assigns to that session.
    #   @return [String]
    #
    # @!attribute [rw] closed_session_id
    #   If you closed a stateful session with your request, the ID of that
    #   session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InvokeEndpointOutput AWS API Documentation
    #
    class InvokeEndpointOutput < Struct.new(
      :body,
      :content_type,
      :invoked_production_variant,
      :custom_attributes,
      :new_session_id,
      :closed_session_id)
      SENSITIVE = [:body, :custom_attributes]
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_name
    #   The name of the endpoint that you specified when you created the
    #   endpoint using the [CreateEndpoint][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html
    #   @return [String]
    #
    # @!attribute [rw] body
    #   Provides input data, in the format specified in the `ContentType`
    #   request header. Amazon SageMaker passes all of the data in the body
    #   to the model.
    #
    #   For information about the format of the request body, see [Common
    #   Data Formats-Inference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in the request body.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The desired MIME type of the inference response from the model
    #   container.
    #   @return [String]
    #
    # @!attribute [rw] custom_attributes
    #   Provides additional information about a request for an inference
    #   submitted to a model hosted at an Amazon SageMaker endpoint. The
    #   information is an opaque value that is forwarded verbatim. You could
    #   use this value, for example, to provide an ID that you can use to
    #   track a request or to provide other metadata that a service endpoint
    #   was programmed to process. The value must consist of no more than
    #   1024 visible US-ASCII characters as specified in [Section 3.3.6.
    #   Field Value Components][1] of the Hypertext Transfer Protocol
    #   (HTTP/1.1).
    #
    #   The code in your model is responsible for setting or updating any
    #   custom attributes in the response. If your code does not set this
    #   value in the response, an empty value is returned. For example, if a
    #   custom attribute represents the trace ID, your model can prepend the
    #   custom attribute with `Trace ID:` in your post-processing function.
    #
    #   This feature is currently supported in the Amazon Web Services SDKs
    #   but not in the Amazon SageMaker Python SDK.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6
    #   @return [String]
    #
    # @!attribute [rw] target_variant
    #   Specify the production variant to send the inference request to when
    #   invoking an endpoint that is running two or more variants. Note that
    #   this parameter overrides the default behavior for the endpoint,
    #   which is to distribute the invocation traffic based on the variant
    #   weights.
    #
    #   For information about how to use variant targeting to perform a/b
    #   testing, see [Test models in production][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html
    #   @return [String]
    #
    # @!attribute [rw] target_container_hostname
    #   If the endpoint hosts multiple containers and is configured to use
    #   direct invocation, this parameter specifies the host name of the
    #   container to invoke.
    #   @return [String]
    #
    # @!attribute [rw] inference_id
    #   An identifier that you assign to your request.
    #   @return [String]
    #
    # @!attribute [rw] inference_component_name
    #   If the endpoint hosts one or more inference components, this
    #   parameter specifies the name of inference component to invoke for a
    #   streaming response.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The ID of a stateful session to handle your request.
    #
    #   You can't create a stateful session by using the
    #   `InvokeEndpointWithResponseStream` action. Instead, you can create
    #   one by using the ` InvokeEndpoint ` action. In your request, you
    #   specify `NEW_SESSION` for the `SessionId` request parameter. The
    #   response to that request provides the session ID for the
    #   `NewSessionId` response parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InvokeEndpointWithResponseStreamInput AWS API Documentation
    #
    class InvokeEndpointWithResponseStreamInput < Struct.new(
      :endpoint_name,
      :body,
      :content_type,
      :accept,
      :custom_attributes,
      :target_variant,
      :target_container_hostname,
      :inference_id,
      :inference_component_name,
      :session_id)
      SENSITIVE = [:body, :custom_attributes]
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   A stream of payload parts. Each part contains a portion of the
    #   response for a streaming inference request.
    #   @return [Types::ResponseStream]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the inference returned from the model container.
    #   @return [String]
    #
    # @!attribute [rw] invoked_production_variant
    #   Identifies the production variant that was invoked.
    #   @return [String]
    #
    # @!attribute [rw] custom_attributes
    #   Provides additional information in the response about the inference
    #   returned by a model hosted at an Amazon SageMaker endpoint. The
    #   information is an opaque value that is forwarded verbatim. You could
    #   use this value, for example, to return an ID received in the
    #   `CustomAttributes` header of a request or other metadata that a
    #   service endpoint was programmed to produce. The value must consist
    #   of no more than 1024 visible US-ASCII characters as specified in
    #   [Section 3.3.6. Field Value Components][1] of the Hypertext Transfer
    #   Protocol (HTTP/1.1). If the customer wants the custom attribute
    #   returned, the model must set the custom attribute to be included on
    #   the way back.
    #
    #   The code in your model is responsible for setting or updating any
    #   custom attributes in the response. If your code does not set this
    #   value in the response, an empty value is returned. For example, if a
    #   custom attribute represents the trace ID, your model can prepend the
    #   custom attribute with `Trace ID:` in your post-processing function.
    #
    #   This feature is currently supported in the Amazon Web Services SDKs
    #   but not in the Amazon SageMaker Python SDK.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc7230#section-3.2.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InvokeEndpointWithResponseStreamOutput AWS API Documentation
    #
    class InvokeEndpointWithResponseStreamOutput < Struct.new(
      :body,
      :content_type,
      :invoked_production_variant,
      :custom_attributes)
      SENSITIVE = [:custom_attributes]
      include Aws::Structure
    end

    # Model (owned by the customer in the container) returned 4xx or 5xx
    # error code.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] original_status_code
    #   Original status code.
    #   @return [Integer]
    #
    # @!attribute [rw] original_message
    #   Original message.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_arn
    #   The Amazon Resource Name (ARN) of the log stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/ModelError AWS API Documentation
    #
    class ModelError < Struct.new(
      :message,
      :original_status_code,
      :original_message,
      :log_stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Either a serverless endpoint variant's resources are still being
    # provisioned, or a multi-model endpoint is still downloading or loading
    # the target model. Wait and try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/ModelNotReadyException AWS API Documentation
    #
    class ModelNotReadyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred while streaming the response body. This error can
    # have the following error codes:
    #
    # ModelInvocationTimeExceeded
    #
    # : The model failed to finish sending the response within the timeout
    #   period allowed by Amazon SageMaker.
    #
    # StreamBroken
    #
    # : The Transmission Control Protocol (TCP) connection between the
    #   client and the model was reset or closed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   This error can have the following error codes:
    #
    #   ModelInvocationTimeExceeded
    #
    #   : The model failed to finish sending the response within the timeout
    #     period allowed by Amazon SageMaker.
    #
    #   StreamBroken
    #
    #   : The Transmission Control Protocol (TCP) connection between the
    #     client and the model was reset or closed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/ModelStreamError AWS API Documentation
    #
    class ModelStreamError < Struct.new(
      :message,
      :error_code,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A wrapper for pieces of the payload that's returned in response to a
    # streaming inference request. A streaming inference response consists
    # of one or more payload parts.
    #
    # @!attribute [rw] bytes
    #   A blob that contains part of the response for your streaming
    #   inference request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/PayloadPart AWS API Documentation
    #
    class PayloadPart < Struct.new(
      :bytes,
      :event_type)
      SENSITIVE = [:bytes]
      include Aws::Structure
    end

    # The service is unavailable. Try your call again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/ServiceUnavailable AWS API Documentation
    #
    class ServiceUnavailable < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Inspect your request and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/ValidationError AWS API Documentation
    #
    class ValidationError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A stream of payload parts. Each part contains a portion of the
    # response for a streaming inference request.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/ResponseStream AWS API Documentation
    #
    class ResponseStream < Enumerator

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

