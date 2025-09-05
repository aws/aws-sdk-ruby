# frozen_string_literal: true

# This is generated code!

module Aws::CloudTrailData
  # This module contains the types returned by client operations.
  module Types

    # <p>An event from a source outside of Amazon Web Services that you want CloudTrail 
    #       to log.</p>
    # @!attribute id
    #   <p>The original event ID from the source event.</p>
    #   @return [String]
    # @!attribute event_data
    #   <p>The content of an audit event that comes from the event, such as <code>userIdentity</code>, 
    #            <code>userAgent</code>, and <code>eventSource</code>.</p>
    #   @return [String]
    # @!attribute event_data_checksum
    #   <p>A checksum is a base64-SHA256 algorithm that helps you verify that CloudTrail receives the event that matches 
    #            with the checksum. Calculate the checksum by running a command like the following:</p>
    #            <p>
    #               <code>printf %s <i>$eventdata</i> | openssl dgst -binary -sha256 | base64</code>
    #            </p>
    #   @return [String]
    class AuditEvent < Struct.new(
      :id,
      :event_data,
      :event_data_checksum,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response that includes successful and failed event results.</p>
    # @!attribute id
    #   <p>The original event ID from the source event.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The event ID assigned by CloudTrail.</p>
    #   @return [String]
    class AuditEventResultEntry < Struct.new(
      :id,
      :event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The caller's account ID must be the same as the channel owner's account ID.</p>
    # @!attribute message
    #   @return [String]
    class ChannelInsufficientPermission < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The channel could not be found.</p>
    # @!attribute message
    #   @return [String]
    class ChannelNotFound < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The schema type of the event is not supported.</p>
    # @!attribute message
    #   @return [String]
    class ChannelUnsupportedSchema < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Two or more entries in the request have the same event ID.</p>
    # @!attribute message
    #   @return [String]
    class DuplicatedAuditEventId < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified channel ARN is not a valid 
    #          channel ARN.</p>
    # @!attribute message
    #   @return [String]
    class InvalidChannelARN < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute audit_events
    #   <p>The JSON payload of events that you want to ingest. You can also point to the JSON event
    #            payload in a file.</p>
    #   @return [Array<Types::AuditEvent>]
    # @!attribute channel_arn
    #   <p>The ARN or ID (the ARN suffix) of a channel.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>A unique identifier that is conditionally required when the channel's resource policy includes an external 
    #            ID. This value can be any string, 
    #            such as a passphrase or account number.</p>
    #   @return [String]
    class PutAuditEventsInput < Struct.new(
      :audit_events,
      :channel_arn,
      :external_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute successful
    #   <p>Lists events in the provided event payload that were successfully ingested 
    #         into CloudTrail.</p>
    #   @return [Array<Types::AuditEventResultEntry>]
    # @!attribute failed
    #   <p>Lists events in the provided event payload that could not be 
    #            ingested into CloudTrail, and includes the error code and error message 
    #            returned for events that could not be ingested.</p>
    #   @return [Array<Types::ResultErrorEntry>]
    class PutAuditEventsOutput < Struct.new(
      :successful,
      :failed,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Includes the error code and error message for events that could not be ingested by CloudTrail.</p>
    # @!attribute id
    #   <p>The original event ID from the source event that could not be ingested by CloudTrail.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code for events that could not be ingested by CloudTrail. Possible error codes include: <code>FieldTooLong</code>, <code>FieldNotFound</code>, 
    #            <code>InvalidChecksum</code>, <code>InvalidData</code>, <code>InvalidRecipient</code>, <code>InvalidEventSource</code>, <code>AccountNotSubscribed</code>, 
    #            <code>Throttling</code>, and <code>InternalFailure</code>.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The message that describes the error for events that could not be ingested by CloudTrail.</p>
    #   @return [String]
    class ResultErrorEntry < Struct.new(
      :id,
      :error_code,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The operation requested is not supported in this region or account.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedOperationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
