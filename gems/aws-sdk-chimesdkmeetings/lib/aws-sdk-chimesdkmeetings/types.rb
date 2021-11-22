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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/Attendee AWS API Documentation
    #
    class Attendee < Struct.new(
      :external_user_id,
      :attendee_id,
      :join_token)
      SENSITIVE = [:external_user_id, :join_token]
      include Aws::Structure
    end

    # An optional category of meeting features that contains audio-specific
    # configurations, such as operating parameters for Amazon Voice Focus.
    #
    # @note When making an API call, you may pass AudioFeatures
    #   data as a hash:
    #
    #       {
    #         echo_reduction: "AVAILABLE", # accepts AVAILABLE, UNAVAILABLE
    #       }
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

    # @note When making an API call, you may pass BatchCreateAttendeeRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         attendees: [ # required
    #           {
    #             external_user_id: "ExternalUserId", # required
    #           },
    #         ],
    #       }
    #
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

    # @note When making an API call, you may pass CreateAttendeeRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         external_user_id: "ExternalUserId", # required
    #       }
    #
    # @!attribute [rw] meeting_id
    #   The unique ID of the meeting.
    #   @return [String]
    #
    # @!attribute [rw] external_user_id
    #   The Amazon Chime SDK external user ID. An idempotency token. Links
    #   the attendee to an identity managed by a builder application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateAttendeeRequest AWS API Documentation
    #
    class CreateAttendeeRequest < Struct.new(
      :meeting_id,
      :external_user_id)
      SENSITIVE = [:external_user_id]
      include Aws::Structure
    end

    # The Amazon Chime SDK attendee fields to create, used with the
    # BatchCreateAttendee action.
    #
    # @note When making an API call, you may pass CreateAttendeeRequestItem
    #   data as a hash:
    #
    #       {
    #         external_user_id: "ExternalUserId", # required
    #       }
    #
    # @!attribute [rw] external_user_id
    #   The Amazon Chime SDK external user ID. An idempotency token. Links
    #   the attendee to an identity managed by a builder application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateAttendeeRequestItem AWS API Documentation
    #
    class CreateAttendeeRequestItem < Struct.new(
      :external_user_id)
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

    # @note When making an API call, you may pass CreateMeetingRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken", # required
    #         media_region: "MediaRegion", # required
    #         meeting_host_id: "ExternalUserId",
    #         external_meeting_id: "ExternalMeetingId", # required
    #         notifications_configuration: {
    #           lambda_function_arn: "Arn",
    #           sns_topic_arn: "Arn",
    #           sqs_queue_arn: "Arn",
    #         },
    #         meeting_features: {
    #           audio: {
    #             echo_reduction: "AVAILABLE", # accepts AVAILABLE, UNAVAILABLE
    #           },
    #         },
    #       }
    #
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
    #   Available values: `af-south-1` , `ap-northeast-1` , `ap-northeast-2`
    #   , `ap-south-1` , `ap-southeast-1` , `ap-southeast-2` ,
    #   `ca-central-1` , `eu-central-1` , `eu-north-1` , `eu-south-1` ,
    #   `eu-west-1` , `eu-west-2` , `eu-west-3` , `sa-east-1` , `us-east-1`
    #   , `us-east-2` , `us-west-1` , `us-west-2` .
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateMeetingRequest AWS API Documentation
    #
    class CreateMeetingRequest < Struct.new(
      :client_request_token,
      :media_region,
      :meeting_host_id,
      :external_meeting_id,
      :notifications_configuration,
      :meeting_features)
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

    # @note When making an API call, you may pass CreateMeetingWithAttendeesRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken", # required
    #         media_region: "MediaRegion", # required
    #         meeting_host_id: "ExternalUserId",
    #         external_meeting_id: "ExternalMeetingId", # required
    #         meeting_features: {
    #           audio: {
    #             echo_reduction: "AVAILABLE", # accepts AVAILABLE, UNAVAILABLE
    #           },
    #         },
    #         notifications_configuration: {
    #           lambda_function_arn: "Arn",
    #           sns_topic_arn: "Arn",
    #           sqs_queue_arn: "Arn",
    #         },
    #         attendees: [ # required
    #           {
    #             external_user_id: "ExternalUserId", # required
    #           },
    #         ],
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateMeetingWithAttendeesRequest AWS API Documentation
    #
    class CreateMeetingWithAttendeesRequest < Struct.new(
      :client_request_token,
      :media_region,
      :meeting_host_id,
      :external_meeting_id,
      :meeting_features,
      :notifications_configuration,
      :attendees)
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

    # @note When making an API call, you may pass DeleteAttendeeRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         attendee_id: "GuidString", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteMeetingRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #       }
    #
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
    # @note When making an API call, you may pass EngineTranscribeMedicalSettings
    #   data as a hash:
    #
    #       {
    #         language_code: "en-US", # required, accepts en-US
    #         specialty: "PRIMARYCARE", # required, accepts PRIMARYCARE, CARDIOLOGY, NEUROLOGY, ONCOLOGY, RADIOLOGY, UROLOGY
    #         type: "CONVERSATION", # required, accepts CONVERSATION, DICTATION
    #         vocabulary_name: "String",
    #         region: "us-east-1", # accepts us-east-1, us-east-2, us-west-2, ap-southeast-2, ca-central-1, eu-west-1, auto
    #         content_identification_type: "PHI", # accepts PHI
    #       }
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
    # @note When making an API call, you may pass EngineTranscribeSettings
    #   data as a hash:
    #
    #       {
    #         language_code: "en-US", # required, accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN
    #         vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #         vocabulary_filter_name: "String",
    #         vocabulary_name: "String",
    #         region: "us-east-2", # accepts us-east-2, us-east-1, us-west-2, ap-northeast-2, ap-southeast-2, ap-northeast-1, ca-central-1, eu-central-1, eu-west-1, eu-west-2, sa-east-1, auto
    #         enable_partial_results_stabilization: false,
    #         partial_results_stability: "low", # accepts low, medium, high
    #         content_identification_type: "PII", # accepts PII
    #         content_redaction_type: "PII", # accepts PII
    #         pii_entity_types: "TranscribePiiEntityTypes",
    #         language_model_name: "TranscribeLanguageModelName",
    #       }
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
    #   PIIEntityTypes must be comma-separated. The available values are:
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
      :language_model_name)
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

    # @note When making an API call, you may pass GetAttendeeRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         attendee_id: "GuidString", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetMeetingRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #       }
    #
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

    # @note When making an API call, you may pass ListAttendeesRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/Meeting AWS API Documentation
    #
    class Meeting < Struct.new(
      :meeting_id,
      :meeting_host_id,
      :external_meeting_id,
      :media_region,
      :media_placement,
      :meeting_features)
      SENSITIVE = [:meeting_host_id, :external_meeting_id]
      include Aws::Structure
    end

    # The configuration settings of the features available to a meeting.
    #
    # @note When making an API call, you may pass MeetingFeaturesConfiguration
    #   data as a hash:
    #
    #       {
    #         audio: {
    #           echo_reduction: "AVAILABLE", # accepts AVAILABLE, UNAVAILABLE
    #         },
    #       }
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
    #   The request id associated with the call responsible for the
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
    # @note When making an API call, you may pass NotificationsConfiguration
    #   data as a hash:
    #
    #       {
    #         lambda_function_arn: "Arn",
    #         sns_topic_arn: "Arn",
    #         sqs_queue_arn: "Arn",
    #       }
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

    # @note When making an API call, you may pass StartMeetingTranscriptionRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         transcription_configuration: { # required
    #           engine_transcribe_settings: {
    #             language_code: "en-US", # required, accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN
    #             vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #             vocabulary_filter_name: "String",
    #             vocabulary_name: "String",
    #             region: "us-east-2", # accepts us-east-2, us-east-1, us-west-2, ap-northeast-2, ap-southeast-2, ap-northeast-1, ca-central-1, eu-central-1, eu-west-1, eu-west-2, sa-east-1, auto
    #             enable_partial_results_stabilization: false,
    #             partial_results_stability: "low", # accepts low, medium, high
    #             content_identification_type: "PII", # accepts PII
    #             content_redaction_type: "PII", # accepts PII
    #             pii_entity_types: "TranscribePiiEntityTypes",
    #             language_model_name: "TranscribeLanguageModelName",
    #           },
    #           engine_transcribe_medical_settings: {
    #             language_code: "en-US", # required, accepts en-US
    #             specialty: "PRIMARYCARE", # required, accepts PRIMARYCARE, CARDIOLOGY, NEUROLOGY, ONCOLOGY, RADIOLOGY, UROLOGY
    #             type: "CONVERSATION", # required, accepts CONVERSATION, DICTATION
    #             vocabulary_name: "String",
    #             region: "us-east-1", # accepts us-east-1, us-east-2, us-west-2, ap-southeast-2, ca-central-1, eu-west-1, auto
    #             content_identification_type: "PHI", # accepts PHI
    #           },
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass StopMeetingTranscriptionRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #       }
    #
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

    # The configuration for the current transcription operation. Must
    # contain `EngineTranscribeSettings` or
    # `EngineTranscribeMedicalSettings`.
    #
    # @note When making an API call, you may pass TranscriptionConfiguration
    #   data as a hash:
    #
    #       {
    #         engine_transcribe_settings: {
    #           language_code: "en-US", # required, accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN
    #           vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #           vocabulary_filter_name: "String",
    #           vocabulary_name: "String",
    #           region: "us-east-2", # accepts us-east-2, us-east-1, us-west-2, ap-northeast-2, ap-southeast-2, ap-northeast-1, ca-central-1, eu-central-1, eu-west-1, eu-west-2, sa-east-1, auto
    #           enable_partial_results_stabilization: false,
    #           partial_results_stability: "low", # accepts low, medium, high
    #           content_identification_type: "PII", # accepts PII
    #           content_redaction_type: "PII", # accepts PII
    #           pii_entity_types: "TranscribePiiEntityTypes",
    #           language_model_name: "TranscribeLanguageModelName",
    #         },
    #         engine_transcribe_medical_settings: {
    #           language_code: "en-US", # required, accepts en-US
    #           specialty: "PRIMARYCARE", # required, accepts PRIMARYCARE, CARDIOLOGY, NEUROLOGY, ONCOLOGY, RADIOLOGY, UROLOGY
    #           type: "CONVERSATION", # required, accepts CONVERSATION, DICTATION
    #           vocabulary_name: "String",
    #           region: "us-east-1", # accepts us-east-1, us-east-2, us-west-2, ap-southeast-2, ca-central-1, eu-west-1, auto
    #           content_identification_type: "PHI", # accepts PHI
    #         },
    #       }
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

  end
end
