# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkMailMessageFlow
  # @api private
  module ClientApi

    include Seahorse::Model

    GetRawMessageContentRequest = Shapes::StructureShape.new(name: 'GetRawMessageContentRequest')
    GetRawMessageContentResponse = Shapes::StructureShape.new(name: 'GetRawMessageContentResponse')
    InvalidContentLocation = Shapes::StructureShape.new(name: 'InvalidContentLocation')
    MessageFrozen = Shapes::StructureShape.new(name: 'MessageFrozen')
    MessageRejected = Shapes::StructureShape.new(name: 'MessageRejected')
    PutRawMessageContentRequest = Shapes::StructureShape.new(name: 'PutRawMessageContentRequest')
    PutRawMessageContentResponse = Shapes::StructureShape.new(name: 'PutRawMessageContentResponse')
    RawMessageContent = Shapes::StructureShape.new(name: 'RawMessageContent')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Reference = Shapes::StructureShape.new(name: 'S3Reference')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    messageContentBlob = Shapes::BlobShape.new(name: 'messageContentBlob', streaming: true)
    messageIdType = Shapes::StringShape.new(name: 'messageIdType')
    s3BucketIdType = Shapes::StringShape.new(name: 's3BucketIdType')
    s3KeyIdType = Shapes::StringShape.new(name: 's3KeyIdType')
    s3VersionType = Shapes::StringShape.new(name: 's3VersionType')

    GetRawMessageContentRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: messageIdType, required: true, location: "uri", location_name: "messageId"))
    GetRawMessageContentRequest.struct_class = Types::GetRawMessageContentRequest

    GetRawMessageContentResponse.add_member(:message_content, Shapes::ShapeRef.new(shape: messageContentBlob, required: true, location_name: "messageContent"))
    GetRawMessageContentResponse.struct_class = Types::GetRawMessageContentResponse
    GetRawMessageContentResponse[:payload] = :message_content
    GetRawMessageContentResponse[:payload_member] = GetRawMessageContentResponse.member(:message_content)

    InvalidContentLocation.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidContentLocation.struct_class = Types::InvalidContentLocation

    MessageFrozen.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    MessageFrozen.struct_class = Types::MessageFrozen

    MessageRejected.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    MessageRejected.struct_class = Types::MessageRejected

    PutRawMessageContentRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: messageIdType, required: true, location: "uri", location_name: "messageId"))
    PutRawMessageContentRequest.add_member(:content, Shapes::ShapeRef.new(shape: RawMessageContent, required: true, location_name: "content"))
    PutRawMessageContentRequest.struct_class = Types::PutRawMessageContentRequest

    PutRawMessageContentResponse.struct_class = Types::PutRawMessageContentResponse

    RawMessageContent.add_member(:s3_reference, Shapes::ShapeRef.new(shape: S3Reference, required: true, location_name: "s3Reference"))
    RawMessageContent.struct_class = Types::RawMessageContent

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Reference.add_member(:bucket, Shapes::ShapeRef.new(shape: s3BucketIdType, required: true, location_name: "bucket"))
    S3Reference.add_member(:key, Shapes::ShapeRef.new(shape: s3KeyIdType, required: true, location_name: "key"))
    S3Reference.add_member(:object_version, Shapes::ShapeRef.new(shape: s3VersionType, location_name: "objectVersion"))
    S3Reference.struct_class = Types::S3Reference


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-05-01"

      api.metadata = {
        "apiVersion" => "2019-05-01",
        "endpointPrefix" => "workmailmessageflow",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon WorkMail Message Flow",
        "serviceId" => "WorkMailMessageFlow",
        "signatureVersion" => "v4",
        "uid" => "workmailmessageflow-2019-05-01",
      }

      api.add_operation(:get_raw_message_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRawMessageContent"
        o.http_method = "GET"
        o.http_request_uri = "/messages/{messageId}"
        o.input = Shapes::ShapeRef.new(shape: GetRawMessageContentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRawMessageContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_raw_message_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRawMessageContent"
        o.http_method = "POST"
        o.http_request_uri = "/messages/{messageId}"
        o.input = Shapes::ShapeRef.new(shape: PutRawMessageContentRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRawMessageContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContentLocation)
        o.errors << Shapes::ShapeRef.new(shape: MessageRejected)
        o.errors << Shapes::ShapeRef.new(shape: MessageFrozen)
      end)
    end

  end
end
