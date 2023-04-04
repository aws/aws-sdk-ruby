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

    # @!attribute [rw] endpoint_name
    #   The name of the endpoint that you specified when you created the
    #   endpoint using the [ `CreateEndpoint` ][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in the request body.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The desired MIME type of the inference in the response.
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
    #   custom attribute with `Trace ID`: in your post-processing function.
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
    #   The desired MIME type of the inference in the response.
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
    #   [1]: https://tools.ietf.org/html/rfc7230#section-3.2.6
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
      :enable_explanations)
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
    #   The MIME type of the inference returned in the response body.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InvokeEndpointOutput AWS API Documentation
    #
    class InvokeEndpointOutput < Struct.new(
      :body,
      :content_type,
      :invoked_production_variant,
      :custom_attributes)
      SENSITIVE = [:body, :custom_attributes]
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

  end
end
