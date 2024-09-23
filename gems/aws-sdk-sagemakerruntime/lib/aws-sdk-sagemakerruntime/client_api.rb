# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SageMakerRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    BodyBlob = Shapes::BlobShape.new(name: 'BodyBlob')
    CustomAttributesHeader = Shapes::StringShape.new(name: 'CustomAttributesHeader')
    EnableExplanationsHeader = Shapes::StringShape.new(name: 'EnableExplanationsHeader')
    EndpointName = Shapes::StringShape.new(name: 'EndpointName')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    Header = Shapes::StringShape.new(name: 'Header')
    InferenceComponentHeader = Shapes::StringShape.new(name: 'InferenceComponentHeader')
    InferenceId = Shapes::StringShape.new(name: 'InferenceId')
    InputLocationHeader = Shapes::StringShape.new(name: 'InputLocationHeader')
    InternalDependencyException = Shapes::StructureShape.new(name: 'InternalDependencyException')
    InternalFailure = Shapes::StructureShape.new(name: 'InternalFailure')
    InternalStreamFailure = Shapes::StructureShape.new(name: 'InternalStreamFailure')
    InvocationTimeoutSecondsHeader = Shapes::IntegerShape.new(name: 'InvocationTimeoutSecondsHeader')
    InvokeEndpointAsyncInput = Shapes::StructureShape.new(name: 'InvokeEndpointAsyncInput')
    InvokeEndpointAsyncOutput = Shapes::StructureShape.new(name: 'InvokeEndpointAsyncOutput')
    InvokeEndpointInput = Shapes::StructureShape.new(name: 'InvokeEndpointInput')
    InvokeEndpointOutput = Shapes::StructureShape.new(name: 'InvokeEndpointOutput')
    InvokeEndpointWithResponseStreamInput = Shapes::StructureShape.new(name: 'InvokeEndpointWithResponseStreamInput')
    InvokeEndpointWithResponseStreamOutput = Shapes::StructureShape.new(name: 'InvokeEndpointWithResponseStreamOutput')
    LogStreamArn = Shapes::StringShape.new(name: 'LogStreamArn')
    Message = Shapes::StringShape.new(name: 'Message')
    ModelError = Shapes::StructureShape.new(name: 'ModelError')
    ModelNotReadyException = Shapes::StructureShape.new(name: 'ModelNotReadyException')
    ModelStreamError = Shapes::StructureShape.new(name: 'ModelStreamError')
    NewSessionResponseHeader = Shapes::StringShape.new(name: 'NewSessionResponseHeader')
    PartBlob = Shapes::BlobShape.new(name: 'PartBlob')
    PayloadPart = Shapes::StructureShape.new(name: 'PayloadPart')
    RequestTTLSecondsHeader = Shapes::IntegerShape.new(name: 'RequestTTLSecondsHeader')
    ResponseStream = Shapes::StructureShape.new(name: 'ResponseStream')
    ServiceUnavailable = Shapes::StructureShape.new(name: 'ServiceUnavailable')
    SessionIdHeader = Shapes::StringShape.new(name: 'SessionIdHeader')
    SessionIdOrNewSessionConstantHeader = Shapes::StringShape.new(name: 'SessionIdOrNewSessionConstantHeader')
    StatusCode = Shapes::IntegerShape.new(name: 'StatusCode')
    TargetContainerHostnameHeader = Shapes::StringShape.new(name: 'TargetContainerHostnameHeader')
    TargetModelHeader = Shapes::StringShape.new(name: 'TargetModelHeader')
    TargetVariantHeader = Shapes::StringShape.new(name: 'TargetVariantHeader')
    ValidationError = Shapes::StructureShape.new(name: 'ValidationError')

    InternalDependencyException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InternalDependencyException.struct_class = Types::InternalDependencyException

    InternalFailure.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InternalFailure.struct_class = Types::InternalFailure

    InternalStreamFailure.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InternalStreamFailure.struct_class = Types::InternalStreamFailure

    InvokeEndpointAsyncInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location: "uri", location_name: "EndpointName"))
    InvokeEndpointAsyncInput.add_member(:content_type, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "X-Amzn-SageMaker-Content-Type"))
    InvokeEndpointAsyncInput.add_member(:accept, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "X-Amzn-SageMaker-Accept"))
    InvokeEndpointAsyncInput.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: CustomAttributesHeader, location: "header", location_name: "X-Amzn-SageMaker-Custom-Attributes"))
    InvokeEndpointAsyncInput.add_member(:inference_id, Shapes::ShapeRef.new(shape: InferenceId, location: "header", location_name: "X-Amzn-SageMaker-Inference-Id"))
    InvokeEndpointAsyncInput.add_member(:input_location, Shapes::ShapeRef.new(shape: InputLocationHeader, required: true, location: "header", location_name: "X-Amzn-SageMaker-InputLocation"))
    InvokeEndpointAsyncInput.add_member(:request_ttl_seconds, Shapes::ShapeRef.new(shape: RequestTTLSecondsHeader, location: "header", location_name: "X-Amzn-SageMaker-RequestTTLSeconds"))
    InvokeEndpointAsyncInput.add_member(:invocation_timeout_seconds, Shapes::ShapeRef.new(shape: InvocationTimeoutSecondsHeader, location: "header", location_name: "X-Amzn-SageMaker-InvocationTimeoutSeconds"))
    InvokeEndpointAsyncInput.struct_class = Types::InvokeEndpointAsyncInput

    InvokeEndpointAsyncOutput.add_member(:inference_id, Shapes::ShapeRef.new(shape: Header, location_name: "InferenceId"))
    InvokeEndpointAsyncOutput.add_member(:output_location, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "X-Amzn-SageMaker-OutputLocation"))
    InvokeEndpointAsyncOutput.add_member(:failure_location, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "X-Amzn-SageMaker-FailureLocation"))
    InvokeEndpointAsyncOutput.struct_class = Types::InvokeEndpointAsyncOutput

    InvokeEndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location: "uri", location_name: "EndpointName"))
    InvokeEndpointInput.add_member(:body, Shapes::ShapeRef.new(shape: BodyBlob, required: true, location_name: "Body"))
    InvokeEndpointInput.add_member(:content_type, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "Content-Type"))
    InvokeEndpointInput.add_member(:accept, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "Accept"))
    InvokeEndpointInput.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: CustomAttributesHeader, location: "header", location_name: "X-Amzn-SageMaker-Custom-Attributes"))
    InvokeEndpointInput.add_member(:target_model, Shapes::ShapeRef.new(shape: TargetModelHeader, location: "header", location_name: "X-Amzn-SageMaker-Target-Model"))
    InvokeEndpointInput.add_member(:target_variant, Shapes::ShapeRef.new(shape: TargetVariantHeader, location: "header", location_name: "X-Amzn-SageMaker-Target-Variant"))
    InvokeEndpointInput.add_member(:target_container_hostname, Shapes::ShapeRef.new(shape: TargetContainerHostnameHeader, location: "header", location_name: "X-Amzn-SageMaker-Target-Container-Hostname"))
    InvokeEndpointInput.add_member(:inference_id, Shapes::ShapeRef.new(shape: InferenceId, location: "header", location_name: "X-Amzn-SageMaker-Inference-Id"))
    InvokeEndpointInput.add_member(:enable_explanations, Shapes::ShapeRef.new(shape: EnableExplanationsHeader, location: "header", location_name: "X-Amzn-SageMaker-Enable-Explanations"))
    InvokeEndpointInput.add_member(:inference_component_name, Shapes::ShapeRef.new(shape: InferenceComponentHeader, location: "header", location_name: "X-Amzn-SageMaker-Inference-Component"))
    InvokeEndpointInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionIdOrNewSessionConstantHeader, location: "header", location_name: "X-Amzn-SageMaker-Session-Id"))
    InvokeEndpointInput.struct_class = Types::InvokeEndpointInput
    InvokeEndpointInput[:payload] = :body
    InvokeEndpointInput[:payload_member] = InvokeEndpointInput.member(:body)

    InvokeEndpointOutput.add_member(:body, Shapes::ShapeRef.new(shape: BodyBlob, required: true, location_name: "Body"))
    InvokeEndpointOutput.add_member(:content_type, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "Content-Type"))
    InvokeEndpointOutput.add_member(:invoked_production_variant, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "x-Amzn-Invoked-Production-Variant"))
    InvokeEndpointOutput.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: CustomAttributesHeader, location: "header", location_name: "X-Amzn-SageMaker-Custom-Attributes"))
    InvokeEndpointOutput.add_member(:new_session_id, Shapes::ShapeRef.new(shape: NewSessionResponseHeader, location: "header", location_name: "X-Amzn-SageMaker-New-Session-Id"))
    InvokeEndpointOutput.add_member(:closed_session_id, Shapes::ShapeRef.new(shape: SessionIdHeader, location: "header", location_name: "X-Amzn-SageMaker-Closed-Session-Id"))
    InvokeEndpointOutput.struct_class = Types::InvokeEndpointOutput
    InvokeEndpointOutput[:payload] = :body
    InvokeEndpointOutput[:payload_member] = InvokeEndpointOutput.member(:body)

    InvokeEndpointWithResponseStreamInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location: "uri", location_name: "EndpointName"))
    InvokeEndpointWithResponseStreamInput.add_member(:body, Shapes::ShapeRef.new(shape: BodyBlob, required: true, location_name: "Body"))
    InvokeEndpointWithResponseStreamInput.add_member(:content_type, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "Content-Type"))
    InvokeEndpointWithResponseStreamInput.add_member(:accept, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "X-Amzn-SageMaker-Accept"))
    InvokeEndpointWithResponseStreamInput.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: CustomAttributesHeader, location: "header", location_name: "X-Amzn-SageMaker-Custom-Attributes"))
    InvokeEndpointWithResponseStreamInput.add_member(:target_variant, Shapes::ShapeRef.new(shape: TargetVariantHeader, location: "header", location_name: "X-Amzn-SageMaker-Target-Variant"))
    InvokeEndpointWithResponseStreamInput.add_member(:target_container_hostname, Shapes::ShapeRef.new(shape: TargetContainerHostnameHeader, location: "header", location_name: "X-Amzn-SageMaker-Target-Container-Hostname"))
    InvokeEndpointWithResponseStreamInput.add_member(:inference_id, Shapes::ShapeRef.new(shape: InferenceId, location: "header", location_name: "X-Amzn-SageMaker-Inference-Id"))
    InvokeEndpointWithResponseStreamInput.add_member(:inference_component_name, Shapes::ShapeRef.new(shape: InferenceComponentHeader, location: "header", location_name: "X-Amzn-SageMaker-Inference-Component"))
    InvokeEndpointWithResponseStreamInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionIdHeader, location: "header", location_name: "X-Amzn-SageMaker-Session-Id"))
    InvokeEndpointWithResponseStreamInput.struct_class = Types::InvokeEndpointWithResponseStreamInput
    InvokeEndpointWithResponseStreamInput[:payload] = :body
    InvokeEndpointWithResponseStreamInput[:payload_member] = InvokeEndpointWithResponseStreamInput.member(:body)

    InvokeEndpointWithResponseStreamOutput.add_member(:body, Shapes::ShapeRef.new(shape: ResponseStream, required: true, eventstream: true, location_name: "Body"))
    InvokeEndpointWithResponseStreamOutput.add_member(:content_type, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "X-Amzn-SageMaker-Content-Type"))
    InvokeEndpointWithResponseStreamOutput.add_member(:invoked_production_variant, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "x-Amzn-Invoked-Production-Variant"))
    InvokeEndpointWithResponseStreamOutput.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: CustomAttributesHeader, location: "header", location_name: "X-Amzn-SageMaker-Custom-Attributes"))
    InvokeEndpointWithResponseStreamOutput.struct_class = Types::InvokeEndpointWithResponseStreamOutput
    InvokeEndpointWithResponseStreamOutput[:payload] = :body
    InvokeEndpointWithResponseStreamOutput[:payload_member] = InvokeEndpointWithResponseStreamOutput.member(:body)

    ModelError.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ModelError.add_member(:original_status_code, Shapes::ShapeRef.new(shape: StatusCode, location_name: "OriginalStatusCode"))
    ModelError.add_member(:original_message, Shapes::ShapeRef.new(shape: Message, location_name: "OriginalMessage"))
    ModelError.add_member(:log_stream_arn, Shapes::ShapeRef.new(shape: LogStreamArn, location_name: "LogStreamArn"))
    ModelError.struct_class = Types::ModelError

    ModelNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ModelNotReadyException.struct_class = Types::ModelNotReadyException

    ModelStreamError.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ModelStreamError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    ModelStreamError.struct_class = Types::ModelStreamError

    PayloadPart.add_member(:bytes, Shapes::ShapeRef.new(shape: PartBlob, eventpayload: true, eventpayload_type: 'blob', location_name: "Bytes", metadata: {"eventpayload"=>true}))
    PayloadPart.struct_class = Types::PayloadPart

    ResponseStream.add_member(:payload_part, Shapes::ShapeRef.new(shape: PayloadPart, event: true, location_name: "PayloadPart"))
    ResponseStream.add_member(:model_stream_error, Shapes::ShapeRef.new(shape: ModelStreamError, location_name: "ModelStreamError"))
    ResponseStream.add_member(:internal_stream_failure, Shapes::ShapeRef.new(shape: InternalStreamFailure, location_name: "InternalStreamFailure"))
    ResponseStream.struct_class = Types::ResponseStream

    ServiceUnavailable.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ServiceUnavailable.struct_class = Types::ServiceUnavailable

    ValidationError.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ValidationError.struct_class = Types::ValidationError


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-05-13"

      api.metadata = {
        "apiVersion" => "2017-05-13",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "runtime.sagemaker",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon SageMaker Runtime",
        "serviceId" => "SageMaker Runtime",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
        "uid" => "runtime.sagemaker-2017-05-13",
      }

      api.add_operation(:invoke_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/endpoints/{EndpointName}/invocations"
        o.input = Shapes::ShapeRef.new(shape: InvokeEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: InvokeEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailure)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailable)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: ModelError)
        o.errors << Shapes::ShapeRef.new(shape: InternalDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ModelNotReadyException)
      end)

      api.add_operation(:invoke_endpoint_async, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeEndpointAsync"
        o.http_method = "POST"
        o.http_request_uri = "/endpoints/{EndpointName}/async-invocations"
        o.input = Shapes::ShapeRef.new(shape: InvokeEndpointAsyncInput)
        o.output = Shapes::ShapeRef.new(shape: InvokeEndpointAsyncOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailure)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailable)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
      end)

      api.add_operation(:invoke_endpoint_with_response_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeEndpointWithResponseStream"
        o.http_method = "POST"
        o.http_request_uri = "/endpoints/{EndpointName}/invocations-response-stream"
        o.input = Shapes::ShapeRef.new(shape: InvokeEndpointWithResponseStreamInput)
        o.output = Shapes::ShapeRef.new(shape: InvokeEndpointWithResponseStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailure)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailable)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: ModelError)
        o.errors << Shapes::ShapeRef.new(shape: ModelStreamError)
        o.errors << Shapes::ShapeRef.new(shape: InternalStreamFailure)
      end)
    end

  end
end
