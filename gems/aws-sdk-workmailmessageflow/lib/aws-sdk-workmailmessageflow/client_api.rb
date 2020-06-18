# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkMailMessageFlow
  # @api private
  module ClientApi

    include Seahorse::Model

    GetRawMessageContentRequest = Shapes::StructureShape.new(name: 'GetRawMessageContentRequest')
    GetRawMessageContentResponse = Shapes::StructureShape.new(name: 'GetRawMessageContentResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    messageContentBlob = Shapes::BlobShape.new(name: 'messageContentBlob', streaming: true)
    messageIdType = Shapes::StringShape.new(name: 'messageIdType')

    GetRawMessageContentRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: messageIdType, required: true, location: "uri", location_name: "messageId"))
    GetRawMessageContentRequest.struct_class = Types::GetRawMessageContentRequest

    GetRawMessageContentResponse.add_member(:message_content, Shapes::ShapeRef.new(shape: messageContentBlob, required: true, location_name: "messageContent"))
    GetRawMessageContentResponse.struct_class = Types::GetRawMessageContentResponse
    GetRawMessageContentResponse[:payload] = :message_content
    GetRawMessageContentResponse[:payload_member] = GetRawMessageContentResponse.member(:message_content)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException


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
    end

  end
end
