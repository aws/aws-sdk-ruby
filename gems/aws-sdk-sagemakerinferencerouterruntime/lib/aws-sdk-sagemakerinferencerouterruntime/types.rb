# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerInferenceRouterRuntime
  module Types

    # You don't have permission to perform this action. Check that the
    # caller is allowed to invoke the inference router and every destination
    # of the routing target.
    #
    # @!attribute [rw] message
    #   A message that describes the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because of an error in an internal dependency.
    # Retry the request with exponential backoff.
    #
    # @!attribute [rw] message
    #   A message that describes the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/InternalDependencyException AWS API Documentation
    #
    class InternalDependencyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error occurred. Retry the request with exponential
    # backoff. The Amazon Web Services SDKs and the Amazon Web Services CLI
    # do this by default.
    #
    # @!attribute [rw] message
    #   A message that describes the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/InternalFailure AWS API Documentation
    #
    class InternalFailure < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] inference_router_name
    #   The name of the inference router to invoke.
    #   @return [String]
    #
    # @!attribute [rw] routing_target_name
    #   The name of the routing target in the inference router. The routing
    #   target must be configured for asynchronous inference.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in Amazon S3. The router passes it
    #   to the destination.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The MIME type that you want for the inference response. The router
    #   passes it to the destination.
    #   @return [String]
    #
    # @!attribute [rw] custom_attributes
    #   Provides additional information about the inference request. The
    #   value is an opaque string that the router passes, unchanged, to the
    #   model container of the destination that serves the request. The
    #   value can contain up to 1,024 visible US-ASCII characters.
    #   @return [String]
    #
    # @!attribute [rw] inference_id
    #   An identifier for the inference request. If you don't provide one,
    #   SageMaker AI generates one and returns it in the response.
    #   @return [String]
    #
    # @!attribute [rw] input_location
    #   The Amazon S3 URI of the object that contains the input data for the
    #   inference. The bucket must be in the inference router's Amazon Web
    #   Services Region and owned by the router's account. The destination
    #   endpoint's execution role reads the object, and the destination's
    #   asynchronous inference limits apply to it.
    #   @return [String]
    #
    # @!attribute [rw] s3_output_path_extension
    #   The path extension that is appended to the routing target's Amazon
    #   S3 output path where the inference response is stored.
    #   @return [String]
    #
    # @!attribute [rw] filename
    #   The file name of the inference response stored in Amazon S3. If you
    #   don't provide one, SageMaker AI generates one.
    #   @return [String]
    #
    # @!attribute [rw] request_ttl_seconds
    #   The time to live of the request, in seconds, measured from when the
    #   router accepts it. If no destination starts the request in this
    #   time, the request fails. The default is 21,600 seconds (6 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] invocation_timeout_seconds
    #   The maximum time, in seconds, that a destination can spend
    #   processing the request before the request is marked as expired. The
    #   default is 900 seconds (15 minutes).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/InvokeInferenceRouterAsyncInput AWS API Documentation
    #
    class InvokeInferenceRouterAsyncInput < Struct.new(
      :inference_router_name,
      :routing_target_name,
      :content_type,
      :accept,
      :custom_attributes,
      :inference_id,
      :input_location,
      :s3_output_path_extension,
      :filename,
      :request_ttl_seconds,
      :invocation_timeout_seconds)
      SENSITIVE = [:custom_attributes]
      include Aws::Structure
    end

    # @!attribute [rw] inference_id
    #   The identifier for the inference request. This is the `InferenceId`
    #   that you provided, or the one that SageMaker AI generated.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   The Amazon S3 URI where the inference response is written. The
    #   location doesn't change if the router moves the request to another
    #   destination.
    #   @return [String]
    #
    # @!attribute [rw] failure_location
    #   The Amazon S3 URI where the failure details are written if the
    #   inference fails.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/InvokeInferenceRouterAsyncOutput AWS API Documentation
    #
    class InvokeInferenceRouterAsyncOutput < Struct.new(
      :inference_id,
      :output_location,
      :failure_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] inference_router_name
    #   The name of the inference router to invoke.
    #   @return [String]
    #
    # @!attribute [rw] routing_target_name
    #   The name of the routing target in the inference router. The routing
    #   target lists the destinations that can serve the request.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in the request body. The router
    #   passes it to the destination.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The MIME type that you want for the inference response. The router
    #   passes it to the destination.
    #   @return [String]
    #
    # @!attribute [rw] inference_id
    #   An identifier for the inference request. The router passes it to the
    #   destination.
    #   @return [String]
    #
    # @!attribute [rw] prefix_aware_id
    #   An optional, stable identifier that serves as a routing hint for
    #   prefix-aware routing. The router passes it to the destination that
    #   serves the request. Within that destination, requests with the same
    #   prefix and the same identifier go to the same instance. If requests
    #   from different applications might have the same prompt prefix, set a
    #   different identifier for each application to differentiate their
    #   routing decisions.
    #
    #   Applies only to destination endpoints configured with a
    #   `RoutingStrategy` of `PREFIX_AWARE`.
    #   @return [String]
    #
    # @!attribute [rw] custom_attributes
    #   Provides additional information about the inference request. The
    #   value is an opaque string that the router passes, unchanged, to the
    #   model container of the destination that serves the request. The
    #   value can contain up to 1,024 visible US-ASCII characters.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The input data for the inference, in the format that your model
    #   expects. The body can't be empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/InvokeInferenceRouterInput AWS API Documentation
    #
    class InvokeInferenceRouterInput < Struct.new(
      :inference_router_name,
      :routing_target_name,
      :content_type,
      :accept,
      :inference_id,
      :prefix_aware_id,
      :custom_attributes,
      :body)
      SENSITIVE = [:custom_attributes, :body]
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   The inference that the model returned.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the inference returned in the response body.
    #   @return [String]
    #
    # @!attribute [rw] invoked_routed_resource_arn
    #   The Amazon Resource Name (ARN) of the endpoint or inference
    #   component that served the request.
    #   @return [String]
    #
    # @!attribute [rw] routing_reason
    #   The reason that the router chose the destination that served the
    #   request. Possible values:
    #
    #   * `local-preferred` – The destination is a healthy destination in
    #     the router's Region.
    #
    #   * `capacity-available` – No destination in the router's Region
    #     could take the request, and two or more destinations in other
    #     Regions could.
    #
    #   * `only-healthy` – No destination in the router's Region could take
    #     the request, and exactly one destination in another Region could.
    #
    #   * `failover` – The router moved the request away from destinations
    #     in its Region because they were overloaded or returning errors.
    #     You also see this value when the router can't assess destination
    #     health, and when no destination is healthy and the router tries
    #     one anyway.
    #   @return [String]
    #
    # @!attribute [rw] invoked_production_variant
    #   The production variant of the destination endpoint that served the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] custom_attributes
    #   Provides additional information in the response about the inference.
    #   This is the value that the model container of the destination
    #   returned, unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/InvokeInferenceRouterOutput AWS API Documentation
    #
    class InvokeInferenceRouterOutput < Struct.new(
      :body,
      :content_type,
      :invoked_routed_resource_arn,
      :routing_reason,
      :invoked_production_variant,
      :custom_attributes)
      SENSITIVE = [:body, :custom_attributes]
      include Aws::Structure
    end

    # The model in the destination that served the request returned an
    # error. Check `OriginalStatusCode`, `OriginalMessage`, and the
    # destination's logs in Amazon CloudWatch.
    #
    # @!attribute [rw] message
    #   A message that describes the error.
    #   @return [String]
    #
    # @!attribute [rw] original_status_code
    #   The HTTP status code that the model container returned.
    #   @return [Integer]
    #
    # @!attribute [rw] original_message
    #   The error message that the model container returned.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_arn
    #   The Amazon Resource Name (ARN) of the Amazon CloudWatch log stream
    #   for the destination that served the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/ModelError AWS API Documentation
    #
    class ModelError < Struct.new(
      :message,
      :original_status_code,
      :original_message,
      :log_stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination isn't ready to serve the model, for example because
    # an inference component has no copies. Retry the request later.
    #
    # @!attribute [rw] message
    #   A message that describes the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/ModelNotReadyException AWS API Documentation
    #
    class ModelNotReadyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The inference router didn't receive the complete request within 300
    # seconds of accepting it, for example because of a very slow upload.
    # Retry the request.
    #
    # @!attribute [rw] message
    #   A message that describes the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/RequestTimeoutException AWS API Documentation
    #
    class RequestTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is temporarily unavailable. For example, no destination of
    # the routing target could serve the request, or a destination didn't
    # respond. Retry the request with exponential backoff. The Amazon Web
    # Services SDKs and the Amazon Web Services CLI do this by default.
    #
    # @!attribute [rw] message
    #   A message that describes the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because you exceeded the request rate for the
    # inference router, or because a destination throttled the request.
    # Retry the request with exponential backoff.
    #
    # @!attribute [rw] message
    #   A message that describes the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request isn't valid. Check the inference router name, the routing
    # target name, and the request parameters, and then try again.
    #
    # @!attribute [rw] message
    #   A message that describes the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

