# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Body = Shapes::BlobShape.new(name: 'Body')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvokeModelIdentifier = Shapes::StringShape.new(name: 'InvokeModelIdentifier')
    InvokeModelRequest = Shapes::StructureShape.new(name: 'InvokeModelRequest')
    InvokeModelResponse = Shapes::StructureShape.new(name: 'InvokeModelResponse')
    InvokeModelWithResponseStreamRequest = Shapes::StructureShape.new(name: 'InvokeModelWithResponseStreamRequest')
    InvokeModelWithResponseStreamResponse = Shapes::StructureShape.new(name: 'InvokeModelWithResponseStreamResponse')
    MimeType = Shapes::StringShape.new(name: 'MimeType')
    ModelErrorException = Shapes::StructureShape.new(name: 'ModelErrorException')
    ModelNotReadyException = Shapes::StructureShape.new(name: 'ModelNotReadyException')
    ModelStreamErrorException = Shapes::StructureShape.new(name: 'ModelStreamErrorException')
    ModelTimeoutException = Shapes::StructureShape.new(name: 'ModelTimeoutException')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    PartBody = Shapes::BlobShape.new(name: 'PartBody')
    PayloadPart = Shapes::StructureShape.new(name: 'PayloadPart')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseStream = Shapes::StructureShape.new(name: 'ResponseStream')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StatusCode = Shapes::IntegerShape.new(name: 'StatusCode')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvokeModelRequest.add_member(:body, Shapes::ShapeRef.new(shape: Body, required: true, location_name: "body"))
    InvokeModelRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Content-Type"))
    InvokeModelRequest.add_member(:accept, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Accept"))
    InvokeModelRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: InvokeModelIdentifier, required: true, location: "uri", location_name: "modelId"))
    InvokeModelRequest.struct_class = Types::InvokeModelRequest
    InvokeModelRequest[:payload] = :body
    InvokeModelRequest[:payload_member] = InvokeModelRequest.member(:body)

    InvokeModelResponse.add_member(:body, Shapes::ShapeRef.new(shape: Body, required: true, location_name: "body"))
    InvokeModelResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, required: true, location: "header", location_name: "Content-Type"))
    InvokeModelResponse.struct_class = Types::InvokeModelResponse
    InvokeModelResponse[:payload] = :body
    InvokeModelResponse[:payload_member] = InvokeModelResponse.member(:body)

    InvokeModelWithResponseStreamRequest.add_member(:body, Shapes::ShapeRef.new(shape: Body, required: true, location_name: "body"))
    InvokeModelWithResponseStreamRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Content-Type"))
    InvokeModelWithResponseStreamRequest.add_member(:accept, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "X-Amzn-Bedrock-Accept"))
    InvokeModelWithResponseStreamRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: InvokeModelIdentifier, required: true, location: "uri", location_name: "modelId"))
    InvokeModelWithResponseStreamRequest.struct_class = Types::InvokeModelWithResponseStreamRequest
    InvokeModelWithResponseStreamRequest[:payload] = :body
    InvokeModelWithResponseStreamRequest[:payload_member] = InvokeModelWithResponseStreamRequest.member(:body)

    InvokeModelWithResponseStreamResponse.add_member(:body, Shapes::ShapeRef.new(shape: ResponseStream, required: true, eventstream: true, location_name: "body"))
    InvokeModelWithResponseStreamResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, required: true, location: "header", location_name: "X-Amzn-Bedrock-Content-Type"))
    InvokeModelWithResponseStreamResponse.struct_class = Types::InvokeModelWithResponseStreamResponse
    InvokeModelWithResponseStreamResponse[:payload] = :body
    InvokeModelWithResponseStreamResponse[:payload_member] = InvokeModelWithResponseStreamResponse.member(:body)

    ModelErrorException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ModelErrorException.add_member(:original_status_code, Shapes::ShapeRef.new(shape: StatusCode, location_name: "originalStatusCode"))
    ModelErrorException.add_member(:resource_name, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "resourceName"))
    ModelErrorException.struct_class = Types::ModelErrorException

    ModelNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ModelNotReadyException.struct_class = Types::ModelNotReadyException

    ModelStreamErrorException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ModelStreamErrorException.add_member(:original_status_code, Shapes::ShapeRef.new(shape: StatusCode, location_name: "originalStatusCode"))
    ModelStreamErrorException.add_member(:original_message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "originalMessage"))
    ModelStreamErrorException.struct_class = Types::ModelStreamErrorException

    ModelTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ModelTimeoutException.struct_class = Types::ModelTimeoutException

    PayloadPart.add_member(:bytes, Shapes::ShapeRef.new(shape: PartBody, location_name: "bytes"))
    PayloadPart.struct_class = Types::PayloadPart

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseStream.add_member(:chunk, Shapes::ShapeRef.new(shape: PayloadPart, event: true, location_name: "chunk"))
    ResponseStream.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    ResponseStream.add_member(:model_stream_error_exception, Shapes::ShapeRef.new(shape: ModelStreamErrorException, location_name: "modelStreamErrorException"))
    ResponseStream.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    ResponseStream.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    ResponseStream.add_member(:model_timeout_exception, Shapes::ShapeRef.new(shape: ModelTimeoutException, location_name: "modelTimeoutException"))
    ResponseStream.struct_class = Types::ResponseStream

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-09-30"

      api.metadata = {
        "apiVersion" => "2023-09-30",
        "endpointPrefix" => "bedrock-runtime",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Bedrock Runtime",
        "serviceId" => "Bedrock Runtime",
        "signatureVersion" => "v4",
        "signingName" => "bedrock",
        "uid" => "bedrock-runtime-2023-09-30",
      }

      api.add_operation(:invoke_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeModel"
        o.http_method = "POST"
        o.http_request_uri = "/model/{modelId}/invoke"
        o.input = Shapes::ShapeRef.new(shape: InvokeModelRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ModelTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ModelNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ModelErrorException)
      end)

      api.add_operation(:invoke_model_with_response_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeModelWithResponseStream"
        o.http_method = "POST"
        o.http_request_uri = "/model/{modelId}/invoke-with-response-stream"
        o.input = Shapes::ShapeRef.new(shape: InvokeModelWithResponseStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeModelWithResponseStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ModelTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ModelStreamErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ModelNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ModelErrorException)
      end)
    end

  end
end
