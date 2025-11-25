# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SageMakerRuntimeHTTP2
  # @api private
  module ClientApi

    include Seahorse::Model

    InputValidationError = Shapes::StructureShape.new(name: 'InputValidationError')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InternalStreamFailure = Shapes::StructureShape.new(name: 'InternalStreamFailure')
    InvokeEndpointWithBidirectionalStreamInput = Shapes::StructureShape.new(name: 'InvokeEndpointWithBidirectionalStreamInput')
    InvokeEndpointWithBidirectionalStreamInputEndpointNameString = Shapes::StringShape.new(name: 'InvokeEndpointWithBidirectionalStreamInputEndpointNameString')
    InvokeEndpointWithBidirectionalStreamInputModelInvocationPathString = Shapes::StringShape.new(name: 'InvokeEndpointWithBidirectionalStreamInputModelInvocationPathString')
    InvokeEndpointWithBidirectionalStreamInputModelQueryStringString = Shapes::StringShape.new(name: 'InvokeEndpointWithBidirectionalStreamInputModelQueryStringString')
    InvokeEndpointWithBidirectionalStreamInputTargetVariantString = Shapes::StringShape.new(name: 'InvokeEndpointWithBidirectionalStreamInputTargetVariantString')
    InvokeEndpointWithBidirectionalStreamOutput = Shapes::StructureShape.new(name: 'InvokeEndpointWithBidirectionalStreamOutput')
    InvokeEndpointWithBidirectionalStreamOutputInvokedProductionVariantString = Shapes::StringShape.new(name: 'InvokeEndpointWithBidirectionalStreamOutputInvokedProductionVariantString')
    ModelError = Shapes::StructureShape.new(name: 'ModelError')
    ModelStreamError = Shapes::StructureShape.new(name: 'ModelStreamError')
    RequestPayloadPart = Shapes::StructureShape.new(name: 'RequestPayloadPart')
    RequestPayloadPartCompletionStateString = Shapes::StringShape.new(name: 'RequestPayloadPartCompletionStateString')
    RequestPayloadPartDataTypeString = Shapes::StringShape.new(name: 'RequestPayloadPartDataTypeString')
    RequestStreamEvent = Shapes::StructureShape.new(name: 'RequestStreamEvent')
    ResponsePayloadPart = Shapes::StructureShape.new(name: 'ResponsePayloadPart')
    ResponsePayloadPartCompletionStateString = Shapes::StringShape.new(name: 'ResponsePayloadPartCompletionStateString')
    ResponsePayloadPartDataTypeString = Shapes::StringShape.new(name: 'ResponsePayloadPartDataTypeString')
    ResponseStreamEvent = Shapes::StructureShape.new(name: 'ResponseStreamEvent')
    SensitiveBlob = Shapes::BlobShape.new(name: 'SensitiveBlob')
    ServiceUnavailableError = Shapes::StructureShape.new(name: 'ServiceUnavailableError')
    String = Shapes::StringShape.new(name: 'String')

    InputValidationError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InputValidationError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    InputValidationError.struct_class = Types::InputValidationError

    InternalServerError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    InternalServerError.struct_class = Types::InternalServerError

    InternalStreamFailure.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalStreamFailure.struct_class = Types::InternalStreamFailure

    InvokeEndpointWithBidirectionalStreamInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: InvokeEndpointWithBidirectionalStreamInputEndpointNameString, required: true, location: "uri", location_name: "EndpointName"))
    InvokeEndpointWithBidirectionalStreamInput.add_member(:body, Shapes::ShapeRef.new(shape: RequestStreamEvent, required: true, eventstream: true, location_name: "Body"))
    InvokeEndpointWithBidirectionalStreamInput.add_member(:target_variant, Shapes::ShapeRef.new(shape: InvokeEndpointWithBidirectionalStreamInputTargetVariantString, location: "header", location_name: "X-Amzn-SageMaker-Target-Variant"))
    InvokeEndpointWithBidirectionalStreamInput.add_member(:model_invocation_path, Shapes::ShapeRef.new(shape: InvokeEndpointWithBidirectionalStreamInputModelInvocationPathString, location: "header", location_name: "X-Amzn-SageMaker-Model-Invocation-Path"))
    InvokeEndpointWithBidirectionalStreamInput.add_member(:model_query_string, Shapes::ShapeRef.new(shape: InvokeEndpointWithBidirectionalStreamInputModelQueryStringString, location: "header", location_name: "X-Amzn-SageMaker-Model-Query-String"))
    InvokeEndpointWithBidirectionalStreamInput.struct_class = Types::InvokeEndpointWithBidirectionalStreamInput
    InvokeEndpointWithBidirectionalStreamInput[:payload] = :body
    InvokeEndpointWithBidirectionalStreamInput[:payload_member] = InvokeEndpointWithBidirectionalStreamInput.member(:body)

    InvokeEndpointWithBidirectionalStreamOutput.add_member(:body, Shapes::ShapeRef.new(shape: ResponseStreamEvent, required: true, eventstream: true, location_name: "Body"))
    InvokeEndpointWithBidirectionalStreamOutput.add_member(:invoked_production_variant, Shapes::ShapeRef.new(shape: InvokeEndpointWithBidirectionalStreamOutputInvokedProductionVariantString, location: "header", location_name: "X-Amzn-Invoked-Production-Variant"))
    InvokeEndpointWithBidirectionalStreamOutput.struct_class = Types::InvokeEndpointWithBidirectionalStreamOutput
    InvokeEndpointWithBidirectionalStreamOutput[:payload] = :body
    InvokeEndpointWithBidirectionalStreamOutput[:payload_member] = InvokeEndpointWithBidirectionalStreamOutput.member(:body)

    ModelError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ModelError.add_member(:original_status_code, Shapes::ShapeRef.new(shape: Integer, location_name: "OriginalStatusCode"))
    ModelError.add_member(:original_message, Shapes::ShapeRef.new(shape: String, location_name: "OriginalMessage"))
    ModelError.add_member(:log_stream_arn, Shapes::ShapeRef.new(shape: String, location_name: "LogStreamArn"))
    ModelError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    ModelError.struct_class = Types::ModelError

    ModelStreamError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ModelStreamError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    ModelStreamError.struct_class = Types::ModelStreamError

    RequestPayloadPart.add_member(:bytes, Shapes::ShapeRef.new(shape: SensitiveBlob, eventpayload: true, eventpayload_type: 'blob', location_name: "Bytes", metadata: {"eventpayload" => true}))
    RequestPayloadPart.add_member(:data_type, Shapes::ShapeRef.new(shape: RequestPayloadPartDataTypeString, eventheader: true, eventheader_type: 'string', location_name: "DataType", metadata: {"eventheader" => true}))
    RequestPayloadPart.add_member(:completion_state, Shapes::ShapeRef.new(shape: RequestPayloadPartCompletionStateString, eventheader: true, eventheader_type: 'string', location_name: "CompletionState", metadata: {"eventheader" => true}))
    RequestPayloadPart.add_member(:p, Shapes::ShapeRef.new(shape: String, eventheader: true, eventheader_type: 'string', location_name: "P", metadata: {"eventheader" => true}))
    RequestPayloadPart.struct_class = Types::RequestPayloadPart

    RequestStreamEvent.add_member(:payload_part, Shapes::ShapeRef.new(shape: RequestPayloadPart, event: true, location_name: "PayloadPart"))
    RequestStreamEvent.struct_class = Types::RequestStreamEvent

    ResponsePayloadPart.add_member(:bytes, Shapes::ShapeRef.new(shape: SensitiveBlob, eventpayload: true, eventpayload_type: 'blob', location_name: "Bytes", metadata: {"eventpayload" => true}))
    ResponsePayloadPart.add_member(:data_type, Shapes::ShapeRef.new(shape: ResponsePayloadPartDataTypeString, eventheader: true, eventheader_type: 'string', location_name: "DataType", metadata: {"eventheader" => true}))
    ResponsePayloadPart.add_member(:completion_state, Shapes::ShapeRef.new(shape: ResponsePayloadPartCompletionStateString, eventheader: true, eventheader_type: 'string', location_name: "CompletionState", metadata: {"eventheader" => true}))
    ResponsePayloadPart.add_member(:p, Shapes::ShapeRef.new(shape: String, eventheader: true, eventheader_type: 'string', location_name: "P", metadata: {"eventheader" => true}))
    ResponsePayloadPart.struct_class = Types::ResponsePayloadPart

    ResponseStreamEvent.add_member(:payload_part, Shapes::ShapeRef.new(shape: ResponsePayloadPart, event: true, location_name: "PayloadPart"))
    ResponseStreamEvent.add_member(:model_stream_error, Shapes::ShapeRef.new(shape: ModelStreamError, location_name: "ModelStreamError"))
    ResponseStreamEvent.add_member(:internal_stream_failure, Shapes::ShapeRef.new(shape: InternalStreamFailure, location_name: "InternalStreamFailure"))
    ResponseStreamEvent.struct_class = Types::ResponseStreamEvent

    ServiceUnavailableError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    ServiceUnavailableError.struct_class = Types::ServiceUnavailableError


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-10-01"

      api.metadata = {
        "apiVersion" => "2025-10-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "runtime.sagemaker",
        "protocol" => "rest-json",
        "protocolSettings" => {"h2" => "required"},
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon SageMaker Runtime HTTP2",
        "serviceId" => "SageMaker Runtime HTTP2",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
        "uid" => "sagemaker-runtime-http2-2025-10-01",
      }

      api.add_operation(:invoke_endpoint_with_bidirectional_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeEndpointWithBidirectionalStream"
        o.http_method = "POST"
        o.http_request_uri = "/endpoints/{EndpointName}/invocations-bidirectional-stream"
        o.input = Shapes::ShapeRef.new(shape: InvokeEndpointWithBidirectionalStreamInput)
        o.output = Shapes::ShapeRef.new(shape: InvokeEndpointWithBidirectionalStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InputValidationError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableError)
        o.errors << Shapes::ShapeRef.new(shape: ModelStreamError)
        o.errors << Shapes::ShapeRef.new(shape: ModelError)
        o.errors << Shapes::ShapeRef.new(shape: InternalStreamFailure)
        o.async = true
      end)
    end

  end
end
