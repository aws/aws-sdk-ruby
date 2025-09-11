# frozen_string_literal: true

# This is generated code!

module Aws::KinesisVideoWebRTCStorage
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideowebrtcstorage#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ChannelArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideowebrtcstorage#ChannelArn', name: 'ChannelArn', traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+$"})
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideowebrtcstorage#ClientId', name: 'ClientId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ClientLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideowebrtcstorage#ClientLimitExceededException', name: 'ClientLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideowebrtcstorage#InvalidArgumentException', name: 'InvalidArgumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JoinStorageSessionAsViewerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideowebrtcstorage#JoinStorageSessionAsViewerInput', name: 'JoinStorageSessionAsViewerInput')
    JoinStorageSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideowebrtcstorage#JoinStorageSessionInput', name: 'JoinStorageSessionInput')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideowebrtcstorage#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ClientLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ClientLimitExceededException.type = Types::ClientLimitExceededException
    InvalidArgumentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InvalidArgumentException.type = Types::InvalidArgumentException
    JoinStorageSessionAsViewerInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#required" => {}}))
    JoinStorageSessionAsViewerInput.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'clientId', traits: {"smithy.api#required" => {}}))
    JoinStorageSessionAsViewerInput.type = Types::JoinStorageSessionAsViewerInput
    JoinStorageSessionInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#required" => {}}))
    JoinStorageSessionInput.type = Types::JoinStorageSessionInput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException

    AWSAcuityRoutingServiceLambda = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kinesisvideowebrtcstorage#AWSAcuityRoutingServiceLambda"
      service.name = "AWSAcuityRoutingServiceLambda"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Kinesis Video WebRTC Storage", "arnNamespace" => "kinesisvideo", "endpointPrefix" => "kinesisvideo"}, "aws.auth#sigv4" => {"name" => "kinesisvideo"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Authorization", "Content-Type", "Credentials", "X-Amz-Date", "X-Api-Key", "X-Amz-Security-Token", "x-amz-content-sha256", "X-Amz-User-Agent"]}, "smithy.api#title" => "Amazon Kinesis Video WebRTC Storage"}
      service.add_operation(:join_storage_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideowebrtcstorage#JoinStorageSession"
        operation.name = "JoinStorageSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JoinStorageSessionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/joinStorageSession"}}
      end)
      service.add_operation(:join_storage_session_as_viewer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideowebrtcstorage#JoinStorageSessionAsViewer"
        operation.name = "JoinStorageSessionAsViewer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JoinStorageSessionAsViewerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/joinStorageSessionAsViewer"}}
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
