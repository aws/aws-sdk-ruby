# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKMediaPipelines
  module Types

    # A structure that contains the configuration settings for an Amazon
    # Transcribe call analytics processor.
    #
    # @!attribute [rw] language_code
    #   The language code in the configuration.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   Specifies the name of the custom vocabulary to use when processing a
    #   transcription. Note that vocabulary names are case sensitive.
    #
    #   If the language of the specified custom vocabulary doesn't match
    #   the language identified in your media, the custom vocabulary is not
    #   applied to your transcription.
    #
    #   For more information, see [Custom vocabularies][1] in the *Amazon
    #   Transcribe Developer Guide*.
    #
    #   Length Constraints: Minimum length of 1. Maximum length of 200.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   Specifies the name of the custom vocabulary filter to use when
    #   processing a transcription. Note that vocabulary filter names are
    #   case sensitive.
    #
    #   If the language of the specified custom vocabulary filter doesn't
    #   match the language identified in your media, the vocabulary filter
    #   is not applied to your transcription.
    #
    #   For more information, see [Using vocabulary filtering with unwanted
    #   words][1] in the *Amazon Transcribe Developer Guide*.
    #
    #   Length Constraints: Minimum length of 1. Maximum length of 200.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_method
    #   Specifies how to apply a vocabulary filter to a transcript.
    #
    #   To replace words with *******, choose `mask`.
    #
    #   To delete words, choose `remove`.
    #
    #   To flag words without changing them, choose `tag`.
    #   @return [String]
    #
    # @!attribute [rw] language_model_name
    #   Specifies the name of the custom language model to use when
    #   processing a transcription. Note that language model names are case
    #   sensitive.
    #
    #   The language of the specified language model must match the language
    #   code specified in the transcription request. If the languages don't
    #   match, the custom language model isn't applied. Language mismatches
    #   don't generate errors or warnings.
    #
    #   For more information, see [Custom language models][1] in the *Amazon
    #   Transcribe Developer Guide*.
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
    #   stabilization][1] in the *Amazon Transcribe Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization
    #   @return [Boolean]
    #
    # @!attribute [rw] partial_results_stability
    #   Specifies the level of stability to use when you enable partial
    #   results stabilization (`EnablePartialResultsStabilization`).
    #
    #   Low stability provides the highest accuracy. High stability
    #   transcribes faster, but with slightly lower accuracy.
    #
    #   For more information, see [Partial-result stabilization][1] in the
    #   *Amazon Transcribe Developer Guide*.
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
    #   in the same request. If you do, your request returns a
    #   `BadRequestException`.
    #
    #   For more information, see [Redacting or identifying personally
    #   identifiable information][1] in the *Amazon Transcribe Developer
    #   Guide*.
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
    #   in the same request. If you do, your request returns a
    #   `BadRequestException`.
    #
    #   For more information, see [Redacting or identifying personally
    #   identifiable information][1] in the *Amazon Transcribe Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html
    #   @return [String]
    #
    # @!attribute [rw] pii_entity_types
    #   Specifies the types of personally identifiable information (PII) to
    #   redact from a transcript. You can include as many types as you'd
    #   like, or you can select `ALL`.
    #
    #   To include `PiiEntityTypes` in your Call Analytics request, you must
    #   also include `ContentIdentificationType` or `ContentRedactionType`,
    #   but you can't include both.
    #
    #   Values must be comma-separated and can include: `ADDRESS`,
    #   `BANK_ACCOUNT_NUMBER`, `BANK_ROUTING`, `CREDIT_DEBIT_CVV`,
    #   `CREDIT_DEBIT_EXPIRY`, `CREDIT_DEBIT_NUMBER`, `EMAIL`, `NAME`,
    #   `PHONE`, `PIN`, `SSN`, or `ALL`.
    #
    #   Length Constraints: Minimum length of 1. Maximum length of 300.
    #   @return [String]
    #
    # @!attribute [rw] filter_partial_results
    #   If true, `UtteranceEvents` with `IsPartial: true` are filtered out
    #   of the insights target.
    #   @return [Boolean]
    #
    # @!attribute [rw] post_call_analytics_settings
    #   The settings for a post-call analysis task in an analytics
    #   configuration.
    #   @return [Types::PostCallAnalyticsSettings]
    #
    # @!attribute [rw] call_analytics_stream_categories
    #   By default, all `CategoryEvents` are sent to the insights target. If
    #   this parameter is specified, only included categories are sent to
    #   the insights target.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/AmazonTranscribeCallAnalyticsProcessorConfiguration AWS API Documentation
    #
    class AmazonTranscribeCallAnalyticsProcessorConfiguration < Struct.new(
      :language_code,
      :vocabulary_name,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :language_model_name,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types,
      :filter_partial_results,
      :post_call_analytics_settings,
      :call_analytics_stream_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the configuration settings for an Amazon
    # Transcribe processor.
    #
    # @!attribute [rw] language_code
    #   The language code that represents the language spoken in your audio.
    #
    #   If you're unsure of the language spoken in your audio, consider
    #   using `IdentifyLanguage` to enable automatic language
    #   identification.
    #
    #   For a list of languages that real-time Call Analytics supports, see
    #   the [Supported languages table][1] in the *Amazon Transcribe
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the custom vocabulary that you specified in your Call
    #   Analytics request.
    #
    #   Length Constraints: Minimum length of 1. Maximum length of 200.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The name of the custom vocabulary filter that you specified in your
    #   Call Analytics request.
    #
    #   Length Constraints: Minimum length of 1. Maximum length of 200.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_method
    #   The vocabulary filtering method used in your Call Analytics
    #   transcription.
    #   @return [String]
    #
    # @!attribute [rw] show_speaker_label
    #   Enables speaker partitioning (diarization) in your transcription
    #   output. Speaker partitioning labels the speech from individual
    #   speakers in your media file.
    #
    #   For more information, see [Partitioning speakers (diarization)][1]
    #   in the *Amazon Transcribe Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_partial_results_stabilization
    #   Enables partial result stabilization for your transcription. Partial
    #   result stabilization can reduce latency in your output, but may
    #   impact accuracy.
    #
    #   For more information, see [Partial-result stabilization][1] in the
    #   *Amazon Transcribe Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization
    #   @return [Boolean]
    #
    # @!attribute [rw] partial_results_stability
    #   The level of stability to use when you enable partial results
    #   stabilization (`EnablePartialResultsStabilization`).
    #
    #   Low stability provides the highest accuracy. High stability
    #   transcribes faster, but with slightly lower accuracy.
    #
    #   For more information, see [Partial-result stabilization][1] in the
    #   *Amazon Transcribe Developer Guide*.
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
    #   identifiable information][1] in the *Amazon Transcribe Developer
    #   Guide*.
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
    #   in PiiEntityTypes is redacted upon complete transcription of an
    #   audio segment.
    #
    #   You can’t set ContentRedactionType and ContentIdentificationType in
    #   the same request. If you set both, your request returns a
    #   `BadRequestException`.
    #
    #   For more information, see [Redacting or identifying personally
    #   identifiable information][1] in the *Amazon Transcribe Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html
    #   @return [String]
    #
    # @!attribute [rw] pii_entity_types
    #   The types of personally identifiable information (PII) to redact
    #   from a transcript. You can include as many types as you'd like, or
    #   you can select `ALL`.
    #
    #   To include `PiiEntityTypes` in your Call Analytics request, you must
    #   also include `ContentIdentificationType` or `ContentRedactionType`,
    #   but you can't include both.
    #
    #   Values must be comma-separated and can include: `ADDRESS`,
    #   `BANK_ACCOUNT_NUMBER`, `BANK_ROUTING`, `CREDIT_DEBIT_CVV`,
    #   `CREDIT_DEBIT_EXPIRY`, `CREDIT_DEBIT_NUMBER`, `EMAIL`, `NAME`,
    #   `PHONE`, `PIN`, `SSN`, or `ALL`.
    #
    #   If you leave this parameter empty, the default behavior is
    #   equivalent to `ALL`.
    #   @return [String]
    #
    # @!attribute [rw] language_model_name
    #   The name of the custom language model that you want to use when
    #   processing your transcription. Note that language model names are
    #   case sensitive.
    #
    #   The language of the specified language model must match the language
    #   code you specify in your transcription request. If the languages
    #   don't match, the custom language model isn't applied. There are no
    #   errors or warnings associated with a language mismatch.
    #
    #   For more information, see [Custom language models][1] in the *Amazon
    #   Transcribe Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html
    #   @return [String]
    #
    # @!attribute [rw] filter_partial_results
    #   If true, `TranscriptEvents` with `IsPartial: true` are filtered out
    #   of the insights target.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/AmazonTranscribeProcessorConfiguration AWS API Documentation
    #
    class AmazonTranscribeProcessorConfiguration < Struct.new(
      :language_code,
      :vocabulary_name,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :show_speaker_label,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types,
      :language_model_name,
      :filter_partial_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the artifacts concatenation.
    #
    # @!attribute [rw] audio
    #   The configuration for the audio artifacts concatenation.
    #   @return [Types::AudioConcatenationConfiguration]
    #
    # @!attribute [rw] video
    #   The configuration for the video artifacts concatenation.
    #   @return [Types::VideoConcatenationConfiguration]
    #
    # @!attribute [rw] content
    #   The configuration for the content artifacts concatenation.
    #   @return [Types::ContentConcatenationConfiguration]
    #
    # @!attribute [rw] data_channel
    #   The configuration for the data channel artifacts concatenation.
    #   @return [Types::DataChannelConcatenationConfiguration]
    #
    # @!attribute [rw] transcription_messages
    #   The configuration for the transcription messages artifacts
    #   concatenation.
    #   @return [Types::TranscriptionMessagesConcatenationConfiguration]
    #
    # @!attribute [rw] meeting_events
    #   The configuration for the meeting events artifacts concatenation.
    #   @return [Types::MeetingEventsConcatenationConfiguration]
    #
    # @!attribute [rw] composited_video
    #   The configuration for the composited video artifacts concatenation.
    #   @return [Types::CompositedVideoConcatenationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ArtifactsConcatenationConfiguration AWS API Documentation
    #
    class ArtifactsConcatenationConfiguration < Struct.new(
      :audio,
      :video,
      :content,
      :data_channel,
      :transcription_messages,
      :meeting_events,
      :composited_video)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the artifacts.
    #
    # @!attribute [rw] audio
    #   The configuration for the audio artifacts.
    #   @return [Types::AudioArtifactsConfiguration]
    #
    # @!attribute [rw] video
    #   The configuration for the video artifacts.
    #   @return [Types::VideoArtifactsConfiguration]
    #
    # @!attribute [rw] content
    #   The configuration for the content artifacts.
    #   @return [Types::ContentArtifactsConfiguration]
    #
    # @!attribute [rw] composited_video
    #   Enables video compositing.
    #   @return [Types::CompositedVideoArtifactsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ArtifactsConfiguration AWS API Documentation
    #
    class ArtifactsConfiguration < Struct.new(
      :audio,
      :video,
      :content,
      :composited_video)
      SENSITIVE = []
      include Aws::Structure
    end

    # The audio artifact configuration object.
    #
    # @!attribute [rw] mux_type
    #   The MUX type of the audio artifact configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/AudioArtifactsConfiguration AWS API Documentation
    #
    class AudioArtifactsConfiguration < Struct.new(
      :mux_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The audio artifact concatenation configuration object.
    #
    # @!attribute [rw] state
    #   Enables or disables the configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/AudioConcatenationConfiguration AWS API Documentation
    #
    class AudioConcatenationConfiguration < Struct.new(
      :state)
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
    #   The request ID associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an audio channel in a Kinesis video stream.
    #
    # @!attribute [rw] channel_id
    #   The channel ID.
    #   @return [Integer]
    #
    # @!attribute [rw] participant_role
    #   Specifies whether the audio in a channel belongs to the `AGENT` or
    #   `CUSTOMER`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ChannelDefinition AWS API Documentation
    #
    class ChannelDefinition < Struct.new(
      :channel_id,
      :participant_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration object of the Amazon Chime SDK meeting concatenation
    # for a specified media pipeline.
    #
    # @!attribute [rw] artifacts_configuration
    #   The configuration for the artifacts in an Amazon Chime SDK meeting
    #   concatenation.
    #   @return [Types::ArtifactsConcatenationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ChimeSdkMeetingConcatenationConfiguration AWS API Documentation
    #
    class ChimeSdkMeetingConcatenationConfiguration < Struct.new(
      :artifacts_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration object of the Amazon Chime SDK meeting for a
    # specified media pipeline. `SourceType` must be `ChimeSdkMeeting`.
    #
    # @!attribute [rw] source_configuration
    #   The source configuration for a specified media pipeline.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] artifacts_configuration
    #   The configuration for the artifacts in an Amazon Chime SDK meeting.
    #   @return [Types::ArtifactsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ChimeSdkMeetingConfiguration AWS API Documentation
    #
    class ChimeSdkMeetingConfiguration < Struct.new(
      :source_configuration,
      :artifacts_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The media pipeline's configuration object.
    #
    # @!attribute [rw] arn
    #   The configuration object's Chime SDK meeting ARN.
    #   @return [String]
    #
    # @!attribute [rw] mux_type
    #   The configuration object's multiplex type.
    #   @return [String]
    #
    # @!attribute [rw] composited_video
    #   The media pipeline's composited video.
    #   @return [Types::CompositedVideoArtifactsConfiguration]
    #
    # @!attribute [rw] source_configuration
    #   The source configuration settings of the media pipeline's
    #   configuration object.
    #   @return [Types::SourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ChimeSdkMeetingLiveConnectorConfiguration AWS API Documentation
    #
    class ChimeSdkMeetingLiveConnectorConfiguration < Struct.new(
      :arn,
      :mux_type,
      :composited_video,
      :source_configuration)
      SENSITIVE = [:arn]
      include Aws::Structure
    end

    # Specifies the configuration for compositing video artifacts.
    #
    # @!attribute [rw] layout
    #   The layout setting, such as `GridView` in the configuration object.
    #   @return [String]
    #
    # @!attribute [rw] resolution
    #   The video resolution setting in the configuration object. Default:
    #   HD at 1280 x 720. FHD resolution: 1920 x 1080.
    #   @return [String]
    #
    # @!attribute [rw] grid_view_configuration
    #   The `GridView` configuration setting.
    #   @return [Types::GridViewConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CompositedVideoArtifactsConfiguration AWS API Documentation
    #
    class CompositedVideoArtifactsConfiguration < Struct.new(
      :layout,
      :resolution,
      :grid_view_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The composited video configuration object for a specified media
    # pipeline. `SourceType` must be `ChimeSdkMeeting`.
    #
    # @!attribute [rw] state
    #   Enables or disables the configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CompositedVideoConcatenationConfiguration AWS API Documentation
    #
    class CompositedVideoConcatenationConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data sink of the configuration object.
    #
    # @!attribute [rw] type
    #   The type of data sink in the configuration object.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_sink_configuration
    #   The configuration settings for an Amazon S3 bucket sink.
    #   @return [Types::S3BucketSinkConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ConcatenationSink AWS API Documentation
    #
    class ConcatenationSink < Struct.new(
      :type,
      :s3_bucket_sink_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source type and media pipeline configuration settings in a
    # configuration object.
    #
    # @!attribute [rw] type
    #   The type of concatenation source in a configuration object.
    #   @return [String]
    #
    # @!attribute [rw] media_capture_pipeline_source_configuration
    #   The concatenation settings for the media pipeline in a configuration
    #   object.
    #   @return [Types::MediaCapturePipelineSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ConcatenationSource AWS API Documentation
    #
    class ConcatenationSource < Struct.new(
      :type,
      :media_capture_pipeline_source_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state of the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content artifact object.
    #
    # @!attribute [rw] state
    #   Indicates whether the content artifact is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] mux_type
    #   The MUX type of the artifact configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ContentArtifactsConfiguration AWS API Documentation
    #
    class ContentArtifactsConfiguration < Struct.new(
      :state,
      :mux_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The composited content configuration object for a specified media
    # pipeline.
    #
    # @!attribute [rw] state
    #   Enables or disables the configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ContentConcatenationConfiguration AWS API Documentation
    #
    class ContentConcatenationConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_type
    #   Source type from which the media artifacts are captured. A Chime SDK
    #   Meeting is the only supported source.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   ARN of the source from which the media artifacts are captured.
    #   @return [String]
    #
    # @!attribute [rw] sink_type
    #   Destination type to which the media artifacts are saved. You must
    #   use an S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] sink_arn
    #   The ARN of the sink type.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The unique identifier for the client request. The token makes the
    #   API request idempotent. Use a unique token for each media pipeline
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] chime_sdk_meeting_configuration
    #   The configuration for a specified media pipeline. `SourceType` must
    #   be `ChimeSdkMeeting`.
    #   @return [Types::ChimeSdkMeetingConfiguration]
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaCapturePipelineRequest AWS API Documentation
    #
    class CreateMediaCapturePipelineRequest < Struct.new(
      :source_type,
      :source_arn,
      :sink_type,
      :sink_arn,
      :client_request_token,
      :chime_sdk_meeting_configuration,
      :tags)
      SENSITIVE = [:source_arn, :sink_arn, :client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] media_capture_pipeline
    #   A media pipeline object, the ID, source type, source ARN, sink type,
    #   and sink ARN of a media pipeline object.
    #   @return [Types::MediaCapturePipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaCapturePipelineResponse AWS API Documentation
    #
    class CreateMediaCapturePipelineResponse < Struct.new(
      :media_capture_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sources
    #   An object that specifies the sources for the media concatenation
    #   pipeline.
    #   @return [Array<Types::ConcatenationSource>]
    #
    # @!attribute [rw] sinks
    #   An object that specifies the data sinks for the media concatenation
    #   pipeline.
    #   @return [Array<Types::ConcatenationSink>]
    #
    # @!attribute [rw] client_request_token
    #   The unique identifier for the client request. The token makes the
    #   API request idempotent. Use a unique token for each media
    #   concatenation pipeline request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the media concatenation pipeline.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaConcatenationPipelineRequest AWS API Documentation
    #
    class CreateMediaConcatenationPipelineRequest < Struct.new(
      :sources,
      :sinks,
      :client_request_token,
      :tags)
      SENSITIVE = [:client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] media_concatenation_pipeline
    #   A media concatenation pipeline object, the ID, source type,
    #   `MediaPipelineARN`, and sink of a media concatenation pipeline
    #   object.
    #   @return [Types::MediaConcatenationPipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaConcatenationPipelineResponse AWS API Documentation
    #
    class CreateMediaConcatenationPipelineResponse < Struct.new(
      :media_concatenation_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_insights_pipeline_configuration_name
    #   The name of the media insights pipeline configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_access_role_arn
    #   The ARN of the role used by the service to access Amazon Web
    #   Services resources, including `Transcribe` and `Transcribe Call
    #   Analytics`, on the caller’s behalf.
    #   @return [String]
    #
    # @!attribute [rw] real_time_alert_configuration
    #   The configuration settings for the real-time alerts in a media
    #   insights pipeline configuration.
    #   @return [Types::RealTimeAlertConfiguration]
    #
    # @!attribute [rw] elements
    #   The elements in the request, such as a processor for Amazon
    #   Transcribe or a sink for a Kinesis Data Stream.
    #   @return [Array<Types::MediaInsightsPipelineConfigurationElement>]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the media insights pipeline configuration.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_request_token
    #   The unique identifier for the media insights pipeline configuration
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaInsightsPipelineConfigurationRequest AWS API Documentation
    #
    class CreateMediaInsightsPipelineConfigurationRequest < Struct.new(
      :media_insights_pipeline_configuration_name,
      :resource_access_role_arn,
      :real_time_alert_configuration,
      :elements,
      :tags,
      :client_request_token)
      SENSITIVE = [:resource_access_role_arn, :client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] media_insights_pipeline_configuration
    #   The configuration settings for the media insights pipeline.
    #   @return [Types::MediaInsightsPipelineConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaInsightsPipelineConfigurationResponse AWS API Documentation
    #
    class CreateMediaInsightsPipelineConfigurationResponse < Struct.new(
      :media_insights_pipeline_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_insights_pipeline_configuration_arn
    #   The ARN of the pipeline's configuration.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_video_stream_source_runtime_configuration
    #   The runtime configuration for the Kinesis video stream source of the
    #   media insights pipeline.
    #   @return [Types::KinesisVideoStreamSourceRuntimeConfiguration]
    #
    # @!attribute [rw] media_insights_runtime_metadata
    #   The runtime metadata for the media insights pipeline. Consists of a
    #   key-value map of strings.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kinesis_video_stream_recording_source_runtime_configuration
    #   The runtime configuration for the Kinesis video recording stream
    #   source.
    #   @return [Types::KinesisVideoStreamRecordingSourceRuntimeConfiguration]
    #
    # @!attribute [rw] s3_recording_sink_runtime_configuration
    #   The runtime configuration for the S3 recording sink.
    #   @return [Types::S3RecordingSinkRuntimeConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the media insights pipeline.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_request_token
    #   The unique identifier for the media insights pipeline request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaInsightsPipelineRequest AWS API Documentation
    #
    class CreateMediaInsightsPipelineRequest < Struct.new(
      :media_insights_pipeline_configuration_arn,
      :kinesis_video_stream_source_runtime_configuration,
      :media_insights_runtime_metadata,
      :kinesis_video_stream_recording_source_runtime_configuration,
      :s3_recording_sink_runtime_configuration,
      :tags,
      :client_request_token)
      SENSITIVE = [:media_insights_pipeline_configuration_arn, :media_insights_runtime_metadata, :client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] media_insights_pipeline
    #   The media insights pipeline object.
    #   @return [Types::MediaInsightsPipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaInsightsPipelineResponse AWS API Documentation
    #
    class CreateMediaInsightsPipelineResponse < Struct.new(
      :media_insights_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sources
    #   The media live connector pipeline's data sources.
    #   @return [Array<Types::LiveConnectorSourceConfiguration>]
    #
    # @!attribute [rw] sinks
    #   The media live connector pipeline's data sinks.
    #   @return [Array<Types::LiveConnectorSinkConfiguration>]
    #
    # @!attribute [rw] client_request_token
    #   The token assigned to the client making the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the media live connector pipeline.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaLiveConnectorPipelineRequest AWS API Documentation
    #
    class CreateMediaLiveConnectorPipelineRequest < Struct.new(
      :sources,
      :sinks,
      :client_request_token,
      :tags)
      SENSITIVE = [:client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] media_live_connector_pipeline
    #   The new media live connector pipeline.
    #   @return [Types::MediaLiveConnectorPipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaLiveConnectorPipelineResponse AWS API Documentation
    #
    class CreateMediaLiveConnectorPipelineResponse < Struct.new(
      :media_live_connector_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content configuration object's data channel.
    #
    # @!attribute [rw] state
    #   Enables or disables the configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/DataChannelConcatenationConfiguration AWS API Documentation
    #
    class DataChannelConcatenationConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_pipeline_id
    #   The ID of the media pipeline being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/DeleteMediaCapturePipelineRequest AWS API Documentation
    #
    class DeleteMediaCapturePipelineRequest < Struct.new(
      :media_pipeline_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique identifier of the resource to be deleted. Valid values
    #   include the name and ARN of the media insights pipeline
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/DeleteMediaInsightsPipelineConfigurationRequest AWS API Documentation
    #
    class DeleteMediaInsightsPipelineConfigurationRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_pipeline_id
    #   The ID of the media pipeline to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/DeleteMediaPipelineRequest AWS API Documentation
    #
    class DeleteMediaPipelineRequest < Struct.new(
      :media_pipeline_id)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the timestamp range and timestamp origin of a range of
    # fragments.
    #
    # Only fragments with a start timestamp greater than or equal to the
    # given start time and less than or equal to the end time are returned.
    # For example, say a stream contains fragments with the following start
    # timestamps:
    #
    # * 00:00:00
    #
    # * 00:00:02
    #
    # * 00:00:04
    #
    # * 00:00:06
    #
    # A fragment selector range with a start time of 00:00:01 and end time
    # of 00:00:04 would return the fragments with start times of 00:00:02
    # and 00:00:04.
    #
    # @!attribute [rw] fragment_selector_type
    #   The origin of the timestamps to use, `Server` or `Producer`. For
    #   more information, see
    #   [StartSelectorType](kinesisvideostreams/latest/dg/API_dataplane_StartSelector.html#KinesisVideo-Type-dataplane_StartSelector-StartSelectorType)
    #   in the *Amazon Kinesis Video Streams Developer Guide*.
    #   @return [String]
    #
    # @!attribute [rw] timestamp_range
    #   The range of timestamps to return.
    #   @return [Types::TimestampRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/FragmentSelector AWS API Documentation
    #
    class FragmentSelector < Struct.new(
      :fragment_selector_type,
      :timestamp_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_pipeline_id
    #   The ID of the pipeline that you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaCapturePipelineRequest AWS API Documentation
    #
    class GetMediaCapturePipelineRequest < Struct.new(
      :media_pipeline_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_capture_pipeline
    #   The media pipeline object.
    #   @return [Types::MediaCapturePipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaCapturePipelineResponse AWS API Documentation
    #
    class GetMediaCapturePipelineResponse < Struct.new(
      :media_capture_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique identifier of the requested resource. Valid values
    #   include the name and ARN of the media insights pipeline
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaInsightsPipelineConfigurationRequest AWS API Documentation
    #
    class GetMediaInsightsPipelineConfigurationRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_insights_pipeline_configuration
    #   The requested media insights pipeline configuration.
    #   @return [Types::MediaInsightsPipelineConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaInsightsPipelineConfigurationResponse AWS API Documentation
    #
    class GetMediaInsightsPipelineConfigurationResponse < Struct.new(
      :media_insights_pipeline_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_pipeline_id
    #   The ID of the pipeline that you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaPipelineRequest AWS API Documentation
    #
    class GetMediaPipelineRequest < Struct.new(
      :media_pipeline_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_pipeline
    #   The media pipeline object.
    #   @return [Types::MediaPipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaPipelineResponse AWS API Documentation
    #
    class GetMediaPipelineResponse < Struct.new(
      :media_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the type of grid layout.
    #
    # @!attribute [rw] content_share_layout
    #   Defines the layout of the video tiles when content sharing is
    #   enabled.
    #   @return [String]
    #
    # @!attribute [rw] presenter_only_configuration
    #   Defines the configuration options for a presenter only video tile.
    #   @return [Types::PresenterOnlyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GridViewConfiguration AWS API Documentation
    #
    class GridViewConfiguration < Struct.new(
      :content_share_layout,
      :presenter_only_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the configuration settings for an issue
    # detection task.
    #
    # @!attribute [rw] rule_name
    #   The name of the issue detection rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/IssueDetectionConfiguration AWS API Documentation
    #
    class IssueDetectionConfiguration < Struct.new(
      :rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the settings for a keyword match task.
    #
    # @!attribute [rw] rule_name
    #   The name of the keyword match rule.
    #   @return [String]
    #
    # @!attribute [rw] keywords
    #   The keywords or phrases that you want to match.
    #   @return [Array<String>]
    #
    # @!attribute [rw] negate
    #   Matches keywords or phrases on their presence or absence. If set to
    #   `TRUE`, the rule matches when all the specified keywords or phrases
    #   are absent. Default: `FALSE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/KeywordMatchConfiguration AWS API Documentation
    #
    class KeywordMatchConfiguration < Struct.new(
      :rule_name,
      :keywords,
      :negate)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the configuration settings for a Kinesis
    # Data Stream sink.
    #
    # @!attribute [rw] insights_target
    #   The ARN of the sink.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/KinesisDataStreamSinkConfiguration AWS API Documentation
    #
    class KinesisDataStreamSinkConfiguration < Struct.new(
      :insights_target)
      SENSITIVE = [:insights_target]
      include Aws::Structure
    end

    # A structure that contains the runtime settings for recording a Kinesis
    # video stream.
    #
    # @!attribute [rw] streams
    #   The stream or streams to be recorded.
    #   @return [Array<Types::RecordingStreamConfiguration>]
    #
    # @!attribute [rw] fragment_selector
    #   Describes the timestamp range and timestamp origin of a range of
    #   fragments in the Kinesis video stream.
    #   @return [Types::FragmentSelector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/KinesisVideoStreamRecordingSourceRuntimeConfiguration AWS API Documentation
    #
    class KinesisVideoStreamRecordingSourceRuntimeConfiguration < Struct.new(
      :streams,
      :fragment_selector)
      SENSITIVE = []
      include Aws::Structure
    end

    # The runtime configuration settings for the Kinesis video stream
    # source.
    #
    # @!attribute [rw] streams
    #   The streams in the source runtime configuration of a Kinesis video
    #   stream.
    #   @return [Array<Types::StreamConfiguration>]
    #
    # @!attribute [rw] media_encoding
    #   Specifies the encoding of your input audio. Supported format: PCM
    #   (only signed 16-bit little-endian audio formats, which does not
    #   include WAV)
    #
    #   For more information, see [Media formats][1] in the *Amazon
    #   Transcribe Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate
    #   The sample rate of the input audio (in hertz). Low-quality audio,
    #   such as telephone audio, is typically around 8,000 Hz. High-quality
    #   audio typically ranges from 16,000 Hz to 48,000 Hz. Note that the
    #   sample rate you specify must match that of your audio.
    #
    #   Valid Range: Minimum value of 8000. Maximum value of 48000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/KinesisVideoStreamSourceRuntimeConfiguration AWS API Documentation
    #
    class KinesisVideoStreamSourceRuntimeConfiguration < Struct.new(
      :streams,
      :media_encoding,
      :media_sample_rate)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the configuration settings for an AWS Lambda
    # function's data sink.
    #
    # @!attribute [rw] insights_target
    #   The ARN of the sink.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/LambdaFunctionSinkConfiguration AWS API Documentation
    #
    class LambdaFunctionSinkConfiguration < Struct.new(
      :insights_target)
      SENSITIVE = [:insights_target]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   Range: 1 - 99.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListMediaCapturePipelinesRequest AWS API Documentation
    #
    class ListMediaCapturePipelinesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_capture_pipelines
    #   The media pipeline objects in the list.
    #   @return [Array<Types::MediaCapturePipelineSummary>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListMediaCapturePipelinesResponse AWS API Documentation
    #
    class ListMediaCapturePipelinesResponse < Struct.new(
      :media_capture_pipelines,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListMediaInsightsPipelineConfigurationsRequest AWS API Documentation
    #
    class ListMediaInsightsPipelineConfigurationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_insights_pipeline_configurations
    #   The requested list of media insights pipeline configurations.
    #   @return [Array<Types::MediaInsightsPipelineConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListMediaInsightsPipelineConfigurationsResponse AWS API Documentation
    #
    class ListMediaInsightsPipelineConfigurationsResponse < Struct.new(
      :media_insights_pipeline_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   Range: 1 - 99.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListMediaPipelinesRequest AWS API Documentation
    #
    class ListMediaPipelinesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_pipelines
    #   The media pipeline objects in the list.
    #   @return [Array<Types::MediaPipelineSummary>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListMediaPipelinesResponse AWS API Documentation
    #
    class ListMediaPipelinesResponse < Struct.new(
      :media_pipelines,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the media pipeline associated with any tags. The ARN
    #   consists of the pipeline's region, resource ID, and pipeline ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with the specified media pipeline.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The media pipeline's RTMP configuration object.
    #
    # @!attribute [rw] url
    #   The URL of the RTMP configuration.
    #   @return [String]
    #
    # @!attribute [rw] audio_channels
    #   The audio channels set for the RTMP configuration
    #   @return [String]
    #
    # @!attribute [rw] audio_sample_rate
    #   The audio sample rate set for the RTMP configuration. Default:
    #   48000.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/LiveConnectorRTMPConfiguration AWS API Documentation
    #
    class LiveConnectorRTMPConfiguration < Struct.new(
      :url,
      :audio_channels,
      :audio_sample_rate)
      SENSITIVE = [:url]
      include Aws::Structure
    end

    # The media pipeline's sink configuration settings.
    #
    # @!attribute [rw] sink_type
    #   The sink configuration's sink type.
    #   @return [String]
    #
    # @!attribute [rw] rtmp_configuration
    #   The sink configuration's RTMP configuration settings.
    #   @return [Types::LiveConnectorRTMPConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/LiveConnectorSinkConfiguration AWS API Documentation
    #
    class LiveConnectorSinkConfiguration < Struct.new(
      :sink_type,
      :rtmp_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data source configuration object of a streaming media pipeline.
    #
    # @!attribute [rw] source_type
    #   The source configuration's media source type.
    #   @return [String]
    #
    # @!attribute [rw] chime_sdk_meeting_live_connector_configuration
    #   The configuration settings of the connector pipeline.
    #   @return [Types::ChimeSdkMeetingLiveConnectorConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/LiveConnectorSourceConfiguration AWS API Documentation
    #
    class LiveConnectorSourceConfiguration < Struct.new(
      :source_type,
      :chime_sdk_meeting_live_connector_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A media pipeline object consisting of an ID, source type, source ARN,
    # a sink type, a sink ARN, and a configuration object.
    #
    # @!attribute [rw] media_pipeline_id
    #   The ID of a media pipeline.
    #   @return [String]
    #
    # @!attribute [rw] media_pipeline_arn
    #   The ARN of the media capture pipeline
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Source type from which media artifacts are saved. You must use
    #   `ChimeMeeting`.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   ARN of the source from which the media artifacts are saved.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the media pipeline.
    #   @return [String]
    #
    # @!attribute [rw] sink_type
    #   Destination type to which the media artifacts are saved. You must
    #   use an S3 Bucket.
    #   @return [String]
    #
    # @!attribute [rw] sink_arn
    #   ARN of the destination to which the media artifacts are saved.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the pipeline was created, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the pipeline was updated, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] chime_sdk_meeting_configuration
    #   The configuration for a specified media pipeline. `SourceType` must
    #   be `ChimeSdkMeeting`.
    #   @return [Types::ChimeSdkMeetingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaCapturePipeline AWS API Documentation
    #
    class MediaCapturePipeline < Struct.new(
      :media_pipeline_id,
      :media_pipeline_arn,
      :source_type,
      :source_arn,
      :status,
      :sink_type,
      :sink_arn,
      :created_timestamp,
      :updated_timestamp,
      :chime_sdk_meeting_configuration)
      SENSITIVE = [:source_arn, :sink_arn]
      include Aws::Structure
    end

    # The source configuration object of a media capture pipeline.
    #
    # @!attribute [rw] media_pipeline_arn
    #   The media pipeline ARN in the configuration object of a media
    #   capture pipeline.
    #   @return [String]
    #
    # @!attribute [rw] chime_sdk_meeting_configuration
    #   The meeting configuration settings in a media capture pipeline
    #   configuration object.
    #   @return [Types::ChimeSdkMeetingConcatenationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaCapturePipelineSourceConfiguration AWS API Documentation
    #
    class MediaCapturePipelineSourceConfiguration < Struct.new(
      :media_pipeline_arn,
      :chime_sdk_meeting_configuration)
      SENSITIVE = [:media_pipeline_arn]
      include Aws::Structure
    end

    # The summary data of a media capture pipeline.
    #
    # @!attribute [rw] media_pipeline_id
    #   The ID of the media pipeline in the summary.
    #   @return [String]
    #
    # @!attribute [rw] media_pipeline_arn
    #   The ARN of the media pipeline in the summary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaCapturePipelineSummary AWS API Documentation
    #
    class MediaCapturePipelineSummary < Struct.new(
      :media_pipeline_id,
      :media_pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Concatenates audio and video data from one or more data streams.
    #
    # @!attribute [rw] media_pipeline_id
    #   The ID of the media pipeline being concatenated.
    #   @return [String]
    #
    # @!attribute [rw] media_pipeline_arn
    #   The ARN of the media pipeline that you specify in the
    #   `SourceConfiguration` object.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The data sources being concatenated.
    #   @return [Array<Types::ConcatenationSource>]
    #
    # @!attribute [rw] sinks
    #   The data sinks of the concatenation pipeline.
    #   @return [Array<Types::ConcatenationSink>]
    #
    # @!attribute [rw] status
    #   The status of the concatenation pipeline.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the concatenation pipeline was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the concatenation pipeline was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaConcatenationPipeline AWS API Documentation
    #
    class MediaConcatenationPipeline < Struct.new(
      :media_pipeline_id,
      :media_pipeline_arn,
      :sources,
      :sinks,
      :status,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # A media pipeline that streams call analytics data.
    #
    # @!attribute [rw] media_pipeline_id
    #   The ID of a media insights pipeline.
    #   @return [String]
    #
    # @!attribute [rw] media_pipeline_arn
    #   The ARN of a media insights pipeline.
    #   @return [String]
    #
    # @!attribute [rw] media_insights_pipeline_configuration_arn
    #   The ARN of a media insight pipeline's configuration settings.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a media insights pipeline.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_video_stream_source_runtime_configuration
    #   The configuration settings for a Kinesis runtime video stream in a
    #   media insights pipeline.
    #   @return [Types::KinesisVideoStreamSourceRuntimeConfiguration]
    #
    # @!attribute [rw] media_insights_runtime_metadata
    #   The runtime metadata of a media insights pipeline.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kinesis_video_stream_recording_source_runtime_configuration
    #   The runtime configuration settings for a Kinesis recording video
    #   stream in a media insights pipeline.
    #   @return [Types::KinesisVideoStreamRecordingSourceRuntimeConfiguration]
    #
    # @!attribute [rw] s3_recording_sink_runtime_configuration
    #   The runtime configuration of the Amazon S3 bucket that stores
    #   recordings in a media insights pipeline.
    #   @return [Types::S3RecordingSinkRuntimeConfiguration]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the media insights pipeline was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaInsightsPipeline AWS API Documentation
    #
    class MediaInsightsPipeline < Struct.new(
      :media_pipeline_id,
      :media_pipeline_arn,
      :media_insights_pipeline_configuration_arn,
      :status,
      :kinesis_video_stream_source_runtime_configuration,
      :media_insights_runtime_metadata,
      :kinesis_video_stream_recording_source_runtime_configuration,
      :s3_recording_sink_runtime_configuration,
      :created_timestamp)
      SENSITIVE = [:media_pipeline_arn, :media_insights_pipeline_configuration_arn, :media_insights_runtime_metadata]
      include Aws::Structure
    end

    # A structure that contains the configuration settings for a media
    # insights pipeline.
    #
    # @!attribute [rw] media_insights_pipeline_configuration_name
    #   The name of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] media_insights_pipeline_configuration_arn
    #   The ARN of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_access_role_arn
    #   The ARN of the role used by the service to access Amazon Web
    #   Services resources.
    #   @return [String]
    #
    # @!attribute [rw] real_time_alert_configuration
    #   Lists the rules that trigger a real-time alert.
    #   @return [Types::RealTimeAlertConfiguration]
    #
    # @!attribute [rw] elements
    #   The elements in the configuration.
    #   @return [Array<Types::MediaInsightsPipelineConfigurationElement>]
    #
    # @!attribute [rw] media_insights_pipeline_configuration_id
    #   The ID of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the configuration was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaInsightsPipelineConfiguration AWS API Documentation
    #
    class MediaInsightsPipelineConfiguration < Struct.new(
      :media_insights_pipeline_configuration_name,
      :media_insights_pipeline_configuration_arn,
      :resource_access_role_arn,
      :real_time_alert_configuration,
      :elements,
      :media_insights_pipeline_configuration_id,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = [:media_insights_pipeline_configuration_arn, :resource_access_role_arn]
      include Aws::Structure
    end

    # An element in a media insights pipeline configuration.
    #
    # @!attribute [rw] type
    #   The element type.
    #   @return [String]
    #
    # @!attribute [rw] amazon_transcribe_call_analytics_processor_configuration
    #   The analytics configuration settings for transcribing audio in a
    #   media insights pipeline configuration element.
    #   @return [Types::AmazonTranscribeCallAnalyticsProcessorConfiguration]
    #
    # @!attribute [rw] amazon_transcribe_processor_configuration
    #   The transcription processor configuration settings in a media
    #   insights pipeline configuration element.
    #   @return [Types::AmazonTranscribeProcessorConfiguration]
    #
    # @!attribute [rw] kinesis_data_stream_sink_configuration
    #   The configuration settings for the Kinesis Data Stream Sink in a
    #   media insights pipeline configuration element.
    #   @return [Types::KinesisDataStreamSinkConfiguration]
    #
    # @!attribute [rw] s3_recording_sink_configuration
    #   The configuration settings for the Amazon S3 recording bucket in a
    #   media insights pipeline configuration element.
    #   @return [Types::S3RecordingSinkConfiguration]
    #
    # @!attribute [rw] voice_analytics_processor_configuration
    #   The voice analytics configuration settings in a media insights
    #   pipeline configuration element.
    #   @return [Types::VoiceAnalyticsProcessorConfiguration]
    #
    # @!attribute [rw] lambda_function_sink_configuration
    #   The configuration settings for the Amazon Web Services Lambda sink
    #   in a media insights pipeline configuration element.
    #   @return [Types::LambdaFunctionSinkConfiguration]
    #
    # @!attribute [rw] sqs_queue_sink_configuration
    #   The configuration settings for an SQS queue sink in a media insights
    #   pipeline configuration element.
    #   @return [Types::SqsQueueSinkConfiguration]
    #
    # @!attribute [rw] sns_topic_sink_configuration
    #   The configuration settings for an SNS topic sink in a media insights
    #   pipeline configuration element.
    #   @return [Types::SnsTopicSinkConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaInsightsPipelineConfigurationElement AWS API Documentation
    #
    class MediaInsightsPipelineConfigurationElement < Struct.new(
      :type,
      :amazon_transcribe_call_analytics_processor_configuration,
      :amazon_transcribe_processor_configuration,
      :kinesis_data_stream_sink_configuration,
      :s3_recording_sink_configuration,
      :voice_analytics_processor_configuration,
      :lambda_function_sink_configuration,
      :sqs_queue_sink_configuration,
      :sns_topic_sink_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the media insights pipeline configuration.
    #
    # @!attribute [rw] media_insights_pipeline_configuration_name
    #   The name of the media insights pipeline configuration.
    #   @return [String]
    #
    # @!attribute [rw] media_insights_pipeline_configuration_id
    #   The ID of the media insights pipeline configuration.
    #   @return [String]
    #
    # @!attribute [rw] media_insights_pipeline_configuration_arn
    #   The ARN of the media insights pipeline configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaInsightsPipelineConfigurationSummary AWS API Documentation
    #
    class MediaInsightsPipelineConfigurationSummary < Struct.new(
      :media_insights_pipeline_configuration_name,
      :media_insights_pipeline_configuration_id,
      :media_insights_pipeline_configuration_arn)
      SENSITIVE = [:media_insights_pipeline_configuration_arn]
      include Aws::Structure
    end

    # The connector pipeline.
    #
    # @!attribute [rw] sources
    #   The connector pipeline's data sources.
    #   @return [Array<Types::LiveConnectorSourceConfiguration>]
    #
    # @!attribute [rw] sinks
    #   The connector pipeline's data sinks.
    #   @return [Array<Types::LiveConnectorSinkConfiguration>]
    #
    # @!attribute [rw] media_pipeline_id
    #   The connector pipeline's ID.
    #   @return [String]
    #
    # @!attribute [rw] media_pipeline_arn
    #   The connector pipeline's ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The connector pipeline's status.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the connector pipeline was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the connector pipeline was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaLiveConnectorPipeline AWS API Documentation
    #
    class MediaLiveConnectorPipeline < Struct.new(
      :sources,
      :sinks,
      :media_pipeline_id,
      :media_pipeline_arn,
      :status,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pipeline consisting of a media capture, media concatenation, or
    # live-streaming pipeline.
    #
    # @!attribute [rw] media_capture_pipeline
    #   A pipeline that enables users to capture audio and video.
    #   @return [Types::MediaCapturePipeline]
    #
    # @!attribute [rw] media_live_connector_pipeline
    #   The connector pipeline of the media pipeline.
    #   @return [Types::MediaLiveConnectorPipeline]
    #
    # @!attribute [rw] media_concatenation_pipeline
    #   The media concatenation pipeline in a media pipeline.
    #   @return [Types::MediaConcatenationPipeline]
    #
    # @!attribute [rw] media_insights_pipeline
    #   The media insights pipeline of a media pipeline.
    #   @return [Types::MediaInsightsPipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaPipeline AWS API Documentation
    #
    class MediaPipeline < Struct.new(
      :media_capture_pipeline,
      :media_live_connector_pipeline,
      :media_concatenation_pipeline,
      :media_insights_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the media pipeline.
    #
    # @!attribute [rw] media_pipeline_id
    #   The ID of the media pipeline in the summary.
    #   @return [String]
    #
    # @!attribute [rw] media_pipeline_arn
    #   The ARN of the media pipeline in the summary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaPipelineSummary AWS API Documentation
    #
    class MediaPipelineSummary < Struct.new(
      :media_pipeline_id,
      :media_pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration object for an event concatenation pipeline.
    #
    # @!attribute [rw] state
    #   Enables or disables the configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MeetingEventsConcatenationConfiguration AWS API Documentation
    #
    class MeetingEventsConcatenationConfiguration < Struct.new(
      :state)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows you to specify additional settings for your Call Analytics
    # post-call request, including output locations for your redacted
    # transcript, which IAM role to use, and which encryption key to use.
    #
    # `DataAccessRoleArn` and `OutputLocation` are required fields.
    #
    # `PostCallAnalyticsSettings` provides the same insights as a Call
    # Analytics post-call transcription. For more information, refer to
    # [Post-call analytics with real-time transcriptions][1] in the *Amazon
    # Transcribe Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-post-call.html
    #
    # @!attribute [rw] output_location
    #   The URL of the Amazon S3 bucket that contains the post-call data.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The ARN of the role used by Amazon Web Services Transcribe to upload
    #   your post call analysis. For more information, see [Post-call
    #   analytics with real-time transcriptions][1] in the *Amazon
    #   Transcribe Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-post-call.html
    #   @return [String]
    #
    # @!attribute [rw] content_redaction_output
    #   The content redaction output settings for a post-call analysis task.
    #   @return [String]
    #
    # @!attribute [rw] output_encryption_kms_key_id
    #   The ID of the KMS (Key Management Service) key used to encrypt the
    #   output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/PostCallAnalyticsSettings AWS API Documentation
    #
    class PostCallAnalyticsSettings < Struct.new(
      :output_location,
      :data_access_role_arn,
      :content_redaction_output,
      :output_encryption_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the configuration for a presenter-only video tile.
    #
    # @!attribute [rw] presenter_position
    #   Defines the position of the presenter video tile. Default:
    #   `TopRight`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/PresenterOnlyConfiguration AWS API Documentation
    #
    class PresenterOnlyConfiguration < Struct.new(
      :presenter_position)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the configuration settings for real-time
    # alerts.
    #
    # @!attribute [rw] disabled
    #   Turns off real-time alerts.
    #   @return [Boolean]
    #
    # @!attribute [rw] rules
    #   The rules in the alert. Rules specify the words or phrases that you
    #   want to be notified about.
    #   @return [Array<Types::RealTimeAlertRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/RealTimeAlertConfiguration AWS API Documentation
    #
    class RealTimeAlertConfiguration < Struct.new(
      :disabled,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the words or phrases that trigger an alert.
    #
    # @!attribute [rw] type
    #   The type of alert rule.
    #   @return [String]
    #
    # @!attribute [rw] keyword_match_configuration
    #   Specifies the settings for matching the keywords in a real-time
    #   alert rule.
    #   @return [Types::KeywordMatchConfiguration]
    #
    # @!attribute [rw] sentiment_configuration
    #   Specifies the settings for predicting sentiment in a real-time alert
    #   rule.
    #   @return [Types::SentimentConfiguration]
    #
    # @!attribute [rw] issue_detection_configuration
    #   Specifies the issue detection settings for a real-time alert rule.
    #   @return [Types::IssueDetectionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/RealTimeAlertRule AWS API Documentation
    #
    class RealTimeAlertRule < Struct.new(
      :type,
      :keyword_match_configuration,
      :sentiment_configuration,
      :issue_detection_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that holds the settings for recording media.
    #
    # @!attribute [rw] stream_arn
    #   The ARN of the recording stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/RecordingStreamConfiguration AWS API Documentation
    #
    class RecordingStreamConfiguration < Struct.new(
      :stream_arn)
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
    #   The request ID associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration settings for the S3 bucket.
    #
    # @!attribute [rw] destination
    #   The destination URL of the S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/S3BucketSinkConfiguration AWS API Documentation
    #
    class S3BucketSinkConfiguration < Struct.new(
      :destination)
      SENSITIVE = [:destination]
      include Aws::Structure
    end

    # The structure that holds the settings for transmitting media to the
    # Amazon S3 bucket. These values are used as defaults if
    # `S3RecordingSinkRuntimeConfiguration` is not specified.
    #
    # @!attribute [rw] destination
    #   The default URI of the Amazon S3 bucket used as the recording sink.
    #   @return [String]
    #
    # @!attribute [rw] recording_file_format
    #   The default file format for the media files sent to the Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/S3RecordingSinkConfiguration AWS API Documentation
    #
    class S3RecordingSinkConfiguration < Struct.new(
      :destination,
      :recording_file_format)
      SENSITIVE = [:destination]
      include Aws::Structure
    end

    # A structure that holds the settings for transmitting media files to
    # the Amazon S3 bucket. If specified, the settings in this structure
    # override any settings in `S3RecordingSinkConfiguration`.
    #
    # @!attribute [rw] destination
    #   The URI of the S3 bucket used as the sink.
    #   @return [String]
    #
    # @!attribute [rw] recording_file_format
    #   The file format for the media files sent to the Amazon S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/S3RecordingSinkRuntimeConfiguration AWS API Documentation
    #
    class S3RecordingSinkRuntimeConfiguration < Struct.new(
      :destination,
      :recording_file_format)
      SENSITIVE = [:destination]
      include Aws::Structure
    end

    # The video streams for a specified media pipeline. The total number of
    # video streams can't exceed 25.
    #
    # @!attribute [rw] attendee_ids
    #   The attendee IDs of the streams selected for a media pipeline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] external_user_ids
    #   The external user IDs of the streams selected for a media pipeline.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/SelectedVideoStreams AWS API Documentation
    #
    class SelectedVideoStreams < Struct.new(
      :attendee_ids,
      :external_user_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the configuration settings for a sentiment
    # analysis task.
    #
    # @!attribute [rw] rule_name
    #   The name of the rule in the sentiment configuration.
    #   @return [String]
    #
    # @!attribute [rw] sentiment_type
    #   The type of sentiment, `POSITIVE`, `NEGATIVE`, or `NEUTRAL`.
    #   @return [String]
    #
    # @!attribute [rw] time_period
    #   Specifies the analysis interval.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/SentimentConfiguration AWS API Documentation
    #
    class SentimentConfiguration < Struct.new(
      :rule_name,
      :sentiment_type,
      :time_period)
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
    #   The request ID associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ServiceFailureException AWS API Documentation
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
    #   The request ID associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration settings for the SNS topic sink.
    #
    # @!attribute [rw] insights_target
    #   The ARN of the SNS sink.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/SnsTopicSinkConfiguration AWS API Documentation
    #
    class SnsTopicSinkConfiguration < Struct.new(
      :insights_target)
      SENSITIVE = [:insights_target]
      include Aws::Structure
    end

    # Source configuration for a specified media pipeline.
    #
    # @!attribute [rw] selected_video_streams
    #   The selected video streams for a specified media pipeline. The
    #   number of video streams can't exceed 25.
    #   @return [Types::SelectedVideoStreams]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/SourceConfiguration AWS API Documentation
    #
    class SourceConfiguration < Struct.new(
      :selected_video_streams)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration settings for the SQS sink.
    #
    # @!attribute [rw] insights_target
    #   The ARN of the SQS sink.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/SqsQueueSinkConfiguration AWS API Documentation
    #
    class SqsQueueSinkConfiguration < Struct.new(
      :insights_target)
      SENSITIVE = [:insights_target]
      include Aws::Structure
    end

    # Defines a streaming channel.
    #
    # @!attribute [rw] number_of_channels
    #   The number of channels in a streaming channel.
    #   @return [Integer]
    #
    # @!attribute [rw] channel_definitions
    #   The definitions of the channels in a streaming channel.
    #   @return [Array<Types::ChannelDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/StreamChannelDefinition AWS API Documentation
    #
    class StreamChannelDefinition < Struct.new(
      :number_of_channels,
      :channel_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration settings for a stream.
    #
    # @!attribute [rw] stream_arn
    #   The ARN of the stream.
    #   @return [String]
    #
    # @!attribute [rw] fragment_number
    #   The unique identifier of the fragment to begin processing.
    #   @return [String]
    #
    # @!attribute [rw] stream_channel_definition
    #   The streaming channel definition in the stream configuration.
    #   @return [Types::StreamChannelDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/StreamConfiguration AWS API Documentation
    #
    class StreamConfiguration < Struct.new(
      :stream_arn,
      :fragment_number,
      :stream_channel_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key/value pair that grants users access to meeting resources.
    #
    # @!attribute [rw] key
    #   The key half of a tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value half of a tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the media pipeline associated with any tags. The ARN
    #   consists of the pipeline's endpoint region, resource ID, and
    #   pipeline ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the specified media pipeline.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The client exceeded its request rate limit.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ThrottledClientException AWS API Documentation
    #
    class ThrottledClientException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The range of timestamps to return.
    #
    # @!attribute [rw] start_timestamp
    #   The starting timestamp for the specified range.
    #   @return [Time]
    #
    # @!attribute [rw] end_timestamp
    #   The ending timestamp for the specified range.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/TimestampRange AWS API Documentation
    #
    class TimestampRange < Struct.new(
      :start_timestamp,
      :end_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration object for concatenating transcription messages.
    #
    # @!attribute [rw] state
    #   Enables or disables the configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/TranscriptionMessagesConcatenationConfiguration AWS API Documentation
    #
    class TranscriptionMessagesConcatenationConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is not currently authorized to make the request.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/UnauthorizedClientException AWS API Documentation
    #
    class UnauthorizedClientException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the pipeline that you want to untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The key/value pairs in the tag that you want to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   The unique identifier for the resource to be updated. Valid values
    #   include the name and ARN of the media insights pipeline
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_access_role_arn
    #   The ARN of the role used by the service to access Amazon Web
    #   Services resources.
    #   @return [String]
    #
    # @!attribute [rw] real_time_alert_configuration
    #   The configuration settings for real-time alerts for the media
    #   insights pipeline.
    #   @return [Types::RealTimeAlertConfiguration]
    #
    # @!attribute [rw] elements
    #   The elements in the request, such as a processor for Amazon
    #   Transcribe or a sink for a Kinesis Data Stream..
    #   @return [Array<Types::MediaInsightsPipelineConfigurationElement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/UpdateMediaInsightsPipelineConfigurationRequest AWS API Documentation
    #
    class UpdateMediaInsightsPipelineConfigurationRequest < Struct.new(
      :identifier,
      :resource_access_role_arn,
      :real_time_alert_configuration,
      :elements)
      SENSITIVE = [:resource_access_role_arn]
      include Aws::Structure
    end

    # @!attribute [rw] media_insights_pipeline_configuration
    #   The updated configuration settings.
    #   @return [Types::MediaInsightsPipelineConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/UpdateMediaInsightsPipelineConfigurationResponse AWS API Documentation
    #
    class UpdateMediaInsightsPipelineConfigurationResponse < Struct.new(
      :media_insights_pipeline_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique identifier of the resource to be updated. Valid values
    #   include the ID and ARN of the media insights pipeline.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   The requested status of the media insights pipeline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/UpdateMediaInsightsPipelineStatusRequest AWS API Documentation
    #
    class UpdateMediaInsightsPipelineStatusRequest < Struct.new(
      :identifier,
      :update_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The video artifact configuration object.
    #
    # @!attribute [rw] state
    #   Indicates whether the video artifact is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] mux_type
    #   The MUX type of the video artifact configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/VideoArtifactsConfiguration AWS API Documentation
    #
    class VideoArtifactsConfiguration < Struct.new(
      :state,
      :mux_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration object of a video concatenation pipeline.
    #
    # @!attribute [rw] state
    #   Enables or disables the configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/VideoConcatenationConfiguration AWS API Documentation
    #
    class VideoConcatenationConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration settings for a voice analytics processor.
    #
    # @!attribute [rw] speaker_search_status
    #   The status of the speaker search task.
    #   @return [String]
    #
    # @!attribute [rw] voice_tone_analysis_status
    #   The status of the voice tone analysis task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/VoiceAnalyticsProcessorConfiguration AWS API Documentation
    #
    class VoiceAnalyticsProcessorConfiguration < Struct.new(
      :speaker_search_status,
      :voice_tone_analysis_status)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
