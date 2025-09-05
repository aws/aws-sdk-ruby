# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerRuntime
  # This module contains the types returned by client operations.
  module Types

    # <p>Your request caused an exception with an internal dependency. Contact customer
    #             support. </p>
    # @!attribute message
    #   @return [String]
    class InternalDependencyException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> An internal failure occurred. </p>
    # @!attribute message
    #   @return [String]
    class InternalFailure < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The stream processing failed because of an unknown error, exception or failure. Try your request again.</p>
    # @!attribute message
    #   @return [String]
    class InternalStreamFailure < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name of the endpoint that you specified when you created the endpoint using the
    #       <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html">CreateEndpoint</a> API.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MIME type of the input data in the request body.</p>
    #   @return [String]
    # @!attribute accept
    #   <p>The desired MIME type of the inference response from the model container.</p>
    #   @return [String]
    # @!attribute custom_attributes
    #   <p>Provides additional information about a request for an inference submitted to a model
    #           hosted at an Amazon SageMaker endpoint. The information is an opaque value that is forwarded
    #           verbatim. You could use this value, for example, to provide an ID that you can use to
    #           track a request or to provide other metadata that a service endpoint was programmed to
    #           process. The value must consist of no more than 1024 visible US-ASCII characters as
    #           specified in <a href="https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6">Section 3.3.6. Field Value Components</a> of the Hypertext Transfer Protocol
    #           (HTTP/1.1). </p>
    #            <p>The code in your model is responsible for setting or updating any custom attributes in
    #           the response. If your code does not set this value in the response, an empty value is
    #           returned. For example, if a custom attribute represents the trace ID, your model can
    #           prepend the custom attribute with <code>Trace ID:</code> in your post-processing
    #           function. </p>
    #            <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker
    #           Python SDK. </p>
    #   @return [String]
    # @!attribute inference_id
    #   <p>The identifier for the inference request. Amazon SageMaker will generate an
    #               identifier for you if none is specified. </p>
    #   @return [String]
    # @!attribute input_location
    #   <p>The Amazon S3 URI where the inference request payload is stored.</p>
    #   @return [String]
    # @!attribute request_ttl_seconds
    #   <p>Maximum age in seconds a request can be in the queue before it is marked as expired.
    #               The default is 6 hours, or 21,600 seconds.</p>
    #   @return [Integer]
    # @!attribute invocation_timeout_seconds
    #   <p>Maximum amount of time in seconds a request can be processed before it is marked as
    #               expired. The default is 15 minutes, or 900 seconds.</p>
    #   @return [Integer]
    class InvokeEndpointAsyncInput < Struct.new(
      :endpoint_name,
      :content_type,
      :accept,
      :custom_attributes,
      :inference_id,
      :input_location,
      :request_ttl_seconds,
      :invocation_timeout_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute inference_id
    #   <p>Identifier for an inference request. This will be the same as the
    #                   <code>InferenceId</code> specified in the input. Amazon SageMaker will generate
    #               an identifier for you if you do not specify one.</p>
    #   @return [String]
    # @!attribute output_location
    #   <p>The Amazon S3 URI where the inference response payload is stored.</p>
    #   @return [String]
    # @!attribute failure_location
    #   <p>The Amazon S3 URI where the inference failure response payload is
    #               stored.</p>
    #   @return [String]
    class InvokeEndpointAsyncOutput < Struct.new(
      :inference_id,
      :output_location,
      :failure_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name of the endpoint that you specified when you created the endpoint using the
    #       <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html">CreateEndpoint</a> API.</p>
    #   @return [String]
    # @!attribute body
    #   <p>Provides input data, in the format specified in the <code>ContentType</code>
    #       request header. Amazon SageMaker passes all of the data in the body to the model. </p>
    #            <p>For information about the format of the request body, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common Data
    #           Formats-Inference</a>.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MIME type of the input data in the request body.</p>
    #   @return [String]
    # @!attribute accept
    #   <p>The desired MIME type of the inference response from the model container.</p>
    #   @return [String]
    # @!attribute custom_attributes
    #   <p>Provides additional information about a request for an inference submitted to a model
    #           hosted at an Amazon SageMaker endpoint. The information is an opaque value that is forwarded
    #           verbatim. You could use this value, for example, to provide an ID that you can use to
    #           track a request or to provide other metadata that a service endpoint was programmed to
    #           process. The value must consist of no more than 1024 visible US-ASCII characters as
    #           specified in <a href="https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6">Section 3.3.6. Field Value Components</a> of the Hypertext Transfer Protocol
    #           (HTTP/1.1). </p>
    #            <p>The code in your model is responsible for setting or updating any custom attributes in
    #           the response. If your code does not set this value in the response, an empty value is
    #           returned. For example, if a custom attribute represents the trace ID, your model can
    #           prepend the custom attribute with <code>Trace ID:</code> in your post-processing
    #           function. </p>
    #            <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker
    #           Python SDK. </p>
    #   @return [String]
    # @!attribute target_model
    #   <p>The model to request for inference when invoking a multi-model endpoint.</p>
    #   @return [String]
    # @!attribute target_variant
    #   <p>Specify the production variant to send the inference request to when invoking an
    #           endpoint that is running two or more variants. Note that this parameter overrides the
    #           default behavior for the endpoint, which is to distribute the invocation traffic based
    #           on the variant weights.</p>
    #            <p>For information about how to use variant targeting to perform a/b testing, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html">Test models in
    #               production</a>
    #            </p>
    #   @return [String]
    # @!attribute target_container_hostname
    #   <p>If the endpoint hosts multiple containers and is configured to use direct invocation,
    #           this parameter specifies the host name of the container to invoke.</p>
    #   @return [String]
    # @!attribute inference_id
    #   <p>If you provide a value, it is added to the captured data when you enable data capture
    #               on the endpoint. For information about data capture, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html">Capture
    #               Data</a>.</p>
    #   @return [String]
    # @!attribute enable_explanations
    #   <p>An optional JMESPath expression used to override the <code>EnableExplanations</code>
    #               parameter of the <code>ClarifyExplainerConfig</code> API. See the <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/clarify-online-explainability-create-endpoint.html#clarify-online-explainability-create-endpoint-enable">EnableExplanations</a> section in the developer guide for more information.
    #           </p>
    #   @return [String]
    # @!attribute inference_component_name
    #   <p>If the endpoint hosts one or more inference components, this parameter specifies the
    #               name of inference component to invoke.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>Creates a stateful session or identifies an existing one. You can do one of the
    #               following:</p>
    #            <ul>
    #               <li>
    #                  <p>Create a stateful session by specifying the value
    #                       <code>NEW_SESSION</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Send your request to an existing stateful session by specifying the ID of that
    #                       session.</p>
    #               </li>
    #            </ul>
    #            <p>With a stateful session, you can send multiple requests to a stateful model. When you
    #               create a session with a stateful model, the model must create the session ID and set the
    #               expiration time. The model must also provide that information in the response to your
    #               request. You can get the ID and timestamp from the <code>NewSessionId</code> response
    #               parameter. For any subsequent request where you specify that session ID, SageMaker routes the request to the same instance that supports the session.</p>
    #   @return [String]
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
      :session_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>Includes the inference provided by the model. </p>
    #            <p>For information about the format of the response body, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common Data
    #               Formats-Inference</a>.</p>
    #            <p>If the explainer is activated, the body includes the explanations provided by the
    #               model. For more information, see the <b>Response section</b>
    #               under <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/clarify-online-explainability-invoke-endpoint.html#clarify-online-explainability-response">Invoke the Endpoint</a> in the Developer Guide.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MIME type of the inference returned from the model container.</p>
    #   @return [String]
    # @!attribute invoked_production_variant
    #   <p>Identifies the production variant that was invoked.</p>
    #   @return [String]
    # @!attribute custom_attributes
    #   <p>Provides additional information in the response about the inference returned by a
    #           model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is
    #           forwarded verbatim. You could use this value, for example, to return an ID received in
    #           the <code>CustomAttributes</code> header of a request or other metadata that a service
    #           endpoint was programmed to produce. The value must consist of no more than 1024 visible
    #           US-ASCII characters as specified in <a href="https://tools.ietf.org/html/rfc7230#section-3.2.6">Section 3.3.6. Field Value
    #               Components</a> of the Hypertext Transfer Protocol (HTTP/1.1). If the customer
    #           wants the custom attribute returned, the model must set the custom attribute to be
    #           included on the way back. </p>
    #            <p>The code in your model is responsible for setting or updating any custom attributes in
    #           the response. If your code does not set this value in the response, an empty value is
    #           returned. For example, if a custom attribute represents the trace ID, your model can
    #           prepend the custom attribute with <code>Trace ID:</code> in your post-processing
    #           function.</p>
    #            <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker
    #           Python SDK.</p>
    #   @return [String]
    # @!attribute new_session_id
    #   <p>If you created a stateful session with your request, the ID and expiration time that
    #               the model assigns to that session.</p>
    #   @return [String]
    # @!attribute closed_session_id
    #   <p>If you closed a stateful session with your request, the ID of that session.</p>
    #   @return [String]
    class InvokeEndpointOutput < Struct.new(
      :body,
      :content_type,
      :invoked_production_variant,
      :custom_attributes,
      :new_session_id,
      :closed_session_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name of the endpoint that you specified when you created the endpoint using the
    #       <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html">CreateEndpoint</a> API.</p>
    #   @return [String]
    # @!attribute body
    #   <p>Provides input data, in the format specified in the <code>ContentType</code>
    #       request header. Amazon SageMaker passes all of the data in the body to the model. </p>
    #            <p>For information about the format of the request body, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common Data
    #           Formats-Inference</a>.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MIME type of the input data in the request body.</p>
    #   @return [String]
    # @!attribute accept
    #   <p>The desired MIME type of the inference response from the model container.</p>
    #   @return [String]
    # @!attribute custom_attributes
    #   <p>Provides additional information about a request for an inference submitted to a model
    #           hosted at an Amazon SageMaker endpoint. The information is an opaque value that is forwarded
    #           verbatim. You could use this value, for example, to provide an ID that you can use to
    #           track a request or to provide other metadata that a service endpoint was programmed to
    #           process. The value must consist of no more than 1024 visible US-ASCII characters as
    #           specified in <a href="https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6">Section 3.3.6. Field Value Components</a> of the Hypertext Transfer Protocol
    #           (HTTP/1.1). </p>
    #            <p>The code in your model is responsible for setting or updating any custom attributes in
    #           the response. If your code does not set this value in the response, an empty value is
    #           returned. For example, if a custom attribute represents the trace ID, your model can
    #           prepend the custom attribute with <code>Trace ID:</code> in your post-processing
    #           function. </p>
    #            <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker
    #           Python SDK. </p>
    #   @return [String]
    # @!attribute target_variant
    #   <p>Specify the production variant to send the inference request to when invoking an
    #           endpoint that is running two or more variants. Note that this parameter overrides the
    #           default behavior for the endpoint, which is to distribute the invocation traffic based
    #           on the variant weights.</p>
    #            <p>For information about how to use variant targeting to perform a/b testing, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html">Test models in
    #               production</a>
    #            </p>
    #   @return [String]
    # @!attribute target_container_hostname
    #   <p>If the endpoint hosts multiple containers and is configured to use direct invocation,
    #           this parameter specifies the host name of the container to invoke.</p>
    #   @return [String]
    # @!attribute inference_id
    #   <p>An identifier that you assign to your request.</p>
    #   @return [String]
    # @!attribute inference_component_name
    #   <p>If the endpoint hosts one or more inference components, this parameter specifies the
    #               name of inference component to invoke for a streaming response.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The ID of a stateful session to handle your request.</p>
    #            <p>You can't create a stateful session by using the
    #                   <code>InvokeEndpointWithResponseStream</code> action. Instead, you can create one by
    #               using the <code>
    #                  <a>InvokeEndpoint</a>
    #               </code> action. In your request, you
    #               specify <code>NEW_SESSION</code> for the <code>SessionId</code> request parameter. The
    #               response to that request provides the session ID for the <code>NewSessionId</code>
    #               response parameter.</p>
    #   @return [String]
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
      :session_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>A stream of payload parts. Each part contains a portion of the response for a
    #               streaming inference request.</p>
    #   @return [Types::ResponseStream]
    # @!attribute content_type
    #   <p>The MIME type of the inference returned from the model container.</p>
    #   @return [String]
    # @!attribute invoked_production_variant
    #   <p>Identifies the production variant that was invoked.</p>
    #   @return [String]
    # @!attribute custom_attributes
    #   <p>Provides additional information in the response about the inference returned by a
    #           model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is
    #           forwarded verbatim. You could use this value, for example, to return an ID received in
    #           the <code>CustomAttributes</code> header of a request or other metadata that a service
    #           endpoint was programmed to produce. The value must consist of no more than 1024 visible
    #           US-ASCII characters as specified in <a href="https://tools.ietf.org/html/rfc7230#section-3.2.6">Section 3.3.6. Field Value
    #               Components</a> of the Hypertext Transfer Protocol (HTTP/1.1). If the customer
    #           wants the custom attribute returned, the model must set the custom attribute to be
    #           included on the way back. </p>
    #            <p>The code in your model is responsible for setting or updating any custom attributes in
    #           the response. If your code does not set this value in the response, an empty value is
    #           returned. For example, if a custom attribute represents the trace ID, your model can
    #           prepend the custom attribute with <code>Trace ID:</code> in your post-processing
    #           function.</p>
    #            <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker
    #           Python SDK.</p>
    #   @return [String]
    class InvokeEndpointWithResponseStreamOutput < Struct.new(
      :body,
      :content_type,
      :invoked_production_variant,
      :custom_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Model (owned by the customer in the container) returned 4xx or 5xx error code.
    #         </p>
    # @!attribute message
    #   @return [String]
    # @!attribute original_status_code
    #   <p> Original status code. </p>
    #   @return [Integer]
    # @!attribute original_message
    #   <p> Original message. </p>
    #   @return [String]
    # @!attribute log_stream_arn
    #   <p> The Amazon Resource Name (ARN) of the log stream. </p>
    #   @return [String]
    class ModelError < Struct.new(
      :message,
      :original_status_code,
      :original_message,
      :log_stream_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Either a serverless endpoint variant's resources are still being provisioned, or a
    #             multi-model endpoint is still downloading or loading the target model. Wait and try your
    #             request again.</p>
    # @!attribute message
    #   @return [String]
    class ModelNotReadyException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> An error occurred while streaming the response body. This error can have the
    #     following error codes:</p>
    #          <dl>
    #             <dt>ModelInvocationTimeExceeded</dt>
    #             <dd>
    #                <p>The model failed to finish sending the response within the timeout period allowed by Amazon SageMaker.</p>
    #             </dd>
    #             <dt>StreamBroken</dt>
    #             <dd>
    #                <p>The Transmission Control Protocol (TCP) connection between the client and
    #                     the model was reset or closed.</p>
    #             </dd>
    #          </dl>
    # @!attribute message
    #   @return [String]
    # @!attribute error_code
    #   <p>This error can have the following error codes:</p>
    #            <dl>
    #               <dt>ModelInvocationTimeExceeded</dt>
    #               <dd>
    #                  <p>The model failed to finish sending the response within the timeout period
    #                           allowed by Amazon SageMaker.</p>
    #               </dd>
    #               <dt>StreamBroken</dt>
    #               <dd>
    #                  <p>The Transmission Control Protocol (TCP) connection between the client and
    #                           the model was reset or closed.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class ModelStreamError < Struct.new(
      :message,
      :error_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A wrapper for pieces of the payload that's returned in response to a streaming
    #         inference request. A streaming inference response consists of one or more payload parts.
    #     </p>
    # @!attribute bytes
    #   <p>A blob that contains part of the response for your streaming inference request.</p>
    #   @return [String]
    class PayloadPart < Struct.new(
      :bytes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A stream of payload parts. Each part contains a portion of the response for a
    #             streaming inference request.</p>
    # @!attribute payload_part
    #   <p>A wrapper for pieces of the payload that's returned in response to a streaming
    #           inference request. A streaming inference response consists of one or more payload parts.
    #       </p>
    #   @return [Types::PayloadPart]
    # @!attribute model_stream_error
    #   <p> An error occurred while streaming the response body. This error can have the
    #       following error codes:</p>
    #            <dl>
    #               <dt>ModelInvocationTimeExceeded</dt>
    #               <dd>
    #                  <p>The model failed to finish sending the response within the timeout period allowed by Amazon SageMaker.</p>
    #               </dd>
    #               <dt>StreamBroken</dt>
    #               <dd>
    #                  <p>The Transmission Control Protocol (TCP) connection between the client and
    #                       the model was reset or closed.</p>
    #               </dd>
    #            </dl>
    #   @return [Types::ModelStreamError]
    # @!attribute internal_stream_failure
    #   <p>The stream processing failed because of an unknown error, exception or failure. Try your request again.</p>
    #   @return [Types::InternalStreamFailure]
    class ResponseStream < Struct.new(
      :payload_part,
      :model_stream_error,
      :internal_stream_failure,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class PayloadPart < ResponseStream; end
      class ModelStreamError < ResponseStream; end
      class InternalStreamFailure < ResponseStream; end
      class Unknown < ResponseStream; end
    end

    # <p> The service is unavailable. Try your call again. </p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailable < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Inspect your request and try again. </p>
    # @!attribute message
    #   @return [String]
    class ValidationError < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
