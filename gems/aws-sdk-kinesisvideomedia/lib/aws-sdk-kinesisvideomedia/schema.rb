# frozen_string_literal: true

# This is generated code!

module Aws::KinesisVideoMedia
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ClientLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideomedia#ClientLimitExceededException", name: "ClientLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConnectionLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideomedia#ConnectionLimitExceededException", name: "ConnectionLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisvideomedia#ContentType", name: "ContentType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.\\-]+$"})
    ContinuationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisvideomedia#ContinuationToken", name: "ContinuationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.\\-]+$"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisvideomedia#ErrorMessage", name: "ErrorMessage")
    FragmentNumberString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisvideomedia#FragmentNumberString", name: "FragmentNumberString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9]+$"})
    GetMediaInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideomedia#GetMediaInput", name: "GetMediaInput")
    GetMediaOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideomedia#GetMediaOutput", name: "GetMediaOutput")
    InvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideomedia#InvalidArgumentException", name: "InvalidArgumentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEndpointException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideomedia#InvalidEndpointException", name: "InvalidEndpointException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NotAuthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideomedia#NotAuthorizedException", name: "NotAuthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    Payload = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.kinesisvideomedia#Payload", name: "Payload", traits: {"smithy.api#streaming" => {}})
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisvideomedia#ResourceARN", name: "ResourceARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideomedia#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    StartSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesisvideomedia#StartSelector", name: "StartSelector")
    StartSelectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesisvideomedia#StartSelectorType", name: "StartSelectorType")
    StreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesisvideomedia#StreamName", name: "StreamName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.kinesisvideomedia#Timestamp", name: "Timestamp")

    ClientLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ClientLimitExceededException.type = Types::ClientLimitExceededException
    ConnectionLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConnectionLimitExceededException.type = Types::ConnectionLimitExceededException
    GetMediaInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    GetMediaInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "StreamARN"))
    GetMediaInput.add_member(:start_selector, ::Smithy::Schema::Shapes::MemberShape.new(target: StartSelector, name: "StartSelector", traits: {"smithy.api#required" => {}}))
    GetMediaInput.type = Types::GetMediaInput
    GetMediaOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetMediaOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, name: "Payload", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    GetMediaOutput[:http_payload] = :payload
    GetMediaOutput[:http_payload_member] = GetMediaOutput.member(:payload)
    GetMediaOutput.type = Types::GetMediaOutput
    InvalidArgumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidEndpointException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidEndpointException.type = Types::InvalidEndpointException
    NotAuthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    NotAuthorizedException.type = Types::NotAuthorizedException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    StartSelector.add_member(:start_selector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StartSelectorType, name: "StartSelectorType", traits: {"smithy.api#required" => {}}))
    StartSelector.add_member(:after_fragment_number, ::Smithy::Schema::Shapes::MemberShape.new(target: FragmentNumberString, name: "AfterFragmentNumber"))
    StartSelector.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTimestamp"))
    StartSelector.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "ContinuationToken"))
    StartSelector.type = Types::StartSelector
    StartSelectorType.add_member(:fragment_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FRAGMENT_NUMBER", traits: {"smithy.api#enumValue" => "FRAGMENT_NUMBER"}))
    StartSelectorType.add_member(:server_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER_TIMESTAMP", traits: {"smithy.api#enumValue" => "SERVER_TIMESTAMP"}))
    StartSelectorType.add_member(:producer_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRODUCER_TIMESTAMP", traits: {"smithy.api#enumValue" => "PRODUCER_TIMESTAMP"}))
    StartSelectorType.add_member(:now, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOW", traits: {"smithy.api#enumValue" => "NOW"}))
    StartSelectorType.add_member(:earliest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EARLIEST", traits: {"smithy.api#enumValue" => "EARLIEST"}))
    StartSelectorType.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUATION_TOKEN", traits: {"smithy.api#enumValue" => "CONTINUATION_TOKEN"}))

    AWSAcuityInletService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kinesisvideomedia#AWSAcuityInletService"
      service.name = "AWSAcuityInletService"
      service.version = "2017-09-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Kinesis Video Media", "arnNamespace" => "kinesisvideo", "cloudFormationName" => "KinesisVideoMedia", "cloudTrailEventSource" => "kinesisvideomedia.amazonaws.com", "endpointPrefix" => "kinesisvideo"}, "aws.auth#sigv4" => {"name" => "kinesisvideo"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Kinesis Video Streams Media"}
      service.add_operation(:get_media, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideomedia#GetMedia"
        operation.name = "GetMedia"
        operation.input = GetMediaInput
        operation.output = GetMediaOutput
        operation.errors << ClientLimitExceededException
        operation.errors << ConnectionLimitExceededException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidEndpointException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getMedia", "code" => 200}}
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
