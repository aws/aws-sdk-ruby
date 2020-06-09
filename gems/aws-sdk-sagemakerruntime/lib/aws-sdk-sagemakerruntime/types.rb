# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerRuntime
  module Types

    # An internal failure occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InternalFailure AWS API Documentation
    #
    class InternalFailure < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass InvokeEndpointInput
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "EndpointName", # required
    #         body: "data", # required
    #         content_type: "Header",
    #         accept: "Header",
    #         custom_attributes: "CustomAttributesHeader",
    #         target_model: "TargetModelHeader",
    #         target_variant: "TargetVariantHeader",
    #       }
    #
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
    #   (HTTP/1.1). This feature is currently supported in the AWS SDKs but
    #   not in the Amazon SageMaker Python SDK.
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
      :target_variant)
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   Includes the inference provided by the model.
    #
    #   For information about the format of the response body, see [Common
    #   Data Formats-Inference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html
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
    #   This feature is currently supported in the AWS SDKs but not in the
    #   Amazon SageMaker Python SDK.
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
      include Aws::Structure
    end

  end
end
