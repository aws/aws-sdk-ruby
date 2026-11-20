# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerGatewayRuntime
  module Types

    # The caller is not authorized to invoke this gateway. Invoking requires
    # the `sagemaker:InvokeGlobalInferenceGateway` permission, or
    # `sagemaker:InvokeGlobalInferenceGatewayWithResponseStream` for the
    # streaming operation, on the gateway ARN. A message starting `inference
    # gateway` means the inference gateway serving the model refused the
    # request with a 401 or 403, for example for its customer identity
    # token. Its status code is in the message (the response status is 403),
    # and up to 256 bytes of its error message are quoted.
    #
    # @!attribute [rw] message
    #   A description of the error. It starts with a prefix such as `Global
    #   Inference Gateway:` or `inference gateway:` that says where the
    #   error came from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # 502 -- The gateway could not get a usable response from the inference
    # gateway. The `Message` prefix says why:
    #
    # * `Global Inference Gateway: could not reach the inference gateway:
    #   <reason>` -- the request could not be sent, or the connection closed
    #   before a response arrived (for example, the connection failed, or
    #   the inference gateway closed it after reading the request).
    # * `Global Inference Gateway: timed out waiting for the inference
    #   gateway` -- on the buffered operation, the inference gateway stopped
    #   sending partway through the response body and the gateway's read
    #   timeout expired. (The same text on a GatewayTimeoutException means
    #   no response arrived.)
    # * Any other `Global Inference Gateway:` message -- the gateway ended a
    #   response before it was complete, for example because it exceeded the
    #   10 MiB limit of the buffered operation, the request exceeded its
    #   maximum duration, or the inference gateway was taken out of service.
    # * `inference gateway: <status> <message>` -- the inference gateway
    #   serving the model returned a 502, 500, 503 or another 5xx error. Its
    #   status code is in the message (the response status is 502), and up
    #   to 256 bytes of its error message are quoted.
    # * `inference gateway: response ended unexpectedly` -- the inference
    #   gateway's connection failed while it was sending the response.
    #
    # The inference gateway names a component in the prefix when it reports
    # one: `inference gateway (<component>):`, where the component is
    # `config` (the inference gateway's configuration and proxy layer),
    # `scheduler` (its request scheduler), `model selector` (its model
    # selector) or `model server` (the model server).
    #
    # Not modeled as retryable: a 502 can mean the inference already ran,
    # and the gateway may already have tried another inference gateway.
    # Standard SDK retry modes may still retry a 5xx status, which would run
    # (and bill) the inference again; set max attempts to 1 if a repeated
    # inference is unacceptable.
    #
    # @!attribute [rw] message
    #   A description of the error. It starts with a prefix such as `Global
    #   Inference Gateway:` or `inference gateway:` that says where the
    #   error came from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/BadGatewayException AWS API Documentation
    #
    class BadGatewayException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # 504 -- The inference gateway did not respond in time. The `Message`
    # prefix says whose time limit expired:
    #
    # * `Global Inference Gateway: timed out waiting for the inference
    #   gateway` -- the gateway's limit on the wait for the first part of
    #   the response.
    # * `inference gateway: <status> <message>` -- the inference gateway
    #   serving the model returned a 504, or a 408 because it timed out
    #   waiting for the request to arrive. Its status code is in the message
    #   (the response status is 504), and up to 256 bytes of its error
    #   message are quoted.
    #
    # The inference gateway names a component in the prefix when it reports
    # one: `inference gateway (<component>):`, where the component is
    # `config` (the inference gateway's configuration and proxy layer),
    # `scheduler` (its request scheduler), `model selector` (its model
    # selector) or `model server` (the model server).
    #
    # Not modeled as retryable: a timeout does not prove the inference did
    # not run, and the gateway may already have tried another inference
    # gateway. Standard SDK retry modes may still retry a 5xx status, which
    # could run (and bill) the inference again; set max attempts to 1 if a
    # repeated inference is unacceptable.
    #
    # @!attribute [rw] message
    #   A description of the error. It starts with a prefix such as `Global
    #   Inference Gateway:` or `inference gateway:` that says where the
    #   error came from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/GatewayTimeoutException AWS API Documentation
    #
    class GatewayTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected internal failure occurred.
    #
    # @!attribute [rw] message
    #   A description of the error. It starts with `Global Inference
    #   Gateway:`, because the Global Inference Gateway returns this error
    #   itself.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A failure after the stream started. The `Message` says where it came
    # from: `Global Inference Gateway:` when a gateway time limit expired or
    # the inference gateway was taken out of service, or `inference gateway:
    # response ended unexpectedly` when the inference gateway's connection
    # failed while it was sending the response. The stream ends after this
    # event.
    #
    # @!attribute [rw] message
    #   A description of the failure. It starts with `Global Inference
    #   Gateway:` or `inference gateway:`, which says where the failure came
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/InternalStreamFailure AWS API Documentation
    #
    class InternalStreamFailure < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for InvokeGlobalInferenceGateway.
    #
    # @!attribute [rw] gateway_id
    #   The ID of the Global Inference Gateway to invoke. IAM policies refer
    #   to the gateway by its ARN,
    #   `arn:<partition>:sagemaker:<region>:<account>:global-inference-gateway/<id>`.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The MIME type you want for the response. It is passed to the model
    #   server.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the request body. Pass `application/json`
    #   (parameters such as `charset=utf-8` are allowed): the body is one
    #   OpenAI JSON object. The Global Inference Gateway rejects other
    #   content types with a 415 error.
    #   @return [String]
    #
    # @!attribute [rw] customer_identity_token
    #   Per-caller customer identity token (a JWT), forwarded unchanged to
    #   the inference gateway, which validates it. The gateway does not use
    #   it to authorize the request. Include it in the SigV4 signed headers
    #   so it cannot be altered in transit. Redacted from logs, metrics and
    #   traces.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The inference request body: one OpenAI JSON object, at most 10 MiB.
    #   Its content is passed to the model server unchanged, except that the
    #   request is always sent with `"stream": false`: this operation
    #   returns one JSON document, so a `"stream": true` in the body is
    #   overridden (use InvokeGlobalInferenceGatewayWithResponseStream to
    #   stream). A body that is not one JSON object, or that repeats the
    #   top-level `model` key with different values, is rejected with a 400
    #   validation error. A body larger than 10 MiB is rejected with
    #   PayloadTooLargeException (413). The gateway reads only `model` and
    #   `stream`, and does not store the body.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/InvokeGlobalInferenceGatewayInput AWS API Documentation
    #
    class InvokeGlobalInferenceGatewayInput < Struct.new(
      :gateway_id,
      :accept,
      :content_type,
      :customer_identity_token,
      :body)
      SENSITIVE = [:customer_identity_token, :body]
      include Aws::Structure
    end

    # The response from InvokeGlobalInferenceGateway.
    #
    # @!attribute [rw] body
    #   The model server's OpenAI completion JSON, returned unchanged. A
    #   response larger than 10 MiB fails with BadGatewayException (502).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/InvokeGlobalInferenceGatewayOutput AWS API Documentation
    #
    class InvokeGlobalInferenceGatewayOutput < Struct.new(
      :body)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # The request for InvokeGlobalInferenceGatewayWithResponseStream. It has
    # the same members as the InvokeGlobalInferenceGateway request.
    #
    # @!attribute [rw] gateway_id
    #   The ID of the Global Inference Gateway to invoke, as for
    #   InvokeGlobalInferenceGateway.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The MIME type you want for the response. It is passed to the model
    #   server.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the request body, as for
    #   InvokeGlobalInferenceGateway. Pass `application/json`.
    #   @return [String]
    #
    # @!attribute [rw] customer_identity_token
    #   The customer identity token (a JWT), as for
    #   InvokeGlobalInferenceGateway. It is passed unchanged to the
    #   inference gateway, which validates it.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The inference request body, as for InvokeGlobalInferenceGateway,
    #   except that the request is always sent with `"stream": true`: this
    #   operation returns an event stream, so a `"stream": false` in the
    #   body (or no `stream` key) is overridden. A body larger than 10 MiB
    #   is rejected with PayloadTooLargeException (413).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/InvokeGlobalInferenceGatewayWithResponseStreamInput AWS API Documentation
    #
    class InvokeGlobalInferenceGatewayWithResponseStreamInput < Struct.new(
      :gateway_id,
      :accept,
      :content_type,
      :customer_identity_token,
      :body)
      SENSITIVE = [:customer_identity_token, :body]
      include Aws::Structure
    end

    # The response from InvokeGlobalInferenceGatewayWithResponseStream.
    #
    # @!attribute [rw] body
    #   The response as an AWS event stream
    #   (application/vnd.amazon.eventstream).
    #   @return [Types::ResponseStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/InvokeGlobalInferenceGatewayWithResponseStreamOutput AWS API Documentation
    #
    class InvokeGlobalInferenceGatewayWithResponseStreamOutput < Struct.new(
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reserved for a model error during the stream. Not currently sent; a
    # failure after the stream starts is reported as InternalStreamFailure.
    #
    # @!attribute [rw] message
    #   A description of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code: `StreamBroken` if the model server's stream broke
    #   before it completed, or `ModelInvocationTimeExceeded` if the model
    #   exceeded its allowed invocation time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/ModelStreamError AWS API Documentation
    #
    class ModelStreamError < Struct.new(
      :message,
      :error_code,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A part of the streamed response.
    #
    # @!attribute [rw] bytes
    #   The bytes of this part: a chunk of the model server's server-sent
    #   event (SSE) stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/PayloadPart AWS API Documentation
    #
    class PayloadPart < Struct.new(
      :bytes,
      :event_type)
      SENSITIVE = [:bytes]
      include Aws::Structure
    end

    # The request body exceeds the 10 MiB limit. Reduce the size of the
    # payload and send the request again.
    #
    # @!attribute [rw] message
    #   A description of the error. It starts with `Global Inference
    #   Gateway:`, because the Global Inference Gateway returns this error
    #   itself.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/PayloadTooLargeException AWS API Documentation
    #
    class PayloadTooLargeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # No gateway with this ID exists in this account and Region, or no
    # target of the gateway serves the model named in the request body. A
    # model that is served but has no available target right now returns
    # ServiceUnavailableException instead. A message starting `inference
    # gateway` means the inference gateway serving the model returned a 404;
    # up to 256 bytes of its error message are quoted.
    #
    # @!attribute [rw] message
    #   A description of the error. It starts with a prefix such as `Global
    #   Inference Gateway:` or `inference gateway:` that says where the
    #   error came from.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that was not found: the gateway ID, or the
    #   model name.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The kind of resource that was not found: the gateway, or the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is temporarily unable to serve the request, for example
    # because no capacity is available for the requested model. The request
    # was not dispatched for inference. A 503 returned by the inference
    # gateway serving the model after dispatch is reported as
    # BadGatewayException, with the 503 in its `Message`, not as this error.
    #
    # @!attribute [rw] message
    #   A description of the error. It starts with `Global Inference
    #   Gateway:`, because the Global Inference Gateway returns this error
    #   itself.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was throttled before it was dispatched for inference.
    # Retry the request with backoff, after the `Retry-After` seconds when
    # the response carries one. A message starting `inference gateway` means
    # the last inference gateway tried for the model returned a 429. The
    # gateway may have tried others first, and they may have failed for
    # other reasons. Up to 256 bytes of its error message are quoted.
    #
    # @!attribute [rw] message
    #   A description of the error. It starts with a prefix such as `Global
    #   Inference Gateway:` or `inference gateway:` that says where the
    #   error came from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The events in the response stream. The response arrives as PayloadPart
    # events. A failure after the stream starts arrives as one
    # InternalStreamFailure event, and then the stream ends.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-gateway-runtime-2026-10-01/ResponseStream AWS API Documentation
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

