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
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint that you specified when you created the
    #   endpoint using the [CreateEndpoint][1] API.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html
    #   @return [String]
    #
    # @!attribute [rw] body
    #   Provides input data, in the format specified in the `ContentType`
    #   request header. Amazon SageMaker passes all of the data in the body
    #   to the model.
    #
    #   For information about the format of the request body, see [Common
    #   Data Formats—Inference][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InvokeEndpointInput AWS API Documentation
    #
    class InvokeEndpointInput < Struct.new(
      :endpoint_name,
      :body,
      :content_type,
      :accept,
      :custom_attributes)
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   Includes the inference provided by the model.
    #
    #   For information about the format of the response body, see [Common
    #   Data Formats—Inference][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html
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

    # Model (owned by the customer in the container) returned an error 500.
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
