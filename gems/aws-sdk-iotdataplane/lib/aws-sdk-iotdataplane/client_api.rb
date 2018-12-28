# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTDataPlane
  # @api private
  module ClientApi

    include Seahorse::Model

    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    DeleteThingShadowRequest = Shapes::StructureShape.new(name: 'DeleteThingShadowRequest')
    DeleteThingShadowResponse = Shapes::StructureShape.new(name: 'DeleteThingShadowResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetThingShadowRequest = Shapes::StructureShape.new(name: 'GetThingShadowRequest')
    GetThingShadowResponse = Shapes::StructureShape.new(name: 'GetThingShadowResponse')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    JsonDocument = Shapes::BlobShape.new(name: 'JsonDocument')
    MethodNotAllowedException = Shapes::StructureShape.new(name: 'MethodNotAllowedException')
    Payload = Shapes::BlobShape.new(name: 'Payload')
    PublishRequest = Shapes::StructureShape.new(name: 'PublishRequest')
    Qos = Shapes::IntegerShape.new(name: 'Qos')
    RequestEntityTooLargeException = Shapes::StructureShape.new(name: 'RequestEntityTooLargeException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    ThingName = Shapes::StringShape.new(name: 'ThingName')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Topic = Shapes::StringShape.new(name: 'Topic')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UnsupportedDocumentEncodingException = Shapes::StructureShape.new(name: 'UnsupportedDocumentEncodingException')
    UpdateThingShadowRequest = Shapes::StructureShape.new(name: 'UpdateThingShadowRequest')
    UpdateThingShadowResponse = Shapes::StructureShape.new(name: 'UpdateThingShadowResponse')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    DeleteThingShadowRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    DeleteThingShadowRequest.struct_class = Types::DeleteThingShadowRequest

    DeleteThingShadowResponse.add_member(:payload, Shapes::ShapeRef.new(shape: JsonDocument, required: true, location_name: "payload"))
    DeleteThingShadowResponse.struct_class = Types::DeleteThingShadowResponse
    DeleteThingShadowResponse[:payload] = :payload
    DeleteThingShadowResponse[:payload_member] = DeleteThingShadowResponse.member(:payload)

    GetThingShadowRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    GetThingShadowRequest.struct_class = Types::GetThingShadowRequest

    GetThingShadowResponse.add_member(:payload, Shapes::ShapeRef.new(shape: JsonDocument, location_name: "payload"))
    GetThingShadowResponse.struct_class = Types::GetThingShadowResponse
    GetThingShadowResponse[:payload] = :payload
    GetThingShadowResponse[:payload_member] = GetThingShadowResponse.member(:payload)

    PublishRequest.add_member(:topic, Shapes::ShapeRef.new(shape: Topic, required: true, location: "uri", location_name: "topic"))
    PublishRequest.add_member(:qos, Shapes::ShapeRef.new(shape: Qos, location: "querystring", location_name: "qos"))
    PublishRequest.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    PublishRequest.struct_class = Types::PublishRequest
    PublishRequest[:payload] = :payload
    PublishRequest[:payload_member] = PublishRequest.member(:payload)

    UpdateThingShadowRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    UpdateThingShadowRequest.add_member(:payload, Shapes::ShapeRef.new(shape: JsonDocument, required: true, location_name: "payload"))
    UpdateThingShadowRequest.struct_class = Types::UpdateThingShadowRequest
    UpdateThingShadowRequest[:payload] = :payload
    UpdateThingShadowRequest[:payload_member] = UpdateThingShadowRequest.member(:payload)

    UpdateThingShadowResponse.add_member(:payload, Shapes::ShapeRef.new(shape: JsonDocument, location_name: "payload"))
    UpdateThingShadowResponse.struct_class = Types::UpdateThingShadowResponse
    UpdateThingShadowResponse[:payload] = :payload
    UpdateThingShadowResponse[:payload_member] = UpdateThingShadowResponse.member(:payload)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-05-28"

      api.metadata = {
        "apiVersion" => "2015-05-28",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS IoT Data Plane",
        "signatureVersion" => "v4",
        "signingName" => "iotdata",
        "uid" => "iot-data-2015-05-28",
      }

      api.add_operation(:delete_thing_shadow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteThingShadow"
        o.http_method = "DELETE"
        o.http_request_uri = "/things/{thingName}/shadow"
        o.input = Shapes::ShapeRef.new(shape: DeleteThingShadowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteThingShadowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDocumentEncodingException)
      end)

      api.add_operation(:get_thing_shadow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetThingShadow"
        o.http_method = "GET"
        o.http_request_uri = "/things/{thingName}/shadow"
        o.input = Shapes::ShapeRef.new(shape: GetThingShadowRequest)
        o.output = Shapes::ShapeRef.new(shape: GetThingShadowResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDocumentEncodingException)
      end)

      api.add_operation(:publish, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Publish"
        o.http_method = "POST"
        o.http_request_uri = "/topics/{topic}"
        o.input = Shapes::ShapeRef.new(shape: PublishRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
      end)

      api.add_operation(:update_thing_shadow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateThingShadow"
        o.http_method = "POST"
        o.http_request_uri = "/things/{thingName}/shadow"
        o.input = Shapes::ShapeRef.new(shape: UpdateThingShadowRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateThingShadowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: RequestEntityTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDocumentEncodingException)
      end)
    end

  end
end
