# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TranscribeStreamingService
  module Types

    # A list of possible alternative transcriptions for the input audio.
    # Each alternative may contain one or more of `Items`, `Entities`, or
    # `Transcript`.
    #
    # @!attribute [rw] transcript
    #   Contains transcribed text.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Contains words, phrases, or punctuation marks in your transcription
    #   output.
    #   @return [Array<Types::Item>]
    #
    # @!attribute [rw] entities
    #   Contains entities identified as personally identifiable information
    #   (PII) in your transcription output.
    #   @return [Array<Types::Entity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/Alternative AWS API Documentation
    #
    class Alternative < Struct.new(
      :transcript,
      :items,
      :entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # A wrapper for your audio chunks. Your audio stream consists of one or
    # more audio events, which consist of one or more audio chunks.
    #
    # For more information, see [Event stream encoding][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/event-stream.html
    #
    # @!attribute [rw] audio_chunk
    #   An audio blob that contains the next part of the audio that you want
    #   to transcribe. The maximum audio chunk size is 32 KB.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/AudioEvent AWS API Documentation
    #
    class AudioEvent < Struct.new(
      :audio_chunk,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more arguments to the `StartStreamTranscription`,
    # `StartMedicalStreamTranscription`, or
    # `StartCallAnalyticsStreamTranscription` operation was not valid. For
    # example, `MediaEncoding` or `LanguageCode` used not valid values.
    # Check the specified parameters and try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains entities identified as personally identifiable information
    # (PII) in your transcription output, along with various associated
    # attributes. Examples include category, confidence score, content,
    # type, and start and end times.
    #
    # @!attribute [rw] begin_offset_millis
    #   The time, in milliseconds, from the beginning of the audio stream to
    #   the start of the identified entity.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset_millis
    #   The time, in milliseconds, from the beginning of the audio stream to
    #   the end of the identified entity.
    #   @return [Integer]
    #
    # @!attribute [rw] category
    #   The category of information identified. For example, `PII`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of PII identified. For example, `NAME` or
    #   `CREDIT_DEBIT_NUMBER`.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The word or words that represent the identified entity.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence score associated with the identification of an entity
    #   in your transcript.
    #
    #   Confidence scores are values between 0 and 1. A larger value
    #   indicates a higher probability that the identified entity correctly
    #   matches the entity spoken in your media.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/CallAnalyticsEntity AWS API Documentation
    #
    class CallAnalyticsEntity < Struct.new(
      :begin_offset_millis,
      :end_offset_millis,
      :category,
      :type,
      :content,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # A word, phrase, or punctuation mark in your Call Analytics
    # transcription output, along with various associated attributes, such
    # as confidence score, type, and start and end times.
    #
    # @!attribute [rw] begin_offset_millis
    #   The time, in milliseconds, from the beginning of the audio stream to
    #   the start of the identified item.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset_millis
    #   The time, in milliseconds, from the beginning of the audio stream to
    #   the end of the identified item.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of item identified. Options are: `PRONUNCIATION` (spoken
    #   words) and `PUNCTUATION`.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The word or punctuation that was transcribed.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence score associated with a word or phrase in your
    #   transcript.
    #
    #   Confidence scores are values between 0 and 1. A larger value
    #   indicates a higher probability that the identified item correctly
    #   matches the item spoken in your media.
    #   @return [Float]
    #
    # @!attribute [rw] vocabulary_filter_match
    #   Indicates whether the specified item matches a word in the
    #   vocabulary filter included in your Call Analytics request. If
    #   `true`, there is a vocabulary filter match.
    #   @return [Boolean]
    #
    # @!attribute [rw] stable
    #   If partial result stabilization is enabled, `Stable` indicates
    #   whether the specified item is stable (`true`) or if it may change
    #   when the segment is complete (`false`).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/CallAnalyticsItem AWS API Documentation
    #
    class CallAnalyticsItem < Struct.new(
      :begin_offset_millis,
      :end_offset_millis,
      :type,
      :content,
      :confidence,
      :vocabulary_filter_match,
      :stable)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information on any `TranscriptFilterType` categories that
    # matched your transcription output. Matches are identified for each
    # segment upon completion of that segment.
    #
    # @!attribute [rw] matched_categories
    #   Lists the categories that were matched in your audio segment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] matched_details
    #   Contains information about the matched categories, including
    #   category names and timestamps.
    #   @return [Hash<String,Types::PointsOfInterest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/CategoryEvent AWS API Documentation
    #
    class CategoryEvent < Struct.new(
      :matched_categories,
      :matched_details,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Makes it possible to specify which speaker is on which audio channel.
    # For example, if your agent is the first participant to speak, you
    # would set `ChannelId` to `0` (to indicate the first channel) and
    # `ParticipantRole` to `AGENT` (to indicate that it's the agent
    # speaking).
    #
    # @!attribute [rw] channel_id
    #   Specify the audio channel you want to define.
    #   @return [Integer]
    #
    # @!attribute [rw] participant_role
    #   Specify the speaker you want to define. Omitting this parameter is
    #   equivalent to specifying both participants.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/ChannelDefinition AWS API Documentation
    #
    class ChannelDefinition < Struct.new(
      :channel_id,
      :participant_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the location, using character count, in your transcript where
    # a match is identified. For example, the location of an issue or a
    # category match within a segment.
    #
    # @!attribute [rw] begin
    #   Provides the character count of the first character where a match is
    #   identified. For example, the first character associated with an
    #   issue or a category match in a segment transcript.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   Provides the character count of the last character where a match is
    #   identified. For example, the last character associated with an issue
    #   or a category match in a segment transcript.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/CharacterOffsets AWS API Documentation
    #
    class CharacterOffsets < Struct.new(
      :begin,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows you to set audio channel definitions and post-call analytics
    # settings.
    #
    # @!attribute [rw] channel_definitions
    #   Indicates which speaker is on which audio channel.
    #   @return [Array<Types::ChannelDefinition>]
    #
    # @!attribute [rw] post_call_analytics_settings
    #   Provides additional optional settings for your Call Analytics
    #   post-call request, including encryption and output locations for
    #   your redacted and unredacted transcript.
    #   @return [Types::PostCallAnalyticsSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/ConfigurationEvent AWS API Documentation
    #
    class ConfigurationEvent < Struct.new(
      :channel_definitions,
      :post_call_analytics_settings,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A new stream started with the same session ID. The current stream has
    # been terminated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains entities identified as personally identifiable information
    # (PII) in your transcription output, along with various associated
    # attributes. Examples include category, confidence score, type,
    # stability score, and start and end times.
    #
    # @!attribute [rw] start_time
    #   The start time, in milliseconds, of the utterance that was
    #   identified as PII.
    #   @return [Float]
    #
    # @!attribute [rw] end_time
    #   The end time, in milliseconds, of the utterance that was identified
    #   as PII.
    #   @return [Float]
    #
    # @!attribute [rw] category
    #   The category of information identified. The only category is `PII`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of PII identified. For example, `NAME` or
    #   `CREDIT_DEBIT_NUMBER`.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The word or words identified as PII.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence score associated with the identified PII entity in
    #   your audio.
    #
    #   Confidence scores are values between 0 and 1. A larger value
    #   indicates a higher probability that the identified entity correctly
    #   matches the entity spoken in your media.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/Entity AWS API Documentation
    #
    class Entity < Struct.new(
      :start_time,
      :end_time,
      :category,
      :type,
      :content,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # A problem occurred while processing the audio. Amazon Transcribe
    # terminated processing.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/InternalFailureException AWS API Documentation
    #
    class InternalFailureException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lists the issues that were identified in your audio segment.
    #
    # @!attribute [rw] character_offsets
    #   Provides the timestamps that identify when in an audio segment the
    #   specified issue occurs.
    #   @return [Types::CharacterOffsets]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/IssueDetected AWS API Documentation
    #
    class IssueDetected < Struct.new(
      :character_offsets)
      SENSITIVE = []
      include Aws::Structure
    end

    # A word, phrase, or punctuation mark in your transcription output,
    # along with various associated attributes, such as confidence score,
    # type, and start and end times.
    #
    # @!attribute [rw] start_time
    #   The start time, in milliseconds, of the transcribed item.
    #   @return [Float]
    #
    # @!attribute [rw] end_time
    #   The end time, in milliseconds, of the transcribed item.
    #   @return [Float]
    #
    # @!attribute [rw] type
    #   The type of item identified. Options are: `PRONUNCIATION` (spoken
    #   words) and `PUNCTUATION`.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The word or punctuation that was transcribed.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_match
    #   Indicates whether the specified item matches a word in the
    #   vocabulary filter included in your request. If `true`, there is a
    #   vocabulary filter match.
    #   @return [Boolean]
    #
    # @!attribute [rw] speaker
    #   If speaker partitioning is enabled, `Speaker` labels the speaker of
    #   the specified item.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence score associated with a word or phrase in your
    #   transcript.
    #
    #   Confidence scores are values between 0 and 1. A larger value
    #   indicates a higher probability that the identified item correctly
    #   matches the item spoken in your media.
    #   @return [Float]
    #
    # @!attribute [rw] stable
    #   If partial result stabilization is enabled, `Stable` indicates
    #   whether the specified item is stable (`true`) or if it may change
    #   when the segment is complete (`false`).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/Item AWS API Documentation
    #
    class Item < Struct.new(
      :start_time,
      :end_time,
      :type,
      :content,
      :vocabulary_filter_match,
      :speaker,
      :confidence,
      :stable)
      SENSITIVE = []
      include Aws::Structure
    end

    # The language code that represents the language identified in your
    # audio, including the associated confidence score. If you enabled
    # channel identification in your request and each channel contained a
    # different language, you will have more than one `LanguageWithScore`
    # result.
    #
    # @!attribute [rw] language_code
    #   The language code of the identified language.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The confidence score associated with the identified language code.
    #   Confidence scores are values between zero and one; larger values
    #   indicate a higher confidence in the identified language.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/LanguageWithScore AWS API Documentation
    #
    class LanguageWithScore < Struct.new(
      :language_code,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your client has exceeded one of the Amazon Transcribe limits. This is
    # typically the audio length limit. Break your audio stream into smaller
    # chunks and try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of possible alternative transcriptions for the input audio.
    # Each alternative may contain one or more of `Items`, `Entities`, or
    # `Transcript`.
    #
    # @!attribute [rw] transcript
    #   Contains transcribed text.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Contains words, phrases, or punctuation marks in your transcription
    #   output.
    #   @return [Array<Types::MedicalItem>]
    #
    # @!attribute [rw] entities
    #   Contains entities identified as personal health information (PHI) in
    #   your transcription output.
    #   @return [Array<Types::MedicalEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/MedicalAlternative AWS API Documentation
    #
    class MedicalAlternative < Struct.new(
      :transcript,
      :items,
      :entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains entities identified as personal health information (PHI) in
    # your transcription output, along with various associated attributes.
    # Examples include category, confidence score, type, stability score,
    # and start and end times.
    #
    # @!attribute [rw] start_time
    #   The start time, in milliseconds, of the utterance that was
    #   identified as PHI.
    #   @return [Float]
    #
    # @!attribute [rw] end_time
    #   The end time, in milliseconds, of the utterance that was identified
    #   as PHI.
    #   @return [Float]
    #
    # @!attribute [rw] category
    #   The category of information identified. The only category is `PHI`.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The word or words identified as PHI.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence score associated with the identified PHI entity in
    #   your audio.
    #
    #   Confidence scores are values between 0 and 1. A larger value
    #   indicates a higher probability that the identified entity correctly
    #   matches the entity spoken in your media.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/MedicalEntity AWS API Documentation
    #
    class MedicalEntity < Struct.new(
      :start_time,
      :end_time,
      :category,
      :content,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # A word, phrase, or punctuation mark in your transcription output,
    # along with various associated attributes, such as confidence score,
    # type, and start and end times.
    #
    # @!attribute [rw] start_time
    #   The start time, in milliseconds, of the transcribed item.
    #   @return [Float]
    #
    # @!attribute [rw] end_time
    #   The end time, in milliseconds, of the transcribed item.
    #   @return [Float]
    #
    # @!attribute [rw] type
    #   The type of item identified. Options are: `PRONUNCIATION` (spoken
    #   words) and `PUNCTUATION`.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The word or punctuation that was transcribed.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence score associated with a word or phrase in your
    #   transcript.
    #
    #   Confidence scores are values between 0 and 1. A larger value
    #   indicates a higher probability that the identified item correctly
    #   matches the item spoken in your media.
    #   @return [Float]
    #
    # @!attribute [rw] speaker
    #   If speaker partitioning is enabled, `Speaker` labels the speaker of
    #   the specified item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/MedicalItem AWS API Documentation
    #
    class MedicalItem < Struct.new(
      :start_time,
      :end_time,
      :type,
      :content,
      :confidence,
      :speaker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `Result` associated with a ``.
    #
    # Contains a set of transcription results from one or more audio
    # segments, along with additional information per your request
    # parameters. This can include information relating to alternative
    # transcriptions, channel identification, partial result stabilization,
    # language identification, and other transcription-related data.
    #
    # @!attribute [rw] result_id
    #   Provides a unique identifier for the `Result`.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time, in milliseconds, of the `Result`.
    #   @return [Float]
    #
    # @!attribute [rw] end_time
    #   The end time, in milliseconds, of the `Result`.
    #   @return [Float]
    #
    # @!attribute [rw] is_partial
    #   Indicates if the segment is complete.
    #
    #   If `IsPartial` is `true`, the segment is not complete. If
    #   `IsPartial` is `false`, the segment is complete.
    #   @return [Boolean]
    #
    # @!attribute [rw] alternatives
    #   A list of possible alternative transcriptions for the input audio.
    #   Each alternative may contain one or more of `Items`, `Entities`, or
    #   `Transcript`.
    #   @return [Array<Types::MedicalAlternative>]
    #
    # @!attribute [rw] channel_id
    #   Indicates the channel identified for the `Result`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/MedicalResult AWS API Documentation
    #
    class MedicalResult < Struct.new(
      :result_id,
      :start_time,
      :end_time,
      :is_partial,
      :alternatives,
      :channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `MedicalTranscript` associated with a `.</p>  MedicalTranscript
    # contains Results, which contains a set of transcription results from
    # one or more audio segments, along with additional information per your
    # request parameters.
    # `
    #
    # @!attribute [rw] results
    #   Contains a set of transcription results from one or more audio
    #   segments, along with additional information per your request
    #   parameters. This can include information relating to alternative
    #   transcriptions, channel identification, partial result
    #   stabilization, language identification, and other
    #   transcription-related data.
    #   @return [Array<Types::MedicalResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/MedicalTranscript AWS API Documentation
    #
    class MedicalTranscript < Struct.new(
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `MedicalTranscriptEvent` associated with a
    # `MedicalTranscriptResultStream`.
    #
    # Contains a set of transcription results from one or more audio
    # segments, along with additional information per your request
    # parameters.
    #
    # @!attribute [rw] transcript
    #   Contains `Results`, which contains a set of transcription results
    #   from one or more audio segments, along with additional information
    #   per your request parameters. This can include information relating
    #   to alternative transcriptions, channel identification, partial
    #   result stabilization, language identification, and other
    #   transcription-related data.
    #   @return [Types::MedicalTranscript]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/MedicalTranscriptEvent AWS API Documentation
    #
    class MedicalTranscriptEvent < Struct.new(
      :transcript,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the timestamps of matched categories.
    #
    # @!attribute [rw] timestamp_ranges
    #   Contains the timestamp ranges (start time through end time) of
    #   matched categories and rules.
    #   @return [Array<Types::TimestampRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/PointsOfInterest AWS API Documentation
    #
    class PointsOfInterest < Struct.new(
      :timestamp_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows you to specify additional settings for your streaming Call
    # Analytics post-call request, including output locations for your
    # redacted and unredacted transcript, which IAM role to use, and,
    # optionally, which encryption key to use.
    #
    # `ContentRedactionOutput`, `DataAccessRoleArn`, and `OutputLocation`
    # are required fields.
    #
    # @!attribute [rw] output_location
    #   The Amazon S3 location where you want your Call Analytics post-call
    #   transcription output stored. You can use any of the following
    #   formats to specify the output location:
    #
    #   1.  s3://DOC-EXAMPLE-BUCKET
    #
    #   2.  s3://DOC-EXAMPLE-BUCKET/my-output-folder/
    #
    #   3.  s3://DOC-EXAMPLE-BUCKET/my-output-folder/my-call-analytics-job.json
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions
    #   to access the Amazon S3 bucket that contains your input files. If
    #   the role that you specify doesn’t have the appropriate permissions
    #   to access the specified Amazon S3 location, your request fails.
    #
    #   IAM role ARNs have the format
    #   `arn:partition:iam::account:role/role-name-with-path`. For example:
    #   `arn:aws:iam::111122223333:role/Admin`. For more information, see
    #   [IAM ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns
    #   @return [String]
    #
    # @!attribute [rw] content_redaction_output
    #   Specify whether you want only a redacted transcript or both a
    #   redacted and an unredacted transcript. If you choose redacted and
    #   unredacted, two JSON files are generated and stored in the Amazon S3
    #   output location you specify.
    #
    #   Note that to include `ContentRedactionOutput` in your request, you
    #   must enable content redaction (`ContentRedactionType`).
    #   @return [String]
    #
    # @!attribute [rw] output_encryption_kms_key_id
    #   The KMS key you want to use to encrypt your Call Analytics post-call
    #   output.
    #
    #   If using a key located in the **current** Amazon Web Services
    #   account, you can specify your KMS key in one of four ways:
    #
    #   1.  Use the KMS key ID itself. For example,
    #       `1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   2.  Use an alias for the KMS key ID. For example,
    #       `alias/ExampleAlias`.
    #
    #   3.  Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #       example,
    #       `arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   4.  Use the ARN for the KMS key alias. For example,
    #       `arn:aws:kms:region:account-ID:alias/ExampleAlias`.
    #
    #   If using a key located in a **different** Amazon Web Services
    #   account than the current Amazon Web Services account, you can
    #   specify your KMS key in one of two ways:
    #
    #   1.  Use the ARN for the KMS key ID. For example,
    #       `arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   2.  Use the ARN for the KMS key alias. For example,
    #       `arn:aws:kms:region:account-ID:alias/ExampleAlias`.
    #
    #   Note that the user making the request must have permission to use
    #   the specified KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/PostCallAnalyticsSettings AWS API Documentation
    #
    class PostCallAnalyticsSettings < Struct.new(
      :output_location,
      :data_access_role_arn,
      :content_redaction_output,
      :output_encryption_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `Result` associated with a ``.
    #
    # Contains a set of transcription results from one or more audio
    # segments, along with additional information per your request
    # parameters. This can include information relating to alternative
    # transcriptions, channel identification, partial result stabilization,
    # language identification, and other transcription-related data.
    #
    # @!attribute [rw] result_id
    #   Provides a unique identifier for the `Result`.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time, in milliseconds, of the `Result`.
    #   @return [Float]
    #
    # @!attribute [rw] end_time
    #   The end time, in milliseconds, of the `Result`.
    #   @return [Float]
    #
    # @!attribute [rw] is_partial
    #   Indicates if the segment is complete.
    #
    #   If `IsPartial` is `true`, the segment is not complete. If
    #   `IsPartial` is `false`, the segment is complete.
    #   @return [Boolean]
    #
    # @!attribute [rw] alternatives
    #   A list of possible alternative transcriptions for the input audio.
    #   Each alternative may contain one or more of `Items`, `Entities`, or
    #   `Transcript`.
    #   @return [Array<Types::Alternative>]
    #
    # @!attribute [rw] channel_id
    #   Indicates which audio channel is associated with the `Result`.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code that represents the language spoken in your audio
    #   stream.
    #   @return [String]
    #
    # @!attribute [rw] language_identification
    #   The language code of the dominant language identified in your
    #   stream.
    #
    #   If you enabled channel identification and each channel of your audio
    #   contains a different language, you may have more than one result.
    #   @return [Array<Types::LanguageWithScore>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/Result AWS API Documentation
    #
    class Result < Struct.new(
      :result_id,
      :start_time,
      :end_time,
      :is_partial,
      :alternatives,
      :channel_id,
      :language_code,
      :language_identification)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is currently unavailable. Try your request later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] language_code
    #   Specify the language code that represents the language spoken in
    #   your audio.
    #
    #   If you're unsure of the language spoken in your audio, consider
    #   using `IdentifyLanguage` to enable automatic language
    #   identification.
    #
    #   For a list of languages supported with streaming Call Analytics,
    #   refer to the [Supported languages][1] table.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate of the input audio (in hertz). Low-quality audio,
    #   such as telephone audio, is typically around 8,000 Hz. High-quality
    #   audio typically ranges from 16,000 Hz to 48,000 Hz. Note that the
    #   sample rate you specify must match that of your audio.
    #   @return [Integer]
    #
    # @!attribute [rw] media_encoding
    #   Specify the encoding of your input audio. Supported formats are:
    #
    #   * FLAC
    #
    #   * OPUS-encoded audio in an Ogg container
    #
    #   * PCM (only signed 16-bit little-endian audio formats, which does
    #     not include WAV)
    #
    #   For more information, see [Media formats][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   Specify the name of the custom vocabulary that you want to use when
    #   processing your transcription. Note that vocabulary names are case
    #   sensitive.
    #
    #   If the language of the specified custom vocabulary doesn't match
    #   the language identified in your media, the custom vocabulary is not
    #   applied to your transcription.
    #
    #   For more information, see [Custom vocabularies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   Specify a name for your Call Analytics transcription session. If you
    #   don't include this parameter in your request, Amazon Transcribe
    #   generates an ID and returns it in the response.
    #
    #   You can use a session ID to retry a streaming session.
    #   @return [String]
    #
    # @!attribute [rw] audio_stream
    #   An encoded stream of audio blobs. Audio streams are encoded as
    #   either HTTP/2 or WebSocket data frames.
    #
    #   For more information, see [Transcribing streaming audio][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html
    #   @return [Types::AudioStream]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   Specify the name of the custom vocabulary filter that you want to
    #   use when processing your transcription. Note that vocabulary filter
    #   names are case sensitive.
    #
    #   If the language of the specified custom vocabulary filter doesn't
    #   match the language identified in your media, the vocabulary filter
    #   is not applied to your transcription.
    #
    #   For more information, see [Using vocabulary filtering with unwanted
    #   words][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_method
    #   Specify how you want your vocabulary filter applied to your
    #   transcript.
    #
    #   To replace words with `***`, choose `mask`.
    #
    #   To delete words, choose `remove`.
    #
    #   To flag words without changing them, choose `tag`.
    #   @return [String]
    #
    # @!attribute [rw] language_model_name
    #   Specify the name of the custom language model that you want to use
    #   when processing your transcription. Note that language model names
    #   are case sensitive.
    #
    #   The language of the specified language model must match the language
    #   code you specify in your transcription request. If the languages
    #   don't match, the custom language model isn't applied. There are no
    #   errors or warnings associated with a language mismatch.
    #
    #   For more information, see [Custom language models][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html
    #   @return [String]
    #
    # @!attribute [rw] enable_partial_results_stabilization
    #   Enables partial result stabilization for your transcription. Partial
    #   result stabilization can reduce latency in your output, but may
    #   impact accuracy. For more information, see [Partial-result
    #   stabilization][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization
    #   @return [Boolean]
    #
    # @!attribute [rw] partial_results_stability
    #   Specify the level of stability to use when you enable partial
    #   results stabilization (`EnablePartialResultsStabilization`).
    #
    #   Low stability provides the highest accuracy. High stability
    #   transcribes faster, but with slightly lower accuracy.
    #
    #   For more information, see [Partial-result stabilization][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization
    #   @return [String]
    #
    # @!attribute [rw] content_identification_type
    #   Labels all personally identifiable information (PII) identified in
    #   your transcript.
    #
    #   Content identification is performed at the segment level; PII
    #   specified in `PiiEntityTypes` is flagged upon complete transcription
    #   of an audio segment.
    #
    #   You can’t set `ContentIdentificationType` and `ContentRedactionType`
    #   in the same request. If you set both, your request returns a
    #   `BadRequestException`.
    #
    #   For more information, see [Redacting or identifying personally
    #   identifiable information][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html
    #   @return [String]
    #
    # @!attribute [rw] content_redaction_type
    #   Redacts all personally identifiable information (PII) identified in
    #   your transcript.
    #
    #   Content redaction is performed at the segment level; PII specified
    #   in `PiiEntityTypes` is redacted upon complete transcription of an
    #   audio segment.
    #
    #   You can’t set `ContentRedactionType` and `ContentIdentificationType`
    #   in the same request. If you set both, your request returns a
    #   `BadRequestException`.
    #
    #   For more information, see [Redacting or identifying personally
    #   identifiable information][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html
    #   @return [String]
    #
    # @!attribute [rw] pii_entity_types
    #   Specify which types of personally identifiable information (PII) you
    #   want to redact in your transcript. You can include as many types as
    #   you'd like, or you can select `ALL`.
    #
    #   To include `PiiEntityTypes` in your Call Analytics request, you must
    #   also include either `ContentIdentificationType` or
    #   `ContentRedactionType`.
    #
    #   Values must be comma-separated and can include:
    #   `BANK_ACCOUNT_NUMBER`, `BANK_ROUTING`, `CREDIT_DEBIT_NUMBER`,
    #   `CREDIT_DEBIT_CVV`, `CREDIT_DEBIT_EXPIRY`, `PIN`, `EMAIL`,
    #   `ADDRESS`, `NAME`, `PHONE`, `SSN`, or `ALL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/StartCallAnalyticsStreamTranscriptionRequest AWS API Documentation
    #
    class StartCallAnalyticsStreamTranscriptionRequest < Struct.new(
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :session_id,
      :audio_stream,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :language_model_name,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   Provides the identifier for your Call Analytics streaming request.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   Provides the language code that you specified in your Call Analytics
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   Provides the sample rate that you specified in your Call Analytics
    #   request.
    #   @return [Integer]
    #
    # @!attribute [rw] media_encoding
    #   Provides the media encoding you specified in your Call Analytics
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   Provides the name of the custom vocabulary that you specified in
    #   your Call Analytics request.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   Provides the identifier for your Call Analytics transcription
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] call_analytics_transcript_result_stream
    #   Provides detailed information about your Call Analytics streaming
    #   session.
    #   @return [Types::CallAnalyticsTranscriptResultStream]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   Provides the name of the custom vocabulary filter that you specified
    #   in your Call Analytics request.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_method
    #   Provides the vocabulary filtering method used in your Call Analytics
    #   transcription.
    #   @return [String]
    #
    # @!attribute [rw] language_model_name
    #   Provides the name of the custom language model that you specified in
    #   your Call Analytics request.
    #   @return [String]
    #
    # @!attribute [rw] enable_partial_results_stabilization
    #   Shows whether partial results stabilization was enabled for your
    #   Call Analytics transcription.
    #   @return [Boolean]
    #
    # @!attribute [rw] partial_results_stability
    #   Provides the stabilization level used for your transcription.
    #   @return [String]
    #
    # @!attribute [rw] content_identification_type
    #   Shows whether content identification was enabled for your Call
    #   Analytics transcription.
    #   @return [String]
    #
    # @!attribute [rw] content_redaction_type
    #   Shows whether content redaction was enabled for your Call Analytics
    #   transcription.
    #   @return [String]
    #
    # @!attribute [rw] pii_entity_types
    #   Lists the PII entity types you specified in your Call Analytics
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/StartCallAnalyticsStreamTranscriptionResponse AWS API Documentation
    #
    class StartCallAnalyticsStreamTranscriptionResponse < Struct.new(
      :request_id,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :session_id,
      :call_analytics_transcript_result_stream,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :language_model_name,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] language_code
    #   Specify the language code that represents the language spoken in
    #   your audio.
    #
    #   Amazon Transcribe Medical only supports US English (`en-US`).
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate of the input audio (in hertz). Amazon Transcribe
    #   Medical supports a range from 16,000 Hz to 48,000 Hz. Note that the
    #   sample rate you specify must match that of your audio.
    #   @return [Integer]
    #
    # @!attribute [rw] media_encoding
    #   Specify the encoding used for the input audio. Supported formats
    #   are:
    #
    #   * FLAC
    #
    #   * OPUS-encoded audio in an Ogg container
    #
    #   * PCM (only signed 16-bit little-endian audio formats, which does
    #     not include WAV)
    #
    #   For more information, see [Media formats][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   Specify the name of the custom vocabulary that you want to use when
    #   processing your transcription. Note that vocabulary names are case
    #   sensitive.
    #   @return [String]
    #
    # @!attribute [rw] specialty
    #   Specify the medical specialty contained in your audio.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specify the type of input audio. For example, choose `DICTATION` for
    #   a provider dictating patient notes and `CONVERSATION` for a dialogue
    #   between a patient and a medical professional.
    #   @return [String]
    #
    # @!attribute [rw] show_speaker_label
    #   Enables speaker partitioning (diarization) in your transcription
    #   output. Speaker partitioning labels the speech from individual
    #   speakers in your media file.
    #
    #   For more information, see [Partitioning speakers (diarization)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html
    #   @return [Boolean]
    #
    # @!attribute [rw] session_id
    #   Specify a name for your transcription session. If you don't include
    #   this parameter in your request, Amazon Transcribe Medical generates
    #   an ID and returns it in the response.
    #
    #   You can use a session ID to retry a streaming session.
    #   @return [String]
    #
    # @!attribute [rw] audio_stream
    #   An encoded stream of audio blobs. Audio streams are encoded as
    #   either HTTP/2 or WebSocket data frames.
    #
    #   For more information, see [Transcribing streaming audio][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html
    #   @return [Types::AudioStream]
    #
    # @!attribute [rw] enable_channel_identification
    #   Enables channel identification in multi-channel audio.
    #
    #   Channel identification transcribes the audio on each channel
    #   independently, then appends the output for each channel into one
    #   transcript.
    #
    #   If you have multi-channel audio and do not enable channel
    #   identification, your audio is transcribed in a continuous manner and
    #   your transcript is not separated by channel.
    #
    #   For more information, see [Transcribing multi-channel audio][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_channels
    #   Specify the number of channels in your audio stream. Up to two
    #   channels are supported.
    #   @return [Integer]
    #
    # @!attribute [rw] content_identification_type
    #   Labels all personal health information (PHI) identified in your
    #   transcript.
    #
    #   Content identification is performed at the segment level; PHI is
    #   flagged upon complete transcription of an audio segment.
    #
    #   For more information, see [Identifying personal health information
    #   (PHI) in a transcription][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/StartMedicalStreamTranscriptionRequest AWS API Documentation
    #
    class StartMedicalStreamTranscriptionRequest < Struct.new(
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :specialty,
      :type,
      :show_speaker_label,
      :session_id,
      :audio_stream,
      :enable_channel_identification,
      :number_of_channels,
      :content_identification_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   Provides the identifier for your streaming request.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   Provides the language code that you specified in your request. This
    #   must be `en-US`.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   Provides the sample rate that you specified in your request.
    #   @return [Integer]
    #
    # @!attribute [rw] media_encoding
    #   Provides the media encoding you specified in your request.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   Provides the name of the custom vocabulary that you specified in
    #   your request.
    #   @return [String]
    #
    # @!attribute [rw] specialty
    #   Provides the medical specialty that you specified in your request.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Provides the type of audio you specified in your request.
    #   @return [String]
    #
    # @!attribute [rw] show_speaker_label
    #   Shows whether speaker partitioning was enabled for your
    #   transcription.
    #   @return [Boolean]
    #
    # @!attribute [rw] session_id
    #   Provides the identifier for your transcription session.
    #   @return [String]
    #
    # @!attribute [rw] transcript_result_stream
    #   Provides detailed information about your streaming session.
    #   @return [Types::MedicalTranscriptResultStream]
    #
    # @!attribute [rw] enable_channel_identification
    #   Shows whether channel identification was enabled for your
    #   transcription.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_channels
    #   Provides the number of channels that you specified in your request.
    #   @return [Integer]
    #
    # @!attribute [rw] content_identification_type
    #   Shows whether content identification was enabled for your
    #   transcription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/StartMedicalStreamTranscriptionResponse AWS API Documentation
    #
    class StartMedicalStreamTranscriptionResponse < Struct.new(
      :request_id,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :specialty,
      :type,
      :show_speaker_label,
      :session_id,
      :transcript_result_stream,
      :enable_channel_identification,
      :number_of_channels,
      :content_identification_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] language_code
    #   Specify the language code that represents the language spoken in
    #   your audio.
    #
    #   If you're unsure of the language spoken in your audio, consider
    #   using `IdentifyLanguage` to enable automatic language
    #   identification.
    #
    #   For a list of languages supported with Amazon Transcribe streaming,
    #   refer to the [Supported languages][1] table.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate of the input audio (in hertz). Low-quality audio,
    #   such as telephone audio, is typically around 8,000 Hz. High-quality
    #   audio typically ranges from 16,000 Hz to 48,000 Hz. Note that the
    #   sample rate you specify must match that of your audio.
    #   @return [Integer]
    #
    # @!attribute [rw] media_encoding
    #   Specify the encoding of your input audio. Supported formats are:
    #
    #   * FLAC
    #
    #   * OPUS-encoded audio in an Ogg container
    #
    #   * PCM (only signed 16-bit little-endian audio formats, which does
    #     not include WAV)
    #
    #   For more information, see [Media formats][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   Specify the name of the custom vocabulary that you want to use when
    #   processing your transcription. Note that vocabulary names are case
    #   sensitive.
    #
    #   If the language of the specified custom vocabulary doesn't match
    #   the language identified in your media, the custom vocabulary is not
    #   applied to your transcription.
    #
    #   This parameter is **not** intended for use with the
    #   `IdentifyLanguage` parameter. If you're including
    #   `IdentifyLanguage` in your request and want to use one or more
    #   custom vocabularies with your transcription, use the
    #   `VocabularyNames` parameter instead.
    #
    #   For more information, see [Custom vocabularies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   Specify a name for your transcription session. If you don't include
    #   this parameter in your request, Amazon Transcribe generates an ID
    #   and returns it in the response.
    #
    #   You can use a session ID to retry a streaming session.
    #   @return [String]
    #
    # @!attribute [rw] audio_stream
    #   An encoded stream of audio blobs. Audio streams are encoded as
    #   either HTTP/2 or WebSocket data frames.
    #
    #   For more information, see [Transcribing streaming audio][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html
    #   @return [Types::AudioStream]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   Specify the name of the custom vocabulary filter that you want to
    #   use when processing your transcription. Note that vocabulary filter
    #   names are case sensitive.
    #
    #   If the language of the specified custom vocabulary filter doesn't
    #   match the language identified in your media, the vocabulary filter
    #   is not applied to your transcription.
    #
    #   This parameter is **not** intended for use with the
    #   `IdentifyLanguage` parameter. If you're including
    #   `IdentifyLanguage` in your request and want to use one or more
    #   vocabulary filters with your transcription, use the
    #   `VocabularyFilterNames` parameter instead.
    #
    #   For more information, see [Using vocabulary filtering with unwanted
    #   words][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_method
    #   Specify how you want your vocabulary filter applied to your
    #   transcript.
    #
    #   To replace words with `***`, choose `mask`.
    #
    #   To delete words, choose `remove`.
    #
    #   To flag words without changing them, choose `tag`.
    #   @return [String]
    #
    # @!attribute [rw] show_speaker_label
    #   Enables speaker partitioning (diarization) in your transcription
    #   output. Speaker partitioning labels the speech from individual
    #   speakers in your media file.
    #
    #   For more information, see [Partitioning speakers (diarization)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_channel_identification
    #   Enables channel identification in multi-channel audio.
    #
    #   Channel identification transcribes the audio on each channel
    #   independently, then appends the output for each channel into one
    #   transcript.
    #
    #   If you have multi-channel audio and do not enable channel
    #   identification, your audio is transcribed in a continuous manner and
    #   your transcript is not separated by channel.
    #
    #   For more information, see [Transcribing multi-channel audio][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_channels
    #   Specify the number of channels in your audio stream. Up to two
    #   channels are supported.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_partial_results_stabilization
    #   Enables partial result stabilization for your transcription. Partial
    #   result stabilization can reduce latency in your output, but may
    #   impact accuracy. For more information, see [Partial-result
    #   stabilization][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization
    #   @return [Boolean]
    #
    # @!attribute [rw] partial_results_stability
    #   Specify the level of stability to use when you enable partial
    #   results stabilization (`EnablePartialResultsStabilization`).
    #
    #   Low stability provides the highest accuracy. High stability
    #   transcribes faster, but with slightly lower accuracy.
    #
    #   For more information, see [Partial-result stabilization][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization
    #   @return [String]
    #
    # @!attribute [rw] content_identification_type
    #   Labels all personally identifiable information (PII) identified in
    #   your transcript.
    #
    #   Content identification is performed at the segment level; PII
    #   specified in `PiiEntityTypes` is flagged upon complete transcription
    #   of an audio segment.
    #
    #   You can’t set `ContentIdentificationType` and `ContentRedactionType`
    #   in the same request. If you set both, your request returns a
    #   `BadRequestException`.
    #
    #   For more information, see [Redacting or identifying personally
    #   identifiable information][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html
    #   @return [String]
    #
    # @!attribute [rw] content_redaction_type
    #   Redacts all personally identifiable information (PII) identified in
    #   your transcript.
    #
    #   Content redaction is performed at the segment level; PII specified
    #   in `PiiEntityTypes` is redacted upon complete transcription of an
    #   audio segment.
    #
    #   You can’t set `ContentRedactionType` and `ContentIdentificationType`
    #   in the same request. If you set both, your request returns a
    #   `BadRequestException`.
    #
    #   For more information, see [Redacting or identifying personally
    #   identifiable information][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html
    #   @return [String]
    #
    # @!attribute [rw] pii_entity_types
    #   Specify which types of personally identifiable information (PII) you
    #   want to redact in your transcript. You can include as many types as
    #   you'd like, or you can select `ALL`.
    #
    #   To include `PiiEntityTypes` in your request, you must also include
    #   either `ContentIdentificationType` or `ContentRedactionType`.
    #
    #   Values must be comma-separated and can include:
    #   `BANK_ACCOUNT_NUMBER`, `BANK_ROUTING`, `CREDIT_DEBIT_NUMBER`,
    #   `CREDIT_DEBIT_CVV`, `CREDIT_DEBIT_EXPIRY`, `PIN`, `EMAIL`,
    #   `ADDRESS`, `NAME`, `PHONE`, `SSN`, or `ALL`.
    #   @return [String]
    #
    # @!attribute [rw] language_model_name
    #   Specify the name of the custom language model that you want to use
    #   when processing your transcription. Note that language model names
    #   are case sensitive.
    #
    #   The language of the specified language model must match the language
    #   code you specify in your transcription request. If the languages
    #   don't match, the custom language model isn't applied. There are no
    #   errors or warnings associated with a language mismatch.
    #
    #   For more information, see [Custom language models][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html
    #   @return [String]
    #
    # @!attribute [rw] identify_language
    #   Enables automatic language identification for your transcription.
    #
    #   If you include `IdentifyLanguage`, you can optionally include a list
    #   of language codes, using `LanguageOptions`, that you think may be
    #   present in your audio stream. Including language options can improve
    #   transcription accuracy.
    #
    #   You can also include a preferred language using `PreferredLanguage`.
    #   Adding a preferred language can help Amazon Transcribe identify the
    #   language faster than if you omit this parameter.
    #
    #   If you have multi-channel audio that contains different languages on
    #   each channel, and you've enabled channel identification, automatic
    #   language identification identifies the dominant language on each
    #   audio channel.
    #
    #   Note that you must include either `LanguageCode` or
    #   `IdentifyLanguage` in your request. If you include both parameters,
    #   your request fails.
    #
    #   Streaming language identification can't be combined with custom
    #   language models or redaction.
    #   @return [Boolean]
    #
    # @!attribute [rw] language_options
    #   Specify two or more language codes that represent the languages you
    #   think may be present in your media; including more than five is not
    #   recommended. If you're unsure what languages are present, do not
    #   include this parameter.
    #
    #   Including language options can improve the accuracy of language
    #   identification.
    #
    #   If you include `LanguageOptions` in your request, you must also
    #   include `IdentifyLanguage`.
    #
    #   For a list of languages supported with Amazon Transcribe streaming,
    #   refer to the [Supported languages][1] table.
    #
    #   You can only include one language dialect per language per stream.
    #   For example, you cannot include `en-US` and `en-AU` in the same
    #   request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [String]
    #
    # @!attribute [rw] preferred_language
    #   Specify a preferred language from the subset of languages codes you
    #   specified in `LanguageOptions`.
    #
    #   You can only use this parameter if you've included
    #   `IdentifyLanguage` and `LanguageOptions` in your request.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_names
    #   Specify the names of the custom vocabularies that you want to use
    #   when processing your transcription. Note that vocabulary names are
    #   case sensitive.
    #
    #   If none of the languages of the specified custom vocabularies match
    #   the language identified in your media, your job fails.
    #
    #   This parameter is only intended for use **with** the
    #   `IdentifyLanguage` parameter. If you're **not** including
    #   `IdentifyLanguage` in your request and want to use a custom
    #   vocabulary with your transcription, use the `VocabularyName`
    #   parameter instead.
    #
    #   For more information, see [Custom vocabularies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_names
    #   Specify the names of the custom vocabulary filters that you want to
    #   use when processing your transcription. Note that vocabulary filter
    #   names are case sensitive.
    #
    #   If none of the languages of the specified custom vocabulary filters
    #   match the language identified in your media, your job fails.
    #
    #   This parameter is only intended for use **with** the
    #   `IdentifyLanguage` parameter. If you're **not** including
    #   `IdentifyLanguage` in your request and want to use a custom
    #   vocabulary filter with your transcription, use the
    #   `VocabularyFilterName` parameter instead.
    #
    #   For more information, see [Using vocabulary filtering with unwanted
    #   words][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/StartStreamTranscriptionRequest AWS API Documentation
    #
    class StartStreamTranscriptionRequest < Struct.new(
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :session_id,
      :audio_stream,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :show_speaker_label,
      :enable_channel_identification,
      :number_of_channels,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types,
      :language_model_name,
      :identify_language,
      :language_options,
      :preferred_language,
      :vocabulary_names,
      :vocabulary_filter_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   Provides the identifier for your streaming request.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   Provides the language code that you specified in your request.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   Provides the sample rate that you specified in your request.
    #   @return [Integer]
    #
    # @!attribute [rw] media_encoding
    #   Provides the media encoding you specified in your request.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   Provides the name of the custom vocabulary that you specified in
    #   your request.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   Provides the identifier for your transcription session.
    #   @return [String]
    #
    # @!attribute [rw] transcript_result_stream
    #   Provides detailed information about your streaming session.
    #   @return [Types::TranscriptResultStream]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   Provides the name of the custom vocabulary filter that you specified
    #   in your request.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_method
    #   Provides the vocabulary filtering method used in your transcription.
    #   @return [String]
    #
    # @!attribute [rw] show_speaker_label
    #   Shows whether speaker partitioning was enabled for your
    #   transcription.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_channel_identification
    #   Shows whether channel identification was enabled for your
    #   transcription.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_channels
    #   Provides the number of channels that you specified in your request.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_partial_results_stabilization
    #   Shows whether partial results stabilization was enabled for your
    #   transcription.
    #   @return [Boolean]
    #
    # @!attribute [rw] partial_results_stability
    #   Provides the stabilization level used for your transcription.
    #   @return [String]
    #
    # @!attribute [rw] content_identification_type
    #   Shows whether content identification was enabled for your
    #   transcription.
    #   @return [String]
    #
    # @!attribute [rw] content_redaction_type
    #   Shows whether content redaction was enabled for your transcription.
    #   @return [String]
    #
    # @!attribute [rw] pii_entity_types
    #   Lists the PII entity types you specified in your request.
    #   @return [String]
    #
    # @!attribute [rw] language_model_name
    #   Provides the name of the custom language model that you specified in
    #   your request.
    #   @return [String]
    #
    # @!attribute [rw] identify_language
    #   Shows whether automatic language identification was enabled for your
    #   transcription.
    #   @return [Boolean]
    #
    # @!attribute [rw] language_options
    #   Provides the language codes that you specified in your request.
    #   @return [String]
    #
    # @!attribute [rw] preferred_language
    #   Provides the preferred language that you specified in your request.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_names
    #   Provides the names of the custom vocabularies that you specified in
    #   your request.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_names
    #   Provides the names of the custom vocabulary filters that you
    #   specified in your request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/StartStreamTranscriptionResponse AWS API Documentation
    #
    class StartStreamTranscriptionResponse < Struct.new(
      :request_id,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :session_id,
      :transcript_result_stream,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :show_speaker_label,
      :enable_channel_identification,
      :number_of_channels,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types,
      :language_model_name,
      :identify_language,
      :language_options,
      :preferred_language,
      :vocabulary_names,
      :vocabulary_filter_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the timestamp range (start time through end time) of a
    # matched category.
    #
    # @!attribute [rw] begin_offset_millis
    #   The time, in milliseconds, from the beginning of the audio stream to
    #   the start of the category match.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset_millis
    #   The time, in milliseconds, from the beginning of the audio stream to
    #   the end of the category match.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/TimestampRange AWS API Documentation
    #
    class TimestampRange < Struct.new(
      :begin_offset_millis,
      :end_offset_millis)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `Transcript` associated with a `.</p>  Transcript contains
    # Results, which contains a set of transcription results from one or
    # more audio segments, along with additional information per your
    # request parameters.
    # `
    #
    # @!attribute [rw] results
    #   Contains a set of transcription results from one or more audio
    #   segments, along with additional information per your request
    #   parameters. This can include information relating to alternative
    #   transcriptions, channel identification, partial result
    #   stabilization, language identification, and other
    #   transcription-related data.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/Transcript AWS API Documentation
    #
    class Transcript < Struct.new(
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `TranscriptEvent` associated with a `TranscriptResultStream`.
    #
    # Contains a set of transcription results from one or more audio
    # segments, along with additional information per your request
    # parameters.
    #
    # @!attribute [rw] transcript
    #   Contains `Results`, which contains a set of transcription results
    #   from one or more audio segments, along with additional information
    #   per your request parameters. This can include information relating
    #   to alternative transcriptions, channel identification, partial
    #   result stabilization, language identification, and other
    #   transcription-related data.
    #   @return [Types::Transcript]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/TranscriptEvent AWS API Documentation
    #
    class TranscriptEvent < Struct.new(
      :transcript,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains set of transcription results from one or more audio segments,
    # along with additional information about the parameters included in
    # your request. For example, channel definitions, partial result
    # stabilization, sentiment, and issue detection.
    #
    # @!attribute [rw] utterance_id
    #   The unique identifier that is associated with the specified
    #   `UtteranceEvent`.
    #   @return [String]
    #
    # @!attribute [rw] is_partial
    #   Indicates whether the segment in the `UtteranceEvent` is complete
    #   (`FALSE`) or partial (`TRUE`).
    #   @return [Boolean]
    #
    # @!attribute [rw] participant_role
    #   Provides the role of the speaker for each audio channel, either
    #   `CUSTOMER` or `AGENT`.
    #   @return [String]
    #
    # @!attribute [rw] begin_offset_millis
    #   The time, in milliseconds, from the beginning of the audio stream to
    #   the start of the `UtteranceEvent`.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset_millis
    #   The time, in milliseconds, from the beginning of the audio stream to
    #   the start of the `UtteranceEvent`.
    #   @return [Integer]
    #
    # @!attribute [rw] transcript
    #   Contains transcribed text.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Contains words, phrases, or punctuation marks that are associated
    #   with the specified `UtteranceEvent`.
    #   @return [Array<Types::CallAnalyticsItem>]
    #
    # @!attribute [rw] entities
    #   Contains entities identified as personally identifiable information
    #   (PII) in your transcription output.
    #   @return [Array<Types::CallAnalyticsEntity>]
    #
    # @!attribute [rw] sentiment
    #   Provides the sentiment that was detected in the specified segment.
    #   @return [String]
    #
    # @!attribute [rw] issues_detected
    #   Provides the issue that was detected in the specified segment.
    #   @return [Array<Types::IssueDetected>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/UtteranceEvent AWS API Documentation
    #
    class UtteranceEvent < Struct.new(
      :utterance_id,
      :is_partial,
      :participant_role,
      :begin_offset_millis,
      :end_offset_millis,
      :transcript,
      :items,
      :entities,
      :sentiment,
      :issues_detected,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An encoded stream of audio blobs. Audio streams are encoded as either
    # HTTP/2 or WebSocket data frames.
    #
    # For more information, see [Transcribing streaming audio][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/AudioStream AWS API Documentation
    #
    class AudioStream < Enumerator

      def event_types
        [
          :audio_event,
          :configuration_event
        ]
      end

    end

    # Contains detailed information about your Call Analytics streaming
    # session. These details are provided in the `UtteranceEvent` and
    # `CategoryEvent` objects.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/CallAnalyticsTranscriptResultStream AWS API Documentation
    #
    class CallAnalyticsTranscriptResultStream < Enumerator

      def event_types
        [
          :utterance_event,
          :category_event,
          :bad_request_exception,
          :limit_exceeded_exception,
          :internal_failure_exception,
          :conflict_exception,
          :service_unavailable_exception
        ]
      end

    end

    # Contains detailed information about your streaming session.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/MedicalTranscriptResultStream AWS API Documentation
    #
    class MedicalTranscriptResultStream < Enumerator

      def event_types
        [
          :transcript_event,
          :bad_request_exception,
          :limit_exceeded_exception,
          :internal_failure_exception,
          :conflict_exception,
          :service_unavailable_exception
        ]
      end

    end

    # Contains detailed information about your streaming session.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/TranscriptResultStream AWS API Documentation
    #
    class TranscriptResultStream < Enumerator

      def event_types
        [
          :transcript_event,
          :bad_request_exception,
          :limit_exceeded_exception,
          :internal_failure_exception,
          :conflict_exception,
          :service_unavailable_exception
        ]
      end

    end

  end
end
