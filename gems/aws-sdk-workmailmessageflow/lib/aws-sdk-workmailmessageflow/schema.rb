# frozen_string_literal: true

# This is generated code!

module Aws::WorkMailMessageFlow
  # This module contains a schema composed of shapes used by the client.
  module Schema

    GetRawMessageContentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workmailmessageflow#GetRawMessageContentRequest", name: "GetRawMessageContentRequest")
    GetRawMessageContentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workmailmessageflow#GetRawMessageContentResponse", name: "GetRawMessageContentResponse")
    InvalidContentLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workmailmessageflow#InvalidContentLocation", name: "InvalidContentLocation", traits: {"smithy.api#error" => "client"})
    MessageFrozen = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workmailmessageflow#MessageFrozen", name: "MessageFrozen", traits: {"smithy.api#error" => "client"})
    MessageRejected = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workmailmessageflow#MessageRejected", name: "MessageRejected", traits: {"smithy.api#error" => "client"})
    PutRawMessageContentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workmailmessageflow#PutRawMessageContentRequest", name: "PutRawMessageContentRequest")
    PutRawMessageContentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workmailmessageflow#PutRawMessageContentResponse", name: "PutRawMessageContentResponse")
    RawMessageContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workmailmessageflow#RawMessageContent", name: "RawMessageContent")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workmailmessageflow#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Reference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workmailmessageflow#S3Reference", name: "S3Reference")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workmailmessageflow#errorMessage", name: "ErrorMessage")
    MessageContentBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.workmailmessageflow#messageContentBlob", name: "MessageContentBlob", traits: {"smithy.api#streaming" => {}})
    MessageIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workmailmessageflow#messageIdType", name: "MessageIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 120}, "smithy.api#pattern" => "^[a-z0-9\\-]*$"})
    S3BucketIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workmailmessageflow#s3BucketIdType", name: "S3BucketIdType", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][a-z0-9\\-]*$"})
    S3KeyIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workmailmessageflow#s3KeyIdType", name: "S3KeyIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-/]*$"})
    S3VersionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workmailmessageflow#s3VersionType", name: "S3VersionType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.+$"})

    GetRawMessageContentRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageIdType, name: "messageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRawMessageContentRequest.type = Types::GetRawMessageContentRequest
    GetRawMessageContentResponse.add_member(:message_content, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageContentBlob, name: "messageContent", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetRawMessageContentResponse[:http_payload] = :message_content
    GetRawMessageContentResponse[:http_payload_member] = GetRawMessageContentResponse.member(:message_content)
    GetRawMessageContentResponse.type = Types::GetRawMessageContentResponse
    InvalidContentLocation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidContentLocation.type = Types::InvalidContentLocation
    MessageFrozen.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MessageFrozen.type = Types::MessageFrozen
    MessageRejected.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MessageRejected.type = Types::MessageRejected
    PutRawMessageContentRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageIdType, name: "messageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRawMessageContentRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: RawMessageContent, name: "content", traits: {"smithy.api#required" => {}}))
    PutRawMessageContentRequest.type = Types::PutRawMessageContentRequest
    PutRawMessageContentResponse.type = Types::PutRawMessageContentResponse
    RawMessageContent.add_member(:s3_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Reference, name: "s3Reference", traits: {"smithy.api#required" => {}}))
    RawMessageContent.type = Types::RawMessageContent
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Reference.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketIdType, name: "bucket", traits: {"smithy.api#required" => {}}))
    S3Reference.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyIdType, name: "key", traits: {"smithy.api#required" => {}}))
    S3Reference.add_member(:object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: S3VersionType, name: "objectVersion"))
    S3Reference.type = Types::S3Reference

    GiraffeMessageInTransitService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.workmailmessageflow#GiraffeMessageInTransitService"
      service.name = "GiraffeMessageInTransitService"
      service.version = "2019-05-01"
      service.traits = {"aws.api#service" => {"sdkId" => "WorkMailMessageFlow", "arnNamespace" => "workmailmessageflow", "cloudFormationName" => "WorkMailMessageFlow", "cloudTrailEventSource" => "workmailmessageflow.amazonaws.com", "endpointPrefix" => "workmailmessageflow"}, "aws.auth#sigv4" => {"name" => "workmailmessageflow"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon WorkMail Message Flow"}
      service.add_operation(:get_raw_message_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmailmessageflow#GetRawMessageContent"
        operation.name = "GetRawMessageContent"
        operation.input = GetRawMessageContentRequest
        operation.output = GetRawMessageContentResponse
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/messages/{messageId}", "code" => 200}}
      end)
      service.add_operation(:put_raw_message_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmailmessageflow#PutRawMessageContent"
        operation.name = "PutRawMessageContent"
        operation.input = PutRawMessageContentRequest
        operation.output = PutRawMessageContentResponse
        operation.errors << InvalidContentLocation
        operation.errors << MessageFrozen
        operation.errors << MessageRejected
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/messages/{messageId}", "code" => 200}}
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
