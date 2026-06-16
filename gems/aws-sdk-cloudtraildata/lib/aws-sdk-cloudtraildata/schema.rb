# frozen_string_literal: true

# This is generated code!

module Aws::CloudTrailData
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AuditEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtraildata#AuditEvent", name: "AuditEvent")
    AuditEventResultEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtraildata#AuditEventResultEntries", name: "AuditEventResultEntries", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AuditEventResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtraildata#AuditEventResultEntry", name: "AuditEventResultEntry")
    AuditEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtraildata#AuditEvents", name: "AuditEvents", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ChannelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtraildata#ChannelArn", name: "ChannelArn", traits: {"aws.api#arnReference" => {}, "smithy.api#pattern" => "^arn:.*$"})
    ChannelInsufficientPermission = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtraildata#ChannelInsufficientPermission", name: "ChannelInsufficientPermission", traits: {"smithy.api#error" => "client"})
    ChannelNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtraildata#ChannelNotFound", name: "ChannelNotFound", traits: {"smithy.api#error" => "client"})
    ChannelUnsupportedSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtraildata#ChannelUnsupportedSchema", name: "ChannelUnsupportedSchema", traits: {"smithy.api#error" => "client"})
    DuplicatedAuditEventId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtraildata#DuplicatedAuditEventId", name: "DuplicatedAuditEventId", traits: {"smithy.api#error" => "client"})
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtraildata#ErrorCode", name: "ErrorCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtraildata#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ExternalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtraildata#ExternalId", name: "ExternalId", traits: {"smithy.api#length" => {"min" => 2, "max" => 1224}, "smithy.api#pattern" => "^[\\w+=,.@:\\/-]*$"})
    InvalidChannelARN = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtraildata#InvalidChannelARN", name: "InvalidChannelARN", traits: {"smithy.api#error" => "client"})
    PutAuditEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtraildata#PutAuditEventsInput", name: "PutAuditEventsInput")
    PutAuditEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtraildata#PutAuditEventsOutput", name: "PutAuditEventsOutput")
    ResultErrorEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtraildata#ResultErrorEntries", name: "ResultErrorEntries", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ResultErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtraildata#ResultErrorEntry", name: "ResultErrorEntry")
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtraildata#UnsupportedOperationException", name: "UnsupportedOperationException", traits: {"smithy.api#error" => "client"})
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtraildata#Uuid", name: "Uuid", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[-_A-Za-z0-9]+$"})

    AuditEvent.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, location_name: "id", traits: {"smithy.api#required" => {}}))
    AuditEvent.add_member(:event_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "eventData", traits: {"smithy.api#required" => {}}))
    AuditEvent.add_member(:event_data_checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "eventDataChecksum"))
    AuditEvent.type = Types::AuditEvent
    AuditEventResultEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AuditEventResultEntry)
    AuditEventResultEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, location_name: "id", traits: {"smithy.api#required" => {}}))
    AuditEventResultEntry.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, location_name: "eventID", traits: {"smithy.api#required" => {}}))
    AuditEventResultEntry.type = Types::AuditEventResultEntry
    AuditEvents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AuditEvent)
    ChannelInsufficientPermission.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ChannelInsufficientPermission.type = Types::ChannelInsufficientPermission
    ChannelNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ChannelNotFound.type = Types::ChannelNotFound
    ChannelUnsupportedSchema.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ChannelUnsupportedSchema.type = Types::ChannelUnsupportedSchema
    DuplicatedAuditEventId.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    DuplicatedAuditEventId.type = Types::DuplicatedAuditEventId
    InvalidChannelARN.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    InvalidChannelARN.type = Types::InvalidChannelARN
    PutAuditEventsInput.add_member(:audit_events, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditEvents, location_name: "auditEvents", traits: {"smithy.api#required" => {}}))
    PutAuditEventsInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelArn, location_name: "channelArn", traits: {"smithy.api#httpQuery" => "channelArn", "smithy.api#required" => {}}))
    PutAuditEventsInput.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, location_name: "externalId", traits: {"smithy.api#httpQuery" => "externalId"}))
    PutAuditEventsInput.type = Types::PutAuditEventsInput
    PutAuditEventsOutput.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditEventResultEntries, location_name: "successful", traits: {"smithy.api#required" => {}}))
    PutAuditEventsOutput.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultErrorEntries, location_name: "failed", traits: {"smithy.api#required" => {}}))
    PutAuditEventsOutput.type = Types::PutAuditEventsOutput
    ResultErrorEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResultErrorEntry)
    ResultErrorEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, location_name: "id", traits: {"smithy.api#required" => {}}))
    ResultErrorEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "errorCode", traits: {"smithy.api#required" => {}}))
    ResultErrorEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "errorMessage", traits: {"smithy.api#required" => {}}))
    ResultErrorEntry.type = Types::ResultErrorEntry
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    UnsupportedOperationException.type = Types::UnsupportedOperationException

    CloudTrailDataService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudtraildata#CloudTrailDataService"
      service.name = "CloudTrailDataService"
      service.version = "2021-08-11"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudTrail Data", "endpointPrefix" => "cloudtrail-data"}, "aws.auth#sigv4" => {"name" => "cloudtrail-data"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "AWS CloudTrail Data Service"}
      service.add_operation(:put_audit_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtraildata#PutAuditEvents"
        operation.name = "PutAuditEvents"
        operation.input = PutAuditEventsInput
        operation.output = PutAuditEventsOutput
        operation.errors << ChannelInsufficientPermission
        operation.errors << ChannelNotFound
        operation.errors << ChannelUnsupportedSchema
        operation.errors << DuplicatedAuditEventId
        operation.errors << InvalidChannelARN
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"uri" => "/PutAuditEvents", "method" => "POST"}}
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
