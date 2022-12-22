# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisVideoWebRTCStorage
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ChannelArn = Shapes::StringShape.new(name: 'ChannelArn')
    ClientLimitExceededException = Shapes::StructureShape.new(name: 'ClientLimitExceededException')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    JoinStorageSessionInput = Shapes::StructureShape.new(name: 'JoinStorageSessionInput')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    String = Shapes::StringShape.new(name: 'String')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ClientLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ClientLimitExceededException.struct_class = Types::ClientLimitExceededException

    InvalidArgumentException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidArgumentException.struct_class = Types::InvalidArgumentException

    JoinStorageSessionInput.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    JoinStorageSessionInput.struct_class = Types::JoinStorageSessionInput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "kinesisvideo",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Kinesis Video WebRTC Storage",
        "serviceId" => "Kinesis Video WebRTC Storage",
        "signatureVersion" => "v4",
        "signingName" => "kinesisvideo",
        "uid" => "kinesis-video-webrtc-storage-2018-05-10",
      }

      api.add_operation(:join_storage_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "JoinStorageSession"
        o.http_method = "POST"
        o.http_request_uri = "/joinStorageSession"
        o.input = Shapes::ShapeRef.new(shape: JoinStorageSessionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
