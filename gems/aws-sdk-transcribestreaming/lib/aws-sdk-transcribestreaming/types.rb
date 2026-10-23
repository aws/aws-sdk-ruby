# frozen_string_literal: true

# This is generated code!

module Aws::TranscribeStreaming
  # This module contains the types returned by client operations.
  module Types

    # <p>A list of possible alternative transcriptions for the input audio. Each alternative may contain
    #       one or more of <code>Items</code>, <code>Entities</code>, or <code>Transcript</code>.</p>
    # @!attribute transcript
    #   <p>Contains transcribed text.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Contains words, phrases, or punctuation marks in your transcription output.</p>
    #   @return [Array<Types::Item>]
    # @!attribute entities
    #   <p>Contains entities identified as personally identifiable information (PII) in your transcription 
    #         output.</p>
    #   @return [Array<Types::Entity>]
    class Alternative < Struct.new(
      nil,
      :transcript,
      :items,
      :entities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A wrapper for your audio chunks. Your audio stream consists of one or more audio
    #       events, which consist of one or more audio chunks.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/event-stream.html">Event stream encoding</a>.</p>
    # @!attribute audio_chunk
    #   <p>
    #       An audio blob containing the next segment of audio from your application,
    #       with a maximum duration of 1 second. 
    #       The maximum size in bytes varies based on audio properties.
    #     </p>
    #            <p>Find recommended size in <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#best-practices">Transcribing streaming best practices</a>.
    #     </p>
    #            <p>
    #       Size calculation: <code>Duration (s) * Sample Rate (Hz) * Number of Channels * 2 (Bytes per Sample)</code>
    #            </p>
    #            <p>
    #       For example, a 1-second chunk of 16 kHz, 2-channel, 16-bit audio would be 
    #       <code>1 * 16000 * 2 * 2 = 64000 bytes</code>.
    #     </p>
    #            <p>
    #       For 8 kHz, 1-channel, 16-bit audio, a 1-second chunk would be 
    #       <code>1 * 8000 * 1 * 2 = 16000 bytes</code>.
    #     </p>
    #   @return [String]
    class AudioEvent < Struct.new(
      nil,
      :audio_chunk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An encoded stream of audio blobs. Audio streams are encoded as either HTTP/2 or WebSocket 
    #       data frames.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    # @!attribute audio_event
    #   <p>A blob of audio from your application. Your audio stream consists of one or more audio
    #         events.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/event-stream.html">Event stream encoding</a>.</p>
    #   @return [Types::AudioEvent]
    # @!attribute configuration_event
    #   <p>Contains audio channel definitions and post-call analytics settings.</p>
    #   @return [Types::ConfigurationEvent]
    class AudioStream < Struct.new(
      :audio_event,
      :configuration_event,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AudioEvent < AudioStream; end
      class ConfigurationEvent < AudioStream; end
      class Unknown < AudioStream; end
    end

    # <p>One or more arguments to the <code>StartStreamTranscription</code>, 
    #       <code>StartMedicalStreamTranscription</code>, or <code>StartCallAnalyticsStreamTranscription</code> 
    #       operation was not valid. For example, <code>MediaEncoding</code> or <code>LanguageCode</code> 
    #       used unsupported values. Check the specified parameters and try your request again.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains entities identified as personally identifiable information (PII) in your
    #       transcription output, along with various associated attributes. Examples include category,
    #       confidence score, content, type, and start and end times.</p>
    # @!attribute begin_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the start of the identified entity.</p>
    #   @return [Integer]
    # @!attribute end_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the end of the identified entity.</p>
    #   @return [Integer]
    # @!attribute category
    #   <p>The category of information identified. For example, <code>PII</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of PII identified. For example, <code>NAME</code> or 
    #         <code>CREDIT_DEBIT_NUMBER</code>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The word or words that represent the identified entity.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score associated with the identification of an entity in your transcript.</p>
    #            <p>Confidence scores are values between 0 and 1. A larger value indicates a higher
    #         probability that the identified entity correctly matches the entity spoken in your
    #         media.</p>
    #   @return [Float]
    class CallAnalyticsEntity < Struct.new(
      nil,
      :begin_offset_millis,
      :end_offset_millis,
      :category,
      :type,
      :content,
      :confidence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A word, phrase, or punctuation mark in your Call Analytics transcription output, along with various 
    #       associated attributes, such as confidence score, type, and start and end times.</p>
    # @!attribute begin_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the start of the identified item.</p>
    #   @return [Integer]
    # @!attribute end_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the end of the identified item.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The type of item identified. Options are: <code>PRONUNCIATION</code> (spoken words) and
    #         <code>PUNCTUATION</code>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The word or punctuation that was transcribed.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score associated with a word or phrase in your transcript.</p>
    #            <p>Confidence scores are values between 0 and 1. A larger value indicates a higher
    #         probability that the identified item correctly matches the item spoken in your media.</p>
    #   @return [Float]
    # @!attribute vocabulary_filter_match
    #   <p>Indicates whether the specified item matches a word in the vocabulary filter included in
    #         your Call Analytics request. If <code>true</code>, there is a vocabulary filter match.</p>
    #   @return [Boolean]
    # @!attribute stable
    #   <p>If partial result stabilization is enabled, <code>Stable</code> indicates whether the specified 
    #         item is stable (<code>true</code>) or if it may change when the segment is complete 
    #         (<code>false</code>).</p>
    #   @return [Boolean]
    class CallAnalyticsItem < Struct.new(
      nil,
      :begin_offset_millis,
      :end_offset_millis,
      :type,
      :content,
      :confidence,
      :vocabulary_filter_match,
      :stable,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vocabulary_filter_match] = false unless options.key?(:vocabulary_filter_match)
        super
      end
    end

    # <p>The language code that represents the language identified in your audio, including the associated
    #       confidence score.</p>
    # @!attribute language_code
    #   <p>The language code of the identified language.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The confidence score associated with the identified language code. Confidence scores are values between zero and one; larger values indicate a higher confidence in the identified language.</p>
    #   @return [Float]
    class CallAnalyticsLanguageWithScore < Struct.new(
      nil,
      :language_code,
      :score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:score] = 0 unless options.key?(:score)
        super
      end
    end

    # <p>Contains detailed information about your real-time Call Analytics session. These details are 
    #       provided in the <code>UtteranceEvent</code> and <code>CategoryEvent</code> objects.</p>
    # @!attribute utterance_event
    #   <p>Contains set of transcription results from one or more audio segments, along with additional 
    #         information per your request parameters. This can include information relating to channel definitions,
    #         partial result stabilization, sentiment, issue detection, and other transcription-related data.</p>
    #   @return [Types::UtteranceEvent]
    # @!attribute category_event
    #   <p>Provides information on matched categories that were used to generate real-time supervisor 
    #         alerts.</p>
    #   @return [Types::CategoryEvent]
    # @!attribute bad_request_exception
    #   <p>One or more arguments to the <code>StartStreamTranscription</code>, 
    #         <code>StartMedicalStreamTranscription</code>, or <code>StartCallAnalyticsStreamTranscription</code> 
    #         operation was not valid. For example, <code>MediaEncoding</code> or <code>LanguageCode</code> 
    #         used unsupported values. Check the specified parameters and try your request again.</p>
    #   @return [Types::BadRequestException]
    # @!attribute limit_exceeded_exception
    #   <p>Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length
    #         limit. Break your audio stream into smaller chunks and try your request again.</p>
    #   @return [Types::LimitExceededException]
    # @!attribute internal_failure_exception
    #   <p>A problem occurred while processing the audio. Amazon Transcribe terminated 
    #         processing.</p>
    #   @return [Types::InternalFailureException]
    # @!attribute conflict_exception
    #   <p>A new stream started with the same session ID. The current stream has been terminated.</p>
    #   @return [Types::ConflictException]
    # @!attribute service_unavailable_exception
    #   <p>The service is currently unavailable. Try your request later.</p>
    #   @return [Types::ServiceUnavailableException]
    class CallAnalyticsTranscriptResultStream < Struct.new(
      :utterance_event,
      :category_event,
      :bad_request_exception,
      :limit_exceeded_exception,
      :internal_failure_exception,
      :conflict_exception,
      :service_unavailable_exception,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class UtteranceEvent < CallAnalyticsTranscriptResultStream; end
      class CategoryEvent < CallAnalyticsTranscriptResultStream; end
      class BadRequestException < CallAnalyticsTranscriptResultStream; end
      class LimitExceededException < CallAnalyticsTranscriptResultStream; end
      class InternalFailureException < CallAnalyticsTranscriptResultStream; end
      class ConflictException < CallAnalyticsTranscriptResultStream; end
      class ServiceUnavailableException < CallAnalyticsTranscriptResultStream; end
      class Unknown < CallAnalyticsTranscriptResultStream; end
    end

    # <p>Provides information on any <code>TranscriptFilterType</code> categories that matched your 
    #       transcription output. Matches are identified for each segment upon completion of that segment.</p>
    # @!attribute matched_categories
    #   <p>Lists the categories that were matched in your audio segment.</p>
    #   @return [Array<String>]
    # @!attribute matched_details
    #   <p>Contains information about the matched categories, including category names and timestamps.</p>
    #   @return [Hash<String, Types::PointsOfInterest>]
    class CategoryEvent < Struct.new(
      nil,
      :matched_categories,
      :matched_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Makes it possible to specify which speaker is on which audio channel. For example, if your
    #       agent is the first participant to speak, you would set <code>ChannelId</code> to
    #       <code>0</code> (to indicate the first channel) and <code>ParticipantRole</code> to
    #       <code>AGENT</code> (to indicate that it's the agent speaking).</p>
    # @!attribute channel_id
    #   <p>Specify the audio channel you want to define.</p>
    #   @return [Integer]
    # @!attribute participant_role
    #   <p>Specify the speaker you want to define. Omitting this parameter is equivalent to
    #         specifying both participants.</p>
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

    # <p>Provides the location, using character count, in your transcript where a match is identified. For example, 
    #       the location of an issue or a category match within a segment.</p>
    # @!attribute begin
    #   <p>Provides the character count of the first character where a match is identified. For example, the first
    #         character associated with an issue or a category match in a segment transcript.</p>
    #   @return [Integer]
    # @!attribute end
    #   <p>Provides the character count of the last character where a match is identified. For example, the last 
    #         character associated with an issue or a category match in a segment transcript.</p>
    #   @return [Integer]
    class CharacterOffsets < Struct.new(
      nil,
      :begin,
      :end,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details for clinical note generation,
    #       including status, and output locations for clinical note and aggregated transcript if the analytics completed,
    #       or failure reason if the analytics failed.
    #     </p>
    # @!attribute clinical_note_output_location
    #   <p>Holds the Amazon S3 URI for the output Clinical Note. </p>
    #   @return [String]
    # @!attribute transcript_output_location
    #   <p>Holds the Amazon S3 URI for the output Transcript. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the clinical note generation.</p>
    #            <p>Possible Values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #         After audio streaming finishes, and you send a <code>MedicalScribeSessionControlEvent</code> event (with END_OF_SESSION as the Type),
    #         the status is set to <code>IN_PROGRESS</code>.
    #         If the status is <code>COMPLETED</code>, the analytics completed successfully, and you can find the
    #         results at the locations specified in <code>ClinicalNoteOutputLocation</code> and <code>TranscriptOutputLocation</code>.
    #         If the status is <code>FAILED</code>, <code>FailureReason</code> provides details about the failure.
    #       </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If <code>ClinicalNoteGenerationResult</code> is <code>FAILED</code>, information about why it failed. </p>
    #   @return [String]
    class ClinicalNoteGenerationResult < Struct.new(
      nil,
      :clinical_note_output_location,
      :transcript_output_location,
      :status,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output configuration for aggregated transcript and clinical note generation.</p>
    # @!attribute output_bucket_name
    #   <p>The name of the Amazon S3 bucket where you want the output of Amazon Web Services HealthScribe post-stream analytics stored. Don't include the <code>S3://</code> prefix of the specified bucket. </p>
    #            <p>HealthScribe outputs transcript and clinical note files under the prefix:
    #           <code>S3://$output-bucket-name/healthscribe-streaming/session-id/post-stream-analytics/clinical-notes</code>
    #            </p>
    #            <p>The role <code>ResourceAccessRoleArn</code> specified in the <code>MedicalScribeConfigurationEvent</code> must have
    #         permission to use the specified location. You can change Amazon S3 permissions using the <a href="https://console.aws.amazon.com/s3">
    #           Amazon Web Services Management Console
    #         </a>. See also <a href="https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user">Permissions Required for IAM User Roles </a> . </p>
    #   @return [String]
    # @!attribute note_template
    #   <p>Specify one of the following templates to use for the clinical note summary. The default is <code>HISTORY_AND_PHYSICAL</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>HISTORY_AND_PHYSICAL: Provides summaries for key sections of the clinical documentation. Examples of sections include Chief Complaint, History of Present Illness, Review of Systems, Past Medical History, Assessment, and Plan.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>GIRPP: Provides summaries based on the patients progress toward goals. Examples of sections include Goal, Intervention,
    #             Response, Progress, and Plan.</p>
    #               </li>
    #               <li>
    #                  <p>BIRP: Focuses on the patient's behavioral patterns and responses. Examples of sections include Behavior, Intervention, Response, and Plan.</p>
    #               </li>
    #               <li>
    #                  <p>SIRP: Emphasizes the situational context of therapy. Examples of sections include Situation, Intervention, Response, and Plan.</p>
    #               </li>
    #               <li>
    #                  <p>DAP: Provides a simplified format for clinical documentation. Examples of sections include Data, Assessment, and Plan.</p>
    #               </li>
    #               <li>
    #                  <p>BEHAVIORAL_SOAP: Behavioral health focused documentation format. Examples of sections include Subjective, Objective, Assessment, and Plan.</p>
    #               </li>
    #               <li>
    #                  <p>PHYSICAL_SOAP: Physical health focused documentation format. Examples of sections include Subjective, Objective, Assessment, and Plan.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ClinicalNoteGenerationSettings < Struct.new(
      nil,
      :output_bucket_name,
      :note_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows you to set audio channel definitions and post-call analytics settings.</p>
    # @!attribute channel_definitions
    #   <p>Indicates which speaker is on which audio channel.</p>
    #   @return [Array<Types::ChannelDefinition>]
    # @!attribute post_call_analytics_settings
    #   <p>Provides additional optional settings for your Call Analytics post-call request, including 
    #         encryption and output locations for your redacted transcript.</p>
    #            <p>
    #               <code>PostCallAnalyticsSettings</code> provides you with the same insights as a 
    #         Call Analytics post-call transcription. Refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tca-post-call.html">Post-call analytics</a> for more information 
    #         on this feature.</p>
    #   @return [Types::PostCallAnalyticsSettings]
    class ConfigurationEvent < Struct.new(
      nil,
      :channel_definitions,
      :post_call_analytics_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A new stream started with the same session ID. The current stream has been terminated.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains entities identified as personally identifiable information (PII) in your
    #       transcription output, along with various associated attributes. Examples include category,
    #       confidence score, type, stability score, and start and end times.</p>
    # @!attribute start_time
    #   <p>The start time of the utterance that was identified as PII in seconds, with millisecond precision (e.g., 1.056)</p>
    #   @return [Float]
    # @!attribute end_time
    #   <p>The end time of the utterance that was identified as PII in seconds, with millisecond precision (e.g., 1.056)</p>
    #   @return [Float]
    # @!attribute category
    #   <p>The category of information identified. The only category is <code>PII</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of PII identified. For example, <code>NAME</code> or 
    #         <code>CREDIT_DEBIT_NUMBER</code>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The word or words identified as PII.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score associated with the identified PII entity in your audio.</p>
    #            <p>Confidence scores are values between 0 and 1. A larger value indicates a higher
    #         probability that the identified entity correctly matches the entity spoken in your
    #         media.</p>
    #   @return [Float]
    class Entity < Struct.new(
      nil,
      :start_time,
      :end_time,
      :category,
      :type,
      :content,
      :confidence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:start_time] = 0 unless options.key?(:start_time)
        options[:end_time] = 0 unless options.key?(:end_time)
        super
      end
    end

    # @!attribute session_id
    #   <p>The identifier of the HealthScribe streaming session you want information about.</p>
    #   @return [String]
    class GetMedicalScribeStreamRequest < Struct.new(
      nil,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute medical_scribe_stream_details
    #   <p>Provides details about a HealthScribe streaming session.</p>
    #   @return [Types::MedicalScribeStreamDetails]
    class GetMedicalScribeStreamResponse < Struct.new(
      nil,
      :medical_scribe_stream_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A problem occurred while processing the audio. Amazon Transcribe terminated 
    #       processing.</p>
    # @!attribute message
    #   @return [String]
    class InternalFailureException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lists the issues that were identified in your audio segment.</p>
    # @!attribute character_offsets
    #   <p>Provides the timestamps that identify when in an audio segment the specified issue occurs.</p>
    #   @return [Types::CharacterOffsets]
    class IssueDetected < Struct.new(
      nil,
      :character_offsets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A word, phrase, or punctuation mark in your transcription output, along with various associated
    #       attributes, such as confidence score, type, and start and end times.</p>
    # @!attribute start_time
    #   <p>The start time of the transcribed item in seconds, with millisecond precision (e.g., 1.056)</p>
    #   @return [Float]
    # @!attribute end_time
    #   <p>The end time of the transcribed item in seconds, with millisecond precision (e.g., 1.056)</p>
    #   @return [Float]
    # @!attribute type
    #   <p>The type of item identified. Options are: <code>PRONUNCIATION</code> (spoken words) and
    #         <code>PUNCTUATION</code>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The word or punctuation that was transcribed.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_match
    #   <p>Indicates whether the specified item matches a word in the vocabulary filter included in
    #         your request. If <code>true</code>, there is a vocabulary filter match.</p>
    #   @return [Boolean]
    # @!attribute speaker
    #   <p>If speaker partitioning is enabled, <code>Speaker</code> labels the speaker of the
    #         specified item.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score associated with a word or phrase in your transcript.</p>
    #            <p>Confidence scores are values between 0 and 1. A larger value indicates a higher
    #         probability that the identified item correctly matches the item spoken in your media.</p>
    #   @return [Float]
    # @!attribute stable
    #   <p>If partial result stabilization is enabled, <code>Stable</code> indicates whether the specified 
    #         item is stable (<code>true</code>) or if it may change when the segment is complete 
    #         (<code>false</code>).</p>
    #   @return [Boolean]
    class Item < Struct.new(
      nil,
      :start_time,
      :end_time,
      :type,
      :content,
      :vocabulary_filter_match,
      :speaker,
      :confidence,
      :stable,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:start_time] = 0 unless options.key?(:start_time)
        options[:end_time] = 0 unless options.key?(:end_time)
        options[:vocabulary_filter_match] = false unless options.key?(:vocabulary_filter_match)
        super
      end
    end

    # <p>The language code that represents the language identified in your audio, including the associated
    #       confidence score. If you enabled channel identification in your request and each channel contained a 
    #       different language, you will have more than one <code>LanguageWithScore</code> result.</p>
    # @!attribute language_code
    #   <p>The language code of the identified language.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The confidence score associated with the identified language code. Confidence scores are values
    #         between zero and one; larger values indicate a higher confidence in the identified language.</p>
    #   @return [Float]
    class LanguageWithScore < Struct.new(
      nil,
      :language_code,
      :score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:score] = 0 unless options.key?(:score)
        super
      end
    end

    # <p>Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length
    #       limit. Break your audio stream into smaller chunks and try your request again.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of possible alternative transcriptions for the input audio. Each alternative may
    #             contain one or more of <code>Items</code>, <code>Entities</code>, or
    #             <code>Transcript</code>.</p>
    # @!attribute transcript
    #   <p>Contains transcribed text.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Contains words, phrases, or punctuation marks in your transcription output.</p>
    #   @return [Array<Types::MedicalItem>]
    # @!attribute entities
    #   <p>Contains entities identified as personal health information (PHI) in your transcription 
    #               output.</p>
    #   @return [Array<Types::MedicalEntity>]
    class MedicalAlternative < Struct.new(
      nil,
      :transcript,
      :items,
      :entities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains entities identified as personal health information (PHI) in your
    #             transcription output, along with various associated attributes. Examples include
    #             category, confidence score, type, stability score, and start and end times.</p>
    # @!attribute start_time
    #   <p>The start time, in seconds, of the utterance that was identified as PHI.</p>
    #   @return [Float]
    # @!attribute end_time
    #   <p>The end time, in seconds, of the utterance that was identified as PHI.</p>
    #   @return [Float]
    # @!attribute category
    #   <p>The category of information identified. The only category is <code>PHI</code>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The word or words identified as PHI.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score associated with the identified PHI entity in your audio.</p>
    #            <p>Confidence scores are values between 0 and 1. A larger value indicates a higher
    #               probability that the identified entity correctly matches the entity spoken in your
    #               media.</p>
    #   @return [Float]
    class MedicalEntity < Struct.new(
      nil,
      :start_time,
      :end_time,
      :category,
      :content,
      :confidence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:start_time] = 0 unless options.key?(:start_time)
        options[:end_time] = 0 unless options.key?(:end_time)
        super
      end
    end

    # <p>A word, phrase, or punctuation mark in your transcription output, along with various 
    #             associated attributes, such as confidence score, type, and start and end times.</p>
    # @!attribute start_time
    #   <p>The start time, in seconds, of the transcribed item.</p>
    #   @return [Float]
    # @!attribute end_time
    #   <p>The end time, in seconds, of the transcribed item.</p>
    #   @return [Float]
    # @!attribute type
    #   <p>The type of item identified. Options are: <code>PRONUNCIATION</code> (spoken 
    #               words) and <code>PUNCTUATION</code>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The word or punctuation that was transcribed.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score associated with a word or phrase in your transcript.</p>
    #            <p>Confidence scores are values between 0 and 1. A larger value indicates a higher
    #               probability that the identified item correctly matches the item spoken in your
    #               media.</p>
    #   @return [Float]
    # @!attribute speaker
    #   <p>If speaker partitioning is enabled, <code>Speaker</code> labels the speaker of the
    #               specified item.</p>
    #   @return [String]
    class MedicalItem < Struct.new(
      nil,
      :start_time,
      :end_time,
      :type,
      :content,
      :confidence,
      :speaker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:start_time] = 0 unless options.key?(:start_time)
        options[:end_time] = 0 unless options.key?(:end_time)
        super
      end
    end

    # <p>The <code>Result</code> associated with a 
    #             <code></code>.</p>
    #          <p>Contains a set of transcription results from one or more audio segments, along with
    #             additional information per your request parameters. This can include information relating to
    #             alternative transcriptions, channel identification, partial result stabilization, language 
    #             identification, and other transcription-related data.</p>
    # @!attribute result_id
    #   <p>Provides a unique identifier for the <code>Result</code>.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time, in seconds, of the <code>Result</code>.</p>
    #   @return [Float]
    # @!attribute end_time
    #   <p>The end time, in seconds, of the <code>Result</code>.</p>
    #   @return [Float]
    # @!attribute is_partial
    #   <p>Indicates if the segment is complete.</p>
    #            <p>If <code>IsPartial</code> is <code>true</code>, the segment is not complete. If
    #                   <code>IsPartial</code> is <code>false</code>, the segment is complete.</p>
    #   @return [Boolean]
    # @!attribute alternatives
    #   <p>A list of possible alternative transcriptions for the input audio. Each alternative may 
    #               contain one or more of <code>Items</code>, <code>Entities</code>, or
    #               <code>Transcript</code>.</p>
    #   @return [Array<Types::MedicalAlternative>]
    # @!attribute channel_id
    #   <p>Indicates the channel identified for the <code>Result</code>.</p>
    #   @return [String]
    class MedicalResult < Struct.new(
      nil,
      :result_id,
      :start_time,
      :end_time,
      :is_partial,
      :alternatives,
      :channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:start_time] = 0 unless options.key?(:start_time)
        options[:end_time] = 0 unless options.key?(:end_time)
        options[:is_partial] = false unless options.key?(:is_partial)
        super
      end
    end

    # <p>A wrapper for your audio chunks</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/event-stream.html">Event stream encoding</a>.
    #     </p>
    # @!attribute audio_chunk
    #   <p>
    #       An audio blob containing the next segment of audio from your application,
    #       with a maximum duration of 1 second. 
    #       The maximum size in bytes varies based on audio properties.
    #     </p>
    #            <p>Find recommended size in <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#best-practices">Transcribing streaming best practices</a>.
    #     </p>
    #            <p>
    #       Size calculation: <code>Duration (s) * Sample Rate (Hz) * Number of Channels * 2 (Bytes per Sample)</code>
    #            </p>
    #            <p>
    #       For example, a 1-second chunk of 16 kHz, 2-channel, 16-bit audio would be 
    #       <code>1 * 16000 * 2 * 2 = 64000 bytes</code>.
    #     </p>
    #            <p>
    #       For 8 kHz, 1-channel, 16-bit audio, a 1-second chunk would be 
    #       <code>1 * 8000 * 1 * 2 = 16000 bytes</code>.
    #     </p>
    #   @return [String]
    class MedicalScribeAudioEvent < Struct.new(
      nil,
      :audio_chunk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Makes it possible to specify which speaker is on which channel.
    #       For example, if the clinician is the first participant to speak, you would set the <code>ChannelId</code> of the first
    #       <code>ChannelDefinition</code>
    #       in the list to <code>0</code> (to indicate the first channel) and <code>ParticipantRole</code> to
    #       <code>CLINICIAN</code>
    #       (to indicate that it's the clinician speaking).
    #       Then you would set the <code>ChannelId</code> of the second <code>ChannelDefinition</code> in the list to
    #       <code>1</code>
    #       (to indicate the second channel) and <code>ParticipantRole</code> to <code>PATIENT</code> (to indicate that it's the patient speaking).
    #     </p>
    #          <p>If you don't specify a channel definition, HealthScribe will diarize the transcription and identify speaker roles for each speaker.</p>
    # @!attribute channel_id
    #   <p>Specify the audio channel you want to define.</p>
    #   @return [Integer]
    # @!attribute participant_role
    #   <p>Specify the participant that you want to flag.
    #         The allowed options are <code>CLINICIAN</code> and
    #         <code>PATIENT</code>.
    #       </p>
    #   @return [String]
    class MedicalScribeChannelDefinition < Struct.new(
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

    # <p>Specify details to configure the streaming session, including channel definitions, encryption settings, post-stream analytics
    #       settings, resource access role ARN and vocabulary settings.
    #     </p>
    #          <p>Whether you are starting a new session or resuming an existing session, 
    #       your first event must be a <code>MedicalScribeConfigurationEvent</code>.
    #       If you are resuming a session, then this event must have the same configurations that you provided to start the session.
    #     </p>
    # @!attribute vocabulary_name
    #   <p>Specify the name of the custom vocabulary you want to use for your streaming session.
    #         Custom vocabulary names are case-sensitive.
    #       </p>
    #   @return [String]
    # @!attribute vocabulary_filter_name
    #   <p>Specify the name of the custom vocabulary filter you want to include in your streaming session.
    #         Custom vocabulary filter names are case-sensitive.
    #       </p>
    #            <p>If you include <code>VocabularyFilterName</code> in the <code>MedicalScribeConfigurationEvent</code>,
    #         you must also include <code>VocabularyFilterMethod</code>.
    #       </p>
    #   @return [String]
    # @!attribute vocabulary_filter_method
    #   <p>Specify how you want your custom vocabulary filter applied to the streaming session.</p>
    #            <p>To replace words with <code>***</code>, specify <code>mask</code>.
    #       </p>
    #            <p>To delete words, specify <code>remove</code>.
    #       </p>
    #            <p>To flag words without changing them, specify <code>tag</code>.
    #       </p>
    #   @return [String]
    # @!attribute resource_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions to access the Amazon S3 output
    #         bucket you specified, and use your KMS key if supplied. If the role that you specify doesn’t have the
    #         appropriate permissions, your request fails. </p>
    #            <p>
    #         IAM
    #         role ARNs have the format
    #         <code>arn:partition:iam::account:role/role-name-with-path</code>.
    #         For example: <code>arn:aws:iam::111122223333:role/Admin</code>.
    #       </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/health-scribe-streaming.html">Amazon Web Services HealthScribe</a>.</p>
    #   @return [String]
    # @!attribute channel_definitions
    #   <p>Specify which speaker is on which audio channel.</p>
    #   @return [Array<Types::MedicalScribeChannelDefinition>]
    # @!attribute encryption_settings
    #   <p>Specify the encryption settings for your streaming session.</p>
    #   @return [Types::MedicalScribeEncryptionSettings]
    # @!attribute post_stream_analytics_settings
    #   <p>Specify settings for post-stream analytics.</p>
    #   @return [Types::MedicalScribePostStreamAnalyticsSettings]
    # @!attribute medical_scribe_context
    #   <p>The <code>MedicalScribeContext</code> object that contains contextual information used to generate
    #               customized clinical notes.</p>
    #   @return [Types::MedicalScribeContext]
    class MedicalScribeConfigurationEvent < Struct.new(
      nil,
      :vocabulary_name,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :resource_access_role_arn,
      :channel_definitions,
      :encryption_settings,
      :post_stream_analytics_settings,
      :medical_scribe_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>MedicalScribeContext</code> object that contains contextual information which is used during clinical note generation
    #             to add relevant context to the note.</p>
    # @!attribute patient_context
    #   <p>Contains patient-specific information used to customize the clinical note generation.</p>
    #   @return [Types::MedicalScribePatientContext]
    class MedicalScribeContext < Struct.new(
      nil,
      :patient_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains encryption related settings to be used for data encryption with Key Management Service, including KmsEncryptionContext and KmsKeyId.
    #      The KmsKeyId is required, while KmsEncryptionContext is optional for additional layer of security.
    #     </p>
    #          <p>By default, Amazon Web Services HealthScribe provides encryption at rest to protect sensitive customer data using Amazon S3-managed keys. HealthScribe uses the KMS key you specify as a second layer of
    #       encryption.</p>
    #          <p>
    #       Your <code>ResourceAccessRoleArn</code>
    #       must permission to use your KMS key.
    #       For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/health-scribe-encryption.html">Data Encryption at rest for Amazon Web Services HealthScribe</a>.
    #     </p>
    # @!attribute kms_encryption_context
    #   <p>A map of plain text, non-secret key:value pairs, known as encryption context pairs, that provide an added layer of
    #         security for your data. For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html#kms-context">KMSencryption context </a> and <a href="https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html">Asymmetric keys in KMS
    #         </a>. </p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key you want to use for your streaming session. You
    #         can specify its KMS key ID, key Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. 
    #         To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: 1234abcd-12ab-34cd-56ef-1234567890ab</p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Alias name: alias/ExampleAlias</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Alias ARN: arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias  
    #           </p>
    #               </li>
    #            </ul>
    #            <p>
    #         To get the key ID and key ARN for a KMS key, use the <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_ListKeys.html">ListKeys</a> or <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html">DescribeKey</a> KMS API operations. 
    #         To get the alias name and alias ARN, use <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_ListAliases.html">ListKeys</a> API operation.     
    #       </p>
    #   @return [String]
    class MedicalScribeEncryptionSettings < Struct.new(
      nil,
      :kms_encryption_context,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An encoded stream of events. The stream is encoded as HTTP/2 data frames.</p>
    #          <p>An input stream consists of the following types of events. The first element of the input stream must be the <code>MedicalScribeConfigurationEvent</code> event type.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>MedicalScribeConfigurationEvent</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MedicalScribeAudioEvent</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MedicalScribeSessionControlEvent</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute audio_event
    #   <p>A wrapper for your audio chunks</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/event-stream.html">Event stream encoding</a>.
    #       </p>
    #   @return [Types::MedicalScribeAudioEvent]
    # @!attribute session_control_event
    #   <p>Specify the lifecycle of your streaming session, such as ending the session.</p>
    #   @return [Types::MedicalScribeSessionControlEvent]
    # @!attribute configuration_event
    #   <p>Specify additional streaming session configurations beyond those provided in your initial start request headers. For example, specify
    #         channel definitions, encryption settings, and post-stream analytics settings.
    #       </p>
    #            <p>Whether you are starting a new session or resuming an existing session, 
    #         your first event must be a <code>MedicalScribeConfigurationEvent</code>.
    #       </p>
    #   @return [Types::MedicalScribeConfigurationEvent]
    class MedicalScribeInputStream < Struct.new(
      :audio_event,
      :session_control_event,
      :configuration_event,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AudioEvent < MedicalScribeInputStream; end
      class SessionControlEvent < MedicalScribeInputStream; end
      class ConfigurationEvent < MedicalScribeInputStream; end
      class Unknown < MedicalScribeInputStream; end
    end

    # <p>Contains patient-specific information. </p>
    # @!attribute pronouns
    #   <p>The patient's preferred pronouns that the user wants to provide as a context for clinical note generation .</p>
    #   @return [String]
    class MedicalScribePatientContext < Struct.new(
      nil,
      :pronouns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for the result of post-stream analytics.
    #     </p>
    # @!attribute clinical_note_generation_result
    #   <p>Provides the Clinical Note Generation result for post-stream analytics.</p>
    #   @return [Types::ClinicalNoteGenerationResult]
    class MedicalScribePostStreamAnalyticsResult < Struct.new(
      nil,
      :clinical_note_generation_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for post-stream analytics.
    #     </p>
    # @!attribute clinical_note_generation_settings
    #   <p>Specify settings for the post-stream clinical note generation.</p>
    #   @return [Types::ClinicalNoteGenerationSettings]
    class MedicalScribePostStreamAnalyticsSettings < Struct.new(
      nil,
      :clinical_note_generation_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result stream where you will receive the output events.
    #       The details are provided in the <code>MedicalScribeTranscriptEvent</code> object.
    #     </p>
    # @!attribute transcript_event
    #   <p>The transcript event that contains real-time transcription results.
    #       </p>
    #   @return [Types::MedicalScribeTranscriptEvent]
    # @!attribute bad_request_exception
    #   <p>One or more arguments to the <code>StartStreamTranscription</code>, 
    #         <code>StartMedicalStreamTranscription</code>, or <code>StartCallAnalyticsStreamTranscription</code> 
    #         operation was not valid. For example, <code>MediaEncoding</code> or <code>LanguageCode</code> 
    #         used unsupported values. Check the specified parameters and try your request again.</p>
    #   @return [Types::BadRequestException]
    # @!attribute limit_exceeded_exception
    #   <p>Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length
    #         limit. Break your audio stream into smaller chunks and try your request again.</p>
    #   @return [Types::LimitExceededException]
    # @!attribute internal_failure_exception
    #   <p>A problem occurred while processing the audio. Amazon Transcribe terminated 
    #         processing.</p>
    #   @return [Types::InternalFailureException]
    # @!attribute conflict_exception
    #   <p>A new stream started with the same session ID. The current stream has been terminated.</p>
    #   @return [Types::ConflictException]
    # @!attribute service_unavailable_exception
    #   <p>The service is currently unavailable. Try your request later.</p>
    #   @return [Types::ServiceUnavailableException]
    class MedicalScribeResultStream < Struct.new(
      :transcript_event,
      :bad_request_exception,
      :limit_exceeded_exception,
      :internal_failure_exception,
      :conflict_exception,
      :service_unavailable_exception,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TranscriptEvent < MedicalScribeResultStream; end
      class BadRequestException < MedicalScribeResultStream; end
      class LimitExceededException < MedicalScribeResultStream; end
      class InternalFailureException < MedicalScribeResultStream; end
      class ConflictException < MedicalScribeResultStream; end
      class ServiceUnavailableException < MedicalScribeResultStream; end
      class Unknown < MedicalScribeResultStream; end
    end

    # <p>Specify the lifecycle of your streaming session.</p>
    # @!attribute type
    #   <p>The type of <code>MedicalScribeSessionControlEvent</code>.
    #       </p>
    #            <p>Possible Values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>END_OF_SESSION</code> - Indicates the audio streaming is complete. After you
    #             send an END_OF_SESSION event, Amazon Web Services HealthScribe starts the post-stream analytics.
    #             The session can't be resumed after this event is sent. After Amazon Web Services HealthScribe processes the event, the real-time <code>StreamStatus</code> is <code>COMPLETED</code>.
    #             You get the <code>StreamStatus</code> and other stream details with the <a href="https://docs.aws.amazon.com/transcribe/latest/APIReference/API_streaming_GetMedicalScribeStream.html">GetMedicalScribeStream</a> API operation.
    #             For more information about different streaming statuses, see the <code>StreamStatus</code> description in the <a href="https://docs.aws.amazon.com/transcribe/latest/APIReference/API_streaming_MedicalScribeStreamDetails.html">MedicalScribeStreamDetails</a>.      
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class MedicalScribeSessionControlEvent < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a Amazon Web Services HealthScribe streaming session.</p>
    # @!attribute session_id
    #   <p>The identifier of the HealthScribe streaming session.</p>
    #   @return [String]
    # @!attribute stream_created_at
    #   <p>The date and time when the HealthScribe streaming session was created.</p>
    #   @return [Time]
    # @!attribute stream_ended_at
    #   <p>The date and time when the HealthScribe streaming session was ended.</p>
    #   @return [Time]
    # @!attribute language_code
    #   <p>The Language Code of the HealthScribe streaming session.</p>
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate (in hertz) of the HealthScribe streaming session.</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>The Media Encoding of the HealthScribe streaming session.</p>
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>The vocabulary name of the HealthScribe streaming session.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_name
    #   <p>The name of the vocabulary filter used for the HealthScribe streaming session .</p>
    #   @return [String]
    # @!attribute vocabulary_filter_method
    #   <p>The method of the vocabulary filter for the HealthScribe streaming session.</p>
    #   @return [String]
    # @!attribute resource_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the role used in the HealthScribe streaming session.</p>
    #   @return [String]
    # @!attribute channel_definitions
    #   <p>The Channel Definitions of the HealthScribe streaming session.</p>
    #   @return [Array<Types::MedicalScribeChannelDefinition>]
    # @!attribute encryption_settings
    #   <p>The Encryption Settings of the HealthScribe streaming session.</p>
    #   @return [Types::MedicalScribeEncryptionSettings]
    # @!attribute stream_status
    #   <p>The streaming status of the HealthScribe streaming session.</p>
    #            <p>Possible Values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAUSED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This status is specific to real-time streaming.
    #         A <code>COMPLETED</code> status doesn't mean that the post-stream analytics is complete.
    #         To get status of an analytics result, check the <code>Status</code> field for the analytics result within the
    #         <code>MedicalScribePostStreamAnalyticsResult</code>. For example, you can view the status of the 
    #         <code>ClinicalNoteGenerationResult</code>.
    #       </p>
    #            </note>
    #   @return [String]
    # @!attribute post_stream_analytics_settings
    #   <p>The post-stream analytics settings of the HealthScribe streaming session.</p>
    #   @return [Types::MedicalScribePostStreamAnalyticsSettings]
    # @!attribute post_stream_analytics_result
    #   <p>The result of post-stream analytics for the HealthScribe streaming session.</p>
    #   @return [Types::MedicalScribePostStreamAnalyticsResult]
    # @!attribute medical_scribe_context_provided
    #   <p>Indicates whether the <code>MedicalScribeContext</code> object was provided when the stream was started.</p>
    #   @return [Boolean]
    class MedicalScribeStreamDetails < Struct.new(
      nil,
      :session_id,
      :stream_created_at,
      :stream_ended_at,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :resource_access_role_arn,
      :channel_definitions,
      :encryption_settings,
      :stream_status,
      :post_stream_analytics_settings,
      :post_stream_analytics_result,
      :medical_scribe_context_provided,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The event associated with <code>MedicalScribeResultStream</code>.
    #     </p>
    #          <p>Contains <code>MedicalScribeTranscriptSegment</code>, which contains segment related information.
    #     </p>
    # @!attribute transcript_segment
    #   <p>The <code>TranscriptSegment</code> associated with a <code>MedicalScribeTranscriptEvent</code>.
    #       </p>
    #   @return [Types::MedicalScribeTranscriptSegment]
    class MedicalScribeTranscriptEvent < Struct.new(
      nil,
      :transcript_segment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A word, phrase, or punctuation mark in your transcription output, along with various associated
    #       attributes, such as confidence score, type, and start and end times.
    #     </p>
    # @!attribute begin_audio_time
    #   <p>The start time, in milliseconds, of the transcribed item.</p>
    #   @return [Float]
    # @!attribute end_audio_time
    #   <p>The end time, in milliseconds, of the transcribed item.</p>
    #   @return [Float]
    # @!attribute type
    #   <p>The type of item identified. Options are: <code>PRONUNCIATION</code> (spoken words)
    #         and <code>PUNCTUATION</code>.
    #       </p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score associated with a word or phrase in your transcript.</p>
    #            <p>Confidence scores are values between 0 and 1. A larger value indicates a higher
    #         probability that the identified item correctly matches the item spoken in your media.
    #       </p>
    #   @return [Float]
    # @!attribute content
    #   <p>The word, phrase or punctuation mark that was transcribed.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_match
    #   <p>Indicates whether the specified item matches a word in the vocabulary filter included in
    #         your configuration event. If <code>true</code>, there is a vocabulary filter match.
    #       </p>
    #   @return [Boolean]
    class MedicalScribeTranscriptItem < Struct.new(
      nil,
      :begin_audio_time,
      :end_audio_time,
      :type,
      :confidence,
      :content,
      :vocabulary_filter_match,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:begin_audio_time] = 0 unless options.key?(:begin_audio_time)
        options[:end_audio_time] = 0 unless options.key?(:end_audio_time)
        super
      end
    end

    # <p>Contains a set of transcription results, along with additional information of the segment.</p>
    # @!attribute segment_id
    #   <p>The identifier of the segment.</p>
    #   @return [String]
    # @!attribute begin_audio_time
    #   <p>The start time, in milliseconds, of the segment.</p>
    #   @return [Float]
    # @!attribute end_audio_time
    #   <p>The end time, in milliseconds, of the segment.</p>
    #   @return [Float]
    # @!attribute content
    #   <p>Contains transcribed text of the segment.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Contains words, phrases, or punctuation marks in your segment.</p>
    #   @return [Array<Types::MedicalScribeTranscriptItem>]
    # @!attribute is_partial
    #   <p>Indicates if the segment is complete.</p>
    #            <p>If <code>IsPartial</code> is <code>true</code>, the segment is not complete.
    #         If <code>IsPartial</code> is <code>false</code>, the segment is complete.
    #       </p>
    #   @return [Boolean]
    # @!attribute channel_id
    #   <p>Indicates which audio channel is associated with the <code>MedicalScribeTranscriptSegment</code>.
    #       </p>
    #            <p>If <code>MedicalScribeChannelDefinition</code> is not provided in the <code>MedicalScribeConfigurationEvent</code>,
    #         then this field will not be included.
    #       </p>
    #   @return [String]
    class MedicalScribeTranscriptSegment < Struct.new(
      nil,
      :segment_id,
      :begin_audio_time,
      :end_audio_time,
      :content,
      :items,
      :is_partial,
      :channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:begin_audio_time] = 0 unless options.key?(:begin_audio_time)
        options[:end_audio_time] = 0 unless options.key?(:end_audio_time)
        options[:is_partial] = false unless options.key?(:is_partial)
        super
      end
    end

    # <p>The <code>MedicalTranscript</code> associated with a 
    #             <code></code>.</p>
    #          <p>
    #             <code>MedicalTranscript</code> contains <code>Results</code>, which contains a set of 
    #             transcription results from one or more audio segments, along with additional information per your 
    #             request parameters.</p>
    # @!attribute results
    #   <p>Contains a set of transcription results from one or more audio segments, along with 
    #               additional information per your request parameters. This can include information relating to 
    #               alternative transcriptions, channel identification, partial result stabilization, language 
    #               identification, and other transcription-related data.</p>
    #   @return [Array<Types::MedicalResult>]
    class MedicalTranscript < Struct.new(
      nil,
      :results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>MedicalTranscriptEvent</code> associated with a 
    #             <code>MedicalTranscriptResultStream</code>.</p>
    #          <p>Contains a set of transcription results from one or more audio segments, along with additional 
    #             information per your request parameters.</p>
    # @!attribute transcript
    #   <p>Contains <code>Results</code>, which contains a set of transcription results from one or 
    #               more audio segments, along with additional information per your request parameters. This can
    #               include information relating to alternative transcriptions, channel identification, partial result 
    #               stabilization, language identification, and other transcription-related data.</p>
    #   @return [Types::MedicalTranscript]
    class MedicalTranscriptEvent < Struct.new(
      nil,
      :transcript,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about your streaming session.</p>
    # @!attribute transcript_event
    #   <p>The <code>MedicalTranscriptEvent</code> associated with a 
    #               <code>MedicalTranscriptResultStream</code>.</p>
    #            <p>Contains a set of transcription results from one or more audio segments, along with 
    #               additional information per your request parameters. This can include information relating to
    #               alternative transcriptions, channel identification, partial result stabilization, language 
    #               identification, and other transcription-related data.</p>
    #   @return [Types::MedicalTranscriptEvent]
    # @!attribute bad_request_exception
    #   <p>One or more arguments to the <code>StartStreamTranscription</code>, 
    #         <code>StartMedicalStreamTranscription</code>, or <code>StartCallAnalyticsStreamTranscription</code> 
    #         operation was not valid. For example, <code>MediaEncoding</code> or <code>LanguageCode</code> 
    #         used unsupported values. Check the specified parameters and try your request again.</p>
    #   @return [Types::BadRequestException]
    # @!attribute limit_exceeded_exception
    #   <p>Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length
    #         limit. Break your audio stream into smaller chunks and try your request again.</p>
    #   @return [Types::LimitExceededException]
    # @!attribute internal_failure_exception
    #   <p>A problem occurred while processing the audio. Amazon Transcribe terminated 
    #         processing.</p>
    #   @return [Types::InternalFailureException]
    # @!attribute conflict_exception
    #   <p>A new stream started with the same session ID. The current stream has been terminated.</p>
    #   @return [Types::ConflictException]
    # @!attribute service_unavailable_exception
    #   <p>The service is currently unavailable. Try your request later.</p>
    #   @return [Types::ServiceUnavailableException]
    class MedicalTranscriptResultStream < Struct.new(
      :transcript_event,
      :bad_request_exception,
      :limit_exceeded_exception,
      :internal_failure_exception,
      :conflict_exception,
      :service_unavailable_exception,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TranscriptEvent < MedicalTranscriptResultStream; end
      class BadRequestException < MedicalTranscriptResultStream; end
      class LimitExceededException < MedicalTranscriptResultStream; end
      class InternalFailureException < MedicalTranscriptResultStream; end
      class ConflictException < MedicalTranscriptResultStream; end
      class ServiceUnavailableException < MedicalTranscriptResultStream; end
      class Unknown < MedicalTranscriptResultStream; end
    end

    # <p>Contains the timestamps of matched categories.</p>
    # @!attribute timestamp_ranges
    #   <p>Contains the timestamp ranges (start time through end time) of matched categories and rules.</p>
    #   @return [Array<Types::TimestampRange>]
    class PointsOfInterest < Struct.new(
      nil,
      :timestamp_ranges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows you to specify additional settings for your Call Analytics post-call request, 
    #       including output locations for your redacted transcript, which IAM role to use, 
    #       and which encryption key to use.</p>
    #          <p>
    #             <code>DataAccessRoleArn</code> and <code>OutputLocation</code> are required 
    #       fields.</p>
    #          <p>
    #             <code>PostCallAnalyticsSettings</code> provides you with the same insights as a 
    #       Call Analytics post-call transcription. Refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tca-post-call.html">Post-call analytics</a> for more information 
    #       on this feature.</p>
    # @!attribute output_location
    #   <p>The Amazon S3 location where you want your Call Analytics post-call 
    #         transcription output stored. You can use any of the following formats to specify the output 
    #         location:</p>
    #            <ol>
    #               <li>
    #                  <p>s3://DOC-EXAMPLE-BUCKET</p>
    #               </li>
    #               <li>
    #                  <p>s3://DOC-EXAMPLE-BUCKET/my-output-folder/</p>
    #               </li>
    #               <li>
    #                  <p>s3://DOC-EXAMPLE-BUCKET/my-output-folder/my-call-analytics-job.json</p>
    #               </li>
    #            </ol>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #         access the Amazon S3 bucket that contains your input files. If the role that you
    #         specify doesn’t have the appropriate permissions to access the specified Amazon S3 
    #         location, your request fails.</p>
    #            <p>IAM role ARNs have the format
    #         <code>arn:partition:iam::account:role/role-name-with-path</code>. For example:
    #         <code>arn:aws:iam::111122223333:role/Admin</code>. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM
    #           ARNs</a>.</p>
    #   @return [String]
    # @!attribute content_redaction_output
    #   <p>Specify whether you want only a redacted transcript or both a redacted and an unredacted 
    #         transcript. If you choose redacted and unredacted, two JSON files are generated and stored in the 
    #         Amazon S3 output location you specify.</p>
    #            <p>Note that to include <code>ContentRedactionOutput</code> in your request, you must 
    #         enable content redaction (<code>ContentRedactionType</code>).</p>
    #   @return [String]
    # @!attribute output_encryption_kms_key_id
    #   <p>The KMS key you want to use to encrypt your Call Analytics post-call
    #         output.</p>
    #            <p>If using a key located in the <b>current</b>
    #         Amazon Web Services account, you can specify your KMS key in one of four
    #         ways:</p>
    #            <ol>
    #               <li>
    #                  <p>Use the KMS key ID itself. For example,
    #             <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use an alias for the KMS key ID. For example,
    #             <code>alias/ExampleAlias</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #             example,
    #             <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the ARN for the KMS key alias. For example,
    #             <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #            <p>If using a key located in a <b>different</b>
    #         Amazon Web Services account than the current Amazon Web Services account, you can specify
    #         your KMS key in one of two ways:</p>
    #            <ol>
    #               <li>
    #                  <p>Use the ARN for the KMS key ID. For example,
    #             <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the ARN for the KMS key alias. For example,
    #             <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #            <p>Note that the role making the 
    #         request must have permission to use the specified KMS key.</p>
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

    # <p>The request references a resource which doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>Result</code> associated with a 
    #       <code></code>.</p>
    #          <p>Contains a set of transcription results from one or more audio segments, along with additional 
    #       information per your request parameters. This can include information relating to alternative
    #       transcriptions, channel identification, partial result stabilization, language identification, and other
    #       transcription-related data.</p>
    # @!attribute result_id
    #   <p>Provides a unique identifier for the <code>Result</code>.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the <code>Result</code> in seconds, with millisecond precision (e.g., 1.056).</p>
    #   @return [Float]
    # @!attribute end_time
    #   <p>The end time of the <code>Result</code> in seconds, with millisecond precision (e.g., 1.056).</p>
    #   @return [Float]
    # @!attribute is_partial
    #   <p>Indicates if the segment is complete.</p>
    #            <p>If <code>IsPartial</code> is <code>true</code>, the segment is not complete. If
    #           <code>IsPartial</code> is <code>false</code>, the segment is complete.</p>
    #   @return [Boolean]
    # @!attribute alternatives
    #   <p>A list of possible alternative transcriptions for the input audio. Each alternative may contain
    #         one or more of <code>Items</code>, <code>Entities</code>, or <code>Transcript</code>.</p>
    #   @return [Array<Types::Alternative>]
    # @!attribute channel_id
    #   <p>Indicates which audio channel is associated with the <code>Result</code>.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code that represents the language spoken in your audio stream.</p>
    #   @return [String]
    # @!attribute language_identification
    #   <p>The language code of the dominant language identified in your stream.</p>
    #            <p>If you enabled channel identification and each channel of your audio contains a different language,
    #         you may have more than one result.</p>
    #   @return [Array<Types::LanguageWithScore>]
    class Result < Struct.new(
      nil,
      :result_id,
      :start_time,
      :end_time,
      :is_partial,
      :alternatives,
      :channel_id,
      :language_code,
      :language_identification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:start_time] = 0 unless options.key?(:start_time)
        options[:end_time] = 0 unless options.key?(:end_time)
        options[:is_partial] = false unless options.key?(:is_partial)
        super
      end
    end

    # <p>The service is currently unavailable. Try your request later.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute language_code
    #   <p>Specify the language code that represents the language spoken in your audio.</p>
    #            <p>For a list of languages supported with real-time Call Analytics, refer to the 
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported 
    #           languages</a> table.</p>
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate of the input audio (in hertz). Low-quality audio, such as telephone audio,
    #         is typically around 8,000 Hz. High-quality audio typically ranges from 16,000 Hz to 48,000 Hz.
    #         Note that the sample rate you specify must match that of your audio.</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>Specify the encoding of your input audio. Supported formats are:</p>
    #            <ul>
    #               <li>
    #                  <p>FLAC</p>
    #               </li>
    #               <li>
    #                  <p>OPUS-encoded audio in an Ogg container</p>
    #               </li>
    #               <li>
    #                  <p>PCM (only signed 16-bit little-endian audio formats, which does not include WAV)</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio">Media formats</a>.</p>
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>Specify the name of the custom vocabulary that you want to use when processing your
    #         transcription. Note that vocabulary names are case sensitive.</p>
    #            <p>If the language of the specified custom vocabulary doesn't match the language identified in
    #         your media, the custom vocabulary is not applied to your transcription.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html">Custom vocabularies</a>.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>Specify a name for your Call Analytics transcription session. If you don't include this parameter
    #         in your request, Amazon Transcribe generates an ID and returns it in the response.</p>
    #   @return [String]
    # @!attribute audio_stream
    #   <p>An encoded stream of audio blobs. Audio streams are encoded as either HTTP/2 or WebSocket 
    #         data frames.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    #   @return [Types::AudioStream]
    # @!attribute vocabulary_filter_name
    #   <p>Specify the name of the custom vocabulary filter that you want to use when processing your
    #         transcription. Note that vocabulary filter names are case sensitive.</p>
    #            <p>If the language of the specified custom vocabulary filter doesn't match the language identified in
    #         your media, the vocabulary filter is not applied to your transcription.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html">Using vocabulary filtering with unwanted 
    #         words</a>.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_method
    #   <p>Specify how you want your vocabulary filter applied to your transcript.</p>
    #            <p>To replace words with <code>***</code>, choose <code>mask</code>.</p>
    #            <p>To delete words, choose <code>remove</code>.</p>
    #            <p>To flag words without changing them, choose <code>tag</code>.</p>
    #   @return [String]
    # @!attribute language_model_name
    #   <p>Specify the name of the custom language model that you want to use when processing your
    #         transcription. Note that language model names are case sensitive.</p>
    #            <p>The language of the specified language model must match the language code you specify
    #         in your transcription request. If the languages don't match, the custom language model isn't applied. 
    #         There are no errors or warnings associated with a language mismatch.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html">Custom language models</a>.</p>
    #   @return [String]
    # @!attribute identify_language
    #   <p>Enables automatic language identification for your Call Analytics transcription.</p>
    #            <p>If you include <code>IdentifyLanguage</code>, you must include a list of
    #         language codes, using <code>LanguageOptions</code>, that you think may be present in 
    #         your audio stream. You must provide a minimum of two language selections.</p>
    #            <p>You can also include a preferred language using <code>PreferredLanguage</code>. Adding a 
    #         preferred language can help Amazon Transcribe identify the language faster than if you omit this 
    #         parameter.</p>
    #            <p>Note that you must include either <code>LanguageCode</code> or 
    #         <code>IdentifyLanguage</code> in your request. If you include both parameters, your transcription job
    #         fails.</p>
    #   @return [Boolean]
    # @!attribute language_options
    #   <p>Specify two or more language codes that represent the languages you think may be present 
    #         in your media.</p>
    #            <p>Including language options can improve the accuracy of language identification.</p>
    #            <p>If you include <code>LanguageOptions</code> in your request, you must also include 
    #         <code>IdentifyLanguage</code>.</p>
    #            <p>For a list of languages supported with Call Analytics streaming, refer to the 
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported 
    #           languages</a> table.</p>
    #            <important>
    #               <p>You can only include one language dialect per language per stream. For example, you
    #           cannot include <code>en-US</code> and <code>en-AU</code> in the same request.</p>
    #            </important>
    #   @return [String]
    # @!attribute preferred_language
    #   <p>Specify a preferred language from the subset of languages codes you specified in 
    #         <code>LanguageOptions</code>.</p>
    #            <p>You can only use this parameter if you've included <code>IdentifyLanguage</code> and
    #           <code>LanguageOptions</code> in your request.</p>
    #   @return [String]
    # @!attribute vocabulary_names
    #   <p>Specify the names of the custom vocabularies that you want to use when processing your
    #         Call Analytics transcription. Note that vocabulary names are case sensitive.</p>
    #            <p>If the custom vocabulary's language doesn't match the identified media language, it won't be applied to the transcription.</p>
    #            <important>
    #               <p>This parameter is only intended for use <b>with</b> the
    #             <code>IdentifyLanguage</code> parameter. If you're <b>not</b>
    #           including <code>IdentifyLanguage</code> in your request and want to use a custom vocabulary
    #           with your transcription, use the <code>VocabularyName</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html">Custom vocabularies</a>.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_names
    #   <p>Specify the names of the custom vocabulary filters that you want to use when processing
    #         your Call Analytics transcription. Note that vocabulary filter names are case sensitive.</p>
    #            <p>These filters serve to customize the transcript output.</p>
    #            <important>
    #               <p>This parameter is only intended for use <b>with</b> 
    #           the <code>IdentifyLanguage</code> parameter. If you're <b>not</b> 
    #           including <code>IdentifyLanguage</code> in your request and want to use a custom vocabulary filter 
    #           with your transcription, use the <code>VocabularyFilterName</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html">Using vocabulary filtering with unwanted 
    #         words</a>.</p>
    #   @return [String]
    # @!attribute enable_partial_results_stabilization
    #   <p>Enables partial result stabilization for your transcription. Partial result stabilization can reduce
    #         latency in your output, but may impact accuracy. For more information, see 
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result 
    #           stabilization</a>.</p>
    #   @return [Boolean]
    # @!attribute partial_results_stability
    #   <p>Specify the level of stability to use when you enable partial results stabilization 
    #         (<code>EnablePartialResultsStabilization</code>).</p>
    #            <p>Low stability provides the highest accuracy. High stability transcribes faster, but with slightly
    #         lower accuracy.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result 
    #         stabilization</a>.</p>
    #   @return [String]
    # @!attribute content_identification_type
    #   <p>Labels all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content identification is performed at the segment level; PII specified in 
    #         <code>PiiEntityTypes</code> is flagged upon complete transcription of an audio segment. If you don't
    #         include <code>PiiEntityTypes</code> in your request, all PII is identified.</p>
    #            <p>You can’t set <code>ContentIdentificationType</code> and <code>ContentRedactionType</code>
    #         in the same request. If you set both, your request returns a
    #         <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable
    #         information</a>.</p>
    #   @return [String]
    # @!attribute content_redaction_type
    #   <p>Redacts all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content redaction is performed at the segment level; PII specified in 
    #         <code>PiiEntityTypes</code> is redacted upon complete transcription of an audio segment. If you don't
    #         include <code>PiiEntityTypes</code> in your request, all PII is redacted.</p>
    #            <p>You can’t set <code>ContentRedactionType</code> and <code>ContentIdentificationType</code>
    #         in the same request. If you set both, your request returns a <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable
    #         information</a>.</p>
    #   @return [String]
    # @!attribute pii_entity_types
    #   <p>Specify which types of personally identifiable information (PII) you want to redact in your 
    #         transcript. You can include as many types as you'd like, or you can select 
    #         <code>ALL</code>.</p>
    #            <p>Values must be comma-separated and can include: <code>ADDRESS</code>, 
    #         <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING</code>,
    #         <code>CREDIT_DEBIT_CVV</code>, <code>CREDIT_DEBIT_EXPIRY</code>,
    #         <code>CREDIT_DEBIT_NUMBER</code>, <code>EMAIL</code>, 
    #         <code>NAME</code>, <code>PHONE</code>, <code>PIN</code>, 
    #         <code>SSN</code>, or <code>ALL</code>.</p>
    #            <p>Note that if you include <code>PiiEntityTypes</code> in your request, you must also include 
    #         <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>.</p>
    #            <p>If you include <code>ContentRedactionType</code> or 
    #         <code>ContentIdentificationType</code> in your request, but do not include 
    #         <code>PiiEntityTypes</code>, all PII is redacted or identified.</p>
    #   @return [String]
    class StartCallAnalyticsStreamTranscriptionRequest < Struct.new(
      nil,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :session_id,
      :audio_stream,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :language_model_name,
      :identify_language,
      :language_options,
      :preferred_language,
      :vocabulary_names,
      :vocabulary_filter_names,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>Provides the identifier for your real-time Call Analytics request.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>Provides the language code that you specified in your Call Analytics request.</p>
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>Provides the sample rate that you specified in your Call Analytics request.</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>Provides the media encoding you specified in your Call Analytics request.</p>
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>Provides the name of the custom vocabulary that you specified in your Call Analytics request.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>Provides the identifier for your Call Analytics transcription session.</p>
    #   @return [String]
    # @!attribute call_analytics_transcript_result_stream
    #   <p>Provides detailed information about your real-time Call Analytics session.</p>
    #   @return [Types::CallAnalyticsTranscriptResultStream]
    # @!attribute vocabulary_filter_name
    #   <p>Provides the name of the custom vocabulary filter that you specified in your Call Analytics
    #         request.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_method
    #   <p>Provides the vocabulary filtering method used in your Call Analytics transcription.</p>
    #   @return [String]
    # @!attribute language_model_name
    #   <p>Provides the name of the custom language model that you specified in your Call Analytics 
    #         request.</p>
    #   @return [String]
    # @!attribute identify_language
    #   <p>Shows whether automatic language identification was enabled for your Call Analytics transcription.</p>
    #   @return [Boolean]
    # @!attribute language_options
    #   <p>Provides the language codes that you specified in your Call Analytics request.</p>
    #   @return [String]
    # @!attribute preferred_language
    #   <p>Provides the preferred language that you specified in your Call Analytics request.</p>
    #   @return [String]
    # @!attribute vocabulary_names
    #   <p>Provides the names of the custom vocabularies that you specified in your Call Analytics request.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_names
    #   <p>Provides the names of the custom vocabulary filters that you specified in your Call Analytics request.</p>
    #   @return [String]
    # @!attribute enable_partial_results_stabilization
    #   <p>Shows whether partial results stabilization was enabled for your Call Analytics transcription.</p>
    #   @return [Boolean]
    # @!attribute partial_results_stability
    #   <p>Provides the stabilization level used for your transcription.</p>
    #   @return [String]
    # @!attribute content_identification_type
    #   <p>Shows whether content identification was enabled for your Call Analytics transcription.</p>
    #   @return [String]
    # @!attribute content_redaction_type
    #   <p>Shows whether content redaction was enabled for your Call Analytics transcription.</p>
    #   @return [String]
    # @!attribute pii_entity_types
    #   <p>Lists the PII entity types you specified in your Call Analytics request.</p>
    #   @return [String]
    class StartCallAnalyticsStreamTranscriptionResponse < Struct.new(
      nil,
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
      :identify_language,
      :language_options,
      :preferred_language,
      :vocabulary_names,
      :vocabulary_filter_names,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:identify_language] = false unless options.key?(:identify_language)
        options[:enable_partial_results_stabilization] = false unless options.key?(:enable_partial_results_stabilization)
        super
      end
    end

    # @!attribute session_id
    #   <p>Specify an identifier for your streaming session (in UUID format).
    #         If you don't include a SessionId in your request,
    #         Amazon Web Services HealthScribe generates an ID and returns it in the response.
    #       </p>
    #   @return [String]
    # @!attribute language_code
    #   <p>Specify the language code for your HealthScribe streaming session.</p>
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>Specify the sample rate of the input audio (in hertz).
    #         Amazon Web Services HealthScribe supports a range from 16,000 Hz to 48,000 Hz.
    #         The sample rate you specify must match that of your audio.
    #       </p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>Specify the encoding used for the input audio.</p>
    #            <p>Supported formats are:</p>
    #            <ul>
    #               <li>
    #                  <p>FLAC</p>
    #               </li>
    #               <li>
    #                  <p>OPUS-encoded audio in an Ogg container</p>
    #               </li>
    #               <li>
    #                  <p>PCM (only signed 16-bit little-endian audio formats, which does not include
    #             WAV)
    #           </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio">Media
    #         formats</a>.
    #       </p>
    #   @return [String]
    # @!attribute input_stream
    #   <p>Specify the input stream where you will send events in real time.</p>
    #            <p>The first element of the input stream must be a <code>MedicalScribeConfigurationEvent</code>.
    #       </p>
    #   @return [Types::MedicalScribeInputStream]
    class StartMedicalScribeStreamRequest < Struct.new(
      nil,
      :session_id,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :input_stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The identifier (in UUID format) for your streaming session.</p>
    #            <p>If you already started streaming, this is same ID as the one you specified in your initial <code>StartMedicalScribeStreamRequest</code>.
    #       </p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The unique identifier for your streaming request.
    #       </p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The Language Code that you specified in your request.
    #         Same as provided in the <code>StartMedicalScribeStreamRequest</code>.
    #       </p>
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate (in hertz) that you specified in your request.
    #         Same as provided in the
    #         <code>StartMedicalScribeStreamRequest</code>
    #            </p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>The Media Encoding you specified in your request.
    #         Same as provided in the
    #         <code>StartMedicalScribeStreamRequest</code>
    #            </p>
    #   @return [String]
    # @!attribute result_stream
    #   <p>The result stream where you will receive the output events.
    #       </p>
    #   @return [Types::MedicalScribeResultStream]
    class StartMedicalScribeStreamResponse < Struct.new(
      nil,
      :session_id,
      :request_id,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :result_stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute language_code
    #   <p>Specify the language code that represents the language spoken in your audio.</p>
    #            <important>
    #               <p>Amazon Transcribe Medical only supports US English (<code>en-US</code>).</p>
    #            </important>
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate of the input audio (in hertz). Amazon Transcribe Medical supports a
    #               range from 16,000 Hz to 48,000 Hz. Note that the sample rate you specify must match that
    #               of your audio.</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>Specify the encoding used for the input audio. Supported formats are:</p>
    #            <ul>
    #               <li>
    #                  <p>FLAC</p>
    #               </li>
    #               <li>
    #                  <p>OPUS-encoded audio in an Ogg container</p>
    #               </li>
    #               <li>
    #                  <p>PCM (only signed 16-bit little-endian audio formats, which does not include
    #                       WAV)</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio">Media formats</a>.</p>
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>Specify the name of the custom vocabulary that you want to use when processing your
    #               transcription. Note that vocabulary names are case sensitive.</p>
    #   @return [String]
    # @!attribute specialty
    #   <p>Specify the medical specialty contained in your audio.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specify the type of input audio. For example, choose <code>DICTATION</code> for a 
    #               provider dictating patient notes and <code>CONVERSATION</code> for a dialogue between a
    #               patient and a medical professional.</p>
    #   @return [String]
    # @!attribute show_speaker_label
    #   <p>Enables speaker partitioning (diarization) in your transcription output. Speaker
    #               partitioning labels the speech from individual speakers in your media file.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html">Partitioning speakers (diarization)</a>.</p>
    #   @return [Boolean]
    # @!attribute session_id
    #   <p>Specify a name for your transcription session. If you don't include this parameter in 
    #               your request, Amazon Transcribe Medical generates an ID and returns it in the
    #               response.</p>
    #   @return [String]
    # @!attribute audio_stream
    #   <p>An encoded stream of audio blobs. Audio streams are encoded as either HTTP/2 or WebSocket 
    #         data frames.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    #   @return [Types::AudioStream]
    # @!attribute enable_channel_identification
    #   <p>Enables channel identification in multi-channel audio.</p>
    #            <p>Channel identification transcribes the audio on each channel independently, then appends
    #               the output for each channel into one transcript.</p>
    #            <p>If you have multi-channel audio and do not enable channel identification, your audio is 
    #               transcribed in a continuous manner and your transcript is not separated by channel.</p>
    #            <p>If you include <code>EnableChannelIdentification</code> in your request, you must also 
    #               include <code>NumberOfChannels</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html">Transcribing multi-channel audio</a>.</p>
    #   @return [Boolean]
    # @!attribute number_of_channels
    #   <p>Specify the number of channels in your audio stream. This value must be 
    #               <code>2</code>, as only two channels are supported. If your audio doesn't contain 
    #               multiple channels, do not include this parameter in your request.</p>
    #            <p>If you include <code>NumberOfChannels</code> in your request, you must also 
    #               include <code>EnableChannelIdentification</code>.</p>
    #   @return [Integer]
    # @!attribute content_identification_type
    #   <p>Labels all personal health information (PHI) identified in your transcript.</p>
    #            <p>Content identification is performed at the segment level; PHI is flagged upon complete
    #               transcription of an audio segment.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html">Identifying personal health information (PHI) in a
    #               transcription</a>.</p>
    #   @return [String]
    class StartMedicalStreamTranscriptionRequest < Struct.new(
      nil,
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
      :content_identification_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>Provides the identifier for your streaming request.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>Provides the language code that you specified in your request. This must be
    #                   <code>en-US</code>.</p>
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>Provides the sample rate that you specified in your request.</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>Provides the media encoding you specified in your request.</p>
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>Provides the name of the custom vocabulary that you specified in your request.</p>
    #   @return [String]
    # @!attribute specialty
    #   <p>Provides the medical specialty that you specified in your request.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Provides the type of audio you specified in your request.</p>
    #   @return [String]
    # @!attribute show_speaker_label
    #   <p>Shows whether speaker partitioning was enabled for your transcription.</p>
    #   @return [Boolean]
    # @!attribute session_id
    #   <p>Provides the identifier for your transcription session.</p>
    #   @return [String]
    # @!attribute transcript_result_stream
    #   <p>Provides detailed information about your streaming session.</p>
    #   @return [Types::MedicalTranscriptResultStream]
    # @!attribute enable_channel_identification
    #   <p>Shows whether channel identification was enabled for your transcription.</p>
    #   @return [Boolean]
    # @!attribute number_of_channels
    #   <p>Provides the number of channels that you specified in your request.</p>
    #   @return [Integer]
    # @!attribute content_identification_type
    #   <p>Shows whether content identification was enabled for your transcription.</p>
    #   @return [String]
    class StartMedicalStreamTranscriptionResponse < Struct.new(
      nil,
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
      :content_identification_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:show_speaker_label] = false unless options.key?(:show_speaker_label)
        options[:enable_channel_identification] = false unless options.key?(:enable_channel_identification)
        super
      end
    end

    # @!attribute language_code
    #   <p>Specify the language code that represents the language spoken in your audio.</p>
    #            <p>If you're unsure of the language spoken in your audio, consider using 
    #         <code>IdentifyLanguage</code> to enable automatic language identification.</p>
    #            <p>For a list of languages supported with Amazon Transcribe streaming, refer to the 
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported 
    #           languages</a> table.</p>
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate of the input audio (in hertz). Low-quality audio, such as telephone audio,
    #         is typically around 8,000 Hz. High-quality audio typically ranges from 16,000 Hz to 48,000 Hz.
    #         Note that the sample rate you specify must match that of your audio.</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>Specify the encoding of your input audio. Supported formats are:</p>
    #            <ul>
    #               <li>
    #                  <p>FLAC</p>
    #               </li>
    #               <li>
    #                  <p>OPUS-encoded audio in an Ogg container</p>
    #               </li>
    #               <li>
    #                  <p>PCM (only signed 16-bit little-endian audio formats, which does not include WAV)</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio">Media formats</a>.</p>
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>Specify the name of the custom vocabulary that you want to use when processing your
    #         transcription. Note that vocabulary names are case sensitive.</p>
    #            <p>If the language of the specified custom vocabulary doesn't match the language identified in
    #         your media, the custom vocabulary is not applied to your transcription.</p>
    #            <important>
    #               <p>This parameter is <b>not</b> intended for use with the
    #             <code>IdentifyLanguage</code> parameter. If you're including <code>IdentifyLanguage</code>
    #           in your request and want to use one or more custom vocabularies with your transcription, use
    #           the <code>VocabularyNames</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html">Custom vocabularies</a>.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>Specify a name for your transcription session. If you don't include this parameter in your request, 
    #         Amazon Transcribe generates an ID and returns it in the response.</p>
    #   @return [String]
    # @!attribute audio_stream
    #   <p>An encoded stream of audio blobs. Audio streams are encoded as either HTTP/2 or WebSocket 
    #         data frames.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    #   @return [Types::AudioStream]
    # @!attribute vocabulary_filter_name
    #   <p>Specify the name of the custom vocabulary filter that you want to use when processing your
    #         transcription. Note that vocabulary filter names are case sensitive.</p>
    #            <p>If the language of the specified custom vocabulary filter doesn't match the language identified in
    #         your media, the vocabulary filter is not applied to your transcription.</p>
    #            <important>
    #               <p>This parameter is <b>not</b> intended for use with the
    #             <code>IdentifyLanguage</code> parameter. If you're including <code>IdentifyLanguage</code>
    #           in your request and want to use one or more vocabulary filters with your transcription, use
    #           the <code>VocabularyFilterNames</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html">Using vocabulary filtering with unwanted 
    #         words</a>.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_method
    #   <p>Specify how you want your vocabulary filter applied to your transcript.</p>
    #            <p>To replace words with <code>***</code>, choose <code>mask</code>.</p>
    #            <p>To delete words, choose <code>remove</code>.</p>
    #            <p>To flag words without changing them, choose <code>tag</code>.</p>
    #   @return [String]
    # @!attribute show_speaker_label
    #   <p>Enables speaker partitioning (diarization) in your transcription output. Speaker partitioning 
    #         labels the speech from individual speakers in your media file.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html">Partitioning speakers (diarization)</a>.</p>
    #   @return [Boolean]
    # @!attribute enable_channel_identification
    #   <p>Enables channel identification in multi-channel audio.</p>
    #            <p>Channel identification transcribes the audio on each channel independently, then appends the 
    #         output for each channel into one transcript.</p>
    #            <p>If you have multi-channel audio and do not enable channel identification, your audio is 
    #         transcribed in a continuous manner and your transcript is not separated by channel.</p>
    #            <p>If you include <code>EnableChannelIdentification</code> in your request, you must also 
    #         include <code>NumberOfChannels</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html">Transcribing multi-channel audio</a>.</p>
    #   @return [Boolean]
    # @!attribute number_of_channels
    #   <p>Specify the number of channels in your audio stream. This value must be 
    #         <code>2</code>, as only two channels are supported. If your audio doesn't contain 
    #         multiple channels, do not include this parameter in your request.</p>
    #            <p>If you include <code>NumberOfChannels</code> in your request, you must also 
    #         include <code>EnableChannelIdentification</code>.</p>
    #   @return [Integer]
    # @!attribute enable_partial_results_stabilization
    #   <p>Enables partial result stabilization for your transcription. Partial result stabilization can reduce
    #         latency in your output, but may impact accuracy. For more information, see 
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result 
    #         stabilization</a>.</p>
    #   @return [Boolean]
    # @!attribute partial_results_stability
    #   <p>Specify the level of stability to use when you enable partial results stabilization 
    #         (<code>EnablePartialResultsStabilization</code>).</p>
    #            <p>Low stability provides the highest accuracy. High stability transcribes faster, but with slightly
    #         lower accuracy.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result 
    #         stabilization</a>.</p>
    #   @return [String]
    # @!attribute content_identification_type
    #   <p>Labels all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content identification is performed at the segment level; PII specified in 
    #         <code>PiiEntityTypes</code> is flagged upon complete transcription of an audio segment. If you don't
    #         include <code>PiiEntityTypes</code> in your request, all PII is identified.</p>
    #            <p>You can’t set <code>ContentIdentificationType</code> and <code>ContentRedactionType</code>
    #         in the same request. If you set both, your request returns a
    #         <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable
    #         information</a>.</p>
    #   @return [String]
    # @!attribute content_redaction_type
    #   <p>Redacts all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content redaction is performed at the segment level; PII specified in 
    #         <code>PiiEntityTypes</code> is redacted upon complete transcription of an audio segment. If you don't
    #         include <code>PiiEntityTypes</code> in your request, all PII is redacted.</p>
    #            <p>You can’t set <code>ContentRedactionType</code> and <code>ContentIdentificationType</code>
    #         in the same request. If you set both, your request returns a <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable
    #         information</a>.</p>
    #   @return [String]
    # @!attribute pii_entity_types
    #   <p>Specify which types of personally identifiable information (PII) you want to redact in your 
    #         transcript. You can include as many types as you'd like, or you can select 
    #         <code>ALL</code>.</p>
    #            <p>Values must be comma-separated and can include: <code>ADDRESS</code>, 
    #         <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING</code>,
    #         <code>CREDIT_DEBIT_CVV</code>, <code>CREDIT_DEBIT_EXPIRY</code>,
    #         <code>CREDIT_DEBIT_NUMBER</code>, <code>EMAIL</code>, 
    #         <code>NAME</code>, <code>PHONE</code>, <code>PIN</code>, 
    #         <code>SSN</code>, or <code>ALL</code>.</p>
    #            <p>Note that if you include <code>PiiEntityTypes</code> in your request, you must also include 
    #         <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>.</p>
    #            <p>If you include <code>ContentRedactionType</code> or 
    #         <code>ContentIdentificationType</code> in your request, but do not include 
    #         <code>PiiEntityTypes</code>, all PII is redacted or identified.</p>
    #   @return [String]
    # @!attribute language_model_name
    #   <p>Specify the name of the custom language model that you want to use when processing your
    #         transcription. Note that language model names are case sensitive.</p>
    #            <p>The language of the specified language model must match the language code you specify
    #         in your transcription request. If the languages don't match, the custom language model isn't applied. 
    #         There are no errors or warnings associated with a language mismatch.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html">Custom language models</a>.</p>
    #   @return [String]
    # @!attribute identify_language
    #   <p>Enables automatic language identification for your transcription.</p>
    #            <p>If you include <code>IdentifyLanguage</code>, you must include a list of
    #         language codes, using <code>LanguageOptions</code>, that you think may be present in 
    #         your audio stream. </p>
    #            <p>You can also include a preferred language using <code>PreferredLanguage</code>. Adding a 
    #         preferred language can help Amazon Transcribe identify the language faster than if you omit this 
    #         parameter.</p>
    #            <p>If you have multi-channel audio that contains different languages on each channel, and you've 
    #         enabled channel identification, automatic language identification identifies the dominant language on 
    #         each audio channel.</p>
    #            <p>Note that you must include either <code>LanguageCode</code> or 
    #         <code>IdentifyLanguage</code> or <code>IdentifyMultipleLanguages</code> in your request. If you include more than one of these parameters, your transcription job
    #         fails.</p>
    #            <p>Streaming language identification can't be combined with custom language models or 
    #         redaction.</p>
    #   @return [Boolean]
    # @!attribute language_options
    #   <p>Specify two or more language codes that represent the languages you think may be present 
    #         in your media; including more than five is not recommended.</p>
    #            <p>Including language options can improve the accuracy of language identification.</p>
    #            <p>If you include <code>LanguageOptions</code> in your request, you must also include 
    #         <code>IdentifyLanguage</code> or <code>IdentifyMultipleLanguages</code>.</p>
    #            <p>For a list of languages supported with Amazon Transcribe streaming, refer to the 
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported 
    #           languages</a> table.</p>
    #            <important>
    #               <p>You can only include one language dialect per language per stream. For example, you
    #           cannot include <code>en-US</code> and <code>en-AU</code> in the same request.</p>
    #            </important>
    #   @return [String]
    # @!attribute preferred_language
    #   <p>Specify a preferred language from the subset of languages codes you specified in 
    #         <code>LanguageOptions</code>.</p>
    #            <p>You can only use this parameter if you've included <code>IdentifyLanguage</code> and
    #           <code>LanguageOptions</code> in your request.</p>
    #   @return [String]
    # @!attribute identify_multiple_languages
    #   <p>Enables automatic multi-language identification in your transcription job request. Use this parameter if your stream contains more than one language. If your stream contains only one language, use IdentifyLanguage instead.</p>
    #            <p>If you include <code>IdentifyMultipleLanguages</code>, you must include a list of language codes, using <code>LanguageOptions</code>, that you think may be present in your stream.</p>
    #            <p>If you want to apply a custom vocabulary or a custom vocabulary filter to your automatic multiple language identification request, include <code>VocabularyNames</code> or <code>VocabularyFilterNames</code>.</p>
    #            <p>Note that you must include one of <code>LanguageCode</code>, <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> in your request. If you include more than one of these parameters, your transcription job fails.</p>
    #   @return [Boolean]
    # @!attribute vocabulary_names
    #   <p>Specify the names of the custom vocabularies that you want to use when processing your
    #         transcription. Note that vocabulary names are case sensitive.</p>
    #            <p>If none of the languages of the specified custom vocabularies match the language identified in 
    #         your media, your job fails.</p>
    #            <important>
    #               <p>This parameter is only intended for use <b>with</b> the
    #             <code>IdentifyLanguage</code> parameter. If you're <b>not</b>
    #           including <code>IdentifyLanguage</code> in your request and want to use a custom vocabulary
    #           with your transcription, use the <code>VocabularyName</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html">Custom vocabularies</a>.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_names
    #   <p>Specify the names of the custom vocabulary filters that you want to use when processing
    #         your transcription. Note that vocabulary filter names are case sensitive.</p>
    #            <p>If none of the languages of the specified custom vocabulary filters match the language identified
    #         in your media, your job fails.</p>
    #            <important>
    #               <p>This parameter is only intended for use <b>with</b> 
    #           the <code>IdentifyLanguage</code> parameter. If you're <b>not</b> 
    #           including <code>IdentifyLanguage</code> in your request and want to use a custom vocabulary filter 
    #           with your transcription, use the <code>VocabularyFilterName</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html">Using vocabulary filtering with unwanted 
    #         words</a>.</p>
    #   @return [String]
    class StartStreamTranscriptionRequest < Struct.new(
      nil,
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
      :identify_multiple_languages,
      :vocabulary_names,
      :vocabulary_filter_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>Provides the identifier for your streaming request.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>Provides the language code that you specified in your request.</p>
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>Provides the sample rate that you specified in your request.</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>Provides the media encoding you specified in your request.</p>
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>Provides the name of the custom vocabulary that you specified in your request.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>Provides the identifier for your transcription session.</p>
    #   @return [String]
    # @!attribute transcript_result_stream
    #   <p>Provides detailed information about your streaming session.</p>
    #   @return [Types::TranscriptResultStream]
    # @!attribute vocabulary_filter_name
    #   <p>Provides the name of the custom vocabulary filter that you specified in your
    #         request.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_method
    #   <p>Provides the vocabulary filtering method used in your transcription.</p>
    #   @return [String]
    # @!attribute show_speaker_label
    #   <p>Shows whether speaker partitioning was enabled for your transcription.</p>
    #   @return [Boolean]
    # @!attribute enable_channel_identification
    #   <p>Shows whether channel identification was enabled for your transcription.</p>
    #   @return [Boolean]
    # @!attribute number_of_channels
    #   <p>Provides the number of channels that you specified in your request.</p>
    #   @return [Integer]
    # @!attribute enable_partial_results_stabilization
    #   <p>Shows whether partial results stabilization was enabled for your transcription.</p>
    #   @return [Boolean]
    # @!attribute partial_results_stability
    #   <p>Provides the stabilization level used for your transcription.</p>
    #   @return [String]
    # @!attribute content_identification_type
    #   <p>Shows whether content identification was enabled for your transcription.</p>
    #   @return [String]
    # @!attribute content_redaction_type
    #   <p>Shows whether content redaction was enabled for your transcription.</p>
    #   @return [String]
    # @!attribute pii_entity_types
    #   <p>Lists the PII entity types you specified in your request.</p>
    #   @return [String]
    # @!attribute language_model_name
    #   <p>Provides the name of the custom language model that you specified in your request.</p>
    #   @return [String]
    # @!attribute identify_language
    #   <p>Shows whether automatic language identification was enabled for your 
    #         transcription.</p>
    #   @return [Boolean]
    # @!attribute language_options
    #   <p>Provides the language codes that you specified in your request.</p>
    #   @return [String]
    # @!attribute preferred_language
    #   <p>Provides the preferred language that you specified in your request.</p>
    #   @return [String]
    # @!attribute identify_multiple_languages
    #   <p>Shows whether automatic multi-language identification was enabled for your transcription.</p>
    #   @return [Boolean]
    # @!attribute vocabulary_names
    #   <p>Provides the names of the custom vocabularies that you specified in your request.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_names
    #   <p>Provides the names of the custom vocabulary filters that you specified in your
    #         request.</p>
    #   @return [String]
    class StartStreamTranscriptionResponse < Struct.new(
      nil,
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
      :identify_multiple_languages,
      :vocabulary_names,
      :vocabulary_filter_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:show_speaker_label] = false unless options.key?(:show_speaker_label)
        options[:enable_channel_identification] = false unless options.key?(:enable_channel_identification)
        options[:enable_partial_results_stabilization] = false unless options.key?(:enable_partial_results_stabilization)
        options[:identify_language] = false unless options.key?(:identify_language)
        options[:identify_multiple_languages] = false unless options.key?(:identify_multiple_languages)
        super
      end
    end

    # <p>Contains the timestamp range (start time through end time) of a matched category.</p>
    # @!attribute begin_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the start of the category 
    #         match.</p>
    #   @return [Integer]
    # @!attribute end_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the end of the category 
    #         match.</p>
    #   @return [Integer]
    class TimestampRange < Struct.new(
      nil,
      :begin_offset_millis,
      :end_offset_millis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>Transcript</code> associated with a 
    #       <code></code>.</p>
    #          <p>
    #             <code>Transcript</code> contains <code>Results</code>, which contains a set of transcription
    #       results from one or more audio segments, along with additional information per your request 
    #       parameters.</p>
    # @!attribute results
    #   <p>Contains a set of transcription results from one or more audio segments, along with additional 
    #         information per your request parameters. This can include information relating to alternative
    #         transcriptions, channel identification, partial result stabilization, language identification, and other
    #         transcription-related data.</p>
    #   @return [Array<Types::Result>]
    class Transcript < Struct.new(
      nil,
      :results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>TranscriptEvent</code> associated with a 
    #       <code>TranscriptResultStream</code>.</p>
    #          <p>Contains a set of transcription results from one or more audio segments, along with additional 
    #       information per your request parameters.</p>
    # @!attribute transcript
    #   <p>Contains <code>Results</code>, which contains a set of transcription results from one or
    #         more audio segments, along with additional information per your request parameters. This can
    #         include information relating to alternative transcriptions, channel identification, partial
    #         result stabilization, language identification, and other transcription-related data.</p>
    #   @return [Types::Transcript]
    class TranscriptEvent < Struct.new(
      nil,
      :transcript,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about your streaming session.</p>
    # @!attribute transcript_event
    #   <p>Contains <code>Transcript</code>, which contains <code>Results</code>. The 
    #         <code></code> object contains a set of transcription 
    #         results from one or more audio segments, along with additional information per your request 
    #         parameters.</p>
    #   @return [Types::TranscriptEvent]
    # @!attribute bad_request_exception
    #   <p>A client error occurred when the stream was created. Check the parameters of the request
    #         and try your request again.</p>
    #   @return [Types::BadRequestException]
    # @!attribute limit_exceeded_exception
    #   <p>Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length
    #         limit. Break your audio stream into smaller chunks and try your request again.</p>
    #   @return [Types::LimitExceededException]
    # @!attribute internal_failure_exception
    #   <p>A problem occurred while processing the audio. Amazon Transcribe terminated 
    #         processing.</p>
    #   @return [Types::InternalFailureException]
    # @!attribute conflict_exception
    #   <p>A new stream started with the same session ID. The current stream has been
    #         terminated.</p>
    #   @return [Types::ConflictException]
    # @!attribute service_unavailable_exception
    #   <p>The service is currently unavailable. Try your request later.</p>
    #   @return [Types::ServiceUnavailableException]
    class TranscriptResultStream < Struct.new(
      :transcript_event,
      :bad_request_exception,
      :limit_exceeded_exception,
      :internal_failure_exception,
      :conflict_exception,
      :service_unavailable_exception,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TranscriptEvent < TranscriptResultStream; end
      class BadRequestException < TranscriptResultStream; end
      class LimitExceededException < TranscriptResultStream; end
      class InternalFailureException < TranscriptResultStream; end
      class ConflictException < TranscriptResultStream; end
      class ServiceUnavailableException < TranscriptResultStream; end
      class Unknown < TranscriptResultStream; end
    end

    # <p>Contains set of transcription results from one or more audio segments, along with additional 
    #       information about the parameters included in your request. For example, channel definitions, partial result 
    #       stabilization, sentiment, and issue detection.</p>
    # @!attribute utterance_id
    #   <p>The unique identifier that is associated with the specified <code>UtteranceEvent</code>.</p>
    #   @return [String]
    # @!attribute is_partial
    #   <p>Indicates whether the segment in the <code>UtteranceEvent</code> is complete 
    #         (<code>FALSE</code>) or partial (<code>TRUE</code>).</p>
    #   @return [Boolean]
    # @!attribute participant_role
    #   <p>Provides the role of the speaker for each audio channel, either <code>CUSTOMER</code> or 
    #         <code>AGENT</code>.</p>
    #   @return [String]
    # @!attribute begin_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the start of the
    #         <code>UtteranceEvent</code>.</p>
    #   @return [Integer]
    # @!attribute end_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the start of the 
    #         <code>UtteranceEvent</code>.</p>
    #   @return [Integer]
    # @!attribute transcript
    #   <p>Contains transcribed text.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Contains words, phrases, or punctuation marks that are associated with the specified 
    #         <code>UtteranceEvent</code>.</p>
    #   @return [Array<Types::CallAnalyticsItem>]
    # @!attribute entities
    #   <p>Contains entities identified as personally identifiable information (PII) in your transcription 
    #         output.</p>
    #   @return [Array<Types::CallAnalyticsEntity>]
    # @!attribute sentiment
    #   <p>Provides the sentiment that was detected in the specified segment.</p>
    #   @return [String]
    # @!attribute issues_detected
    #   <p>Provides the issue that was detected in the specified segment.</p>
    #   @return [Array<Types::IssueDetected>]
    # @!attribute language_code
    #   <p>The language code that represents the language spoken in your audio stream.</p>
    #   @return [String]
    # @!attribute language_identification
    #   <p>The language code of the dominant language identified in your stream.</p>
    #   @return [Array<Types::CallAnalyticsLanguageWithScore>]
    class UtteranceEvent < Struct.new(
      nil,
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
      :language_code,
      :language_identification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_partial] = false unless options.key?(:is_partial)
        super
      end
    end

  end
end
