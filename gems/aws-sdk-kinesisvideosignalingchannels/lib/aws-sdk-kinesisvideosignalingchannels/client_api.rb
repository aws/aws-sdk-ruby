# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisVideoSignalingChannels
  # @api private
  module ClientApi

    include Seahorse::Model

    Answer = Shapes::StringShape.new(name: 'Answer')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    ClientLimitExceededException = Shapes::StructureShape.new(name: 'ClientLimitExceededException')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetIceServerConfigRequest = Shapes::StructureShape.new(name: 'GetIceServerConfigRequest')
    GetIceServerConfigResponse = Shapes::StructureShape.new(name: 'GetIceServerConfigResponse')
    IceServer = Shapes::StructureShape.new(name: 'IceServer')
    IceServerList = Shapes::ListShape.new(name: 'IceServerList')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    InvalidClientException = Shapes::StructureShape.new(name: 'InvalidClientException')
    MessagePayload = Shapes::StringShape.new(name: 'MessagePayload')
    NotAuthorizedException = Shapes::StructureShape.new(name: 'NotAuthorizedException')
    Password = Shapes::StringShape.new(name: 'Password')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SendAlexaOfferToMasterRequest = Shapes::StructureShape.new(name: 'SendAlexaOfferToMasterRequest')
    SendAlexaOfferToMasterResponse = Shapes::StructureShape.new(name: 'SendAlexaOfferToMasterResponse')
    Service = Shapes::StringShape.new(name: 'Service')
    SessionExpiredException = Shapes::StructureShape.new(name: 'SessionExpiredException')
    Ttl = Shapes::IntegerShape.new(name: 'Ttl')
    Uri = Shapes::StringShape.new(name: 'Uri')
    Uris = Shapes::ListShape.new(name: 'Uris')
    Username = Shapes::StringShape.new(name: 'Username')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    ClientLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ClientLimitExceededException.struct_class = Types::ClientLimitExceededException

    GetIceServerConfigRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ChannelARN"))
    GetIceServerConfigRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, location_name: "ClientId"))
    GetIceServerConfigRequest.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "Service"))
    GetIceServerConfigRequest.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
    GetIceServerConfigRequest.struct_class = Types::GetIceServerConfigRequest

    GetIceServerConfigResponse.add_member(:ice_server_list, Shapes::ShapeRef.new(shape: IceServerList, location_name: "IceServerList"))
    GetIceServerConfigResponse.struct_class = Types::GetIceServerConfigResponse

    IceServer.add_member(:uris, Shapes::ShapeRef.new(shape: Uris, location_name: "Uris"))
    IceServer.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
    IceServer.add_member(:password, Shapes::ShapeRef.new(shape: Password, location_name: "Password"))
    IceServer.add_member(:ttl, Shapes::ShapeRef.new(shape: Ttl, location_name: "Ttl"))
    IceServer.struct_class = Types::IceServer

    IceServerList.member = Shapes::ShapeRef.new(shape: IceServer)

    InvalidArgumentException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidArgumentException.struct_class = Types::InvalidArgumentException

    InvalidClientException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidClientException.struct_class = Types::InvalidClientException

    NotAuthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotAuthorizedException.struct_class = Types::NotAuthorizedException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SendAlexaOfferToMasterRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ChannelARN"))
    SendAlexaOfferToMasterRequest.add_member(:sender_client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "SenderClientId"))
    SendAlexaOfferToMasterRequest.add_member(:message_payload, Shapes::ShapeRef.new(shape: MessagePayload, required: true, location_name: "MessagePayload"))
    SendAlexaOfferToMasterRequest.struct_class = Types::SendAlexaOfferToMasterRequest

    SendAlexaOfferToMasterResponse.add_member(:answer, Shapes::ShapeRef.new(shape: Answer, location_name: "Answer"))
    SendAlexaOfferToMasterResponse.struct_class = Types::SendAlexaOfferToMasterResponse

    SessionExpiredException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    SessionExpiredException.struct_class = Types::SessionExpiredException

    Uris.member = Shapes::ShapeRef.new(shape: Uri)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-12-04"

      api.metadata = {
        "apiVersion" => "2019-12-04",
        "endpointPrefix" => "kinesisvideo",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Amazon Kinesis Video Signaling Channels",
        "serviceFullName" => "Amazon Kinesis Video Signaling Channels",
        "serviceId" => "Kinesis Video Signaling",
        "signatureVersion" => "v4",
        "uid" => "kinesis-video-signaling-2019-12-04",
      }

      api.add_operation(:get_ice_server_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIceServerConfig"
        o.http_method = "POST"
        o.http_request_uri = "/v1/get-ice-server-config"
        o.input = Shapes::ShapeRef.new(shape: GetIceServerConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIceServerConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientException)
        o.errors << Shapes::ShapeRef.new(shape: SessionExpiredException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
      end)

      api.add_operation(:send_alexa_offer_to_master, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendAlexaOfferToMaster"
        o.http_method = "POST"
        o.http_request_uri = "/v1/send-alexa-offer-to-master"
        o.input = Shapes::ShapeRef.new(shape: SendAlexaOfferToMasterRequest)
        o.output = Shapes::ShapeRef.new(shape: SendAlexaOfferToMasterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
      end)
    end

  end
end
