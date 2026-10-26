# frozen_string_literal: true

# This is generated code!

module Aws::Polly
  # This module contains the types returned by client operations.
  module Types

    # <p>Contains a chunk of synthesized audio data.</p>
    # @!attribute audio_chunk
    #   <p>A chunk of synthesized audio data encoded in the format specified by the
    #         <code>OutputFormat</code> parameter.</p>
    #   @return [String]
    class AudioEvent < Struct.new(
      nil,
      :audio_chunk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates the end of the input stream. After sending this event, the input stream
    #      will be closed and all audio will be returned.</p>
    class CloseStreamEvent < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the lexicon to delete. Must be an existing lexicon in
    #         the region.</p>
    #   @return [String]
    class DeleteLexiconInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteLexiconOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute engine
    #   <p>Specifies the engine (<code>standard</code>, <code>neural</code>,
    #         <code>long-form</code> or <code>generative</code>) used by Amazon Polly when
    #         processing input text for speech synthesis. </p>
    #   @return [String]
    # @!attribute language_code
    #   <p> The language identification tag (ISO 639 code for the language
    #         name-ISO 3166 country code) for filtering the list of voices returned. If
    #         you don't specify this optional parameter, all available voices are
    #         returned. </p>
    #   @return [String]
    # @!attribute include_additional_language_codes
    #   <p>Boolean value indicating whether to return any bilingual voices that
    #         use the specified language as an additional language. For instance, if you
    #         request all languages that use US English (es-US), and there is an Italian
    #         voice that speaks both Italian (it-IT) and US English, that voice will be
    #         included if you specify <code>yes</code> but not if you specify
    #           <code>no</code>.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>An opaque pagination token returned from the previous
    #           <code>DescribeVoices</code> operation. If present, this indicates where
    #         to continue the listing.</p>
    #   @return [String]
    class DescribeVoicesInput < Struct.new(
      nil,
      :engine,
      :language_code,
      :include_additional_language_codes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voices
    #   <p>A list of voices with their properties.</p>
    #   @return [Array<Types::Voice>]
    # @!attribute next_token
    #   <p>The pagination token to use in the next request to continue the
    #         listing of voices. <code>NextToken</code> is returned only if the response
    #         is truncated.</p>
    #   @return [String]
    class DescribeVoicesOutput < Struct.new(
      nil,
      :voices,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This engine is not compatible with the voice that you have designated.
    #       Choose a new voice that is compatible with the engine or change the engine
    #       and restart the operation.</p>
    # @!attribute message
    #   @return [String]
    class EngineNotSupportedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration that controls when synthesized audio data is sent on the output stream.</p>
    # @!attribute force
    #   <p>Specifies whether to force the synthesis engine to immediately
    #         write buffered audio data to the output stream.</p>
    #   @return [Boolean]
    class FlushStreamConfiguration < Struct.new(
      nil,
      :force,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:force] = false unless options.key?(:force)
        super
      end
    end

    # @!attribute name
    #   <p>Name of the lexicon.</p>
    #   @return [String]
    class GetLexiconInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lexicon
    #   <p>Lexicon object that provides name and the string content of the
    #         lexicon. </p>
    #   @return [Types::Lexicon]
    # @!attribute lexicon_attributes
    #   <p>Metadata of the lexicon, including phonetic alphabetic used,
    #         language code, lexicon ARN, number of lexemes defined in the lexicon, and
    #         size of lexicon in bytes.</p>
    #   @return [Types::LexiconAttributes]
    class GetLexiconOutput < Struct.new(
      nil,
      :lexicon,
      :lexicon_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The Amazon Polly generated identifier for a speech synthesis task.</p>
    #   @return [String]
    class GetSpeechSynthesisTaskInput < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute synthesis_task
    #   <p>SynthesisTask object that provides information from the requested
    #         task, including output format, creation time, task status, and so
    #         on.</p>
    #   @return [Types::SynthesisTask]
    class GetSpeechSynthesisTaskOutput < Struct.new(
      nil,
      :synthesis_task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Polly can't find the specified lexicon. Verify that the lexicon's
    #       name is spelled correctly, and then try again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidLexiconException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The NextToken is invalid. Verify that it's spelled correctly, and
    #       then try again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provided Amazon S3 bucket name is invalid. Please check your input
    #       with S3 bucket naming requirements and try again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidS3BucketException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provided Amazon S3 key prefix is invalid. Please provide a valid
    #       S3 object key name.</p>
    # @!attribute message
    #   @return [String]
    class InvalidS3KeyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified sample rate is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidSampleRateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provided SNS topic ARN is invalid. Please provide a valid SNS
    #       topic ARN and try again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidSnsTopicArnException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The SSML you provided is invalid. Verify the SSML syntax, spelling
    #       of tags and values, and then try again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidSsmlException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provided Task ID is not valid. Please provide a valid Task ID and
    #       try again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidTaskIdException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The language specified is not currently supported by Amazon Polly in this
    #       capacity.</p>
    # @!attribute message
    #   @return [String]
    class LanguageNotSupportedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides lexicon name and lexicon content in string format. For
    #       more information, see <a href="https://www.w3.org/TR/pronunciation-lexicon/">Pronunciation Lexicon
    #         Specification (PLS) Version 1.0</a>.</p>
    # @!attribute content
    #   <p>Lexicon content in string format. The content of a lexicon must be
    #         in PLS format.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the lexicon.</p>
    #   @return [String]
    class Lexicon < Struct.new(
      nil,
      :content,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata describing the lexicon such as the number of
    #       lexemes, language code, and so on. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>
    # @!attribute alphabet
    #   <p>Phonetic alphabet used in the lexicon. Valid values are
    #           <code>ipa</code> and <code>x-sampa</code>.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>Language code that the lexicon applies to. A lexicon with a
    #         language code such as "en" would be applied to all English languages
    #         (en-GB, en-US, en-AUS, en-WLS, and so on.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>Date lexicon was last modified (a timestamp value).</p>
    #   @return [Time]
    # @!attribute lexicon_arn
    #   <p>Amazon Resource Name (ARN) of the lexicon.</p>
    #   @return [String]
    # @!attribute lexemes_count
    #   <p>Number of lexemes in the lexicon.</p>
    #   @return [Integer]
    # @!attribute size
    #   <p>Total size of the lexicon, in characters.</p>
    #   @return [Integer]
    class LexiconAttributes < Struct.new(
      nil,
      :alphabet,
      :language_code,
      :last_modified,
      :lexicon_arn,
      :lexemes_count,
      :size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:lexemes_count] = 0 unless options.key?(:lexemes_count)
        options[:size] = 0 unless options.key?(:size)
        super
      end
    end

    # <p>Describes the content of the lexicon.</p>
    # @!attribute name
    #   <p>Name of the lexicon.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Provides lexicon metadata.</p>
    #   @return [Types::LexiconAttributes]
    class LexiconDescription < Struct.new(
      nil,
      :name,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Polly can't find the specified lexicon. This could be caused by a
    #       lexicon that is missing, its name is misspelled or specifying a lexicon
    #       that is in a different region.</p>
    #          <p>Verify that the lexicon exists, is in the region (see <a>ListLexicons</a>) and that you spelled its name is spelled
    #       correctly. Then try again.</p>
    # @!attribute message
    #   @return [String]
    class LexiconNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum size of the specified lexicon would be exceeded by this
    #       operation.</p>
    # @!attribute message
    #   @return [String]
    class LexiconSizeExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An opaque pagination token returned from previous
    #           <code>ListLexicons</code> operation. If present, indicates where to
    #         continue the list of lexicons.</p>
    #   @return [String]
    class ListLexiconsInput < Struct.new(
      nil,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lexicons
    #   <p>A list of lexicon names and attributes.</p>
    #   @return [Array<Types::LexiconDescription>]
    # @!attribute next_token
    #   <p>The pagination token to use in the next request to continue the
    #         listing of lexicons. <code>NextToken</code> is returned only if the
    #         response is truncated.</p>
    #   @return [String]
    class ListLexiconsOutput < Struct.new(
      nil,
      :lexicons,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Maximum number of speech synthesis tasks returned in a List
    #         operation.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token to use in the next request to continue the
    #         listing of speech synthesis tasks. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the speech synthesis tasks returned in a List
    #         operation</p>
    #   @return [String]
    class ListSpeechSynthesisTasksInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An opaque pagination token returned from the previous List operation
    #         in this request. If present, this indicates where to continue the
    #         listing.</p>
    #   @return [String]
    # @!attribute synthesis_tasks
    #   <p>List of SynthesisTask objects that provides information from the
    #         specified task in the list request, including output format, creation
    #         time, task status, and so on.</p>
    #   @return [Array<Types::SynthesisTask>]
    class ListSpeechSynthesisTasksOutput < Struct.new(
      nil,
      :next_token,
      :synthesis_tasks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Speech marks are not supported for the <code>OutputFormat</code>
    #       selected. Speech marks are only available for content in <code>json</code>
    #       format.</p>
    # @!attribute message
    #   @return [String]
    class MarksNotSupportedForFormatException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum size of the lexeme would be exceeded by this
    #       operation.</p>
    # @!attribute message
    #   @return [String]
    class MaxLexemeLengthExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of lexicons would be exceeded by this
    #       operation.</p>
    # @!attribute message
    #   @return [String]
    class MaxLexiconsNumberExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the lexicon. The name must follow the regular express
    #         format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive
    #         alphanumeric string up to 20 characters long. </p>
    #   @return [String]
    # @!attribute content
    #   <p>Content of the PLS lexicon as string data.</p>
    #   @return [String]
    class PutLexiconInput < Struct.new(
      nil,
      :name,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutLexiconOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unknown condition has caused a service failure.</p>
    # @!attribute message
    #   @return [String]
    class ServiceFailureException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code identifying the specific quota.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code identifying the originating service.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :quota_code,
      :service_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>SSML speech marks are not supported for plain text-type
    #       input.</p>
    # @!attribute message
    #   @return [String]
    class SsmlMarksNotSupportedForTextTypeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Inbound event stream for sending input and control events to manage bidirectional speech synthesis.</p>
    # @!attribute text_event
    #   <p>A text event containing content to be synthesized.</p>
    #   @return [Types::TextEvent]
    # @!attribute close_stream_event
    #   <p>An event indicating the end of the input stream.</p>
    #   @return [Types::CloseStreamEvent]
    class StartSpeechSynthesisStreamActionStream < Struct.new(
      :text_event,
      :close_stream_event,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TextEvent < StartSpeechSynthesisStreamActionStream; end
      class CloseStreamEvent < StartSpeechSynthesisStreamActionStream; end
      class Unknown < StartSpeechSynthesisStreamActionStream; end
    end

    # <p>Outbound event stream that contains synthesized audio data and stream status events.</p>
    # @!attribute audio_event
    #   <p>An audio event containing synthesized speech.</p>
    #   @return [Types::AudioEvent]
    # @!attribute stream_closed_event
    #   <p>An event, with summary information, indicating the stream has closed.</p>
    #   @return [Types::StreamClosedEvent]
    # @!attribute validation_exception
    #   <p>An exception indicating the input failed validation.</p>
    #   @return [Types::ValidationException]
    # @!attribute service_quota_exceeded_exception
    #   <p>An exception indicating a service quota would be exceeded.</p>
    #   @return [Types::ServiceQuotaExceededException]
    # @!attribute service_failure_exception
    #   <p>An unknown condition has caused a service failure.</p>
    #   @return [Types::ServiceFailureException]
    # @!attribute throttling_exception
    #   <p>An exception indicating the request was throttled.</p>
    #   @return [Types::ThrottlingException]
    class StartSpeechSynthesisStreamEventStream < Struct.new(
      :audio_event,
      :stream_closed_event,
      :validation_exception,
      :service_quota_exceeded_exception,
      :service_failure_exception,
      :throttling_exception,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AudioEvent < StartSpeechSynthesisStreamEventStream; end
      class StreamClosedEvent < StartSpeechSynthesisStreamEventStream; end
      class ValidationException < StartSpeechSynthesisStreamEventStream; end
      class ServiceQuotaExceededException < StartSpeechSynthesisStreamEventStream; end
      class ServiceFailureException < StartSpeechSynthesisStreamEventStream; end
      class ThrottlingException < StartSpeechSynthesisStreamEventStream; end
      class Unknown < StartSpeechSynthesisStreamEventStream; end
    end

    # @!attribute engine
    #   <p>Specifies the engine for Amazon Polly to use when processing input text for speech synthesis.
    #         Currently, only the <code>generative</code> engine is supported.
    #         If you specify a voice that the selected engine doesn't support, Amazon Polly returns an error.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>An optional parameter that sets the language code for the speech synthesis request. Specify this parameter only
    #         when using a bilingual voice. If a bilingual voice is used and no language code is specified, Amazon Polly
    #         uses the default language of the bilingual voice.</p>
    #   @return [String]
    # @!attribute lexicon_names
    #   <p>The names of one or more pronunciation lexicons for the service to apply
    #         during synthesis. Amazon Polly applies lexicons only when the lexicon language matches the voice language.</p>
    #   @return [Array<String>]
    # @!attribute output_format
    #   <p>The audio format for the synthesized speech. Currently, Amazon Polly does not support JSON speech marks.</p>
    #   @return [String]
    # @!attribute sample_rate
    #   <p>The audio frequency, specified in Hz.</p>
    #   @return [String]
    # @!attribute voice_id
    #   <p>The voice to use in synthesis. To get a list of available voice IDs, use the <a href="https://docs.aws.amazon.com/polly/latest/API/API_DescribeVoices.html">DescribeVoices</a> operation.</p>
    #   @return [String]
    # @!attribute action_stream
    #   <p>The input event stream that contains text events and stream control events.</p>
    #   @return [Types::StartSpeechSynthesisStreamActionStream]
    class StartSpeechSynthesisStreamInput < Struct.new(
      nil,
      :engine,
      :language_code,
      :lexicon_names,
      :output_format,
      :sample_rate,
      :voice_id,
      :action_stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_stream
    #   <p>The output event stream that contains synthesized audio events and stream status events.</p>
    #   @return [Types::StartSpeechSynthesisStreamEventStream]
    class StartSpeechSynthesisStreamOutput < Struct.new(
      nil,
      :event_stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute engine
    #   <p>Specifies the engine (<code>standard</code>, <code>neural</code>,
    #         <code>long-form</code> or <code>generative</code>) for Amazon Polly to use
    #         when processing input text for speech synthesis. Using a voice that
    #         is not supported for the engine selected will result in an error.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>Optional language code for the Speech Synthesis request. This is only
    #         necessary if using a bilingual voice, such as Aditi, which can be used for
    #         either Indian English (en-IN) or Hindi (hi-IN). </p>
    #            <p>If a bilingual voice is used and no language code is specified, Amazon Polly
    #         uses the default language of the bilingual voice. The default language for
    #         any voice is the one returned by the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation for the <code>LanguageCode</code>
    #         parameter. For example, if no language code is specified, Aditi will use
    #         Indian English rather than Hindi.</p>
    #   @return [String]
    # @!attribute lexicon_names
    #   <p>List of one or more pronunciation lexicon names you want the service
    #         to apply during synthesis. Lexicons are applied only if the language of
    #         the lexicon is the same as the language of the voice. </p>
    #   @return [Array<String>]
    # @!attribute output_format
    #   <p>The format in which the returned output will be encoded. For audio
    #         stream, this will be mp3, ogg_vorbis, ogg_opus, mu-law, a-law, or pcm. For speech marks, this will
    #         be json. </p>
    #   @return [String]
    # @!attribute output_s3_bucket_name
    #   <p>Amazon S3 bucket name to which the output file will be saved.</p>
    #   @return [String]
    # @!attribute output_s3_key_prefix
    #   <p>The Amazon S3 key prefix for the output speech file.</p>
    #   @return [String]
    # @!attribute sample_rate
    #   <p>The audio frequency specified in Hz.</p>
    #            <p>The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050",
    #         and "24000". The default value for standard voices is "22050". The default
    #         value for neural voices is "24000". The default value for long-form voices
    #         is "24000". The default value for generative voices is "24000".</p>
    #            <p>Valid values for pcm are "8000" and "16000" The default value is
    #         "16000". </p>
    #            <p>Valid value for ogg_opus is "48000". </p>
    #            <p>Valid value for mu-law and a-law is "8000". </p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>ARN for the SNS topic optionally used for providing status
    #         notification for a speech synthesis task.</p>
    #   @return [String]
    # @!attribute speech_mark_types
    #   <p>The type of speech marks returned for the input text.</p>
    #   @return [Array<String>]
    # @!attribute text
    #   <p>The input text to synthesize. If you specify ssml as the TextType,
    #         follow the SSML format for the input text. </p>
    #   @return [String]
    # @!attribute text_type
    #   <p>Specifies whether the input text is plain text or SSML. The default
    #         value is plain text. </p>
    #   @return [String]
    # @!attribute voice_id
    #   <p>Voice ID to use for the synthesis. </p>
    #   @return [String]
    class StartSpeechSynthesisTaskInput < Struct.new(
      nil,
      :engine,
      :language_code,
      :lexicon_names,
      :output_format,
      :output_s3_bucket_name,
      :output_s3_key_prefix,
      :sample_rate,
      :sns_topic_arn,
      :speech_mark_types,
      :text,
      :text_type,
      :voice_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute synthesis_task
    #   <p>SynthesisTask object that provides information and attributes about a
    #         newly submitted speech synthesis task.</p>
    #   @return [Types::SynthesisTask]
    class StartSpeechSynthesisTaskOutput < Struct.new(
      nil,
      :synthesis_task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the synthesis stream is closed and provides summary information.</p>
    # @!attribute request_characters
    #   <p>The total number of characters synthesized during the streaming session.</p>
    #   @return [Integer]
    class StreamClosedEvent < Struct.new(
      nil,
      :request_characters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:request_characters] = 0 unless options.key?(:request_characters)
        super
      end
    end

    # <p>SynthesisTask object that provides information about a speech
    #       synthesis task.</p>
    # @!attribute engine
    #   <p>Specifies the engine (<code>standard</code>, <code>neural</code>,
    #         <code>long-form</code> or <code>generative</code>) for Amazon Polly to use
    #         when processing input text for speech synthesis. Using a voice that
    #         is not supported for the engine selected will result in an error.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The Amazon Polly generated identifier for a speech synthesis task.</p>
    #   @return [String]
    # @!attribute task_status
    #   <p>Current status of the individual speech synthesis task.</p>
    #   @return [String]
    # @!attribute task_status_reason
    #   <p>Reason for the current status of a specific speech synthesis task,
    #         including errors if the task has failed.</p>
    #   @return [String]
    # @!attribute output_uri
    #   <p>Pathway for the output speech file.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Timestamp for the time the synthesis task was started.</p>
    #   @return [Time]
    # @!attribute request_characters
    #   <p>Number of billable characters synthesized.</p>
    #   @return [Integer]
    # @!attribute sns_topic_arn
    #   <p>ARN for the SNS topic optionally used for providing status
    #         notification for a speech synthesis task.</p>
    #   @return [String]
    # @!attribute lexicon_names
    #   <p>List of one or more pronunciation lexicon names you want the service
    #         to apply during synthesis. Lexicons are applied only if the language of
    #         the lexicon is the same as the language of the voice. </p>
    #   @return [Array<String>]
    # @!attribute output_format
    #   <p>The format in which the returned output will be encoded. For audio
    #         stream, this will be mp3, ogg_vorbis, ogg_opus, mu-law, a-law, or pcm. For speech marks, this will
    #         be json. </p>
    #   @return [String]
    # @!attribute sample_rate
    #   <p>The audio frequency specified in Hz.</p>
    #            <p>The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050",
    #         and "24000". The default value for standard voices is "22050". The default
    #         value for neural voices is "24000". The default value for long-form voices
    #         is "24000". The default value for generative voices is "24000".</p>
    #            <p>Valid values for pcm are "8000" and "16000" The default value is
    #         "16000". </p>
    #            <p>Valid value for ogg_opus is "48000". </p>
    #            <p>Valid value for mu-law and a-law is "8000". </p>
    #   @return [String]
    # @!attribute speech_mark_types
    #   <p>The type of speech marks returned for the input text.</p>
    #   @return [Array<String>]
    # @!attribute text_type
    #   <p>Specifies whether the input text is plain text or SSML. The default
    #         value is plain text. </p>
    #   @return [String]
    # @!attribute voice_id
    #   <p>Voice ID to use for the synthesis. </p>
    #   @return [String]
    # @!attribute language_code
    #   <p>Optional language code for a synthesis task. This is only necessary if
    #         using a bilingual voice, such as Aditi, which can be used for either
    #         Indian English (en-IN) or Hindi (hi-IN). </p>
    #            <p>If a bilingual voice is used and no language code is specified, Amazon Polly
    #         uses the default language of the bilingual voice. The default language for
    #         any voice is the one returned by the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation for the <code>LanguageCode</code>
    #         parameter. For example, if no language code is specified, Aditi will use
    #         Indian English rather than Hindi.</p>
    #   @return [String]
    class SynthesisTask < Struct.new(
      nil,
      :engine,
      :task_id,
      :task_status,
      :task_status_reason,
      :output_uri,
      :creation_time,
      :request_characters,
      :sns_topic_arn,
      :lexicon_names,
      :output_format,
      :sample_rate,
      :speech_mark_types,
      :text_type,
      :voice_id,
      :language_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:request_characters] = 0 unless options.key?(:request_characters)
        super
      end
    end

    # <p>The Speech Synthesis task with requested Task ID cannot be
    #       found.</p>
    # @!attribute message
    #   @return [String]
    class SynthesisTaskNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute engine
    #   <p>Specifies the engine (<code>standard</code>, <code>neural</code>,
    #         <code>long-form</code>, or <code>generative</code>) for Amazon Polly
    #         to use when processing input text for speech synthesis. Provide an engine
    #         that is supported by the voice you select. If you don't provide an engine,
    #         the standard engine is selected by default. If a chosen voice isn't supported
    #         by the standard engine, this will result in an error. For information on
    #         Amazon Polly voices and which voices are available for each engine, see <a href="https://docs.aws.amazon.com/polly/latest/dg/voicelist.html">Available Voices</a>.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>Optional language code for the Synthesize Speech request. This is only
    #         necessary if using a bilingual voice, such as Aditi, which can be used for
    #         either Indian English (en-IN) or Hindi (hi-IN). </p>
    #            <p>If a bilingual voice is used and no language code is specified, Amazon Polly
    #         uses the default language of the bilingual voice. The default language for
    #         any voice is the one returned by the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation for the <code>LanguageCode</code>
    #         parameter. For example, if no language code is specified, Aditi will use
    #         Indian English rather than Hindi.</p>
    #   @return [String]
    # @!attribute lexicon_names
    #   <p>List of one or more pronunciation lexicon names you want the
    #         service to apply during synthesis. Lexicons are applied only if the
    #         language of the lexicon is the same as the language of the voice. For
    #         information about storing lexicons, see <a href="https://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html">PutLexicon</a>.</p>
    #   @return [Array<String>]
    # @!attribute output_format
    #   <p> The format in which the returned output will be encoded. For audio
    #         stream, this will be mp3, ogg_vorbis, ogg_opus, mu-law, a-law or pcm. For speech marks, this will
    #         be json. </p>
    #            <p>When pcm is used, the content returned is audio/pcm in a signed
    #         16-bit, 1 channel (mono), little-endian format. </p>
    #   @return [String]
    # @!attribute sample_rate
    #   <p>The audio frequency specified in Hz.</p>
    #            <p>The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050", "24000", "44100" and "48000". The default value for standard voices is "22050". The default
    #         value for neural voices is "24000". The default value for long-form voices
    #         is "24000". The default value for generative voices is "24000".</p>
    #            <p>Valid values for pcm are "8000" and "16000" The default value is
    #         "16000". </p>
    #            <p>Valid value for ogg_opus is "48000". </p>
    #            <p>Valid value for mu-law and a-law is "8000". </p>
    #   @return [String]
    # @!attribute speech_mark_types
    #   <p>The type of speech marks returned for the input text.</p>
    #   @return [Array<String>]
    # @!attribute text
    #   <p> Input text to synthesize. If you specify <code>ssml</code> as the
    #           <code>TextType</code>, follow the SSML format for the input text.
    #       </p>
    #   @return [String]
    # @!attribute text_type
    #   <p> Specifies whether the input text is plain text or SSML. The
    #         default value is plain text. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/ssml.html">Using
    #           SSML</a>.</p>
    #   @return [String]
    # @!attribute voice_id
    #   <p> Voice ID to use for the synthesis. You can get a list of available
    #         voice IDs by calling the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation. </p>
    #   @return [String]
    class SynthesizeSpeechInput < Struct.new(
      nil,
      :engine,
      :language_code,
      :lexicon_names,
      :output_format,
      :sample_rate,
      :speech_mark_types,
      :text,
      :text_type,
      :voice_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute audio_stream
    #   <p> Stream containing the synthesized speech. </p>
    #   @return [String]
    # @!attribute content_type
    #   <p> Specifies the type audio stream. This should reflect the
    #           <code>OutputFormat</code> parameter in your request. </p>
    #            <ul>
    #               <li>
    #                  <p> If you request <code>mp3</code> as the
    #               <code>OutputFormat</code>, the <code>ContentType</code> returned is
    #             audio/mpeg. </p>
    #               </li>
    #               <li>
    #                  <p> If you request <code>ogg_vorbis</code> as the
    #               <code>OutputFormat</code>, the <code>ContentType</code> returned is
    #             audio/ogg. </p>
    #               </li>
    #               <li>
    #                  <p> If you request <code>ogg_opus</code> as the
    #               <code>OutputFormat</code>, the <code>ContentType</code> returned is
    #             audio/ogg. </p>
    #               </li>
    #               <li>
    #                  <p> If you request <code>pcm</code> as the
    #               <code>OutputFormat</code>, the <code>ContentType</code> returned is
    #             audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format.
    #           </p>
    #               </li>
    #               <li>
    #                  <p> If you request <code>mu-law</code> as the
    #               <code>OutputFormat</code>, the <code>ContentType</code> returned is
    #             audio/mulaw.
    #           </p>
    #               </li>
    #               <li>
    #                  <p> If you request <code>a-law</code> as the
    #               <code>OutputFormat</code>, the <code>ContentType</code> returned is
    #             audio/alaw.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>If you request <code>json</code> as the
    #               <code>OutputFormat</code>, the <code>ContentType</code> returned is
    #             application/x-json-stream.</p>
    #               </li>
    #            </ul>
    #            <p> </p>
    #   @return [String]
    # @!attribute request_characters
    #   <p>Number of characters synthesized.</p>
    #   @return [Integer]
    class SynthesizeSpeechOutput < Struct.new(
      nil,
      :audio_stream,
      :content_type,
      :request_characters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:audio_stream] = Base64.strict_decode64('') unless options.key?(:audio_stream)
        options[:request_characters] = 0 unless options.key?(:request_characters)
        super
      end
    end

    # <p>Contains text content to be synthesized into speech.</p>
    # @!attribute text
    #   <p>The text content to synthesize. If you specify <code>ssml</code> as the
    #         <code>TextType</code>, follow the SSML format for the input text.</p>
    #   @return [String]
    # @!attribute text_type
    #   <p>Specifies whether the input text is plain text or SSML. Default: plain text.</p>
    #   @return [String]
    # @!attribute flush_stream_configuration
    #   <p>Configuration for controlling when synthesized audio flushes to the output stream.</p>
    #   @return [Types::FlushStreamConfiguration]
    class TextEvent < Struct.new(
      nil,
      :text,
      :text_type,
      :flush_stream_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The value of the "Text" parameter is longer than the accepted
    #       limits. For the <code>SynthesizeSpeech</code> API, the limit for input
    #       text is a maximum of 6000 characters total, of which no more than 3000 can
    #       be billed characters. For the <code>StartSpeechSynthesisTask</code> API,
    #       the maximum is 200,000 characters, of which no more than 100,000 can be
    #       billed characters. SSML tags are not counted as billed
    #       characters.</p>
    # @!attribute message
    #   @return [String]
    class TextLengthExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because of request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute throttling_reasons
    #   <p>A list of reasons explaining why the request was throttled.</p>
    #   @return [Array<Types::ThrottlingReason>]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :throttling_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about a specific throttling reason.</p>
    # @!attribute reason
    #   <p>The reason code explaining why the request was throttled.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource that caused the throttling.</p>
    #   @return [String]
    class ThrottlingReason < Struct.new(
      nil,
      :reason,
      :resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The alphabet specified by the lexicon is not a supported alphabet.
    #       Valid values are <code>x-sampa</code> and <code>ipa</code>.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedPlsAlphabetException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The language specified in the lexicon is unsupported. For a list of
    #       supported languages, see <a href="https://docs.aws.amazon.com/polly/latest/dg/API_LexiconAttributes.html">Lexicon Attributes</a>.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedPlsLanguageException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the request failed validation.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The fields that caused the validation error.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a field that failed validation.</p>
    # @!attribute name
    #   <p>The name of the field that failed validation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing why the field failed validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Description of the voice.</p>
    # @!attribute gender
    #   <p>Gender of the voice.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Amazon Polly assigned voice ID. This is the ID that you specify when
    #         calling the <code>SynthesizeSpeech</code> operation.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>Language code of the voice.</p>
    #   @return [String]
    # @!attribute language_name
    #   <p>Human readable name of the language in English.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the voice (for example, Salli, Kendra, etc.). This provides
    #         a human readable voice name that you might display in your
    #         application.</p>
    #   @return [String]
    # @!attribute additional_language_codes
    #   <p>Additional codes for languages available for the specified voice in
    #         addition to its default language. </p>
    #            <p>For example, the default language for Aditi is Indian English (en-IN)
    #         because it was first used for that language. Since Aditi is bilingual and
    #         fluent in both Indian English and Hindi, this parameter would show the
    #         code <code>hi-IN</code>.</p>
    #   @return [Array<String>]
    # @!attribute supported_engines
    #   <p>Specifies which engines (<code>standard</code>, <code>neural</code>,
    #         <code>long-form</code> or <code>generative</code>) are supported by a given voice.</p>
    #   @return [Array<String>]
    class Voice < Struct.new(
      nil,
      :gender,
      :id,
      :language_code,
      :language_name,
      :name,
      :additional_language_codes,
      :supported_engines,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
