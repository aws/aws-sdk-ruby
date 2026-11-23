# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SageMakerGatewayRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    BadGatewayException = Shapes::StructureShape.new(name: 'BadGatewayException')
    CustomerIdentityToken = Shapes::StringShape.new(name: 'CustomerIdentityToken')
    GatewayId = Shapes::StringShape.new(name: 'GatewayId')
    GatewayTimeoutException = Shapes::StructureShape.new(name: 'GatewayTimeoutException')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InternalStreamFailure = Shapes::StructureShape.new(name: 'InternalStreamFailure')
    InvokeGlobalInferenceGatewayInput = Shapes::StructureShape.new(name: 'InvokeGlobalInferenceGatewayInput')
    InvokeGlobalInferenceGatewayOutput = Shapes::StructureShape.new(name: 'InvokeGlobalInferenceGatewayOutput')
    InvokeGlobalInferenceGatewayWithResponseStreamInput = Shapes::StructureShape.new(name: 'InvokeGlobalInferenceGatewayWithResponseStreamInput')
    InvokeGlobalInferenceGatewayWithResponseStreamOutput = Shapes::StructureShape.new(name: 'InvokeGlobalInferenceGatewayWithResponseStreamOutput')
    ModelStreamError = Shapes::StructureShape.new(name: 'ModelStreamError')
    PayloadPart = Shapes::StructureShape.new(name: 'PayloadPart')
    PayloadTooLargeException = Shapes::StructureShape.new(name: 'PayloadTooLargeException')
    RequestContentType = Shapes::StringShape.new(name: 'RequestContentType')
    RequestPayloadBlob = Shapes::BlobShape.new(name: 'RequestPayloadBlob')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponsePayloadBlob = Shapes::BlobShape.new(name: 'ResponsePayloadBlob')
    ResponseStream = Shapes::StructureShape.new(name: 'ResponseStream')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StreamChunkBlob = Shapes::BlobShape.new(name: 'StreamChunkBlob')
    StreamErrorCode = Shapes::StringShape.new(name: 'StreamErrorCode')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BadGatewayException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    BadGatewayException.struct_class = Types::BadGatewayException

    GatewayTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    GatewayTimeoutException.struct_class = Types::GatewayTimeoutException

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InternalStreamFailure.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalStreamFailure.struct_class = Types::InternalStreamFailure

    InvokeGlobalInferenceGatewayInput.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "GatewayId"))
    InvokeGlobalInferenceGatewayInput.add_member(:accept, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Accept"))
    InvokeGlobalInferenceGatewayInput.add_member(:content_type, Shapes::ShapeRef.new(shape: RequestContentType, required: true, location: "header", location_name: "Content-Type"))
    InvokeGlobalInferenceGatewayInput.add_member(:customer_identity_token, Shapes::ShapeRef.new(shape: CustomerIdentityToken, location: "header", location_name: "X-Amzn-SageMaker-Customer-Identity-Token"))
    InvokeGlobalInferenceGatewayInput.add_member(:body, Shapes::ShapeRef.new(shape: RequestPayloadBlob, required: true, location_name: "Body", metadata: {"jsonvalue" => true}))
    InvokeGlobalInferenceGatewayInput.struct_class = Types::InvokeGlobalInferenceGatewayInput
    InvokeGlobalInferenceGatewayInput[:payload] = :body
    InvokeGlobalInferenceGatewayInput[:payload_member] = InvokeGlobalInferenceGatewayInput.member(:body)

    InvokeGlobalInferenceGatewayOutput.add_member(:body, Shapes::ShapeRef.new(shape: ResponsePayloadBlob, location_name: "Body", metadata: {"jsonvalue" => true}))
    InvokeGlobalInferenceGatewayOutput.struct_class = Types::InvokeGlobalInferenceGatewayOutput
    InvokeGlobalInferenceGatewayOutput[:payload] = :body
    InvokeGlobalInferenceGatewayOutput[:payload_member] = InvokeGlobalInferenceGatewayOutput.member(:body)

    InvokeGlobalInferenceGatewayWithResponseStreamInput.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "GatewayId"))
    InvokeGlobalInferenceGatewayWithResponseStreamInput.add_member(:accept, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Accept"))
    InvokeGlobalInferenceGatewayWithResponseStreamInput.add_member(:content_type, Shapes::ShapeRef.new(shape: RequestContentType, required: true, location: "header", location_name: "Content-Type"))
    InvokeGlobalInferenceGatewayWithResponseStreamInput.add_member(:customer_identity_token, Shapes::ShapeRef.new(shape: CustomerIdentityToken, location: "header", location_name: "X-Amzn-SageMaker-Customer-Identity-Token"))
    InvokeGlobalInferenceGatewayWithResponseStreamInput.add_member(:body, Shapes::ShapeRef.new(shape: RequestPayloadBlob, required: true, location_name: "Body", metadata: {"jsonvalue" => true}))
    InvokeGlobalInferenceGatewayWithResponseStreamInput.struct_class = Types::InvokeGlobalInferenceGatewayWithResponseStreamInput
    InvokeGlobalInferenceGatewayWithResponseStreamInput[:payload] = :body
    InvokeGlobalInferenceGatewayWithResponseStreamInput[:payload_member] = InvokeGlobalInferenceGatewayWithResponseStreamInput.member(:body)

    InvokeGlobalInferenceGatewayWithResponseStreamOutput.add_member(:body, Shapes::ShapeRef.new(shape: ResponseStream, eventstream: true, location_name: "Body"))
    InvokeGlobalInferenceGatewayWithResponseStreamOutput.struct_class = Types::InvokeGlobalInferenceGatewayWithResponseStreamOutput
    InvokeGlobalInferenceGatewayWithResponseStreamOutput[:payload] = :body
    InvokeGlobalInferenceGatewayWithResponseStreamOutput[:payload_member] = InvokeGlobalInferenceGatewayWithResponseStreamOutput.member(:body)

    ModelStreamError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ModelStreamError.add_member(:error_code, Shapes::ShapeRef.new(shape: StreamErrorCode, location_name: "ErrorCode"))
    ModelStreamError.struct_class = Types::ModelStreamError

    PayloadPart.add_member(:bytes, Shapes::ShapeRef.new(shape: StreamChunkBlob, eventpayload: true, eventpayload_type: 'blob', location_name: "Bytes", metadata: {"eventpayload" => true}))
    PayloadPart.struct_class = Types::PayloadPart

    PayloadTooLargeException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    PayloadTooLargeException.struct_class = Types::PayloadTooLargeException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseStream.add_member(:payload_part, Shapes::ShapeRef.new(shape: PayloadPart, event: true, location_name: "PayloadPart"))
    ResponseStream.add_member(:model_stream_error, Shapes::ShapeRef.new(shape: ModelStreamError, location_name: "ModelStreamError"))
    ResponseStream.add_member(:internal_stream_failure, Shapes::ShapeRef.new(shape: InternalStreamFailure, location_name: "InternalStreamFailure"))
    ResponseStream.struct_class = Types::ResponseStream

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-10-01"

      api.metadata = {
        "apiVersion" => "2026-10-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "gateway-runtime.sagemaker",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon SageMaker Gateway Runtime",
        "serviceId" => "SageMaker Gateway Runtime",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
        "uid" => "sagemaker-gateway-runtime-2026-10-01",
      }

      api.add_operation(:invoke_global_inference_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeGlobalInferenceGateway"
        o.http_method = "POST"
        o.http_request_uri = "/global-inference-gateway/{GatewayId}/invocations"
        o.input = Shapes::ShapeRef.new(shape: InvokeGlobalInferenceGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: InvokeGlobalInferenceGatewayOutput)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:invoke_global_inference_gateway_with_response_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeGlobalInferenceGatewayWithResponseStream"
        o.http_method = "POST"
        o.http_request_uri = "/global-inference-gateway/{GatewayId}/invocations-response-stream"
        o.input = Shapes::ShapeRef.new(shape: InvokeGlobalInferenceGatewayWithResponseStreamInput)
        o.output = Shapes::ShapeRef.new(shape: InvokeGlobalInferenceGatewayWithResponseStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ModelStreamError)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: InternalStreamFailure)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
