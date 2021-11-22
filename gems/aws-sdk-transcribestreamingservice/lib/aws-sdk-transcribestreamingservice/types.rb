# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TranscribeStreamingService
  module Types

    # A list of possible transcriptions for the audio.
    #
    # @!attribute [rw] transcript
    #   The text that was transcribed from the audio.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   One or more alternative interpretations of the input audio.
    #   @return [Array<Types::Item>]
    #
    # @!attribute [rw] entities
    #   Contains the entities identified as personally identifiable
    #   information (PII) in the transcription output.
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

    # Provides a wrapper for the audio chunks that you are sending.
    #
    # For information on audio encoding in Amazon Transcribe, see [Speech
    # input][1]. For information on audio encoding formats in Amazon
    # Transcribe Medical, see [Speech input][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/input.html
    # [2]: https://docs.aws.amazon.com/transcribe/latest/dg/input-med.html
    #
    # @note When making an API call, you may pass AudioEvent
    #   data as a hash:
    #
    #       {
    #         audio_chunk: "data",
    #       }
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

    # One or more arguments to the `StartStreamTranscription` or
    # `StartMedicalStreamTranscription` operation was invalid. For example,
    # `MediaEncoding` was not set to a valid encoding, or `LanguageCode` was
    # not set to a valid code. Check the parameters and try your request
    # again.
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

    # The entity identified as personally identifiable information (PII).
    #
    # @!attribute [rw] start_time
    #   The start time of speech that was identified as PII.
    #   @return [Float]
    #
    # @!attribute [rw] end_time
    #   The end time of speech that was identified as PII.
    #   @return [Float]
    #
    # @!attribute [rw] category
    #   The category of information identified in this entity; for example,
    #   PII.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of PII identified in this entity; for example, name or
    #   credit card number.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The words in the transcription output that have been identified as a
    #   PII entity.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   A value between zero and one that Amazon Transcribe assigns to PII
    #   identified in the source audio. Larger values indicate a higher
    #   confidence in PII identification.
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

    # A problem occurred while processing the audio. Amazon Transcribe or
    # Amazon Transcribe Medical terminated processing. Try your request
    # again.
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

    # A word, phrase, or punctuation mark that is transcribed from the input
    # audio.
    #
    # @!attribute [rw] start_time
    #   The offset from the beginning of the audio stream to the beginning
    #   of the audio that resulted in the item.
    #   @return [Float]
    #
    # @!attribute [rw] end_time
    #   The offset from the beginning of the audio stream to the end of the
    #   audio that resulted in the item.
    #   @return [Float]
    #
    # @!attribute [rw] type
    #   The type of the item. `PRONUNCIATION` indicates that the item is a
    #   word that was recognized in the input audio. `PUNCTUATION` indicates
    #   that the item was interpreted as a pause in the input audio.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The word or punctuation that was recognized in the input audio.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_match
    #   Indicates whether a word in the item matches a word in the
    #   vocabulary filter you've chosen for your media stream. If `true`
    #   then a word in the item matches your vocabulary filter.
    #   @return [Boolean]
    #
    # @!attribute [rw] speaker
    #   If speaker identification is enabled, shows the speakers identified
    #   in the media stream.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   A value between zero and one for an item that is a confidence score
    #   that Amazon Transcribe assigns to each word or phrase that it
    #   transcribes.
    #   @return [Float]
    #
    # @!attribute [rw] stable
    #   If partial result stabilization has been enabled, indicates whether
    #   the word or phrase in the item is stable. If `Stable` is `true`, the
    #   result is stable.
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

    # The language codes of the identified languages and their associated
    # confidence scores. The confidence score is a value between zero and
    # one; a larger value indicates a higher confidence in the identified
    # language.
    #
    # @!attribute [rw] language_code
    #   The language code of the language identified by Amazon Transcribe.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The confidence score for the associated language code. Confidence
    #   scores are values between zero and one; larger values indicate a
    #   higher confidence in the identified language.
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

    # You have exceeded the maximum number of concurrent transcription
    # streams, are starting transcription streams too quickly, or the
    # maximum audio length of 4 hours. Wait until a stream has finished
    # processing, or break your audio stream into smaller chunks and try
    # your request again.
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

    # A list of possible transcriptions for the audio.
    #
    # @!attribute [rw] transcript
    #   The text that was transcribed from the audio.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   A list of objects that contains words and punctuation marks that
    #   represents one or more interpretations of the input audio.
    #   @return [Array<Types::MedicalItem>]
    #
    # @!attribute [rw] entities
    #   Contains the medical entities identified as personal health
    #   information in the transcription output.
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

    # The medical entity identified as personal health information.
    #
    # @!attribute [rw] start_time
    #   The start time of the speech that was identified as a medical
    #   entity.
    #   @return [Float]
    #
    # @!attribute [rw] end_time
    #   The end time of the speech that was identified as a medical entity.
    #   @return [Float]
    #
    # @!attribute [rw] category
    #   The type of personal health information of the medical entity.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The word or words in the transcription output that have been
    #   identified as a medical entity.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   A value between zero and one that Amazon Transcribe Medical assigned
    #   to the personal health information that it identified in the source
    #   audio. Larger values indicate that Amazon Transcribe Medical has
    #   higher confidence in the personal health information that it
    #   identified.
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

    # A word, phrase, or punctuation mark that is transcribed from the input
    # audio.
    #
    # @!attribute [rw] start_time
    #   The number of seconds into an audio stream that indicates the
    #   creation time of an item.
    #   @return [Float]
    #
    # @!attribute [rw] end_time
    #   The number of seconds into an audio stream that indicates the
    #   creation time of an item.
    #   @return [Float]
    #
    # @!attribute [rw] type
    #   The type of the item. `PRONUNCIATION` indicates that the item is a
    #   word that was recognized in the input audio. `PUNCTUATION` indicates
    #   that the item was interpreted as a pause in the input audio, such as
    #   a period to indicate the end of a sentence.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The word or punctuation mark that was recognized in the input audio.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   A value between 0 and 1 for an item that is a confidence score that
    #   Amazon Transcribe Medical assigns to each word that it transcribes.
    #   @return [Float]
    #
    # @!attribute [rw] speaker
    #   If speaker identification is enabled, shows the integer values that
    #   correspond to the different speakers identified in the stream. For
    #   example, if the value of `Speaker` in the stream is either a `0` or
    #   a `1`, that indicates that Amazon Transcribe Medical has identified
    #   two speakers in the stream. The value of `0` corresponds to one
    #   speaker and the value of `1` corresponds to the other speaker.
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

    # The results of transcribing a portion of the input audio stream.
    #
    # @!attribute [rw] result_id
    #   A unique identifier for the result.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time, in seconds, from the beginning of the audio stream to the
    #   beginning of the result.
    #   @return [Float]
    #
    # @!attribute [rw] end_time
    #   The time, in seconds, from the beginning of the audio stream to the
    #   end of the result.
    #   @return [Float]
    #
    # @!attribute [rw] is_partial
    #   Amazon Transcribe Medical divides the incoming audio stream into
    #   segments at natural points in the audio. Transcription results are
    #   returned based on these segments.
    #
    #   The `IsPartial` field is `true` to indicate that Amazon Transcribe
    #   Medical has additional transcription data to send. The `IsPartial`
    #   field is `false` to indicate that this is the last transcription
    #   result for the segment.
    #   @return [Boolean]
    #
    # @!attribute [rw] alternatives
    #   A list of possible transcriptions of the audio. Each alternative
    #   typically contains one `Item` that contains the result of the
    #   transcription.
    #   @return [Array<Types::MedicalAlternative>]
    #
    # @!attribute [rw] channel_id
    #   When channel identification is enabled, Amazon Transcribe Medical
    #   transcribes the speech from each audio channel separately.
    #
    #   You can use `ChannelId` to retrieve the transcription results for a
    #   single channel in your audio stream.
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

    # The medical transcript in a MedicalTranscriptEvent.
    #
    # @!attribute [rw] results
    #   MedicalResult objects that contain the results of transcribing a
    #   portion of the input audio stream. The array can be empty.
    #   @return [Array<Types::MedicalResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/MedicalTranscript AWS API Documentation
    #
    class MedicalTranscript < Struct.new(
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a set of transcription results from the server to the
    # client. It contains one or more segments of the transcription.
    #
    # @!attribute [rw] transcript
    #   The transcription of the audio stream. The transcription is composed
    #   of all of the items in the results list.
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

    # The result of transcribing a portion of the input audio stream.
    #
    # @!attribute [rw] result_id
    #   A unique identifier for the result.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The offset in seconds from the beginning of the audio stream to the
    #   beginning of the result.
    #   @return [Float]
    #
    # @!attribute [rw] end_time
    #   The offset in seconds from the beginning of the audio stream to the
    #   end of the result.
    #   @return [Float]
    #
    # @!attribute [rw] is_partial
    #   Amazon Transcribe divides the incoming audio stream into segments at
    #   natural points in the audio. Transcription results are returned
    #   based on these segments.
    #
    #   The `IsPartial` field is `true` to indicate that Amazon Transcribe
    #   has additional transcription data to send, `false` to indicate that
    #   this is the last transcription result for the segment.
    #   @return [Boolean]
    #
    # @!attribute [rw] alternatives
    #   A list of possible transcriptions for the audio. Each alternative
    #   typically contains one `item` that contains the result of the
    #   transcription.
    #   @return [Array<Types::Alternative>]
    #
    # @!attribute [rw] channel_id
    #   When channel identification is enabled, Amazon Transcribe
    #   transcribes the speech from each audio channel separately.
    #
    #   You can use `ChannelId` to retrieve the transcription results for a
    #   single channel in your audio stream.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the identified language in your media stream.
    #   @return [String]
    #
    # @!attribute [rw] language_identification
    #   The language code of the dominant language identified in your media.
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

    # Service is currently unavailable. Try your request later.
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

    # @note When making an API call, you may pass StartMedicalStreamTranscriptionRequest
    #   data as a hash:
    #
    #       {
    #         language_code: "en-US", # required, accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN
    #         media_sample_rate_hertz: 1, # required
    #         media_encoding: "pcm", # required, accepts pcm, ogg-opus, flac
    #         vocabulary_name: "VocabularyName",
    #         specialty: "PRIMARYCARE", # required, accepts PRIMARYCARE, CARDIOLOGY, NEUROLOGY, ONCOLOGY, RADIOLOGY, UROLOGY
    #         type: "CONVERSATION", # required, accepts CONVERSATION, DICTATION
    #         show_speaker_label: false,
    #         session_id: "SessionId",
    #         input_event_stream_hander: EventStreams::AudioStream.new,
    #         enable_channel_identification: false,
    #         number_of_channels: 1,
    #         content_identification_type: "PHI", # accepts PHI
    #       }
    #
    # @!attribute [rw] language_code
    #   Indicates the source language used in the input audio stream. For
    #   Amazon Transcribe Medical, this is US English (en-US).
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate of the input audio in Hertz.
    #   @return [Integer]
    #
    # @!attribute [rw] media_encoding
    #   The encoding used for the input audio.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the medical custom vocabulary to use when processing the
    #   real-time stream.
    #   @return [String]
    #
    # @!attribute [rw] specialty
    #   The medical specialty of the clinician or provider.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of input audio. Choose `DICTATION` for a provider dictating
    #   patient notes. Choose `CONVERSATION` for a dialogue between a
    #   patient and one or more medical professionanls.
    #   @return [String]
    #
    # @!attribute [rw] show_speaker_label
    #   When `true`, enables speaker identification in your real-time
    #   stream.
    #   @return [Boolean]
    #
    # @!attribute [rw] session_id
    #   Optional. An identifier for the transcription session. If you don't
    #   provide a session ID, Amazon Transcribe generates one for you and
    #   returns it in the response.
    #   @return [String]
    #
    # @!attribute [rw] audio_stream
    #   Represents the audio stream from your application to Amazon
    #   Transcribe.
    #   @return [Types::AudioStream]
    #
    # @!attribute [rw] enable_channel_identification
    #   When `true`, instructs Amazon Transcribe Medical to process each
    #   audio channel separately and then merge the transcription output of
    #   each channel into a single transcription.
    #
    #   Amazon Transcribe Medical also produces a transcription of each
    #   item. An item includes the start time, end time, and any alternative
    #   transcriptions.
    #
    #   You can't set both `ShowSpeakerLabel` and
    #   `EnableChannelIdentification` in the same request. If you set both,
    #   your request returns a `BadRequestException`.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_channels
    #   The number of channels that are in your audio stream.
    #   @return [Integer]
    #
    # @!attribute [rw] content_identification_type
    #   Set this field to `PHI` to identify personal health information in
    #   the transcription output.
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
    #   An identifier for the streaming transcription.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code for the response transcript. For Amazon Transcribe
    #   Medical, this is US English (en-US).
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate of the input audio in Hertz.
    #   @return [Integer]
    #
    # @!attribute [rw] media_encoding
    #   The encoding used for the input audio stream.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary used when processing the stream.
    #   @return [String]
    #
    # @!attribute [rw] specialty
    #   The specialty in the medical domain.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of audio that was transcribed.
    #   @return [String]
    #
    # @!attribute [rw] show_speaker_label
    #   Shows whether speaker identification was enabled in the stream.
    #   @return [Boolean]
    #
    # @!attribute [rw] session_id
    #   Optional. An identifier for the transcription session. If you don't
    #   provide a session ID, Amazon Transcribe generates one for you and
    #   returns it in the response.
    #   @return [String]
    #
    # @!attribute [rw] transcript_result_stream
    #   Represents the stream of transcription events from Amazon Transcribe
    #   Medical to your application.
    #   @return [Types::MedicalTranscriptResultStream]
    #
    # @!attribute [rw] enable_channel_identification
    #   Shows whether channel identification has been enabled in the stream.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_channels
    #   The number of channels identified in the stream.
    #   @return [Integer]
    #
    # @!attribute [rw] content_identification_type
    #   If the value is `PHI`, indicates that you've configured your stream
    #   to identify personal health information.
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

    # @note When making an API call, you may pass StartStreamTranscriptionRequest
    #   data as a hash:
    #
    #       {
    #         language_code: "en-US", # accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN
    #         media_sample_rate_hertz: 1, # required
    #         media_encoding: "pcm", # required, accepts pcm, ogg-opus, flac
    #         vocabulary_name: "VocabularyName",
    #         session_id: "SessionId",
    #         input_event_stream_hander: EventStreams::AudioStream.new,
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #         show_speaker_label: false,
    #         enable_channel_identification: false,
    #         number_of_channels: 1,
    #         enable_partial_results_stabilization: false,
    #         partial_results_stability: "high", # accepts high, medium, low
    #         content_identification_type: "PII", # accepts PII
    #         content_redaction_type: "PII", # accepts PII
    #         pii_entity_types: "PiiEntityTypes",
    #         language_model_name: "ModelName",
    #         identify_language: false,
    #         language_options: "LanguageOptions",
    #         preferred_language: "en-US", # accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN
    #       }
    #
    # @!attribute [rw] language_code
    #   The language code of the input audio stream.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate, in Hertz (Hz), of the input audio. We suggest that
    #   you use 8,000 Hz for low quality audio and 16,000 Hz or higher for
    #   high quality audio.
    #   @return [Integer]
    #
    # @!attribute [rw] media_encoding
    #   The encoding used for the input audio.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary to use when processing the transcription
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   A identifier for the transcription session. Use this parameter when
    #   you want to retry a session. If you don't provide a session ID,
    #   Amazon Transcribe will generate one for you and return it in the
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] audio_stream
    #   PCM-encoded stream of audio blobs. The audio stream is encoded as an
    #   HTTP/2 data frame.
    #   @return [Types::AudioStream]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The name of the vocabulary filter you've created that is unique to
    #   your account. Provide the name in this field to successfully use it
    #   in a stream.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_method
    #   The manner in which you use your vocabulary filter to filter words
    #   in your transcript. `Remove` removes filtered words from your
    #   transcription results. `Mask` masks filtered words with a `***` in
    #   your transcription results. `Tag` keeps the filtered words in your
    #   transcription results and tags them. The tag appears as
    #   `VocabularyFilterMatch` equal to `True`.
    #   @return [String]
    #
    # @!attribute [rw] show_speaker_label
    #   When `true`, enables speaker identification in your media stream.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_channel_identification
    #   When `true`, instructs Amazon Transcribe to process each audio
    #   channel separately, then merges the transcription output of each
    #   channel into a single transcription.
    #
    #   Amazon Transcribe also produces a transcription of each item. An
    #   item includes the start time, end time, and any alternative
    #   transcriptions.
    #
    #   You can't set both `ShowSpeakerLabel` and
    #   `EnableChannelIdentification` in the same request. If you set both,
    #   your request returns a `BadRequestException`.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_channels
    #   The number of channels that are in your audio stream.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_partial_results_stabilization
    #   When `true`, instructs Amazon Transcribe to present transcription
    #   results that have the partial results stabilized. Normally, any word
    #   or phrase from one partial result can change in a subsequent partial
    #   result. With partial results stabilization enabled, only the last
    #   few words of one partial result can change in another partial
    #   result.
    #   @return [Boolean]
    #
    # @!attribute [rw] partial_results_stability
    #   You can use this field to set the stability level of the
    #   transcription results. A higher stability level means that the
    #   transcription results are less likely to change. Higher stability
    #   levels can come with lower overall transcription accuracy.
    #   @return [String]
    #
    # @!attribute [rw] content_identification_type
    #   Set this field to PII to identify personally identifiable
    #   information (PII) in the transcription output. Content
    #   identification is performed only upon complete transcription of the
    #   audio segments.
    #
    #   You can’t set both `ContentIdentificationType` and
    #   `ContentRedactionType` in the same request. If you set both, your
    #   request returns a `BadRequestException`.
    #   @return [String]
    #
    # @!attribute [rw] content_redaction_type
    #   Set this field to PII to redact personally identifiable information
    #   (PII) in the transcription output. Content redaction is performed
    #   only upon complete transcription of the audio segments.
    #
    #   You can’t set both `ContentRedactionType` and
    #   `ContentIdentificationType` in the same request. If you set both,
    #   your request returns a `BadRequestException`.
    #   @return [String]
    #
    # @!attribute [rw] pii_entity_types
    #   List the PII entity types you want to identify or redact. In order
    #   to specify entity types, you must have either
    #   `ContentIdentificationType` or `ContentRedactionType` enabled.
    #
    #   `PIIEntityTypes` must be comma-separated; the available values are:
    #   `BANK_ACCOUNT_NUMBER`, `BANK_ROUTING`, `CREDIT_DEBIT_NUMBER`,
    #   `CREDIT_DEBIT_CVV`, `CREDIT_DEBIT_EXPIRY`, `PIN`, `EMAIL`,
    #   `ADDRESS`, `NAME`, `PHONE`, `SSN`, and `ALL`.
    #
    #   `PiiEntityTypes` is an optional parameter with a default value of
    #   `ALL`.
    #   @return [String]
    #
    # @!attribute [rw] language_model_name
    #   The name of the language model you want to use.
    #   @return [String]
    #
    # @!attribute [rw] identify_language
    #   Optional. Set this value to `true` to enable language identification
    #   for your media stream.
    #   @return [Boolean]
    #
    # @!attribute [rw] language_options
    #   An object containing a list of languages that might be present in
    #   your audio.
    #
    #   You must provide two or more language codes to help Amazon
    #   Transcribe identify the correct language of your media stream with
    #   the highest possible accuracy. You can only select one variant per
    #   language; for example, you can't include both `en-US` and `en-UK`
    #   in the same request.
    #
    #   You can only use this parameter if you've set `IdentifyLanguage` to
    #   `true`in your request.
    #   @return [String]
    #
    # @!attribute [rw] preferred_language
    #   Optional. From the subset of languages codes you provided for
    #   `LanguageOptions`, you can select one preferred language for your
    #   transcription.
    #
    #   You can only use this parameter if you've set `IdentifyLanguage` to
    #   `true`in your request.
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
      :preferred_language)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   An identifier for the streaming transcription.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the input audio stream.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate, in Hertz (Hz), for the input audio stream. Use
    #   8,000 Hz for low quality audio and 16,000 Hz or higher for high
    #   quality audio.
    #   @return [Integer]
    #
    # @!attribute [rw] media_encoding
    #   The encoding used for the input audio stream.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary used when processing the stream.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   An identifier for a specific transcription session.
    #   @return [String]
    #
    # @!attribute [rw] transcript_result_stream
    #   Represents the stream of transcription events from Amazon Transcribe
    #   to your application.
    #   @return [Types::TranscriptResultStream]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The name of the vocabulary filter used in your media stream.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_method
    #   The vocabulary filtering method used in the media stream.
    #   @return [String]
    #
    # @!attribute [rw] show_speaker_label
    #   Shows whether speaker identification was enabled in the stream.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_channel_identification
    #   Shows whether channel identification has been enabled in the stream.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_channels
    #   The number of channels identified in the stream.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_partial_results_stabilization
    #   Shows whether partial results stabilization has been enabled in the
    #   stream.
    #   @return [Boolean]
    #
    # @!attribute [rw] partial_results_stability
    #   If partial results stabilization has been enabled in the stream,
    #   shows the stability level.
    #   @return [String]
    #
    # @!attribute [rw] content_identification_type
    #   Shows whether content identification was enabled in this stream.
    #   @return [String]
    #
    # @!attribute [rw] content_redaction_type
    #   Shows whether content redaction was enabled in this stream.
    #   @return [String]
    #
    # @!attribute [rw] pii_entity_types
    #   Lists the PII entity types you specified in your request.
    #   @return [String]
    #
    # @!attribute [rw] language_model_name
    #   The name of the language model used in your media stream.
    #   @return [String]
    #
    # @!attribute [rw] identify_language
    #   The language code of the language identified in your media stream.
    #   @return [Boolean]
    #
    # @!attribute [rw] language_options
    #   The language codes used in the identification of your media
    #   stream's predominant language.
    #   @return [String]
    #
    # @!attribute [rw] preferred_language
    #   The preferred language you specified in your request.
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
      :preferred_language)
      SENSITIVE = []
      include Aws::Structure
    end

    # The transcription in a TranscriptEvent.
    #
    # @!attribute [rw] results
    #   Result objects that contain the results of transcribing a portion of
    #   the input audio stream. The array can be empty.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/Transcript AWS API Documentation
    #
    class Transcript < Struct.new(
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a set of transcription results from the server to the
    # client. It contains one or more segments of the transcription.
    #
    # @!attribute [rw] transcript
    #   The transcription of the audio stream. The transcription is composed
    #   of all of the items in the results list.
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

    # Represents the audio stream from your application to Amazon
    # Transcribe.
    #
    # @note When making an API call, you may pass AudioStream
    #   data as a hash:
    #
    #       {
    #         audio_event: {
    #           audio_chunk: "data",
    #         },
    #       }
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/AudioStream AWS API Documentation
    #
    class AudioStream < Enumerator

      def event_types
        [
          :audio_event
        ]
      end

    end

    # Represents the transcription result stream from Amazon Transcribe
    # Medical to your application.
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

    # Represents the transcription result stream from Amazon Transcribe to
    # your application.
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
