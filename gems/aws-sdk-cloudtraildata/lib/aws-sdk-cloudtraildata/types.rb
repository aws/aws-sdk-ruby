# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudTrailData
  module Types

    # An event from a source outside of Amazon Web Services that you want
    # CloudTrail to log.
    #
    # @!attribute [rw] event_data
    #   The content of an audit event that comes from the event, such as
    #   `userIdentity`, `userAgent`, and `eventSource`.
    #   @return [String]
    #
    # @!attribute [rw] event_data_checksum
    #   A checksum is a base64-SHA256 algorithm that helps you verify that
    #   CloudTrail receives the event that matches with the checksum.
    #   Calculate the checksum by running a command like the following:
    #
    #   `printf %s $eventdata | openssl dgst -binary -sha256 | base64`
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The original event ID from the source event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-data-2021-08-11/AuditEvent AWS API Documentation
    #
    class AuditEvent < Struct.new(
      :event_data,
      :event_data_checksum,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that includes successful and failed event results.
    #
    # @!attribute [rw] event_id
    #   The event ID assigned by CloudTrail.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The original event ID from the source event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-data-2021-08-11/AuditEventResultEntry AWS API Documentation
    #
    class AuditEventResultEntry < Struct.new(
      :event_id,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The caller's account ID must be the same as the channel owner's
    # account ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-data-2021-08-11/ChannelInsufficientPermission AWS API Documentation
    #
    class ChannelInsufficientPermission < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The channel could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-data-2021-08-11/ChannelNotFound AWS API Documentation
    #
    class ChannelNotFound < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The schema type of the event is not supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-data-2021-08-11/ChannelUnsupportedSchema AWS API Documentation
    #
    class ChannelUnsupportedSchema < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Two or more entries in the request have the same event ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-data-2021-08-11/DuplicatedAuditEventId AWS API Documentation
    #
    class DuplicatedAuditEventId < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified channel ARN is not a valid channel ARN.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-data-2021-08-11/InvalidChannelARN AWS API Documentation
    #
    class InvalidChannelARN < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] audit_events
    #   The JSON payload of events that you want to ingest. You can also
    #   point to the JSON event payload in a file.
    #   @return [Array<Types::AuditEvent>]
    #
    # @!attribute [rw] channel_arn
    #   The ARN or ID (the ARN suffix) of a channel.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   A unique identifier that is conditionally required when the
    #   channel's resource policy includes an external ID. This value can
    #   be any string, such as a passphrase or account number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-data-2021-08-11/PutAuditEventsRequest AWS API Documentation
    #
    class PutAuditEventsRequest < Struct.new(
      :audit_events,
      :channel_arn,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed
    #   Lists events in the provided event payload that could not be
    #   ingested into CloudTrail, and includes the error code and error
    #   message returned for events that could not be ingested.
    #   @return [Array<Types::ResultErrorEntry>]
    #
    # @!attribute [rw] successful
    #   Lists events in the provided event payload that were successfully
    #   ingested into CloudTrail.
    #   @return [Array<Types::AuditEventResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-data-2021-08-11/PutAuditEventsResponse AWS API Documentation
    #
    class PutAuditEventsResponse < Struct.new(
      :failed,
      :successful)
      SENSITIVE = []
      include Aws::Structure
    end

    # Includes the error code and error message for events that could not be
    # ingested by CloudTrail.
    #
    # @!attribute [rw] error_code
    #   The error code for events that could not be ingested by CloudTrail.
    #   Possible error codes include: `FieldTooLong`, `FieldNotFound`,
    #   `InvalidChecksum`, `InvalidData`, `InvalidRecipient`,
    #   `InvalidEventSource`, `AccountNotSubscribed`, `Throttling`, and
    #   `InternalFailure`.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message that describes the error for events that could not be
    #   ingested by CloudTrail.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The original event ID from the source event that could not be
    #   ingested by CloudTrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-data-2021-08-11/ResultErrorEntry AWS API Documentation
    #
    class ResultErrorEntry < Struct.new(
      :error_code,
      :error_message,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation requested is not supported in this region or account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-data-2021-08-11/UnsupportedOperationException AWS API Documentation
    #
    class UnsupportedOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
