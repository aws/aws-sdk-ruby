# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Connect
  # @api private
  module ClientApi

    include Seahorse::Model

    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ContactFlowId = Shapes::StringShape.new(name: 'ContactFlowId')
    ContactId = Shapes::StringShape.new(name: 'ContactId')
    ContactNotFoundException = Shapes::StructureShape.new(name: 'ContactNotFoundException')
    DestinationNotAllowedException = Shapes::StructureShape.new(name: 'DestinationNotAllowedException')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    Message = Shapes::StringShape.new(name: 'Message')
    OutboundContactNotPermittedException = Shapes::StructureShape.new(name: 'OutboundContactNotPermittedException')
    PhoneNumber = Shapes::StringShape.new(name: 'PhoneNumber')
    QueueId = Shapes::StringShape.new(name: 'QueueId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    StartOutboundVoiceContactRequest = Shapes::StructureShape.new(name: 'StartOutboundVoiceContactRequest')
    StartOutboundVoiceContactResponse = Shapes::StructureShape.new(name: 'StartOutboundVoiceContactResponse')
    StopContactRequest = Shapes::StructureShape.new(name: 'StopContactRequest')
    StopContactResponse = Shapes::StructureShape.new(name: 'StopContactResponse')

    Attributes.key = Shapes::ShapeRef.new(shape: AttributeName)
    Attributes.value = Shapes::ShapeRef.new(shape: AttributeValue)

    StartOutboundVoiceContactRequest.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    StartOutboundVoiceContactRequest.add_member(:contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "ContactFlowId"))
    StartOutboundVoiceContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StartOutboundVoiceContactRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartOutboundVoiceContactRequest.add_member(:source_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "SourcePhoneNumber"))
    StartOutboundVoiceContactRequest.add_member(:queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "QueueId"))
    StartOutboundVoiceContactRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    StartOutboundVoiceContactRequest.struct_class = Types::StartOutboundVoiceContactRequest

    StartOutboundVoiceContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    StartOutboundVoiceContactResponse.struct_class = Types::StartOutboundVoiceContactResponse

    StopContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    StopContactRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    StopContactRequest.struct_class = Types::StopContactRequest

    StopContactResponse.struct_class = Types::StopContactResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-08-08"

      api.metadata = {
        "endpointPrefix" => "connect",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Connect Service",
        "signatureVersion" => "v4",
        "signingName" => "connect",
      }

      api.add_operation(:start_outbound_voice_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartOutboundVoiceContact"
        o.http_method = "PUT"
        o.http_request_uri = "/contact/outbound-voice"
        o.input = Shapes::ShapeRef.new(shape: StartOutboundVoiceContactRequest)
        o.output = Shapes::ShapeRef.new(shape: StartOutboundVoiceContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DestinationNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: OutboundContactNotPermittedException)
      end)

      api.add_operation(:stop_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopContact"
        o.http_method = "POST"
        o.http_request_uri = "/contact/stop"
        o.input = Shapes::ShapeRef.new(shape: StopContactRequest)
        o.output = Shapes::ShapeRef.new(shape: StopContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ContactNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)
    end

  end
end
