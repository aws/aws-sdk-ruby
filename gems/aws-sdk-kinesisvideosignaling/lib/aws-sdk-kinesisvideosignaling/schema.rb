# frozen_string_literal: true

# This is generated code!

module Aws::KinesisVideoSignaling
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Answer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisvideosignaling#Answer", name: "Answer", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisvideosignaling#ClientId", name: "ClientId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ClientLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideosignaling#ClientLimitExceededException", name: "ClientLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisvideosignaling#ErrorMessage", name: "ErrorMessage")
    GetIceServerConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideosignaling#GetIceServerConfigRequest", name: "GetIceServerConfigRequest")
    GetIceServerConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideosignaling#GetIceServerConfigResponse", name: "GetIceServerConfigResponse")
    IceServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideosignaling#IceServer", name: "IceServer")
    IceServerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisvideosignaling#IceServerList", name: "IceServerList")
    InvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideosignaling#InvalidArgumentException", name: "InvalidArgumentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideosignaling#InvalidClientException", name: "InvalidClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MessagePayload = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisvideosignaling#MessagePayload", name: "MessagePayload", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=]+$"})
    NotAuthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideosignaling#NotAuthorizedException", name: "NotAuthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    Password = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisvideosignaling#Password", name: "Password", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisvideosignaling#ResourceARN", name: "ResourceARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideosignaling#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SendAlexaOfferToMasterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideosignaling#SendAlexaOfferToMasterRequest", name: "SendAlexaOfferToMasterRequest")
    SendAlexaOfferToMasterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideosignaling#SendAlexaOfferToMasterResponse", name: "SendAlexaOfferToMasterResponse")
    Service = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisvideosignaling#Service", name: "Service")
    SessionExpiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideosignaling#SessionExpiredException", name: "SessionExpiredException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Ttl = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesisvideosignaling#Ttl", name: "Ttl", traits: {"smithy.api#range" => {"min" => 30, "max" => 86400}})
    Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisvideosignaling#Uri", name: "Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Uris = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesisvideosignaling#Uris", name: "Uris")
    Username = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisvideosignaling#Username", name: "Username", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})

    ClientLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ClientLimitExceededException.type = Types::ClientLimitExceededException
    GetIceServerConfigRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ChannelARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetIceServerConfigRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "ClientId"))
    GetIceServerConfigRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "Service"))
    GetIceServerConfigRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "Username"))
    GetIceServerConfigRequest.type = Types::GetIceServerConfigRequest
    GetIceServerConfigResponse.add_member(:ice_server_list, ::Smithy::Schema::Shapes::MemberShape.new(target: IceServerList, name: "IceServerList"))
    GetIceServerConfigResponse.type = Types::GetIceServerConfigResponse
    IceServer.add_member(:uris, ::Smithy::Schema::Shapes::MemberShape.new(target: Uris, name: "Uris"))
    IceServer.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "Username"))
    IceServer.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, name: "Password"))
    IceServer.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Ttl, name: "Ttl"))
    IceServer.type = Types::IceServer
    IceServerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IceServer, name: "member"))
    InvalidArgumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidClientException.type = Types::InvalidClientException
    NotAuthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    NotAuthorizedException.type = Types::NotAuthorizedException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SendAlexaOfferToMasterRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ChannelARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SendAlexaOfferToMasterRequest.add_member(:sender_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "SenderClientId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SendAlexaOfferToMasterRequest.add_member(:message_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: MessagePayload, name: "MessagePayload", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SendAlexaOfferToMasterRequest.type = Types::SendAlexaOfferToMasterRequest
    SendAlexaOfferToMasterResponse.add_member(:answer, ::Smithy::Schema::Shapes::MemberShape.new(target: Answer, name: "Answer"))
    SendAlexaOfferToMasterResponse.type = Types::SendAlexaOfferToMasterResponse
    Service.add_member(:turn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TURN", traits: {"smithy.api#enumValue" => "TURN"}))
    SessionExpiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    SessionExpiredException.type = Types::SessionExpiredException
    Uris.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "member"))

    AWSAcuitySignalingService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kinesisvideosignaling#AWSAcuitySignalingService"
      service.name = "AWSAcuitySignalingService"
      service.version = "2019-12-04"
      service.traits = {"aws.api#service" => {"sdkId" => "Kinesis Video Signaling", "arnNamespace" => "kinesisvideo", "cloudFormationName" => "KinesisVideoSignaling", "cloudTrailEventSource" => "kinesisvideosignaling.amazonaws.com", "endpointPrefix" => "kinesisvideo"}, "aws.auth#sigv4" => {"name" => "kinesisvideo"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Kinesis Video Signaling Channels", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://kinesisvideo-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://kinesisvideo-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://kinesisvideo.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://kinesisvideo.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:get_ice_server_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideosignaling#GetIceServerConfig"
        operation.name = "GetIceServerConfig"
        operation.input = GetIceServerConfigRequest
        operation.output = GetIceServerConfigResponse
        operation.errors << ClientLimitExceededException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidClientException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << SessionExpiredException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/get-ice-server-config", "code" => 200}}
      end)
      service.add_operation(:send_alexa_offer_to_master, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideosignaling#SendAlexaOfferToMaster"
        operation.name = "SendAlexaOfferToMaster"
        operation.input = SendAlexaOfferToMasterRequest
        operation.output = SendAlexaOfferToMasterResponse
        operation.errors << ClientLimitExceededException
        operation.errors << InvalidArgumentException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/send-alexa-offer-to-master", "code" => 200}}
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
