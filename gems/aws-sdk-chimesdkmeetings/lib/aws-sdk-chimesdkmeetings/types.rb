# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKMeetings
  module Types

    # An Amazon Chime SDK meeting attendee. Includes a unique `AttendeeId`
    # and `JoinToken`. The `JoinToken` allows a client to authenticate and
    # join as the specified attendee. The `JoinToken` expires when the
    # meeting ends, or when DeleteAttendee is called. After that, the
    # attendee is unable to join the meeting.
    #
    # We recommend securely transferring each `JoinToken` from your server
    # application to the client so that no other client has access to the
    # token except for the one authorized to represent the attendee.
    #
    # @!attribute [rw] external_user_id
    #   The Amazon Chime SDK external user ID. An idempotency token. Links
    #   the attendee to an identity managed by a builder application.
    #   @return [String]
    #
    # @!attribute [rw] attendee_id
    #   The Amazon Chime SDK attendee ID.
    #   @return [String]
    #
    # @!attribute [rw] join_token
    #   The join token used by the Amazon Chime SDK attendee.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   The capabilities assigned to an attendee: audio, video, or content.
    #
    #   <note markdown="1"> You use the capabilities with a set of values that control what the
    #   capabilities can do, such as `SendReceive` data. For more
    #   information about those values, see .
    #
    #    </note>
    #
    #   When using capabilities, be aware of these corner cases:
    #
    #   * You can't set `content` capabilities to `SendReceive` or
    #     `Receive` unless you also set `video` capabilities to
    #     `SendReceive` or `Receive`. If you don't set the `video`
    #     capability to receive, the response will contain an HTTP 400 Bad
    #     Request status code. However, you can set your `video` capability
    #     to receive and you set your `content` capability to not receive.
    #
    #   * When you change an `audio` capability from `None` or `Receive` to
    #     `Send` or `SendReceive` , and if the attendee left their
    #     microphone unmuted, audio will flow from the attendee to the other
    #     meeting participants.
    #
    #   * When you change a `video` or `content` capability from `None` or
    #     `Receive` to `Send` or `SendReceive` , and if the attendee turned
    #     on their video or content streams, remote attendess can receive
    #     those streams, but only after media renegotiation between the
    #     client and the Amazon Chime back-end server.
    #   @return [Types::AttendeeCapabilities]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/Attendee AWS API Documentation
    #
    class Attendee < Struct.new(
      :external_user_id,
      :attendee_id,
      :join_token,
      :capabilities)
      SENSITIVE = [:external_user_id, :join_token]
      include Aws::Structure
    end

    # The media capabilities of an attendee: audio, video, or content.
    #
    # <note markdown="1"> You use the capabilities with a set of values that control what the
    # capabilities can do, such as `SendReceive` data. For more information
    # about those values, see .
    #
    #  </note>
    #
    # When using capabilities, be aware of these corner cases:
    #
    # * You can't set `content` capabilities to `SendReceive` or `Receive`
    #   unless you also set `video` capabilities to `SendReceive` or
    #   `Receive`. If you don't set the `video` capability to receive, the
    #   response will contain an HTTP 400 Bad Request status code. However,
    #   you can set your `video` capability to receive and you set your
    #   `content` capability to not receive.
    #
    # * When you change an `audio` capability from `None` or `Receive` to
    #   `Send` or `SendReceive` , and if the attendee left their microphone
    #   unmuted, audio will flow from the attendee to the other meeting
    #   participants.
    #
    # * When you change a `video` or `content` capability from `None` or
    #   `Receive` to `Send` or `SendReceive` , and if the attendee turned on
    #   their video or content streams, remote attendess can receive those
    #   streams, but only after media renegotiation between the client and
    #   the Amazon Chime back-end server.
    #
    # @!attribute [rw] audio
    #   The audio capability assigned to an attendee.
    #   @return [String]
    #
    # @!attribute [rw] video
    #   The video capability assigned to an attendee.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content capability assigned to an attendee.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/AttendeeCapabilities AWS API Documentation
    #
    class AttendeeCapabilities < Struct.new(
      :audio,
      :video,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains one or more attendee IDs.
    #
    # @!attribute [rw] attendee_id
    #   A list of one or more attendee IDs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/AttendeeIdItem AWS API Documentation
    #
    class AttendeeIdItem < Struct.new(
      :attendee_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An optional category of meeting features that contains audio-specific
    # configurations, such as operating parameters for Amazon Voice Focus.
    #
    # @!attribute [rw] echo_reduction
    #   Makes echo reduction available to clients who connect to the
    #   meeting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/AudioFeatures AWS API Documentation
    #
    class AudioFeatures < Struct.new(
      :echo_reduction)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input parameters don't match the service's restrictions.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request id associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK ID of the meeting to which you're adding
    #   attendees.
    #   @return [String]
    #
    # @!attribute [rw] attendees
    #   The attendee information, including attendees' IDs and join tokens.
    #   @return [Array<Types::CreateAttendeeRequestItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/BatchCreateAttendeeRequest AWS API Documentation
    #
    class BatchCreateAttendeeRequest < Struct.new(
      :meeting_id,
      :attendees)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attendees
    #   The attendee information, including attendees' IDs and join tokens.
    #   @return [Array<Types::Attendee>]
    #
    # @!attribute [rw] errors
    #   If the action fails for one or more of the attendees in the request,
    #   a list of the attendees is returned, along with error codes and
    #   error messages.
    #   @return [Array<Types::CreateAttendeeError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/BatchCreateAttendeeResponse AWS API Documentation
    #
    class BatchCreateAttendeeResponse < Struct.new(
      :attendees,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meeting_id
    #   The ID of the meeting associated with the update request.
    #   @return [String]
    #
    # @!attribute [rw] excluded_attendee_ids
    #   The `AttendeeIDs` that you want to exclude from one or more
    #   capabilities.
    #   @return [Array<Types::AttendeeIdItem>]
    #
    # @!attribute [rw] capabilities
    #   The capabilities (`audio`, `video`, or `content`) that you want to
    #   update.
    #   @return [Types::AttendeeCapabilities]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/BatchUpdateAttendeeCapabilitiesExceptRequest AWS API Documentation
    #
    class BatchUpdateAttendeeCapabilitiesExceptRequest < Struct.new(
      :meeting_id,
      :excluded_attendee_ids,
      :capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # Multiple instances of the same request have been made simultaneously.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request involved in the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of errors returned when errors are encountered during the
    # BatchCreateAttendee and CreateAttendee actions. This includes external
    # user IDs, error codes, and error messages.
    #
    # @!attribute [rw] external_user_id
    #   The Amazon Chime SDK external user ID. An idempotency token. Links
    #   the attendee to an identity managed by a builder application.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateAttendeeError AWS API Documentation
    #
    class CreateAttendeeError < Struct.new(
      :external_user_id,
      :error_code,
      :error_message)
      SENSITIVE = [:external_user_id]
      include Aws::Structure
    end

    # @!attribute [rw] meeting_id
    #   The unique ID of the meeting.
    #   @return [String]
    #
    # @!attribute [rw] external_user_id
    #   The Amazon Chime SDK external user ID. An idempotency token. Links
    #   the attendee to an identity managed by a builder application.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   The capabilities (`audio`, `video`, or `content`) that you want to
    #   grant an attendee. If you don't specify capabilities, all users
    #   have send and receive capabilities on all media channels by default.
    #
    #   <note markdown="1"> You use the capabilities with a set of values that control what the
    #   capabilities can do, such as `SendReceive` data. For more
    #   information about those values, see .
    #
    #    </note>
    #
    #   When using capabilities, be aware of these corner cases:
    #
    #   * You can't set `content` capabilities to `SendReceive` or
    #     `Receive` unless you also set `video` capabilities to
    #     `SendReceive` or `Receive`. If you don't set the `video`
    #     capability to receive, the response will contain an HTTP 400 Bad
    #     Request status code. However, you can set your `video` capability
    #     to receive and you set your `content` capability to not receive.
    #
    #   * When you change an `audio` capability from `None` or `Receive` to
    #     `Send` or `SendReceive` , and if the attendee left their
    #     microphone unmuted, audio will flow from the attendee to the other
    #     meeting participants.
    #
    #   * When you change a `video` or `content` capability from `None` or
    #     `Receive` to `Send` or `SendReceive` , and if the attendee turned
    #     on their video or content streams, remote attendess can receive
    #     those streams, but only after media renegotiation between the
    #     client and the Amazon Chime back-end server.
    #   @return [Types::AttendeeCapabilities]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateAttendeeRequest AWS API Documentation
    #
    class CreateAttendeeRequest < Struct.new(
      :meeting_id,
      :external_user_id,
      :capabilities)
      SENSITIVE = [:external_user_id]
      include Aws::Structure
    end

    # The Amazon Chime SDK attendee fields to create, used with the
    # BatchCreateAttendee action.
    #
    # @!attribute [rw] external_user_id
    #   The Amazon Chime SDK external user ID. An idempotency token. Links
    #   the attendee to an identity managed by a builder application.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   A list of one or more capabilities.
    #   @return [Types::AttendeeCapabilities]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateAttendeeRequestItem AWS API Documentation
    #
    class CreateAttendeeRequestItem < Struct.new(
      :external_user_id,
      :capabilities)
      SENSITIVE = [:external_user_id]
      include Aws::Structure
    end

    # @!attribute [rw] attendee
    #   The attendee information, including attendee ID and join token.
    #   @return [Types::Attendee]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateAttendeeResponse AWS API Documentation
    #
    class CreateAttendeeResponse < Struct.new(
      :attendee)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different meetings.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] media_region
    #   The Region in which to create the meeting.
    #
    #   Available values: `af-south-1`, `ap-northeast-1`, `ap-northeast-2`,
    #   `ap-south-1`, `ap-southeast-1`, `ap-southeast-2`, `ca-central-1`,
    #   `eu-central-1`, `eu-north-1`, `eu-south-1`, `eu-west-1`,
    #   `eu-west-2`, `eu-west-3`, `sa-east-1`, `us-east-1`, `us-east-2`,
    #   `us-west-1`, `us-west-2`.
    #
    #   Available values in AWS GovCloud (US) Regions: `us-gov-east-1`,
    #   `us-gov-west-1`.
    #   @return [String]
    #
    # @!attribute [rw] meeting_host_id
    #   Reserved.
    #   @return [String]
    #
    # @!attribute [rw] external_meeting_id
    #   The external meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] notifications_configuration
    #   The configuration for resource targets to receive notifications when
    #   meeting and attendee events occur.
    #   @return [Types::NotificationsConfiguration]
    #
    # @!attribute [rw] meeting_features
    #   Lists the audio and video features enabled for a meeting, such as
    #   echo reduction.
    #   @return [Types::MeetingFeaturesConfiguration]
    #
    # @!attribute [rw] primary_meeting_id
    #   When specified, replicates the media from the primary meeting to the
    #   new meeting.
    #   @return [String]
    #
    # @!attribute [rw] tenant_ids
    #   A consistent and opaque identifier, created and maintained by the
    #   builder to represent a segment of their users.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Applies one or more tags to an Amazon Chime SDK meeting. Note the
    #   following:
    #
    #   * Not all resources have tags. For a list of services with resources
    #     that support tagging using this operation, see [Services that
    #     support the Resource Groups Tagging API][1]. If the resource
    #     doesn't yet support this operation, the resource's service might
    #     support tagging using its own API operations. For more
    #     information, refer to the documentation for that service.
    #
    #   * Each resource can have up to 50 tags. For other limits, see [Tag
    #     Naming and Usage Conventions][2] in the *AWS General Reference*.
    #
    #   * You can only tag resources that are located in the specified AWS
    #     Region for the AWS account.
    #
    #   * To add tags to a resource, you need the necessary permissions for
    #     the service that the resource belongs to as well as permissions
    #     for adding tags. For more information, see the documentation for
    #     each service.
    #
    #   Do not store personally identifiable information (PII) or other
    #   confidential or sensitive information in tags. We use tags to
    #   provide you with billing and administration services. Tags are not
    #   intended to be used for private or sensitive data.
    #
    #   **Minimum permissions**
    #
    #   In addition to the `tag:TagResources `permission required by this
    #   operation, you must also have the tagging permission defined by the
    #   service that created the resource. For example, to tag a
    #   `ChimeSDKMeetings` instance using the `TagResources` operation, you
    #   must have both of the following permissions:
    #
    #   `tag:TagResources`
    #
    #   `ChimeSDKMeetings:CreateTags`
    #
    #   <note markdown="1"> Some services might have specific requirements for tagging some
    #   resources. For example, to tag an Amazon S3 bucket, you must also
    #   have the `s3:GetBucketTagging` permission. If the expected minimum
    #   permissions don't work, check the documentation for that service's
    #   tagging APIs for more information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateMeetingRequest AWS API Documentation
    #
    class CreateMeetingRequest < Struct.new(
      :client_request_token,
      :media_region,
      :meeting_host_id,
      :external_meeting_id,
      :notifications_configuration,
      :meeting_features,
      :primary_meeting_id,
      :tenant_ids,
      :tags)
      SENSITIVE = [:client_request_token, :meeting_host_id, :external_meeting_id]
      include Aws::Structure
    end

    # @!attribute [rw] meeting
    #   The meeting information, including the meeting ID and
    #   `MediaPlacement`.
    #   @return [Types::Meeting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateMeetingResponse AWS API Documentation
    #
    class CreateMeetingResponse < Struct.new(
      :meeting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different meetings.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] media_region
    #   The Region in which to create the meeting.
    #
    #   Available values: `af-south-1`, `ap-northeast-1`, `ap-northeast-2`,
    #   `ap-south-1`, `ap-southeast-1`, `ap-southeast-2`, `ca-central-1`,
    #   `eu-central-1`, `eu-north-1`, `eu-south-1`, `eu-west-1`,
    #   `eu-west-2`, `eu-west-3`, `sa-east-1`, `us-east-1`, `us-east-2`,
    #   `us-west-1`, `us-west-2`.
    #
    #   Available values in AWS GovCloud (US) Regions: `us-gov-east-1`,
    #   `us-gov-west-1`.
    #   @return [String]
    #
    # @!attribute [rw] meeting_host_id
    #   Reserved.
    #   @return [String]
    #
    # @!attribute [rw] external_meeting_id
    #   The external meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] meeting_features
    #   Lists the audio and video features enabled for a meeting, such as
    #   echo reduction.
    #   @return [Types::MeetingFeaturesConfiguration]
    #
    # @!attribute [rw] notifications_configuration
    #   The configuration for resource targets to receive notifications when
    #   meeting and attendee events occur.
    #   @return [Types::NotificationsConfiguration]
    #
    # @!attribute [rw] attendees
    #   The attendee information, including attendees' IDs and join tokens.
    #   @return [Array<Types::CreateAttendeeRequestItem>]
    #
    # @!attribute [rw] primary_meeting_id
    #   When specified, replicates the media from the primary meeting to the
    #   new meeting.
    #   @return [String]
    #
    # @!attribute [rw] tenant_ids
    #   A consistent and opaque identifier, created and maintained by the
    #   builder to represent a segment of their users.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags in the request.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateMeetingWithAttendeesRequest AWS API Documentation
    #
    class CreateMeetingWithAttendeesRequest < Struct.new(
      :client_request_token,
      :media_region,
      :meeting_host_id,
      :external_meeting_id,
      :meeting_features,
      :notifications_configuration,
      :attendees,
      :primary_meeting_id,
      :tenant_ids,
      :tags)
      SENSITIVE = [:client_request_token, :meeting_host_id, :external_meeting_id]
      include Aws::Structure
    end

    # @!attribute [rw] meeting
    #   The meeting information, including the meeting ID and
    #   `MediaPlacement`.
    #   @return [Types::Meeting]
    #
    # @!attribute [rw] attendees
    #   The attendee information, including attendees' IDs and join tokens.
    #   @return [Array<Types::Attendee>]
    #
    # @!attribute [rw] errors
    #   If the action fails for one or more of the attendees in the request,
    #   a list of the attendees is returned, along with error codes and
    #   error messages.
    #   @return [Array<Types::CreateAttendeeError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateMeetingWithAttendeesResponse AWS API Documentation
    #
    class CreateMeetingWithAttendeesResponse < Struct.new(
      :meeting,
      :attendees,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] attendee_id
    #   The Amazon Chime SDK attendee ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/DeleteAttendeeRequest AWS API Documentation
    #
    class DeleteAttendeeRequest < Struct.new(
      :meeting_id,
      :attendee_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/DeleteMeetingRequest AWS API Documentation
    #
    class DeleteMeetingRequest < Struct.new(
      :meeting_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings specific to the Amazon Transcribe Medical engine.
    #
    # @!attribute [rw] language_code
    #   The language code specified for the Amazon Transcribe Medical
    #   engine.
    #   @return [String]
    #
    # @!attribute [rw] specialty
    #   The specialty specified for the Amazon Transcribe Medical engine.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of transcription.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary passed to Amazon Transcribe Medical.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region passed to Amazon Transcribe Medical. If you don't
    #   specify a Region, Amazon Chime uses the meeting's Region.
    #   @return [String]
    #
    # @!attribute [rw] content_identification_type
    #   Set this field to `PHI` to identify personal health information in
    #   the transcription output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/EngineTranscribeMedicalSettings AWS API Documentation
    #
    class EngineTranscribeMedicalSettings < Struct.new(
      :language_code,
      :specialty,
      :type,
      :vocabulary_name,
      :region,
      :content_identification_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings specific to the Amazon Transcribe engine.
    #
    # @!attribute [rw] language_code
    #   The language code specified for the Amazon Transcribe engine.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_method
    #   The filtering method passed to Amazon Transcribe.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The name of the vocabulary filter passed to Amazon Transcribe.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary passed to Amazon Transcribe.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region passed to Amazon Transcribe. If you don't specify a
    #   Region, Amazon Chime uses the meeting's Region.
    #   @return [String]
    #
    # @!attribute [rw] enable_partial_results_stabilization
    #   Generates partial transcription results that are less likely to
    #   change as meeting attendees speak. It does so by only allowing the
    #   last few words from the partial results to change.
    #   @return [Boolean]
    #
    # @!attribute [rw] partial_results_stability
    #   The stabity level of a partial results transcription. Determines how
    #   stable you want the transcription results to be. A higher level
    #   means the transcription results are less likely to change.
    #   @return [String]
    #
    # @!attribute [rw] content_identification_type
    #   Set this field to `PII` to identify personally identifiable
    #   information in the transcription output.
    #   @return [String]
    #
    # @!attribute [rw] content_redaction_type
    #   Set this field to `PII` to redact personally identifiable
    #   information in the transcription output. Content redaction is
    #   performed only upon complete transcription of the audio segments.
    #
    #   You can’t set `ContentRedactionType` and `ContentIdentificationType`
    #   in the same request. If you set both, your request returns a
    #   `BadRequestException`.
    #   @return [String]
    #
    # @!attribute [rw] pii_entity_types
    #   Lists the PII entity types you want to identify or redact. To
    #   specify entity types, you must enable `ContentIdentificationType` or
    #   `ContentRedactionType`.
    #
    #   `PIIEntityTypes` must be comma-separated. The available values are:
    #   `BANK_ACCOUNT_NUMBER`, `BANK_ROUTING, CREDIT_DEBIT_NUMBER`,
    #   `CREDIT_DEBIT_CVV`, `CREDIT_DEBIT_EXPIRY`, `PIN`, `EMAIL`,
    #   `ADDRESS`, `NAME`, `PHONE`, `SSN`, and `ALL`.
    #
    #   `PiiEntityTypes` is an optional parameter with a default value of
    #   `ALL`.
    #   @return [String]
    #
    # @!attribute [rw] language_model_name
    #   The name of the language model used during transcription.
    #   @return [String]
    #
    # @!attribute [rw] identify_language
    #   Automatically identifies the language spoken in media files.
    #   @return [Boolean]
    #
    # @!attribute [rw] language_options
    #   Language codes for the languages that you want to identify. You must
    #   provide at least 2 codes.
    #   @return [String]
    #
    # @!attribute [rw] preferred_language
    #   Language code for the preferred language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/EngineTranscribeSettings AWS API Documentation
    #
    class EngineTranscribeSettings < Struct.new(
      :language_code,
      :vocabulary_filter_method,
      :vocabulary_filter_name,
      :vocabulary_name,
      :region,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types,
      :language_model_name,
      :identify_language,
      :language_options,
      :preferred_language)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is permanently forbidden from making the request.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request id associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] attendee_id
    #   The Amazon Chime SDK attendee ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/GetAttendeeRequest AWS API Documentation
    #
    class GetAttendeeRequest < Struct.new(
      :meeting_id,
      :attendee_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attendee
    #   The Amazon Chime SDK attendee information.
    #   @return [Types::Attendee]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/GetAttendeeResponse AWS API Documentation
    #
    class GetAttendeeResponse < Struct.new(
      :attendee)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/GetMeetingRequest AWS API Documentation
    #
    class GetMeetingRequest < Struct.new(
      :meeting_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meeting
    #   The Amazon Chime SDK meeting information.
    #   @return [Types::Meeting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/GetMeetingResponse AWS API Documentation
    #
    class GetMeetingResponse < Struct.new(
      :meeting)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds the resource limit.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request id associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/ListAttendeesRequest AWS API Documentation
    #
    class ListAttendeesRequest < Struct.new(
      :meeting_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attendees
    #   The Amazon Chime SDK attendee information.
    #   @return [Array<Types::Attendee>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/ListAttendeesResponse AWS API Documentation
    #
    class ListAttendeesResponse < Struct.new(
      :attendees,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags requested for the specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of endpoints used by clients to connect to the media service
    # group for an Amazon Chime SDK meeting.
    #
    # @!attribute [rw] audio_host_url
    #   The audio host URL.
    #   @return [String]
    #
    # @!attribute [rw] audio_fallback_url
    #   The audio fallback URL.
    #   @return [String]
    #
    # @!attribute [rw] signaling_url
    #   The signaling URL.
    #   @return [String]
    #
    # @!attribute [rw] turn_control_url
    #   The turn control URL.
    #   @return [String]
    #
    # @!attribute [rw] screen_data_url
    #   The screen data URL.
    #   @return [String]
    #
    # @!attribute [rw] screen_viewing_url
    #   The screen viewing URL.
    #   @return [String]
    #
    # @!attribute [rw] screen_sharing_url
    #   The screen sharing URL.
    #   @return [String]
    #
    # @!attribute [rw] event_ingestion_url
    #   The event ingestion URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/MediaPlacement AWS API Documentation
    #
    class MediaPlacement < Struct.new(
      :audio_host_url,
      :audio_fallback_url,
      :signaling_url,
      :turn_control_url,
      :screen_data_url,
      :screen_viewing_url,
      :screen_sharing_url,
      :event_ingestion_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A meeting created using the Amazon Chime SDK.
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] meeting_host_id
    #   Reserved.
    #   @return [String]
    #
    # @!attribute [rw] external_meeting_id
    #   The external meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] media_region
    #   The Region in which you create the meeting. Available values:
    #   `af-south-1`, `ap-northeast-1`, `ap-northeast-2`, `ap-south-1`,
    #   `ap-southeast-1`, `ap-southeast-2`, `ca-central-1`, `eu-central-1`,
    #   `eu-north-1`, `eu-south-1`, `eu-west-1`, `eu-west-2`, `eu-west-3`,
    #   `sa-east-1`, `us-east-1`, `us-east-2`, `us-west-1`, `us-west-2`.
    #
    #   Available values in AWS GovCloud (US) Regions: `us-gov-east-1`,
    #   `us-gov-west-1`.
    #   @return [String]
    #
    # @!attribute [rw] media_placement
    #   The media placement for the meeting.
    #   @return [Types::MediaPlacement]
    #
    # @!attribute [rw] meeting_features
    #   The features available to a meeting, such as Amazon Voice Focus.
    #   @return [Types::MeetingFeaturesConfiguration]
    #
    # @!attribute [rw] primary_meeting_id
    #   When specified, replicates the media from the primary meeting to
    #   this meeting.
    #   @return [String]
    #
    # @!attribute [rw] tenant_ids
    #   Array of strings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] meeting_arn
    #   The ARN of the meeting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/Meeting AWS API Documentation
    #
    class Meeting < Struct.new(
      :meeting_id,
      :meeting_host_id,
      :external_meeting_id,
      :media_region,
      :media_placement,
      :meeting_features,
      :primary_meeting_id,
      :tenant_ids,
      :meeting_arn)
      SENSITIVE = [:meeting_host_id, :external_meeting_id]
      include Aws::Structure
    end

    # The configuration settings of the features available to a meeting.&gt;
    #
    # @!attribute [rw] audio
    #   The configuration settings for the audio features available to a
    #   meeting.
    #   @return [Types::AudioFeatures]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/MeetingFeaturesConfiguration AWS API Documentation
    #
    class MeetingFeaturesConfiguration < Struct.new(
      :audio)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of the resources in the request does not exist in the
    # system.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request ID associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for resource targets to receive notifications when
    # meeting and attendee events occur.
    #
    # @!attribute [rw] lambda_function_arn
    #   The ARN of the AWS Lambda function in the notifications
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The ARN of the SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] sqs_queue_arn
    #   The ARN of the SQS queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/NotificationsConfiguration AWS API Documentation
    #
    class NotificationsConfiguration < Struct.new(
      :lambda_function_arn,
      :sns_topic_arn,
      :sqs_queue_arn)
      SENSITIVE = [:lambda_function_arn, :sns_topic_arn, :sqs_queue_arn]
      include Aws::Structure
    end

    # The resource that you want to tag couldn't be found.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the resource that couldn't be found.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource that couldn't be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :code,
      :message,
      :request_id,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an unexpected error.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the failed request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/ServiceFailureException AWS API Documentation
    #
    class ServiceFailureException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is currently unavailable.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request id associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds the caller should wait before retrying.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :code,
      :message,
      :request_id,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meeting_id
    #   The unique ID of the meeting being transcribed.
    #   @return [String]
    #
    # @!attribute [rw] transcription_configuration
    #   The configuration for the current transcription operation. Must
    #   contain `EngineTranscribeSettings` or
    #   `EngineTranscribeMedicalSettings`.
    #   @return [Types::TranscriptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/StartMeetingTranscriptionRequest AWS API Documentation
    #
    class StartMeetingTranscriptionRequest < Struct.new(
      :meeting_id,
      :transcription_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meeting_id
    #   The unique ID of the meeting for which you stop transcription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/StopMeetingTranscriptionRequest AWS API Documentation
    #
    class StopMeetingTranscriptionRequest < Struct.new(
      :meeting_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair that you define.
    #
    # @!attribute [rw] key
    #   The tag's key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag's value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Lists the requested tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The number of customer requests exceeds the request rate limit.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request that exceeded the throttling limit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Too many tags were added to the specified resource.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request that contains too many tags.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource that received too many tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :code,
      :message,
      :request_id,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the current transcription operation. Must
    # contain `EngineTranscribeSettings` or
    # `EngineTranscribeMedicalSettings`.
    #
    # @!attribute [rw] engine_transcribe_settings
    #   The transcription configuration settings passed to Amazon
    #   Transcribe.
    #   @return [Types::EngineTranscribeSettings]
    #
    # @!attribute [rw] engine_transcribe_medical_settings
    #   The transcription configuration settings passed to Amazon Transcribe
    #   Medical.
    #   @return [Types::EngineTranscribeMedicalSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/TranscriptionConfiguration AWS API Documentation
    #
    class TranscriptionConfiguration < Struct.new(
      :engine_transcribe_settings,
      :engine_transcribe_medical_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user isn't authorized to request a resource.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request id associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was well-formed but was unable to be followed due to
    # semantic errors.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request id associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/UnprocessableEntityException AWS API Documentation
    #
    class UnprocessableEntityException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource that you're removing tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys being removed from the resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] meeting_id
    #   The ID of the meeting associated with the update request.
    #   @return [String]
    #
    # @!attribute [rw] attendee_id
    #   The ID of the attendee associated with the update request.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   The capabilties that you want to update.
    #   @return [Types::AttendeeCapabilities]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/UpdateAttendeeCapabilitiesRequest AWS API Documentation
    #
    class UpdateAttendeeCapabilitiesRequest < Struct.new(
      :meeting_id,
      :attendee_id,
      :capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attendee
    #   The updated attendee data.
    #   @return [Types::Attendee]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/UpdateAttendeeCapabilitiesResponse AWS API Documentation
    #
    class UpdateAttendeeCapabilitiesResponse < Struct.new(
      :attendee)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
