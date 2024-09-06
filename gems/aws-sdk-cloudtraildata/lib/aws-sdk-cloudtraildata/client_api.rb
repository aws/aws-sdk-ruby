# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudTrailData
  # @api private
  module ClientApi

    include Seahorse::Model

    AuditEvent = Shapes::StructureShape.new(name: 'AuditEvent')
    AuditEventResultEntries = Shapes::ListShape.new(name: 'AuditEventResultEntries')
    AuditEventResultEntry = Shapes::StructureShape.new(name: 'AuditEventResultEntry')
    AuditEvents = Shapes::ListShape.new(name: 'AuditEvents')
    ChannelArn = Shapes::StringShape.new(name: 'ChannelArn')
    ChannelInsufficientPermission = Shapes::StructureShape.new(name: 'ChannelInsufficientPermission')
    ChannelNotFound = Shapes::StructureShape.new(name: 'ChannelNotFound')
    ChannelUnsupportedSchema = Shapes::StructureShape.new(name: 'ChannelUnsupportedSchema')
    DuplicatedAuditEventId = Shapes::StructureShape.new(name: 'DuplicatedAuditEventId')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExternalId = Shapes::StringShape.new(name: 'ExternalId')
    InvalidChannelARN = Shapes::StructureShape.new(name: 'InvalidChannelARN')
    PutAuditEventsRequest = Shapes::StructureShape.new(name: 'PutAuditEventsRequest')
    PutAuditEventsResponse = Shapes::StructureShape.new(name: 'PutAuditEventsResponse')
    ResultErrorEntries = Shapes::ListShape.new(name: 'ResultErrorEntries')
    ResultErrorEntry = Shapes::StructureShape.new(name: 'ResultErrorEntry')
    String = Shapes::StringShape.new(name: 'String')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    Uuid = Shapes::StringShape.new(name: 'Uuid')

    AuditEvent.add_member(:event_data, Shapes::ShapeRef.new(shape: String, required: true, location_name: "eventData"))
    AuditEvent.add_member(:event_data_checksum, Shapes::ShapeRef.new(shape: String, location_name: "eventDataChecksum"))
    AuditEvent.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    AuditEvent.struct_class = Types::AuditEvent

    AuditEventResultEntries.member = Shapes::ShapeRef.new(shape: AuditEventResultEntry)

    AuditEventResultEntry.add_member(:event_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "eventID"))
    AuditEventResultEntry.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    AuditEventResultEntry.struct_class = Types::AuditEventResultEntry

    AuditEvents.member = Shapes::ShapeRef.new(shape: AuditEvent)

    ChannelInsufficientPermission.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ChannelInsufficientPermission.struct_class = Types::ChannelInsufficientPermission

    ChannelNotFound.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ChannelNotFound.struct_class = Types::ChannelNotFound

    ChannelUnsupportedSchema.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ChannelUnsupportedSchema.struct_class = Types::ChannelUnsupportedSchema

    DuplicatedAuditEventId.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    DuplicatedAuditEventId.struct_class = Types::DuplicatedAuditEventId

    InvalidChannelARN.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidChannelARN.struct_class = Types::InvalidChannelARN

    PutAuditEventsRequest.add_member(:audit_events, Shapes::ShapeRef.new(shape: AuditEvents, required: true, location_name: "auditEvents"))
    PutAuditEventsRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location: "querystring", location_name: "channelArn"))
    PutAuditEventsRequest.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location: "querystring", location_name: "externalId"))
    PutAuditEventsRequest.struct_class = Types::PutAuditEventsRequest

    PutAuditEventsResponse.add_member(:failed, Shapes::ShapeRef.new(shape: ResultErrorEntries, required: true, location_name: "failed"))
    PutAuditEventsResponse.add_member(:successful, Shapes::ShapeRef.new(shape: AuditEventResultEntries, required: true, location_name: "successful"))
    PutAuditEventsResponse.struct_class = Types::PutAuditEventsResponse

    ResultErrorEntries.member = Shapes::ShapeRef.new(shape: ResultErrorEntry)

    ResultErrorEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "errorCode"))
    ResultErrorEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "errorMessage"))
    ResultErrorEntry.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    ResultErrorEntry.struct_class = Types::ResultErrorEntry

    UnsupportedOperationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    UnsupportedOperationException.struct_class = Types::UnsupportedOperationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-08-11"

      api.metadata = {
        "apiVersion" => "2021-08-11",
        "endpointPrefix" => "cloudtrail-data",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS CloudTrail Data Service",
        "serviceId" => "CloudTrail Data",
        "signatureVersion" => "v4",
        "signingName" => "cloudtrail-data",
        "uid" => "cloudtrail-data-2021-08-11",
      }

      api.add_operation(:put_audit_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAuditEvents"
        o.http_method = "POST"
        o.http_request_uri = "/PutAuditEvents"
        o.input = Shapes::ShapeRef.new(shape: PutAuditEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAuditEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ChannelInsufficientPermission)
        o.errors << Shapes::ShapeRef.new(shape: ChannelNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InvalidChannelARN)
        o.errors << Shapes::ShapeRef.new(shape: ChannelUnsupportedSchema)
        o.errors << Shapes::ShapeRef.new(shape: DuplicatedAuditEventId)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)
    end

  end
end
