# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerRuntime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    BodyBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.sagemakerruntime#BodyBlob', name: 'BodyBlob', traits: {"smithy.api#length" => {"min" => 0, "max" => 6291456}, "smithy.api#sensitive" => {}})
    CustomAttributesHeader = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#CustomAttributesHeader', name: 'CustomAttributesHeader', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^\\p{ASCII}*$", "smithy.api#sensitive" => {}})
    EnableExplanationsHeader = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#EnableExplanationsHeader', name: 'EnableExplanationsHeader', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => ".*"})
    EndpointName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#EndpointName', name: 'EndpointName', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#ErrorCode', name: 'ErrorCode')
    Header = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#Header', name: 'Header', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^\\p{ASCII}*$"})
    InferenceComponentHeader = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#InferenceComponentHeader', name: 'InferenceComponentHeader', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9]([\\-a-zA-Z0-9]*[a-zA-Z0-9])?$"})
    InferenceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#InferenceId', name: 'InferenceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\A\\S[\\p{Print}]*\\z$"})
    InputLocationHeader = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#InputLocationHeader', name: 'InputLocationHeader', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(https|s3)://([^/]+)/?(.*)$"})
    InternalDependencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#InternalDependencyException', name: 'InternalDependencyException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 530})
    InternalFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#InternalFailure', name: 'InternalFailure', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InternalStreamFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#InternalStreamFailure', name: 'InternalStreamFailure', traits: {"smithy.api#error" => "server"})
    InvocationTimeoutSecondsHeader = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sagemakerruntime#InvocationTimeoutSecondsHeader', name: 'InvocationTimeoutSecondsHeader', traits: {"smithy.api#range" => {"min" => 1, "max" => 3600}})
    InvokeEndpointAsyncInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#InvokeEndpointAsyncInput', name: 'InvokeEndpointAsyncInput')
    InvokeEndpointAsyncOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#InvokeEndpointAsyncOutput', name: 'InvokeEndpointAsyncOutput')
    InvokeEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#InvokeEndpointInput', name: 'InvokeEndpointInput')
    InvokeEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#InvokeEndpointOutput', name: 'InvokeEndpointOutput')
    InvokeEndpointWithResponseStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#InvokeEndpointWithResponseStreamInput', name: 'InvokeEndpointWithResponseStreamInput')
    InvokeEndpointWithResponseStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#InvokeEndpointWithResponseStreamOutput', name: 'InvokeEndpointWithResponseStreamOutput')
    LogStreamArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#LogStreamArn', name: 'LogStreamArn')
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#Message', name: 'Message', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ModelError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#ModelError', name: 'ModelError', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    ModelNotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#ModelNotReadyException', name: 'ModelNotReadyException', traits: {"aws.protocols#awsQueryError" => {"code" => "ModelNotReadyException", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ModelStreamError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#ModelStreamError', name: 'ModelStreamError', traits: {"smithy.api#error" => "client"})
    NewSessionResponseHeader = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#NewSessionResponseHeader', name: 'NewSessionResponseHeader', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*;\\sExpires=[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}Z$"})
    PartBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.sagemakerruntime#PartBlob', name: 'PartBlob', traits: {"smithy.api#sensitive" => {}})
    PayloadPart = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#PayloadPart', name: 'PayloadPart')
    RequestTTLSecondsHeader = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sagemakerruntime#RequestTTLSecondsHeader', name: 'RequestTTLSecondsHeader', traits: {"smithy.api#range" => {"min" => 60, "max" => 21600}})
    ResponseStream = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.sagemakerruntime#ResponseStream', name: 'ResponseStream', traits: {"smithy.api#streaming" => {}})
    ServiceUnavailable = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#ServiceUnavailable', name: 'ServiceUnavailable', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SessionIdHeader = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#SessionIdHeader', name: 'SessionIdHeader', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    SessionIdOrNewSessionConstantHeader = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#SessionIdOrNewSessionConstantHeader', name: 'SessionIdOrNewSessionConstantHeader', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(NEW_SESSION)$|^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    StatusCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sagemakerruntime#StatusCode', name: 'StatusCode')
    TargetContainerHostnameHeader = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#TargetContainerHostnameHeader', name: 'TargetContainerHostnameHeader', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    TargetModelHeader = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#TargetModelHeader', name: 'TargetModelHeader', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\A\\S[\\p{Print}]*\\z$"})
    TargetVariantHeader = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerruntime#TargetVariantHeader', name: 'TargetVariantHeader', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ValidationError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerruntime#ValidationError', name: 'ValidationError', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    InternalDependencyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    InternalDependencyException.type = Types::InternalDependencyException
    InternalFailure.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    InternalFailure.type = Types::InternalFailure
    InternalStreamFailure.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    InternalStreamFailure.type = Types::InternalStreamFailure
    InvokeEndpointAsyncInput.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'EndpointName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeEndpointAsyncInput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Content-Type"}))
    InvokeEndpointAsyncInput.add_member(:accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: 'Accept', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Accept"}))
    InvokeEndpointAsyncInput.add_member(:custom_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttributesHeader, location_name: 'CustomAttributes', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Custom-Attributes"}))
    InvokeEndpointAsyncInput.add_member(:inference_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceId, location_name: 'InferenceId', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Inference-Id"}))
    InvokeEndpointAsyncInput.add_member(:input_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputLocationHeader, location_name: 'InputLocation', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpHeader" => "X-Amzn-SageMaker-InputLocation", "smithy.api#required" => {}}))
    InvokeEndpointAsyncInput.add_member(:request_ttl_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTTLSecondsHeader, location_name: 'RequestTTLSeconds', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-RequestTTLSeconds"}))
    InvokeEndpointAsyncInput.add_member(:invocation_timeout_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvocationTimeoutSecondsHeader, location_name: 'InvocationTimeoutSeconds', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-InvocationTimeoutSeconds"}))
    InvokeEndpointAsyncInput.type = Types::InvokeEndpointAsyncInput
    InvokeEndpointAsyncOutput.add_member(:inference_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: 'InferenceId'))
    InvokeEndpointAsyncOutput.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: 'OutputLocation', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-OutputLocation"}))
    InvokeEndpointAsyncOutput.add_member(:failure_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: 'FailureLocation', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-FailureLocation"}))
    InvokeEndpointAsyncOutput.type = Types::InvokeEndpointAsyncOutput
    InvokeEndpointInput.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'EndpointName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeEndpointInput.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BodyBlob, location_name: 'Body', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeEndpointInput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    InvokeEndpointInput.add_member(:accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: 'Accept', traits: {"smithy.api#httpHeader" => "Accept"}))
    InvokeEndpointInput.add_member(:custom_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttributesHeader, location_name: 'CustomAttributes', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Custom-Attributes"}))
    InvokeEndpointInput.add_member(:target_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetModelHeader, location_name: 'TargetModel', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Target-Model"}))
    InvokeEndpointInput.add_member(:target_variant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetVariantHeader, location_name: 'TargetVariant', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Target-Variant"}))
    InvokeEndpointInput.add_member(:target_container_hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetContainerHostnameHeader, location_name: 'TargetContainerHostname', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Target-Container-Hostname"}))
    InvokeEndpointInput.add_member(:inference_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceId, location_name: 'InferenceId', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Inference-Id"}))
    InvokeEndpointInput.add_member(:enable_explanations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableExplanationsHeader, location_name: 'EnableExplanations', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Enable-Explanations"}))
    InvokeEndpointInput.add_member(:inference_component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceComponentHeader, location_name: 'InferenceComponentName', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Inference-Component"}))
    InvokeEndpointInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionIdOrNewSessionConstantHeader, location_name: 'SessionId', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Session-Id"}))
    InvokeEndpointInput[:http_payload] = :body
    InvokeEndpointInput[:http_payload_member] = InvokeEndpointInput.member(:body)
    InvokeEndpointInput.type = Types::InvokeEndpointInput
    InvokeEndpointOutput.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BodyBlob, location_name: 'Body', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeEndpointOutput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    InvokeEndpointOutput.add_member(:invoked_production_variant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: 'InvokedProductionVariant', traits: {"smithy.api#httpHeader" => "x-Amzn-Invoked-Production-Variant"}))
    InvokeEndpointOutput.add_member(:custom_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttributesHeader, location_name: 'CustomAttributes', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Custom-Attributes"}))
    InvokeEndpointOutput.add_member(:new_session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NewSessionResponseHeader, location_name: 'NewSessionId', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-New-Session-Id"}))
    InvokeEndpointOutput.add_member(:closed_session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionIdHeader, location_name: 'ClosedSessionId', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Closed-Session-Id"}))
    InvokeEndpointOutput[:http_payload] = :body
    InvokeEndpointOutput[:http_payload_member] = InvokeEndpointOutput.member(:body)
    InvokeEndpointOutput.type = Types::InvokeEndpointOutput
    InvokeEndpointWithResponseStreamInput.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'EndpointName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeEndpointWithResponseStreamInput.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BodyBlob, location_name: 'Body', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeEndpointWithResponseStreamInput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    InvokeEndpointWithResponseStreamInput.add_member(:accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: 'Accept', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Accept"}))
    InvokeEndpointWithResponseStreamInput.add_member(:custom_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttributesHeader, location_name: 'CustomAttributes', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Custom-Attributes"}))
    InvokeEndpointWithResponseStreamInput.add_member(:target_variant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetVariantHeader, location_name: 'TargetVariant', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Target-Variant"}))
    InvokeEndpointWithResponseStreamInput.add_member(:target_container_hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetContainerHostnameHeader, location_name: 'TargetContainerHostname', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Target-Container-Hostname"}))
    InvokeEndpointWithResponseStreamInput.add_member(:inference_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceId, location_name: 'InferenceId', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Inference-Id"}))
    InvokeEndpointWithResponseStreamInput.add_member(:inference_component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceComponentHeader, location_name: 'InferenceComponentName', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Inference-Component"}))
    InvokeEndpointWithResponseStreamInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionIdHeader, location_name: 'SessionId', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Session-Id"}))
    InvokeEndpointWithResponseStreamInput[:http_payload] = :body
    InvokeEndpointWithResponseStreamInput[:http_payload_member] = InvokeEndpointWithResponseStreamInput.member(:body)
    InvokeEndpointWithResponseStreamInput.type = Types::InvokeEndpointWithResponseStreamInput
    InvokeEndpointWithResponseStreamOutput.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseStream, location_name: 'Body', traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeEndpointWithResponseStreamOutput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Content-Type"}))
    InvokeEndpointWithResponseStreamOutput.add_member(:invoked_production_variant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: 'InvokedProductionVariant', traits: {"smithy.api#httpHeader" => "x-Amzn-Invoked-Production-Variant"}))
    InvokeEndpointWithResponseStreamOutput.add_member(:custom_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttributesHeader, location_name: 'CustomAttributes', traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Custom-Attributes"}))
    InvokeEndpointWithResponseStreamOutput[:http_payload] = :body
    InvokeEndpointWithResponseStreamOutput[:http_payload_member] = InvokeEndpointWithResponseStreamOutput.member(:body)
    InvokeEndpointWithResponseStreamOutput.type = Types::InvokeEndpointWithResponseStreamOutput
    ModelError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ModelError.add_member(:original_status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'OriginalStatusCode'))
    ModelError.add_member(:original_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'OriginalMessage'))
    ModelError.add_member(:log_stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamArn, location_name: 'LogStreamArn'))
    ModelError.type = Types::ModelError
    ModelNotReadyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ModelNotReadyException.type = Types::ModelNotReadyException
    ModelStreamError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ModelStreamError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    ModelStreamError.type = Types::ModelStreamError
    PayloadPart.add_member(:bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartBlob, location_name: 'Bytes', traits: {"smithy.api#eventPayload" => {}}))
    PayloadPart.type = Types::PayloadPart
    ResponseStream.add_member(:payload_part, Types::ResponseStream::PayloadPart, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadPart, location_name: 'PayloadPart'))
    ResponseStream.add_member(:model_stream_error, Types::ResponseStream::ModelStreamError, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStreamError, location_name: 'ModelStreamError'))
    ResponseStream.add_member(:internal_stream_failure, Types::ResponseStream::InternalStreamFailure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalStreamFailure, location_name: 'InternalStreamFailure'))
    ResponseStream.add_member(:unknown, Types::ResponseStream::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResponseStream.type = Types::ResponseStream
    ServiceUnavailable.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ServiceUnavailable.type = Types::ServiceUnavailable
    ValidationError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ValidationError.type = Types::ValidationError

    AmazonSageMakerRuntime = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sagemakerruntime#AmazonSageMakerRuntime"
      service.name = "AmazonSageMakerRuntime"
      service.version = "2017-05-13"
      service.traits = {"aws.api#service" => {"sdkId" => "SageMaker Runtime", "arnNamespace" => "sagemaker", "cloudFormationName" => "SageMakerRuntime", "cloudTrailEventSource" => "sagemakerruntime.amazonaws.com", "docId" => "runtime.sagemaker-2017-05-13", "endpointPrefix" => "runtime.sagemaker"}, "aws.auth#sigv4" => {"name" => "sagemaker"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon SageMaker Runtime"}
      service.add_operation(:invoke_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerruntime#InvokeEndpoint"
        operation.name = "InvokeEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeEndpointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailure)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelNotReadyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailable)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationError)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/endpoints/{EndpointName}/invocations", "code" => 200}}
      end)
      service.add_operation(:invoke_endpoint_async, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerruntime#InvokeEndpointAsync"
        operation.name = "InvokeEndpointAsync"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeEndpointAsyncInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeEndpointAsyncOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailure)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailable)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationError)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/endpoints/{EndpointName}/async-invocations", "code" => 202}}
      end)
      service.add_operation(:invoke_endpoint_with_response_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerruntime#InvokeEndpointWithResponseStream"
        operation.name = "InvokeEndpointWithResponseStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeEndpointWithResponseStreamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeEndpointWithResponseStreamOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailure)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalStreamFailure)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStreamError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailable)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationError)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/endpoints/{EndpointName}/invocations-response-stream", "code" => 200}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
