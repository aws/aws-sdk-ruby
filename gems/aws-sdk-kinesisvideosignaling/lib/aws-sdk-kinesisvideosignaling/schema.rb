# frozen_string_literal: true

# This is generated code!

module Aws::KinesisVideoSignaling
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Answer = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideosignaling#Answer', name: 'Answer', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    ClientId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideosignaling#ClientId', name: 'ClientId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ClientLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideosignaling#ClientLimitExceededException', name: 'ClientLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideosignaling#ErrorMessage', name: 'ErrorMessage')
    GetIceServerConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideosignaling#GetIceServerConfigRequest', name: 'GetIceServerConfigRequest')
    GetIceServerConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideosignaling#GetIceServerConfigResponse', name: 'GetIceServerConfigResponse')
    IceServer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideosignaling#IceServer', name: 'IceServer')
    IceServerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideosignaling#IceServerList', name: 'IceServerList')
    InvalidArgumentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideosignaling#InvalidArgumentException', name: 'InvalidArgumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideosignaling#InvalidClientException', name: 'InvalidClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MessagePayload = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideosignaling#MessagePayload', name: 'MessagePayload', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=]+$"})
    NotAuthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideosignaling#NotAuthorizedException', name: 'NotAuthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    Password = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideosignaling#Password', name: 'Password', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ResourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideosignaling#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideosignaling#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SendAlexaOfferToMasterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideosignaling#SendAlexaOfferToMasterRequest', name: 'SendAlexaOfferToMasterRequest')
    SendAlexaOfferToMasterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideosignaling#SendAlexaOfferToMasterResponse', name: 'SendAlexaOfferToMasterResponse')
    Service = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideosignaling#Service', name: 'Service')
    SessionExpiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideosignaling#SessionExpiredException', name: 'SessionExpiredException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Ttl = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideosignaling#Ttl', name: 'Ttl', traits: {"smithy.api#range" => {"min" => 30, "max" => 86400}})
    Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideosignaling#Uri', name: 'Uri', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Uris = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideosignaling#Uris', name: 'Uris')
    Username = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideosignaling#Username', name: 'Username', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})

    ClientLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ClientLimitExceededException.type = Types::ClientLimitExceededException
    GetIceServerConfigRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the signaling channel to be used for the peer-to-peer connection between\n            configured peers. </p>", "smithy.api#required" => {}}))
    GetIceServerConfigRequest.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'ClientId', traits: {"smithy.api#documentation" => "<p>Unique identifier for the viewer. Must be unique within the signaling channel.</p>"}))
    GetIceServerConfigRequest.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>Specifies the desired service. Currently, <code>TURN</code> is the only valid\n            value.</p>"}))
    GetIceServerConfigRequest.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>An optional user ID to be associated with the credentials.</p>"}))
    GetIceServerConfigRequest.type = Types::GetIceServerConfigRequest
    GetIceServerConfigResponse.add_member(:ice_server_list, Smithy::Schema::Shapes::ShapeRef.new(shape: IceServerList, location_name: 'IceServerList', traits: {"smithy.api#documentation" => "<p>The list of ICE server information objects.</p>"}))
    GetIceServerConfigResponse.type = Types::GetIceServerConfigResponse
    IceServer.add_member(:uris, Smithy::Schema::Shapes::ShapeRef.new(shape: Uris, location_name: 'Uris', traits: {"smithy.api#documentation" => "<p>An array of URIs, in the form specified in the <a href=\"https://tools.ietf.org/html/draft-petithuguenin-behave-turn-uris-03\">I-D.petithuguenin-behave-turn-uris</a> spec. These URIs provide the different\n            addresses and/or protocols that can be used to reach the TURN server.</p>"}))
    IceServer.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>A username to login to the ICE server.</p>"}))
    IceServer.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>A password to login to the ICE server.</p>"}))
    IceServer.add_member(:ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Ttl, location_name: 'Ttl', traits: {"smithy.api#documentation" => "<p>The period of time, in seconds, during which the username and password are\n            valid.</p>"}))
    IceServer.type = Types::IceServer
    IceServerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IceServer)
    InvalidArgumentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidClientException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidClientException.type = Types::InvalidClientException
    NotAuthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NotAuthorizedException.type = Types::NotAuthorizedException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SendAlexaOfferToMasterRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the signaling channel by which Alexa and the master peer\n            communicate.</p>", "smithy.api#required" => {}}))
    SendAlexaOfferToMasterRequest.add_member(:sender_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'SenderClientId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the sender client.</p>", "smithy.api#required" => {}}))
    SendAlexaOfferToMasterRequest.add_member(:message_payload, Smithy::Schema::Shapes::ShapeRef.new(shape: MessagePayload, location_name: 'MessagePayload', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The base64-encoded SDP offer content.</p>", "smithy.api#required" => {}}))
    SendAlexaOfferToMasterRequest.type = Types::SendAlexaOfferToMasterRequest
    SendAlexaOfferToMasterResponse.add_member(:answer, Smithy::Schema::Shapes::ShapeRef.new(shape: Answer, location_name: 'Answer', traits: {"smithy.api#documentation" => "<p>The base64-encoded SDP answer content.</p>"}))
    SendAlexaOfferToMasterResponse.type = Types::SendAlexaOfferToMasterResponse
    Service.add_member(:turn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TURN', traits: {"smithy.api#enumValue" => "TURN"}))
    SessionExpiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    SessionExpiredException.type = Types::SessionExpiredException
    Uris.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Uri)

    AWSAcuitySignalingService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kinesisvideosignaling#AWSAcuitySignalingService"
      service.name = "AWSAcuitySignalingService"
      service.version = "2019-12-04"
      service.traits = {"aws.api#service" => {"sdkId" => "Kinesis Video Signaling", "arnNamespace" => "kinesisvideo", "cloudFormationName" => "KinesisVideoSignaling", "cloudTrailEventSource" => "kinesisvideosignaling.amazonaws.com", "endpointPrefix" => "kinesisvideo"}, "aws.auth#sigv4" => {"name" => "kinesisvideo"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Kinesis Video Signaling Channels"}
      service.add_operation(:get_ice_server_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideosignaling#GetIceServerConfig"
        operation.name = "GetIceServerConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIceServerConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIceServerConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SessionExpiredException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/get-ice-server-config", "code" => 200}}
      end)
      service.add_operation(:send_alexa_offer_to_master, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideosignaling#SendAlexaOfferToMaster"
        operation.name = "SendAlexaOfferToMaster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendAlexaOfferToMasterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendAlexaOfferToMasterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/send-alexa-offer-to-master", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
