# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKMediaPipelines
  # This module contains the types returned by client operations.
  module Types

    # <p>Defines the configuration for an <code>ActiveSpeakerOnly</code> video tile.</p>
    # @!attribute active_speaker_position
    #   <p>The position of the <code>ActiveSpeakerOnly</code> video tile.</p>
    #   @return [String]
    class ActiveSpeakerOnlyConfiguration < Struct.new(
      nil,
      :active_speaker_position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the configuration settings for an Amazon Transcribe call
    #          analytics processor.</p>
    # @!attribute language_code
    #   <p>The language code in the configuration.</p>
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>Specifies the name of the custom vocabulary to use when processing a transcription. Note
    #            that vocabulary names are case sensitive.</p>
    #            <p>If the language of the specified custom vocabulary doesn't match the language identified in your media, the custom vocabulary is not applied to your transcription.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html">Custom vocabularies</a> in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #            <p>Length Constraints: Minimum length of 1. Maximum length of 200. </p>
    #   @return [String]
    # @!attribute vocabulary_filter_name
    #   <p>Specifies the name of the custom vocabulary filter to use when processing a
    #            transcription. Note that vocabulary filter names are case sensitive.</p>
    #            <p>If the language of the specified custom vocabulary filter doesn't match the language identified in your media, the vocabulary filter is not applied to your transcription.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html">Using vocabulary filtering with unwanted words</a> 
    #            in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #            <p>Length Constraints: Minimum length of 1. Maximum length of 200. </p>
    #   @return [String]
    # @!attribute vocabulary_filter_method
    #   <p>Specifies how to apply a vocabulary filter to a transcript.</p>
    #            <p>To replace words with <b>***</b>, choose <code>mask</code>.</p>
    #            <p>To delete words, choose <code>remove</code>.</p>
    #            <p>To flag words without changing them, choose <code>tag</code>. </p>
    #   @return [String]
    # @!attribute language_model_name
    #   <p>Specifies the name of the custom language model to use when processing a transcription.
    #            Note that language model names are case sensitive.</p>
    #            <p>The language of the specified language model must match the language code specified
    #            in the transcription request. If the languages don't match, the custom language model isn't
    #            applied. Language mismatches don't generate errors or warnings.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html">Custom language models</a> in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute enable_partial_results_stabilization
    #   <p>Enables partial result stabilization for your transcription. Partial result stabilization can reduce latency in your output, but may impact accuracy. 
    #            For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result stabilization</a> 
    #            in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute partial_results_stability
    #   <p>Specifies the level of stability to use when you enable partial results stabilization
    #               (<code>EnablePartialResultsStabilization</code>).</p>
    #            <p>Low stability provides the highest accuracy. High stability transcribes faster, but with slightly lower accuracy.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result stabilization</a> 
    #            in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute content_identification_type
    #   <p>Labels all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content identification is performed at the segment level; PII specified in <code>PiiEntityTypes</code> is flagged upon complete transcription of an audio segment.</p>
    #            <p>You can’t set <code>ContentIdentificationType</code> and <code>ContentRedactionType</code> in the same request. If you do, your request returns a <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable information</a> 
    #            in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute content_redaction_type
    #   <p>Redacts all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content redaction is performed at the segment level; PII specified in <code>PiiEntityTypes</code> is redacted upon complete transcription of an audio segment.</p>
    #            <p>You can’t set <code>ContentRedactionType</code> and <code>ContentIdentificationType</code> in the same request. If you do, your request returns a <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable information</a> 
    #            in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute pii_entity_types
    #   <p>Specifies the types of personally identifiable information (PII) to redact from a transcript. You can include as many types as you'd like, or you can select <code>ALL</code>.</p>
    #            <p>To include <code>PiiEntityTypes</code> in your Call Analytics request, you must also include <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>, but you can't include both. </p>
    #            <p>Values must be comma-separated and can include: <code>ADDRESS</code>, <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING</code>, <code>CREDIT_DEBIT_CVV</code>, 
    #                  <code>CREDIT_DEBIT_EXPIRY</code>, <code>CREDIT_DEBIT_NUMBER</code>, <code>EMAIL</code>, 
    #                  <code>NAME</code>, <code>PHONE</code>, <code>PIN</code>, <code>SSN</code>, or <code>ALL</code>.</p>
    #            <p>Length Constraints: Minimum length of 1. Maximum length of 300.</p>
    #   @return [String]
    # @!attribute filter_partial_results
    #   <p>If true, <code>UtteranceEvents</code> with <code>IsPartial: true</code> are filtered out of the insights target.</p>
    #   @return [Boolean]
    # @!attribute post_call_analytics_settings
    #   <p>The settings for a post-call analysis task in an analytics configuration.</p>
    #   @return [Types::PostCallAnalyticsSettings]
    # @!attribute call_analytics_stream_categories
    #   <p>By default, all <code>CategoryEvents</code> are sent to the insights target. If this parameter is specified, only included categories are sent to the insights target. </p>
    #   @return [Array<String>]
    class AmazonTranscribeCallAnalyticsProcessorConfiguration < Struct.new(
      nil,
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
      :call_analytics_stream_categories,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enable_partial_results_stabilization] = false unless options.key?(:enable_partial_results_stabilization)
        options[:filter_partial_results] = false unless options.key?(:filter_partial_results)
        super
      end
    end

    # <p>A structure that contains the configuration settings for an Amazon Transcribe processor.</p>
    #          <note>
    #             <p>Calls to this API must include a <code>LanguageCode</code>, <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> parameter. 
    #          If you include more than one of those parameters, your transcription job fails.</p>
    #          </note>
    # @!attribute language_code
    #   <p>The language code that represents the language spoken in your audio.</p>
    #            <p>If you're unsure of the language spoken in your audio, consider using
    #               <code>IdentifyLanguage</code> to enable automatic language identification.</p>
    #            <p>For a list of languages that real-time Call Analytics supports, see the <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported languages table</a> 
    #            in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>The name of the custom vocabulary that you specified in your Call Analytics
    #            request.</p>
    #            <p>Length Constraints: Minimum length of 1. Maximum length of 200.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_name
    #   <p>The name of the custom vocabulary filter that you specified in your Call Analytics
    #            request.</p>
    #            <p>Length Constraints: Minimum length of 1. Maximum length of 200.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_method
    #   <p>The vocabulary filtering method used in your Call Analytics transcription.</p>
    #   @return [String]
    # @!attribute show_speaker_label
    #   <p>Enables speaker partitioning (diarization) in your transcription output. Speaker partitioning labels the speech from individual speakers in your media file.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html">Partitioning speakers (diarization)</a> in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute enable_partial_results_stabilization
    #   <p>Enables partial result stabilization for your transcription. Partial result stabilization can reduce latency in your output, but may impact accuracy.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result stabilization</a> 
    #            in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute partial_results_stability
    #   <p>The level of stability to use when you enable partial results stabilization
    #               (<code>EnablePartialResultsStabilization</code>).</p>
    #            <p>Low stability provides the highest accuracy. High stability transcribes faster, but with slightly lower accuracy.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result stabilization</a> 
    #            in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute content_identification_type
    #   <p>Labels all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content identification is performed at the segment level; PII specified in
    #               <code>PiiEntityTypes</code> is flagged upon complete transcription of an audio
    #            segment.</p>
    #            <p>You can’t set <code>ContentIdentificationType</code> and
    #               <code>ContentRedactionType</code> in the same request. If you set both, your request
    #            returns a <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable information</a> 
    #            in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute content_redaction_type
    #   <p>Redacts all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content redaction is performed at the segment level; PII specified in PiiEntityTypes is redacted upon complete transcription of an audio segment.</p>
    #            <p>You can’t set ContentRedactionType and ContentIdentificationType in the same request. If you set both, your request returns a <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable information</a> 
    #            in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute pii_entity_types
    #   <p>The types of personally identifiable information (PII) to redact from a transcript. You
    #            can include as many types as you'd like, or you can select <code>ALL</code>.</p>
    #            <p>To include <code>PiiEntityTypes</code> in your Call Analytics request, you must also include <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>, but you can't include both.</p>
    #            <p>Values must be comma-separated and can include: <code>ADDRESS</code>, <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING</code>, <code>CREDIT_DEBIT_CVV</code>, 
    #            <code>CREDIT_DEBIT_EXPIRY</code>, <code>CREDIT_DEBIT_NUMBER</code>, <code>EMAIL</code>, 
    #            <code>NAME</code>, <code>PHONE</code>, <code>PIN</code>, <code>SSN</code>, or <code>ALL</code>.</p>
    #            <p>If you leave this parameter empty, the default behavior is equivalent to <code>ALL</code>.</p>
    #   @return [String]
    # @!attribute language_model_name
    #   <p>The name of the custom language model that you want to use when processing your
    #            transcription. Note that language model names are case sensitive.</p>
    #            <p>The language of the specified language model must match the language code you specify in your transcription request. If the languages don't match, the custom language model isn't applied. 
    #               There are no errors or warnings associated with a language mismatch.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html">Custom language models</a> in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute filter_partial_results
    #   <p>If true, <code>TranscriptEvents</code> with <code>IsPartial: true</code> are filtered out of the insights target.</p>
    #   @return [Boolean]
    # @!attribute identify_language
    #   <p>Turns language identification on or off.</p>
    #   @return [Boolean]
    # @!attribute identify_multiple_languages
    #   <p>Turns language identification on or off for multiple languages.</p>
    #            <note>
    #               <p>Calls to this API must include a <code>LanguageCode</code>, <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> parameter. 
    #            If you include more than one of those parameters, your transcription job fails.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute language_options
    #   <p>The language options for the transcription, such as automatic language detection.</p>
    #   @return [String]
    # @!attribute preferred_language
    #   <p>The preferred language for the transcription.</p>
    #   @return [String]
    # @!attribute vocabulary_names
    #   <p>The names of the custom vocabulary or vocabularies used during transcription.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_names
    #   <p>The names of the custom vocabulary filter or filters using during transcription.</p>
    #   @return [String]
    class AmazonTranscribeProcessorConfiguration < Struct.new(
      nil,
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
      :filter_partial_results,
      :identify_language,
      :identify_multiple_languages,
      :language_options,
      :preferred_language,
      :vocabulary_names,
      :vocabulary_filter_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:show_speaker_label] = false unless options.key?(:show_speaker_label)
        options[:enable_partial_results_stabilization] = false unless options.key?(:enable_partial_results_stabilization)
        options[:filter_partial_results] = false unless options.key?(:filter_partial_results)
        options[:identify_language] = false unless options.key?(:identify_language)
        options[:identify_multiple_languages] = false unless options.key?(:identify_multiple_languages)
        super
      end
    end

    # <p>The configuration for the artifacts concatenation.</p>
    # @!attribute audio
    #   <p>The configuration for the audio artifacts concatenation.</p>
    #   @return [Types::AudioConcatenationConfiguration]
    # @!attribute video
    #   <p>The configuration for the video artifacts concatenation.</p>
    #   @return [Types::VideoConcatenationConfiguration]
    # @!attribute content
    #   <p>The configuration for the content artifacts concatenation.</p>
    #   @return [Types::ContentConcatenationConfiguration]
    # @!attribute data_channel
    #   <p>The configuration for the data channel artifacts concatenation.</p>
    #   @return [Types::DataChannelConcatenationConfiguration]
    # @!attribute transcription_messages
    #   <p>The configuration for the transcription messages artifacts concatenation.</p>
    #   @return [Types::TranscriptionMessagesConcatenationConfiguration]
    # @!attribute meeting_events
    #   <p>The configuration for the meeting events artifacts concatenation.</p>
    #   @return [Types::MeetingEventsConcatenationConfiguration]
    # @!attribute composited_video
    #   <p>The configuration for the composited video artifacts concatenation.</p>
    #   @return [Types::CompositedVideoConcatenationConfiguration]
    class ArtifactsConcatenationConfiguration < Struct.new(
      nil,
      :audio,
      :video,
      :content,
      :data_channel,
      :transcription_messages,
      :meeting_events,
      :composited_video,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the artifacts.</p>
    # @!attribute audio
    #   <p>The configuration for the audio artifacts.</p>
    #   @return [Types::AudioArtifactsConfiguration]
    # @!attribute video
    #   <p>The configuration for the video artifacts.</p>
    #   @return [Types::VideoArtifactsConfiguration]
    # @!attribute content
    #   <p>The configuration for the content artifacts.</p>
    #   @return [Types::ContentArtifactsConfiguration]
    # @!attribute composited_video
    #   <p>Enables video compositing.</p>
    #   @return [Types::CompositedVideoArtifactsConfiguration]
    class ArtifactsConfiguration < Struct.new(
      nil,
      :audio,
      :video,
      :content,
      :composited_video,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The audio artifact configuration object.</p>
    # @!attribute mux_type
    #   <p>The MUX type of the audio artifact configuration object.</p>
    #   @return [String]
    class AudioArtifactsConfiguration < Struct.new(
      nil,
      :mux_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The audio artifact concatenation configuration object.</p>
    # @!attribute state
    #   <p>Enables or disables the configuration object.</p>
    #   @return [String]
    class AudioConcatenationConfiguration < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input parameters don't match the service's restrictions.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request ID associated with the call responsible for the exception.</p>
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an audio channel in a Kinesis video stream.</p>
    # @!attribute channel_id
    #   <p>The channel ID.</p>
    #   @return [Integer]
    # @!attribute participant_role
    #   <p>Specifies whether the audio in a channel belongs to the <code>AGENT</code> or <code>CUSTOMER</code>.</p>
    #   @return [String]
    class ChannelDefinition < Struct.new(
      nil,
      :channel_id,
      :participant_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:channel_id] = 0 unless options.key?(:channel_id)
        super
      end
    end

    # <p>The configuration object of the Amazon Chime SDK meeting concatenation for a specified
    #          media pipeline.</p>
    # @!attribute artifacts_configuration
    #   <p>The configuration for the artifacts in an Amazon Chime SDK meeting concatenation.</p>
    #   @return [Types::ArtifactsConcatenationConfiguration]
    class ChimeSdkMeetingConcatenationConfiguration < Struct.new(
      nil,
      :artifacts_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration object of the Amazon Chime SDK meeting for a specified media pipeline. <code>SourceType</code> must be <code>ChimeSdkMeeting</code>.</p>
    # @!attribute source_configuration
    #   <p>The source configuration for a specified media pipeline.</p>
    #   @return [Types::SourceConfiguration]
    # @!attribute artifacts_configuration
    #   <p>The configuration for the artifacts in an Amazon Chime SDK meeting.</p>
    #   @return [Types::ArtifactsConfiguration]
    class ChimeSdkMeetingConfiguration < Struct.new(
      nil,
      :source_configuration,
      :artifacts_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The media pipeline's configuration object.</p>
    # @!attribute arn
    #   <p>The configuration object's Chime SDK meeting ARN.</p>
    #   @return [String]
    # @!attribute mux_type
    #   <p>The configuration object's multiplex type.</p>
    #   @return [String]
    # @!attribute composited_video
    #   <p>The media pipeline's composited video.</p>
    #   @return [Types::CompositedVideoArtifactsConfiguration]
    # @!attribute source_configuration
    #   <p>The source configuration settings of the media pipeline's configuration object.</p>
    #   @return [Types::SourceConfiguration]
    class ChimeSdkMeetingLiveConnectorConfiguration < Struct.new(
      nil,
      :arn,
      :mux_type,
      :composited_video,
      :source_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for compositing video artifacts.</p>
    # @!attribute layout
    #   <p>The layout setting, such as <code>GridView</code> in the configuration object.</p>
    #   @return [String]
    # @!attribute resolution
    #   <p>The video resolution setting in the configuration object. Default: HD at 1280 x 720. FHD resolution: 1920 x 1080.</p>
    #   @return [String]
    # @!attribute grid_view_configuration
    #   <p>The <code>GridView</code> configuration setting.</p>
    #   @return [Types::GridViewConfiguration]
    class CompositedVideoArtifactsConfiguration < Struct.new(
      nil,
      :layout,
      :resolution,
      :grid_view_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The composited video configuration object for a specified
    #          media pipeline. <code>SourceType</code> must be
    #          <code>ChimeSdkMeeting</code>.</p>
    # @!attribute state
    #   <p>Enables or disables the configuration object.</p>
    #   @return [String]
    class CompositedVideoConcatenationConfiguration < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data sink of the configuration object.</p>
    # @!attribute type
    #   <p>The type of data sink in the configuration object.</p>
    #   @return [String]
    # @!attribute s3_bucket_sink_configuration
    #   <p>The configuration settings for an Amazon S3 bucket sink.</p>
    #   @return [Types::S3BucketSinkConfiguration]
    class ConcatenationSink < Struct.new(
      nil,
      :type,
      :s3_bucket_sink_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source type and media pipeline configuration settings in a configuration object.</p>
    # @!attribute type
    #   <p>The type of concatenation source in a configuration object.</p>
    #   @return [String]
    # @!attribute media_capture_pipeline_source_configuration
    #   <p>The concatenation settings for the media pipeline in a configuration object.</p>
    #   @return [Types::MediaCapturePipelineSourceConfiguration]
    class ConcatenationSource < Struct.new(
      nil,
      :type,
      :media_capture_pipeline_source_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be processed because of conflict in the current state of the
    #          resource.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request ID associated with the call responsible for the exception.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content artifact object.</p>
    # @!attribute state
    #   <p>Indicates whether the content artifact is enabled or disabled.</p>
    #   @return [String]
    # @!attribute mux_type
    #   <p>The MUX type of the artifact configuration.</p>
    #   @return [String]
    class ContentArtifactsConfiguration < Struct.new(
      nil,
      :state,
      :mux_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The composited content configuration object for a specified
    #          media pipeline. </p>
    # @!attribute state
    #   <p>Enables or disables the configuration object.</p>
    #   @return [String]
    class ContentConcatenationConfiguration < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_type
    #   <p>Source type from which the media artifacts are captured. A Chime SDK Meeting is the only
    #            supported source.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>ARN of the source from which the media artifacts are captured.</p>
    #   @return [String]
    # @!attribute sink_type
    #   <p>Destination type to which the media artifacts are saved. You must use an S3 bucket.</p>
    #   @return [String]
    # @!attribute sink_arn
    #   <p>The ARN of the sink type.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>The unique identifier for the client request. The token makes the API request idempotent. Use a unique token for each media pipeline request.</p>
    #   @return [String]
    # @!attribute chime_sdk_meeting_configuration
    #   <p>The configuration for a specified media pipeline. <code>SourceType</code> must
    #            be <code>ChimeSdkMeeting</code>.</p>
    #   @return [Types::ChimeSdkMeetingConfiguration]
    # @!attribute sse_aws_key_management_params
    #   <p>An object that contains server side encryption parameters to be used by media capture
    #            pipeline. The parameters can also be used by media concatenation pipeline taking media
    #            capture pipeline as a media source.</p>
    #   @return [Types::SseAwsKeyManagementParams]
    # @!attribute sink_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the sink role to be used with <code>AwsKmsKeyId</code>
    #            in <code>SseAwsKeyManagementParams</code>. Can only interact with <code>S3Bucket</code>
    #            sink type. The role must belong to the caller’s account and be able to act on behalf of the
    #            caller during the API call. All minimum policy permissions requirements for the caller to
    #            perform sink-related actions are the same for <code>SinkIamRoleArn</code>.</p>
    #            <p>Additionally, the role must have permission to <code>kms:GenerateDataKey</code> using
    #            KMS key supplied as <code>AwsKmsKeyId</code> in <code>SseAwsKeyManagementParams</code>. If
    #            media concatenation will be required later, the role must also have permission to
    #            <code>kms:Decrypt</code> for the same KMS key.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class CreateMediaCapturePipelineRequest < Struct.new(
      nil,
      :source_type,
      :source_arn,
      :sink_type,
      :sink_arn,
      :client_request_token,
      :chime_sdk_meeting_configuration,
      :sse_aws_key_management_params,
      :sink_iam_role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_capture_pipeline
    #   <p>A media pipeline object, the ID, source type, source ARN, sink type, and sink
    #            ARN of a media pipeline object.</p>
    #   @return [Types::MediaCapturePipeline]
    class CreateMediaCapturePipelineResponse < Struct.new(
      nil,
      :media_capture_pipeline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sources
    #   <p>An object that specifies the sources for the media concatenation pipeline.</p>
    #   @return [Array<Types::ConcatenationSource>]
    # @!attribute sinks
    #   <p>An object that specifies the data sinks for the media concatenation pipeline.</p>
    #   @return [Array<Types::ConcatenationSink>]
    # @!attribute client_request_token
    #   <p>The unique identifier for the client request. The token makes the API request
    #            idempotent. Use a unique token for each media concatenation pipeline request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the media concatenation pipeline.</p>
    #   @return [Array<Types::Tag>]
    class CreateMediaConcatenationPipelineRequest < Struct.new(
      nil,
      :sources,
      :sinks,
      :client_request_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_concatenation_pipeline
    #   <p>A media concatenation pipeline object, the ID, source type, <code>MediaPipelineARN</code>, and sink of a
    #            media concatenation pipeline object.</p>
    #   @return [Types::MediaConcatenationPipeline]
    class CreateMediaConcatenationPipelineResponse < Struct.new(
      nil,
      :media_concatenation_pipeline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_insights_pipeline_configuration_name
    #   <p>The name of the media insights pipeline configuration.</p>
    #   @return [String]
    # @!attribute resource_access_role_arn
    #   <p>The ARN of the role used by the service to access Amazon Web Services resources,
    #            including <code>Transcribe</code> and <code>Transcribe Call Analytics</code>, on the 
    #            caller’s behalf.</p>
    #   @return [String]
    # @!attribute real_time_alert_configuration
    #   <p>The configuration settings for the real-time alerts in a media insights pipeline configuration.</p>
    #   @return [Types::RealTimeAlertConfiguration]
    # @!attribute elements
    #   <p>The elements in the request, such as a processor for Amazon Transcribe or a sink for a Kinesis Data Stream.</p>
    #   @return [Array<Types::MediaInsightsPipelineConfigurationElement>]
    # @!attribute tags
    #   <p>The tags assigned to the media insights pipeline configuration.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>The unique identifier for the media insights pipeline configuration request.</p>
    #   @return [String]
    class CreateMediaInsightsPipelineConfigurationRequest < Struct.new(
      nil,
      :media_insights_pipeline_configuration_name,
      :resource_access_role_arn,
      :real_time_alert_configuration,
      :elements,
      :tags,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_insights_pipeline_configuration
    #   <p>The configuration settings for the media insights pipeline.</p>
    #   @return [Types::MediaInsightsPipelineConfiguration]
    class CreateMediaInsightsPipelineConfigurationResponse < Struct.new(
      nil,
      :media_insights_pipeline_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_insights_pipeline_configuration_arn
    #   <p>The ARN of the pipeline's configuration.</p>
    #   @return [String]
    # @!attribute kinesis_video_stream_source_runtime_configuration
    #   <p>The runtime configuration for the Kinesis video stream source of the media insights
    #            pipeline.</p>
    #   @return [Types::KinesisVideoStreamSourceRuntimeConfiguration]
    # @!attribute media_insights_runtime_metadata
    #   <p>The runtime metadata for the media insights pipeline. Consists of a key-value map of strings.</p>
    #   @return [Hash<String, String>]
    # @!attribute kinesis_video_stream_recording_source_runtime_configuration
    #   <p>The runtime configuration for the Kinesis video recording stream source.</p>
    #   @return [Types::KinesisVideoStreamRecordingSourceRuntimeConfiguration]
    # @!attribute s3_recording_sink_runtime_configuration
    #   <p>The runtime configuration for the S3 recording sink. If specified, the settings in this structure override any settings in <code>S3RecordingSinkConfiguration</code>.</p>
    #   @return [Types::S3RecordingSinkRuntimeConfiguration]
    # @!attribute tags
    #   <p>The tags assigned to the media insights pipeline.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>The unique identifier for the media insights pipeline request.</p>
    #   @return [String]
    class CreateMediaInsightsPipelineRequest < Struct.new(
      nil,
      :media_insights_pipeline_configuration_arn,
      :kinesis_video_stream_source_runtime_configuration,
      :media_insights_runtime_metadata,
      :kinesis_video_stream_recording_source_runtime_configuration,
      :s3_recording_sink_runtime_configuration,
      :tags,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_insights_pipeline
    #   <p>The media insights pipeline object.</p>
    #   @return [Types::MediaInsightsPipeline]
    class CreateMediaInsightsPipelineResponse < Struct.new(
      nil,
      :media_insights_pipeline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sources
    #   <p>The media live connector pipeline's data sources.</p>
    #   @return [Array<Types::LiveConnectorSourceConfiguration>]
    # @!attribute sinks
    #   <p>The media live connector pipeline's data sinks.</p>
    #   @return [Array<Types::LiveConnectorSinkConfiguration>]
    # @!attribute client_request_token
    #   <p>The token assigned to the client making the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the media live connector pipeline.</p>
    #   @return [Array<Types::Tag>]
    class CreateMediaLiveConnectorPipelineRequest < Struct.new(
      nil,
      :sources,
      :sinks,
      :client_request_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_live_connector_pipeline
    #   <p>The new media live connector pipeline.</p>
    #   @return [Types::MediaLiveConnectorPipeline]
    class CreateMediaLiveConnectorPipelineResponse < Struct.new(
      nil,
      :media_live_connector_pipeline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_configuration
    #   <p>The configuration settings for the stream.</p>
    #   @return [Types::KinesisVideoStreamConfiguration]
    # @!attribute pool_name
    #   <p>The name of the pool.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>The token assigned to the client making the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the stream pool.</p>
    #   @return [Array<Types::Tag>]
    class CreateMediaPipelineKinesisVideoStreamPoolRequest < Struct.new(
      nil,
      :stream_configuration,
      :pool_name,
      :client_request_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute kinesis_video_stream_pool_configuration
    #   <p>The configuration for applying the streams to the pool.</p>
    #            <note>
    #               <p></p>
    #            </note>
    #   @return [Types::KinesisVideoStreamPoolConfiguration]
    class CreateMediaPipelineKinesisVideoStreamPoolResponse < Struct.new(
      nil,
      :kinesis_video_stream_pool_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sources
    #   <p>The data sources for the media pipeline.</p>
    #   @return [Array<Types::MediaStreamSource>]
    # @!attribute sinks
    #   <p>The data sink for the media pipeline.</p>
    #   @return [Array<Types::MediaStreamSink>]
    # @!attribute client_request_token
    #   <p>The token assigned to the client making the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the media pipeline.</p>
    #   @return [Array<Types::Tag>]
    class CreateMediaStreamPipelineRequest < Struct.new(
      nil,
      :sources,
      :sinks,
      :client_request_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_stream_pipeline
    #   <p>The requested media pipeline.</p>
    #   @return [Types::MediaStreamPipeline]
    class CreateMediaStreamPipelineResponse < Struct.new(
      nil,
      :media_stream_pipeline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content configuration object's data channel.</p>
    # @!attribute state
    #   <p>Enables or disables the configuration object.</p>
    #   @return [String]
    class DataChannelConcatenationConfiguration < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_pipeline_id
    #   <p>The ID of the media pipeline being deleted. </p>
    #   @return [String]
    class DeleteMediaCapturePipelineRequest < Struct.new(
      nil,
      :media_pipeline_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier of the resource to be deleted. Valid values include the name and ARN of the media insights pipeline configuration.</p>
    #   @return [String]
    class DeleteMediaInsightsPipelineConfigurationRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier of the requested resource. Valid values include the name and ARN of the media pipeline Kinesis Video Stream pool.</p>
    #   @return [String]
    class DeleteMediaPipelineKinesisVideoStreamPoolRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_pipeline_id
    #   <p>The ID of the media pipeline to delete.</p>
    #   @return [String]
    class DeleteMediaPipelineRequest < Struct.new(
      nil,
      :media_pipeline_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client is permanently forbidden from making the request.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #   @return [String]
    class ForbiddenException < Struct.new(
      nil,
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the timestamp range and timestamp origin of a range of fragments.</p>
    #          <p>Only fragments with a start timestamp greater than or equal to the given start time and less than or equal to the end time are returned. 
    #          For example, say a stream contains fragments with the following start timestamps:</p>
    #          <ul>
    #             <li>
    #                <p>00:00:00</p>
    #             </li>
    #             <li>
    #                <p>00:00:02</p>
    #             </li>
    #             <li>
    #                <p>00:00:04</p>
    #             </li>
    #             <li>
    #                <p>00:00:06</p>
    #             </li>
    #          </ul>
    #          <p>A fragment selector range with a start time of 00:00:01 and end time of 00:00:04 would return the fragments with start times of 00:00:02 and 00:00:04.</p>
    # @!attribute fragment_selector_type
    #   <p>The origin of the timestamps to use, <code>Server</code> or <code>Producer</code>. For more information, see 
    #            <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_dataplane_StartSelector.html">StartSelectorType</a> in the <i>Amazon Kinesis Video Streams Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute timestamp_range
    #   <p>The range of timestamps to return.</p>
    #   @return [Types::TimestampRange]
    class FragmentSelector < Struct.new(
      nil,
      :fragment_selector_type,
      :timestamp_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_pipeline_id
    #   <p>The ID of the pipeline that you want to get.</p>
    #   @return [String]
    class GetMediaCapturePipelineRequest < Struct.new(
      nil,
      :media_pipeline_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_capture_pipeline
    #   <p>The media pipeline object.</p>
    #   @return [Types::MediaCapturePipeline]
    class GetMediaCapturePipelineResponse < Struct.new(
      nil,
      :media_capture_pipeline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier of the requested resource.  Valid values include the name and ARN of the media insights pipeline configuration.</p>
    #   @return [String]
    class GetMediaInsightsPipelineConfigurationRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_insights_pipeline_configuration
    #   <p>The requested media insights pipeline configuration.</p>
    #   @return [Types::MediaInsightsPipelineConfiguration]
    class GetMediaInsightsPipelineConfigurationResponse < Struct.new(
      nil,
      :media_insights_pipeline_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier of the requested resource. Valid values include the name and ARN of the media pipeline Kinesis Video Stream pool.</p>
    #   @return [String]
    class GetMediaPipelineKinesisVideoStreamPoolRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute kinesis_video_stream_pool_configuration
    #   <p>The video stream pool configuration object.</p>
    #   @return [Types::KinesisVideoStreamPoolConfiguration]
    class GetMediaPipelineKinesisVideoStreamPoolResponse < Struct.new(
      nil,
      :kinesis_video_stream_pool_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_pipeline_id
    #   <p>The ID of the pipeline that you want to get.</p>
    #   @return [String]
    class GetMediaPipelineRequest < Struct.new(
      nil,
      :media_pipeline_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_pipeline
    #   <p>The media pipeline object.</p>
    #   @return [Types::MediaPipeline]
    class GetMediaPipelineResponse < Struct.new(
      nil,
      :media_pipeline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>
    #   @return [String]
    # @!attribute speaker_search_task_id
    #   <p>The ID of the speaker search task.</p>
    #   @return [String]
    class GetSpeakerSearchTaskRequest < Struct.new(
      nil,
      :identifier,
      :speaker_search_task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute speaker_search_task
    #   <p>The details of the speaker search task.</p>
    #   @return [Types::SpeakerSearchTask]
    class GetSpeakerSearchTaskResponse < Struct.new(
      nil,
      :speaker_search_task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>
    #   @return [String]
    # @!attribute voice_tone_analysis_task_id
    #   <p>The ID of the voice tone analysis task.</p>
    #   @return [String]
    class GetVoiceToneAnalysisTaskRequest < Struct.new(
      nil,
      :identifier,
      :voice_tone_analysis_task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_tone_analysis_task
    #   <p>The details of the voice tone analysis task.</p>
    #   @return [Types::VoiceToneAnalysisTask]
    class GetVoiceToneAnalysisTaskResponse < Struct.new(
      nil,
      :voice_tone_analysis_task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the type of grid layout.</p>
    # @!attribute content_share_layout
    #   <p>Defines the layout of the video tiles when content sharing is enabled.</p>
    #   @return [String]
    # @!attribute presenter_only_configuration
    #   <p>Defines the configuration options for a presenter only video tile.</p>
    #   @return [Types::PresenterOnlyConfiguration]
    # @!attribute active_speaker_only_configuration
    #   <p>The configuration settings for an <code>ActiveSpeakerOnly</code> video tile.</p>
    #   @return [Types::ActiveSpeakerOnlyConfiguration]
    # @!attribute horizontal_layout_configuration
    #   <p>The configuration settings for a horizontal layout.</p>
    #   @return [Types::HorizontalLayoutConfiguration]
    # @!attribute vertical_layout_configuration
    #   <p>The configuration settings for a vertical layout.</p>
    #   @return [Types::VerticalLayoutConfiguration]
    # @!attribute video_attribute
    #   <p>The attribute settings for the video tiles.</p>
    #   @return [Types::VideoAttribute]
    # @!attribute canvas_orientation
    #   <p>The orientation setting, horizontal or vertical.</p>
    #   @return [String]
    class GridViewConfiguration < Struct.new(
      nil,
      :content_share_layout,
      :presenter_only_configuration,
      :active_speaker_only_configuration,
      :horizontal_layout_configuration,
      :vertical_layout_configuration,
      :video_attribute,
      :canvas_orientation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the configuration settings for the horizontal layout.</p>
    # @!attribute tile_order
    #   <p>Sets the automatic ordering of the video tiles.</p>
    #   @return [String]
    # @!attribute tile_position
    #   <p>Sets the position of horizontal tiles.</p>
    #   @return [String]
    # @!attribute tile_count
    #   <p>The maximum number of video tiles to display.</p>
    #   @return [Integer]
    # @!attribute tile_aspect_ratio
    #   <p>Specifies the aspect ratio of all video tiles.</p>
    #   @return [String]
    class HorizontalLayoutConfiguration < Struct.new(
      nil,
      :tile_order,
      :tile_position,
      :tile_count,
      :tile_aspect_ratio,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the configuration settings for an issue detection task.</p>
    # @!attribute rule_name
    #   <p>The name of the issue detection rule.</p>
    #   @return [String]
    class IssueDetectionConfiguration < Struct.new(
      nil,
      :rule_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the settings for a keyword match task.</p>
    # @!attribute rule_name
    #   <p>The name of the keyword match rule.</p>
    #   @return [String]
    # @!attribute keywords
    #   <p>The keywords or phrases that you want to match.</p>
    #   @return [Array<String>]
    # @!attribute negate
    #   <p>Matches keywords or phrases on their presence or absence. If set to <code>TRUE</code>, the rule matches when all
    #            the specified keywords or phrases are absent. Default: <code>FALSE</code>.</p>
    #   @return [Boolean]
    class KeywordMatchConfiguration < Struct.new(
      nil,
      :rule_name,
      :keywords,
      :negate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:negate] = false unless options.key?(:negate)
        super
      end
    end

    # <p>A structure that contains the configuration settings for a Kinesis Data Stream sink.</p>
    # @!attribute insights_target
    #   <p>The ARN of the sink.</p>
    #   @return [String]
    class KinesisDataStreamSinkConfiguration < Struct.new(
      nil,
      :insights_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of an Kinesis video stream.</p>
    #          <note>
    #             <p>If a meeting uses an opt-in Region as its  
    #          <a href="https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html#chimesdk-meeting-chime_CreateMeeting-request-MediaRegion">MediaRegion</a>, 
    #          the KVS stream must be in that same Region. For example, if a meeting uses the <code>af-south-1</code> Region, the KVS stream must also be in <code>af-south-1</code>. However, if the meeting uses a 
    #          Region that AWS turns on by default, the KVS stream can be in any available Region, including an opt-in Region. For example, if the meeting uses <code>ca-central-1</code>, the KVS stream can be in 
    #          <code>eu-west-2</code>, <code>us-east-1</code>, <code>af-south-1</code>, or any other Region that the Amazon Chime SDK supports.</p>
    #             <p>To learn  which AWS Region a meeting uses, call the <a href="https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_GetMeeting.html">GetMeeting</a> API and 
    #             use the <a href="https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html#chimesdk-meeting-chime_CreateMeeting-request-MediaRegion">MediaRegion</a> 
    #             parameter from the response.</p>
    #             <p>For more information about opt-in Regions, refer to <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/sdk-available-regions.html">Available Regions</a> in the 
    #             <i>Amazon Chime SDK Developer Guide</i>, and 
    #             <a href="https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-regions.html#rande-manage-enable.html">Specify which AWS Regions your account can use</a>, 
    #             in the <i>AWS Account Management Reference Guide</i>.</p>
    #          </note>
    # @!attribute region
    #   <p>The Amazon Web Services Region of the video stream.</p>
    #   @return [String]
    # @!attribute data_retention_in_hours
    #   <p>The amount of time that data is retained.</p>
    #   @return [Integer]
    class KinesisVideoStreamConfiguration < Struct.new(
      nil,
      :region,
      :data_retention_in_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The updated Kinesis video stream configuration object.</p>
    # @!attribute data_retention_in_hours
    #   <p>The updated time that data is retained.</p>
    #   @return [Integer]
    class KinesisVideoStreamConfigurationUpdate < Struct.new(
      nil,
      :data_retention_in_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The video stream pool configuration object.</p>
    # @!attribute pool_arn
    #   <p>The ARN of the video stream pool configuration.</p>
    #   @return [String]
    # @!attribute pool_name
    #   <p>The name of the video stream pool configuration.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The ID of the video stream pool in the configuration.</p>
    #   @return [String]
    # @!attribute pool_status
    #   <p>The status of the video stream pool in the configuration. </p>
    #   @return [String]
    # @!attribute pool_size
    #   <p>The size of the video stream pool in the configuration.</p>
    #   @return [Integer]
    # @!attribute stream_configuration
    #   <p>The Kinesis video stream pool configuration object.</p>
    #   @return [Types::KinesisVideoStreamConfiguration]
    # @!attribute created_timestamp
    #   <p>The time at which the configuration was created.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which the configuration was updated.</p>
    #   @return [Time]
    class KinesisVideoStreamPoolConfiguration < Struct.new(
      nil,
      :pool_arn,
      :pool_name,
      :pool_id,
      :pool_status,
      :pool_size,
      :stream_configuration,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the Kinesis video stream pool.</p>
    # @!attribute pool_name
    #   <p>The name of the video stream pool.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The ID of the video stream pool.</p>
    #   @return [String]
    # @!attribute pool_arn
    #   <p>The ARN of the video stream pool.</p>
    #   @return [String]
    class KinesisVideoStreamPoolSummary < Struct.new(
      nil,
      :pool_name,
      :pool_id,
      :pool_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the runtime settings for recording a Kinesis video stream.</p>
    # @!attribute streams
    #   <p>The stream or streams to be recorded.</p>
    #   @return [Array<Types::RecordingStreamConfiguration>]
    # @!attribute fragment_selector
    #   <p>Describes the timestamp range and timestamp origin of a range of fragments in the Kinesis video stream.</p>
    #   @return [Types::FragmentSelector]
    class KinesisVideoStreamRecordingSourceRuntimeConfiguration < Struct.new(
      nil,
      :streams,
      :fragment_selector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The runtime configuration settings for the Kinesis video stream source.</p>
    # @!attribute streams
    #   <p>The streams in the source runtime configuration of a Kinesis video stream.</p>
    #   @return [Array<Types::StreamConfiguration>]
    # @!attribute media_encoding
    #   <p>Specifies the encoding of your input audio. Supported format: PCM (only signed 16-bit little-endian audio formats, which does not include WAV)</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio">Media formats</a> in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute media_sample_rate
    #   <p>The sample rate of the input audio (in hertz). Low-quality audio, such as telephone 
    #            audio, is typically around 8,000 Hz. High-quality audio typically ranges from 16,000 Hz to 
    #            48,000 Hz. Note that the sample rate you specify must match that of your audio.</p>
    #            <p>Valid Range: Minimum value of 8000. Maximum value of 48000.</p>
    #   @return [Integer]
    class KinesisVideoStreamSourceRuntimeConfiguration < Struct.new(
      nil,
      :streams,
      :media_encoding,
      :media_sample_rate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The task configuration settings for the Kinesis video stream source.</p>
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The channel ID.</p>
    #   @return [Integer]
    # @!attribute fragment_number
    #   <p>The unique identifier of the fragment to begin processing.</p>
    #   @return [String]
    class KinesisVideoStreamSourceTaskConfiguration < Struct.new(
      nil,
      :stream_arn,
      :channel_id,
      :fragment_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:channel_id] = 0 unless options.key?(:channel_id)
        super
      end
    end

    # <p>A structure that contains the configuration settings for an AWS Lambda function's data sink.</p>
    # @!attribute insights_target
    #   <p>The ARN of the sink.</p>
    #   @return [String]
    class LambdaFunctionSinkConfiguration < Struct.new(
      nil,
      :insights_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid Range: 1 - 99.</p>
    #   @return [Integer]
    class ListMediaCapturePipelinesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_capture_pipelines
    #   <p>The media pipeline objects in the list.</p>
    #   @return [Array<Types::MediaCapturePipelineSummary>]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results. </p>
    #   @return [String]
    class ListMediaCapturePipelinesResponse < Struct.new(
      nil,
      :media_capture_pipelines,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListMediaInsightsPipelineConfigurationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_insights_pipeline_configurations
    #   <p>The requested list of media insights pipeline configurations.</p>
    #   @return [Array<Types::MediaInsightsPipelineConfigurationSummary>]
    # @!attribute next_token
    #   <p>The token used to return the next page of results. </p>
    #   @return [String]
    class ListMediaInsightsPipelineConfigurationsResponse < Struct.new(
      nil,
      :media_insights_pipeline_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token used to return the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListMediaPipelineKinesisVideoStreamPoolsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute kinesis_video_stream_pools
    #   <p>The list of video stream pools.</p>
    #   @return [Array<Types::KinesisVideoStreamPoolSummary>]
    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    class ListMediaPipelineKinesisVideoStreamPoolsResponse < Struct.new(
      nil,
      :kinesis_video_stream_pools,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid Range: 1 - 99.</p>
    #   @return [Integer]
    class ListMediaPipelinesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_pipelines
    #   <p>The media pipeline objects in the list.</p>
    #   @return [Array<Types::MediaPipelineSummary>]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results. </p>
    #   @return [String]
    class ListMediaPipelinesResponse < Struct.new(
      nil,
      :media_pipelines,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the media pipeline associated with any tags. The ARN consists of the pipeline's region, resource ID, and pipeline ID.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the specified media pipeline.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The media pipeline's RTMP configuration object.</p>
    # @!attribute url
    #   <p>The URL of the RTMP configuration.</p>
    #   @return [String]
    # @!attribute audio_channels
    #   <p>The audio channels set for the RTMP configuration</p>
    #   @return [String]
    # @!attribute audio_sample_rate
    #   <p>The audio sample rate set for the RTMP configuration. Default: 48000.</p>
    #   @return [String]
    class LiveConnectorRTMPConfiguration < Struct.new(
      nil,
      :url,
      :audio_channels,
      :audio_sample_rate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The media pipeline's sink configuration settings.</p>
    # @!attribute sink_type
    #   <p>The sink configuration's sink type.</p>
    #   @return [String]
    # @!attribute rtmp_configuration
    #   <p>The sink configuration's RTMP configuration settings.</p>
    #   @return [Types::LiveConnectorRTMPConfiguration]
    class LiveConnectorSinkConfiguration < Struct.new(
      nil,
      :sink_type,
      :rtmp_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data source configuration object of a streaming media pipeline.</p>
    # @!attribute source_type
    #   <p>The source configuration's media source type.</p>
    #   @return [String]
    # @!attribute chime_sdk_meeting_live_connector_configuration
    #   <p>The configuration settings of the connector pipeline.</p>
    #   @return [Types::ChimeSdkMeetingLiveConnectorConfiguration]
    class LiveConnectorSourceConfiguration < Struct.new(
      nil,
      :source_type,
      :chime_sdk_meeting_live_connector_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A media pipeline object consisting of an ID, source type, source ARN, a sink
    #          type, a sink ARN, and a configuration object.</p>
    # @!attribute media_pipeline_id
    #   <p>The ID of a media pipeline.</p>
    #   @return [String]
    # @!attribute media_pipeline_arn
    #   <p>The ARN of the media capture pipeline</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>Source type from which media artifacts are saved. You must use
    #            <code>ChimeMeeting</code>.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>ARN of the source from which the media artifacts are saved.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the media pipeline.</p>
    #   @return [String]
    # @!attribute sink_type
    #   <p>Destination type to which the media artifacts are saved. You must use an S3
    #            Bucket.</p>
    #   @return [String]
    # @!attribute sink_arn
    #   <p>ARN of the destination to which the media artifacts are saved.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the pipeline was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which the pipeline was updated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute chime_sdk_meeting_configuration
    #   <p>The configuration for a specified media pipeline. <code>SourceType</code> must
    #            be <code>ChimeSdkMeeting</code>.</p>
    #   @return [Types::ChimeSdkMeetingConfiguration]
    # @!attribute sse_aws_key_management_params
    #   <p>An object that contains server side encryption parameters to be used by media capture
    #            pipeline. The parameters can also be used by media concatenation pipeline taking media
    #            capture pipeline as a media source.</p>
    #   @return [Types::SseAwsKeyManagementParams]
    # @!attribute sink_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the sink role to be used with <code>AwsKmsKeyId</code>
    #            in <code>SseAwsKeyManagementParams</code>.</p>
    #   @return [String]
    class MediaCapturePipeline < Struct.new(
      nil,
      :media_pipeline_id,
      :media_pipeline_arn,
      :source_type,
      :source_arn,
      :status,
      :sink_type,
      :sink_arn,
      :created_timestamp,
      :updated_timestamp,
      :chime_sdk_meeting_configuration,
      :sse_aws_key_management_params,
      :sink_iam_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source configuration object of a media capture pipeline.</p>
    # @!attribute media_pipeline_arn
    #   <p>The media pipeline ARN in the configuration object of a media capture pipeline.</p>
    #   @return [String]
    # @!attribute chime_sdk_meeting_configuration
    #   <p>The meeting configuration settings in a media capture pipeline configuration object. </p>
    #   @return [Types::ChimeSdkMeetingConcatenationConfiguration]
    class MediaCapturePipelineSourceConfiguration < Struct.new(
      nil,
      :media_pipeline_arn,
      :chime_sdk_meeting_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary data of a media capture pipeline.</p>
    # @!attribute media_pipeline_id
    #   <p>The ID of the media pipeline in the summary.</p>
    #   @return [String]
    # @!attribute media_pipeline_arn
    #   <p>The ARN of the media pipeline in the summary.</p>
    #   @return [String]
    class MediaCapturePipelineSummary < Struct.new(
      nil,
      :media_pipeline_id,
      :media_pipeline_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Concatenates audio and video data from one or more data streams.</p>
    # @!attribute media_pipeline_id
    #   <p>The ID of the media pipeline being concatenated.</p>
    #   @return [String]
    # @!attribute media_pipeline_arn
    #   <p>The ARN of the media pipeline that you specify in the <code>SourceConfiguration</code> object.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The data sources being concatenated.</p>
    #   @return [Array<Types::ConcatenationSource>]
    # @!attribute sinks
    #   <p>The data sinks of the concatenation pipeline.</p>
    #   @return [Array<Types::ConcatenationSink>]
    # @!attribute status
    #   <p>The status of the concatenation pipeline.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the concatenation pipeline was created.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which the concatenation pipeline was last updated.</p>
    #   @return [Time]
    class MediaConcatenationPipeline < Struct.new(
      nil,
      :media_pipeline_id,
      :media_pipeline_arn,
      :sources,
      :sinks,
      :status,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A media pipeline that streams call analytics data.</p>
    # @!attribute media_pipeline_id
    #   <p>The ID of a media insights pipeline.</p>
    #   @return [String]
    # @!attribute media_pipeline_arn
    #   <p>The ARN of a media insights pipeline.</p>
    #   @return [String]
    # @!attribute media_insights_pipeline_configuration_arn
    #   <p>The ARN of a media insight pipeline's configuration settings.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a media insights pipeline.</p>
    #   @return [String]
    # @!attribute kinesis_video_stream_source_runtime_configuration
    #   <p>The configuration settings for a Kinesis runtime video stream in a media insights pipeline.</p>
    #   @return [Types::KinesisVideoStreamSourceRuntimeConfiguration]
    # @!attribute media_insights_runtime_metadata
    #   <p>The runtime metadata of a media insights pipeline.</p>
    #   @return [Hash<String, String>]
    # @!attribute kinesis_video_stream_recording_source_runtime_configuration
    #   <p>The runtime configuration settings for a Kinesis recording video stream in a media insights pipeline.</p>
    #   @return [Types::KinesisVideoStreamRecordingSourceRuntimeConfiguration]
    # @!attribute s3_recording_sink_runtime_configuration
    #   <p>The runtime configuration of the Amazon S3 bucket that stores recordings in a media insights pipeline.</p>
    #   @return [Types::S3RecordingSinkRuntimeConfiguration]
    # @!attribute created_timestamp
    #   <p>The time at which the media insights pipeline was created.</p>
    #   @return [Time]
    # @!attribute element_statuses
    #   <p>The statuses that the elements in a media insights pipeline can have during data processing.</p>
    #   @return [Array<Types::MediaInsightsPipelineElementStatus>]
    class MediaInsightsPipeline < Struct.new(
      nil,
      :media_pipeline_id,
      :media_pipeline_arn,
      :media_insights_pipeline_configuration_arn,
      :status,
      :kinesis_video_stream_source_runtime_configuration,
      :media_insights_runtime_metadata,
      :kinesis_video_stream_recording_source_runtime_configuration,
      :s3_recording_sink_runtime_configuration,
      :created_timestamp,
      :element_statuses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the configuration settings for a media insights pipeline.</p>
    # @!attribute media_insights_pipeline_configuration_name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute media_insights_pipeline_configuration_arn
    #   <p>The ARN of the configuration.</p>
    #   @return [String]
    # @!attribute resource_access_role_arn
    #   <p>The ARN of the role used by the service to access Amazon Web Services resources.</p>
    #   @return [String]
    # @!attribute real_time_alert_configuration
    #   <p>Lists the rules that trigger a real-time alert.</p>
    #   @return [Types::RealTimeAlertConfiguration]
    # @!attribute elements
    #   <p>The elements in the configuration.</p>
    #   @return [Array<Types::MediaInsightsPipelineConfigurationElement>]
    # @!attribute media_insights_pipeline_configuration_id
    #   <p>The ID of the configuration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the configuration was created.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which the configuration was last updated.</p>
    #   @return [Time]
    class MediaInsightsPipelineConfiguration < Struct.new(
      nil,
      :media_insights_pipeline_configuration_name,
      :media_insights_pipeline_configuration_arn,
      :resource_access_role_arn,
      :real_time_alert_configuration,
      :elements,
      :media_insights_pipeline_configuration_id,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An element in a media insights pipeline configuration.</p>
    # @!attribute type
    #   <p>The element type.</p>
    #   @return [String]
    # @!attribute amazon_transcribe_call_analytics_processor_configuration
    #   <p>The analytics configuration settings for transcribing audio in a media insights pipeline configuration element.</p>
    #   @return [Types::AmazonTranscribeCallAnalyticsProcessorConfiguration]
    # @!attribute amazon_transcribe_processor_configuration
    #   <p>The transcription processor configuration settings in a media insights pipeline
    #            configuration element.</p>
    #   @return [Types::AmazonTranscribeProcessorConfiguration]
    # @!attribute kinesis_data_stream_sink_configuration
    #   <p>The configuration settings for the Kinesis Data Stream Sink in a media insights pipeline configuration element.</p>
    #   @return [Types::KinesisDataStreamSinkConfiguration]
    # @!attribute s3_recording_sink_configuration
    #   <p>The configuration settings for the Amazon S3 recording bucket in a media insights pipeline configuration element.</p>
    #   @return [Types::S3RecordingSinkConfiguration]
    # @!attribute voice_analytics_processor_configuration
    #   <p>The voice analytics configuration settings in a media insights pipeline configuration element.</p>
    #   @return [Types::VoiceAnalyticsProcessorConfiguration]
    # @!attribute lambda_function_sink_configuration
    #   <p>The configuration settings for the Amazon Web Services Lambda sink in a media insights pipeline configuration element.</p>
    #   @return [Types::LambdaFunctionSinkConfiguration]
    # @!attribute sqs_queue_sink_configuration
    #   <p>The configuration settings for an SQS queue sink in a media insights pipeline configuration element.</p>
    #   @return [Types::SqsQueueSinkConfiguration]
    # @!attribute sns_topic_sink_configuration
    #   <p>The configuration settings for an SNS topic sink in a media insights pipeline configuration element.</p>
    #   @return [Types::SnsTopicSinkConfiguration]
    # @!attribute voice_enhancement_sink_configuration
    #   <p>The configuration settings for voice enhancement sink in a media insights pipeline configuration element.</p>
    #   @return [Types::VoiceEnhancementSinkConfiguration]
    class MediaInsightsPipelineConfigurationElement < Struct.new(
      nil,
      :type,
      :amazon_transcribe_call_analytics_processor_configuration,
      :amazon_transcribe_processor_configuration,
      :kinesis_data_stream_sink_configuration,
      :s3_recording_sink_configuration,
      :voice_analytics_processor_configuration,
      :lambda_function_sink_configuration,
      :sqs_queue_sink_configuration,
      :sns_topic_sink_configuration,
      :voice_enhancement_sink_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the media insights pipeline configuration.</p>
    # @!attribute media_insights_pipeline_configuration_name
    #   <p>The name of the media insights pipeline configuration.</p>
    #   @return [String]
    # @!attribute media_insights_pipeline_configuration_id
    #   <p>The ID of the media insights pipeline configuration.</p>
    #   @return [String]
    # @!attribute media_insights_pipeline_configuration_arn
    #   <p>The ARN of the media insights pipeline configuration.</p>
    #   @return [String]
    class MediaInsightsPipelineConfigurationSummary < Struct.new(
      nil,
      :media_insights_pipeline_configuration_name,
      :media_insights_pipeline_configuration_id,
      :media_insights_pipeline_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the pipeline element.</p>
    # @!attribute type
    #   <p>The type of status.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The element's status.</p>
    #   @return [String]
    class MediaInsightsPipelineElementStatus < Struct.new(
      nil,
      :type,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The connector pipeline.</p>
    # @!attribute sources
    #   <p>The connector pipeline's data sources.</p>
    #   @return [Array<Types::LiveConnectorSourceConfiguration>]
    # @!attribute sinks
    #   <p>The connector pipeline's data sinks.</p>
    #   @return [Array<Types::LiveConnectorSinkConfiguration>]
    # @!attribute media_pipeline_id
    #   <p>The connector pipeline's ID.</p>
    #   @return [String]
    # @!attribute media_pipeline_arn
    #   <p>The connector pipeline's ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The connector pipeline's status.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the connector pipeline was created.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which the connector pipeline was last updated.</p>
    #   @return [Time]
    class MediaLiveConnectorPipeline < Struct.new(
      nil,
      :sources,
      :sinks,
      :media_pipeline_id,
      :media_pipeline_arn,
      :status,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pipeline consisting of a media capture, media concatenation, or live-streaming pipeline.</p>
    # @!attribute media_capture_pipeline
    #   <p>A pipeline that enables users to capture audio and video.</p>
    #   @return [Types::MediaCapturePipeline]
    # @!attribute media_live_connector_pipeline
    #   <p>The connector pipeline of the media pipeline.</p>
    #   @return [Types::MediaLiveConnectorPipeline]
    # @!attribute media_concatenation_pipeline
    #   <p>The media concatenation pipeline in a media pipeline.</p>
    #   @return [Types::MediaConcatenationPipeline]
    # @!attribute media_insights_pipeline
    #   <p>The media insights pipeline of a media pipeline.</p>
    #   @return [Types::MediaInsightsPipeline]
    # @!attribute media_stream_pipeline
    #   <p>Designates a media pipeline as a media stream pipeline.</p>
    #   @return [Types::MediaStreamPipeline]
    class MediaPipeline < Struct.new(
      nil,
      :media_capture_pipeline,
      :media_live_connector_pipeline,
      :media_concatenation_pipeline,
      :media_insights_pipeline,
      :media_stream_pipeline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the media pipeline.</p>
    # @!attribute media_pipeline_id
    #   <p>The ID of the media pipeline in the summary.</p>
    #   @return [String]
    # @!attribute media_pipeline_arn
    #   <p>The ARN of the media pipeline in the summary.</p>
    #   @return [String]
    class MediaPipelineSummary < Struct.new(
      nil,
      :media_pipeline_id,
      :media_pipeline_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure that contains the settings for a media stream pipeline.</p>
    # @!attribute media_pipeline_id
    #   <p>The ID of the media stream pipeline</p>
    #   @return [String]
    # @!attribute media_pipeline_arn
    #   <p>The ARN of the media stream pipeline.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the media stream pipeline was created.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which the media stream pipeline was updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the media stream pipeline.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The media stream pipeline's data sources.</p>
    #   @return [Array<Types::MediaStreamSource>]
    # @!attribute sinks
    #   <p>The media stream pipeline's data sinks.</p>
    #   @return [Array<Types::MediaStreamSink>]
    class MediaStreamPipeline < Struct.new(
      nil,
      :media_pipeline_id,
      :media_pipeline_arn,
      :created_timestamp,
      :updated_timestamp,
      :status,
      :sources,
      :sinks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure that contains the settings for a media stream sink.</p>
    # @!attribute sink_arn
    #   <p>The ARN of the Kinesis Video Stream pool returned by the <a>CreateMediaPipelineKinesisVideoStreamPool</a> API.</p>
    #   @return [String]
    # @!attribute sink_type
    #   <p>The media stream sink's type.</p>
    #   @return [String]
    # @!attribute reserved_stream_capacity
    #   <p>Specifies the number of streams that the sink can accept.</p>
    #   @return [Integer]
    # @!attribute media_stream_type
    #   <p>The media stream sink's media stream type.</p>
    #   @return [String]
    class MediaStreamSink < Struct.new(
      nil,
      :sink_arn,
      :sink_type,
      :reserved_stream_capacity,
      :media_stream_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure that contains the settings for media stream sources.</p>
    # @!attribute source_type
    #   <p>The type of media stream source.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The ARN of the meeting.</p>
    #   @return [String]
    class MediaStreamSource < Struct.new(
      nil,
      :source_type,
      :source_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration object for an event concatenation pipeline.</p>
    # @!attribute state
    #   <p>Enables or disables the configuration object.</p>
    #   @return [String]
    class MeetingEventsConcatenationConfiguration < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of the resources in the request does not exist in the system.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request ID associated with the call responsible for the exception.</p>
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows you to specify additional settings for your Call Analytics post-call request, including output locations for your redacted transcript, which IAM role to use, and which encryption key to use.</p>
    #          <p>
    #             <code>DataAccessRoleArn</code> and <code>OutputLocation</code> are required fields.</p>
    #          <p>
    #             <code>PostCallAnalyticsSettings</code> provides the same insights as a Call Analytics post-call transcription. For more information, refer to 
    #          <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tca-post-call.html">Post-call analytics with real-time transcriptions</a> in the <i>Amazon Transcribe Developer Guide</i>.</p>
    # @!attribute output_location
    #   <p>The URL of the Amazon S3 bucket that contains the post-call data.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The ARN of the role used by Amazon Web Services Transcribe to upload your post call analysis. For more information, see 
    #            <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tca-post-call.html">Post-call analytics with real-time transcriptions</a> in the <i>Amazon Transcribe Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute content_redaction_output
    #   <p>The content redaction output settings for a post-call analysis task.</p>
    #   @return [String]
    # @!attribute output_encryption_kms_key_id
    #   <p>The ID of the KMS (Key Management Service) key used to encrypt the output.</p>
    #   @return [String]
    class PostCallAnalyticsSettings < Struct.new(
      nil,
      :output_location,
      :data_access_role_arn,
      :content_redaction_output,
      :output_encryption_kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the configuration for a presenter-only video tile.</p>
    # @!attribute presenter_position
    #   <p>Defines the position of the presenter video tile. Default: <code>TopRight</code>.</p>
    #   @return [String]
    class PresenterOnlyConfiguration < Struct.new(
      nil,
      :presenter_position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the configuration settings for real-time alerts.</p>
    # @!attribute disabled
    #   <p>Turns off real-time alerts.</p>
    #   @return [Boolean]
    # @!attribute rules
    #   <p>The rules in the alert. Rules specify the words or phrases that you want to be notified about.</p>
    #   @return [Array<Types::RealTimeAlertRule>]
    class RealTimeAlertConfiguration < Struct.new(
      nil,
      :disabled,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:disabled] = false unless options.key?(:disabled)
        super
      end
    end

    # <p>Specifies the words or phrases that trigger an alert.</p>
    # @!attribute type
    #   <p>The type of alert rule.</p>
    #   @return [String]
    # @!attribute keyword_match_configuration
    #   <p>Specifies the settings for matching the keywords in a real-time alert rule.</p>
    #   @return [Types::KeywordMatchConfiguration]
    # @!attribute sentiment_configuration
    #   <p>Specifies the settings for predicting sentiment in a real-time alert rule.</p>
    #   @return [Types::SentimentConfiguration]
    # @!attribute issue_detection_configuration
    #   <p>Specifies the issue detection settings for a real-time alert rule.</p>
    #   @return [Types::IssueDetectionConfiguration]
    class RealTimeAlertRule < Struct.new(
      nil,
      :type,
      :keyword_match_configuration,
      :sentiment_configuration,
      :issue_detection_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that holds the settings for recording media.</p>
    # @!attribute stream_arn
    #   <p>The ARN of the recording stream.</p>
    #   @return [String]
    class RecordingStreamConfiguration < Struct.new(
      nil,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds the resource limit.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request ID associated with the call responsible for the exception.</p>
    #   @return [String]
    class ResourceLimitExceededException < Struct.new(
      nil,
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for the S3 bucket.</p>
    # @!attribute destination
    #   <p>The destination URL of the S3 bucket.</p>
    #   @return [String]
    class S3BucketSinkConfiguration < Struct.new(
      nil,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure that holds the settings for transmitting media to the Amazon S3 bucket. These values are used as defaults if <code>S3RecordingSinkRuntimeConfiguration</code> is not specified.</p>
    # @!attribute destination
    #   <p>The default URI of the Amazon S3 bucket used as the recording sink.</p>
    #   @return [String]
    # @!attribute recording_file_format
    #   <p>The default file format for the media files sent to the Amazon S3 bucket.</p>
    #   @return [String]
    class S3RecordingSinkConfiguration < Struct.new(
      nil,
      :destination,
      :recording_file_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that holds the settings for transmitting media files to the Amazon S3 bucket. If specified, the settings in this structure override any settings in <code>S3RecordingSinkConfiguration</code>.</p>
    # @!attribute destination
    #   <p>The URI of the S3 bucket used as the sink.</p>
    #   @return [String]
    # @!attribute recording_file_format
    #   <p>The file format for the media files sent to the Amazon S3 bucket.</p>
    #   @return [String]
    class S3RecordingSinkRuntimeConfiguration < Struct.new(
      nil,
      :destination,
      :recording_file_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The video streams for a specified media pipeline. The total number of
    #          video streams can't exceed 25.</p>
    # @!attribute attendee_ids
    #   <p>The attendee IDs of the streams selected for a media pipeline. </p>
    #   @return [Array<String>]
    # @!attribute external_user_ids
    #   <p>The external user IDs of the streams selected for a media pipeline.</p>
    #   @return [Array<String>]
    class SelectedVideoStreams < Struct.new(
      nil,
      :attendee_ids,
      :external_user_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the configuration settings for a sentiment analysis task.</p>
    # @!attribute rule_name
    #   <p>The name of the rule in the sentiment configuration.</p>
    #   @return [String]
    # @!attribute sentiment_type
    #   <p>The type of sentiment, <code>POSITIVE</code>, <code>NEGATIVE</code>, or <code>NEUTRAL</code>.</p>
    #   @return [String]
    # @!attribute time_period
    #   <p>Specifies the analysis interval.</p>
    #   @return [Integer]
    class SentimentConfiguration < Struct.new(
      nil,
      :rule_name,
      :sentiment_type,
      :time_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service encountered an unexpected error.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request ID associated with the call responsible for the exception.</p>
    #   @return [String]
    class ServiceFailureException < Struct.new(
      nil,
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is currently unavailable.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request ID associated with the call responsible for the exception.</p>
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for the SNS topic sink.</p>
    # @!attribute insights_target
    #   <p>The ARN of the SNS sink.</p>
    #   @return [String]
    class SnsTopicSinkConfiguration < Struct.new(
      nil,
      :insights_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Source configuration for a specified media pipeline.</p>
    # @!attribute selected_video_streams
    #   <p>The selected video streams for a specified media pipeline. The number
    #            of video streams can't exceed 25.</p>
    #   @return [Types::SelectedVideoStreams]
    class SourceConfiguration < Struct.new(
      nil,
      :selected_video_streams,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A representation of an asynchronous request to perform speaker search analysis on a
    #          media insights pipeline.</p>
    # @!attribute speaker_search_task_id
    #   <p>The speaker search task ID.</p>
    #   @return [String]
    # @!attribute speaker_search_task_status
    #   <p>The status of the speaker search task.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which a speaker search task was created.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which a speaker search task was updated.</p>
    #   @return [Time]
    class SpeakerSearchTask < Struct.new(
      nil,
      :speaker_search_task_id,
      :speaker_search_task_status,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for the SQS sink.</p>
    # @!attribute insights_target
    #   <p>The ARN of the SQS sink.</p>
    #   @return [String]
    class SqsQueueSinkConfiguration < Struct.new(
      nil,
      :insights_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains server side encryption parameters to be used by media capture pipeline. The
    #          parameters can also be used by media concatenation pipeline taking media capture pipeline
    #          as a media source.</p>
    # @!attribute aws_kms_key_id
    #   <p>The KMS key you want to use to encrypt your media pipeline output.
    #            Decryption is required for concatenation pipeline. If using a key located in the current
    #            Amazon Web Services account, you can specify your KMS key in one of four
    #            ways:</p>
    #            <ul>
    #               <li>
    #                  <p>Use the KMS key ID itself. For example,
    #                  <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use an alias for the KMS key ID. For example,
    #                  <code>alias/ExampleAlias</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the Amazon Resource Name (ARN) for the KMS key ID. For example,
    #                  <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the ARN for the KMS key alias. For example,
    #                  <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ul>
    #            <p>If using a key located in a different Amazon Web Services account than the current
    #            Amazon Web Services account, you can specify your KMS key in one of two
    #            ways:</p>
    #            <ul>
    #               <li>
    #                  <p>Use the ARN for the KMS key ID. For example,
    #                  <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the ARN for the KMS key alias. For example,
    #                  <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify an encryption key, your output is encrypted with the default
    #            Amazon S3 key (SSE-S3).</p>
    #            <p>Note that the role specified in the <code>SinkIamRoleArn</code> request parameter must
    #            have permission to use the specified KMS key.</p>
    #   @return [String]
    # @!attribute aws_kms_encryption_context
    #   <p>Base64-encoded string of a UTF-8 encoded JSON, which contains the encryption context as
    #            non-secret key-value pair known as encryption context pairs, that provides an added layer
    #            of security for your data. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">KMS encryption
    #               context</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric keys in KMS</a> in the <i>Key Management Service Developer
    #                        Guide</i>.</p>
    #   @return [String]
    class SseAwsKeyManagementParams < Struct.new(
      nil,
      :aws_kms_key_id,
      :aws_kms_encryption_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>
    #   @return [String]
    # @!attribute voice_profile_domain_arn
    #   <p>The ARN of the voice profile domain that will store the voice profile.</p>
    #   @return [String]
    # @!attribute kinesis_video_stream_source_task_configuration
    #   <p>The task configuration for the Kinesis video stream source of the media insights
    #            pipeline.</p>
    #   @return [Types::KinesisVideoStreamSourceTaskConfiguration]
    # @!attribute client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different speaker search tasks.</p>
    #   @return [String]
    class StartSpeakerSearchTaskRequest < Struct.new(
      nil,
      :identifier,
      :voice_profile_domain_arn,
      :kinesis_video_stream_source_task_configuration,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute speaker_search_task
    #   <p>The details of the speaker search task.</p>
    #   @return [Types::SpeakerSearchTask]
    class StartSpeakerSearchTaskResponse < Struct.new(
      nil,
      :speaker_search_task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code.</p>
    #   @return [String]
    # @!attribute kinesis_video_stream_source_task_configuration
    #   <p>The task configuration for the Kinesis video stream source of the media insights
    #            pipeline.</p>
    #   @return [Types::KinesisVideoStreamSourceTaskConfiguration]
    # @!attribute client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different voice tone analysis tasks.</p>
    #   @return [String]
    class StartVoiceToneAnalysisTaskRequest < Struct.new(
      nil,
      :identifier,
      :language_code,
      :kinesis_video_stream_source_task_configuration,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_tone_analysis_task
    #   <p>The details of the voice tone analysis task.</p>
    #   @return [Types::VoiceToneAnalysisTask]
    class StartVoiceToneAnalysisTaskResponse < Struct.new(
      nil,
      :voice_tone_analysis_task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>
    #   @return [String]
    # @!attribute speaker_search_task_id
    #   <p>The speaker search task ID.</p>
    #   @return [String]
    class StopSpeakerSearchTaskRequest < Struct.new(
      nil,
      :identifier,
      :speaker_search_task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>
    #   @return [String]
    # @!attribute voice_tone_analysis_task_id
    #   <p>The ID of the voice tone analysis task.</p>
    #   @return [String]
    class StopVoiceToneAnalysisTaskRequest < Struct.new(
      nil,
      :identifier,
      :voice_tone_analysis_task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a streaming channel.</p>
    # @!attribute number_of_channels
    #   <p>The number of channels in a streaming channel.</p>
    #   @return [Integer]
    # @!attribute channel_definitions
    #   <p>The definitions of the channels in a streaming channel.</p>
    #   @return [Array<Types::ChannelDefinition>]
    class StreamChannelDefinition < Struct.new(
      nil,
      :number_of_channels,
      :channel_definitions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a stream.</p>
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    # @!attribute fragment_number
    #   <p>The unique identifier of the fragment to begin processing.</p>
    #   @return [String]
    # @!attribute stream_channel_definition
    #   <p>The streaming channel definition in the stream configuration.</p>
    #   @return [Types::StreamChannelDefinition]
    class StreamConfiguration < Struct.new(
      nil,
      :stream_arn,
      :fragment_number,
      :stream_channel_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key/value pair that grants users access to meeting resources.</p>
    # @!attribute key
    #   <p>The key half of a tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value half of a tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the media pipeline associated with any tags. The ARN consists of the pipeline's endpoint region, resource ID, and pipeline ID.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the specified media pipeline.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client exceeded its request rate limit.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request ID associated with the call responsible for the exception.</p>
    #   @return [String]
    class ThrottledClientException < Struct.new(
      nil,
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The range of timestamps to return.</p>
    # @!attribute start_timestamp
    #   <p>The starting timestamp for the specified range.</p>
    #   @return [Time]
    # @!attribute end_timestamp
    #   <p>The ending timestamp for the specified range.</p>
    #   @return [Time]
    class TimestampRange < Struct.new(
      nil,
      :start_timestamp,
      :end_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration object for concatenating transcription messages.</p>
    # @!attribute state
    #   <p>Enables or disables the configuration object.</p>
    #   @return [String]
    class TranscriptionMessagesConcatenationConfiguration < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client is not currently authorized to make the request.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request ID associated with the call responsible for the exception.</p>
    #   @return [String]
    class UnauthorizedClientException < Struct.new(
      nil,
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the pipeline that you want to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The key/value pairs in the tag that you want to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier for the resource to be updated. Valid values include the name and ARN of the media insights pipeline configuration.</p>
    #   @return [String]
    # @!attribute resource_access_role_arn
    #   <p>The ARN of the role used by the service to access Amazon Web Services resources.</p>
    #   @return [String]
    # @!attribute real_time_alert_configuration
    #   <p>The configuration settings for real-time alerts for the media insights pipeline.</p>
    #   @return [Types::RealTimeAlertConfiguration]
    # @!attribute elements
    #   <p>The elements in the request, such as a processor for Amazon Transcribe or a sink for a Kinesis Data Stream..</p>
    #   @return [Array<Types::MediaInsightsPipelineConfigurationElement>]
    class UpdateMediaInsightsPipelineConfigurationRequest < Struct.new(
      nil,
      :identifier,
      :resource_access_role_arn,
      :real_time_alert_configuration,
      :elements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_insights_pipeline_configuration
    #   <p>The updated configuration settings.</p>
    #   @return [Types::MediaInsightsPipelineConfiguration]
    class UpdateMediaInsightsPipelineConfigurationResponse < Struct.new(
      nil,
      :media_insights_pipeline_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>
    #   @return [String]
    # @!attribute update_status
    #   <p>The requested status of the media insights pipeline.</p>
    #   @return [String]
    class UpdateMediaInsightsPipelineStatusRequest < Struct.new(
      nil,
      :identifier,
      :update_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique identifier of the requested resource. Valid values include the name and ARN of the media pipeline Kinesis Video Stream pool.</p>
    #   @return [String]
    # @!attribute stream_configuration
    #   <p>The configuration settings for the video stream.</p>
    #   @return [Types::KinesisVideoStreamConfigurationUpdate]
    class UpdateMediaPipelineKinesisVideoStreamPoolRequest < Struct.new(
      nil,
      :identifier,
      :stream_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute kinesis_video_stream_pool_configuration
    #   <p>The video stream pool configuration object.</p>
    #   @return [Types::KinesisVideoStreamPoolConfiguration]
    class UpdateMediaPipelineKinesisVideoStreamPoolResponse < Struct.new(
      nil,
      :kinesis_video_stream_pool_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the configuration settings for a vertical layout.</p>
    # @!attribute tile_order
    #   <p>Sets the automatic ordering of the video tiles.</p>
    #   @return [String]
    # @!attribute tile_position
    #   <p>Sets the position of vertical tiles.</p>
    #   @return [String]
    # @!attribute tile_count
    #   <p>The maximum number of tiles to display.</p>
    #   @return [Integer]
    # @!attribute tile_aspect_ratio
    #   <p>Sets the aspect ratio of the video tiles, such as 16:9.</p>
    #   @return [String]
    class VerticalLayoutConfiguration < Struct.new(
      nil,
      :tile_order,
      :tile_position,
      :tile_count,
      :tile_aspect_ratio,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The video artifact configuration object.</p>
    # @!attribute state
    #   <p>Indicates whether the video artifact is enabled or disabled.</p>
    #   @return [String]
    # @!attribute mux_type
    #   <p>The MUX type of the video artifact configuration object.</p>
    #   @return [String]
    class VideoArtifactsConfiguration < Struct.new(
      nil,
      :state,
      :mux_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the settings for a video tile.</p>
    # @!attribute corner_radius
    #   <p>Sets the corner radius of all video tiles.</p>
    #   @return [Integer]
    # @!attribute border_color
    #   <p>Defines the border color of all video tiles.</p>
    #   @return [String]
    # @!attribute highlight_color
    #   <p>Defines the highlight color for the active video tile.</p>
    #   @return [String]
    # @!attribute border_thickness
    #   <p>Defines the border thickness for all video tiles.</p>
    #   @return [Integer]
    class VideoAttribute < Struct.new(
      nil,
      :corner_radius,
      :border_color,
      :highlight_color,
      :border_thickness,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration object of a video concatenation pipeline.</p>
    # @!attribute state
    #   <p>Enables or disables the configuration object.</p>
    #   @return [String]
    class VideoConcatenationConfiguration < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a voice analytics processor.</p>
    # @!attribute speaker_search_status
    #   <p>The status of the speaker search task.</p>
    #   @return [String]
    # @!attribute voice_tone_analysis_status
    #   <p>The status of the voice tone analysis task.</p>
    #   @return [String]
    class VoiceAnalyticsProcessorConfiguration < Struct.new(
      nil,
      :speaker_search_status,
      :voice_tone_analysis_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A static structure that contains the configuration data for a <code>VoiceEnhancementSinkConfiguration</code> element.</p>
    # @!attribute disabled
    #   <p>Disables the <code>VoiceEnhancementSinkConfiguration</code> element.</p>
    #   @return [Boolean]
    class VoiceEnhancementSinkConfiguration < Struct.new(
      nil,
      :disabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:disabled] = false unless options.key?(:disabled)
        super
      end
    end

    # <p>A representation of an asynchronous request to perform voice tone analysis on a media insights pipeline.</p>
    # @!attribute voice_tone_analysis_task_id
    #   <p>The ID of the voice tone analysis task.</p>
    #   @return [String]
    # @!attribute voice_tone_analysis_task_status
    #   <p>The status of a voice tone analysis task.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which a voice tone analysis task was created.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which a voice tone analysis task was updated.</p>
    #   @return [Time]
    class VoiceToneAnalysisTask < Struct.new(
      nil,
      :voice_tone_analysis_task_id,
      :voice_tone_analysis_task_status,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
