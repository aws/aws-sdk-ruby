# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/Alternative AWS API Documentation
    #
    class Alternative < Struct.new(
      :transcript,
      :items)
      include Aws::Structure
    end

    # Provides a wrapper for the audio chunks that you are sending.
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
    #   to transcribe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/AudioEvent AWS API Documentation
    #
    class AudioEvent < Struct.new(
      :audio_chunk,
      :event_type)
      include Aws::Structure
    end

    # One or more arguments to the `StartStreamTranscription` operation was
    # invalid. For example, `MediaEncoding` was not set to `pcm` or
    # `LanguageCode` was not set to a valid code. Check the parameters and
    # try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message,
      :event_type)
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
      include Aws::Structure
    end

    # A problem occurred while processing the audio. Amazon Transcribe
    # terminated processing. Try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/InternalFailureException AWS API Documentation
    #
    class InternalFailureException < Struct.new(
      :message,
      :event_type)
      include Aws::Structure
    end

    # A word or phrase transcribed from the input audio.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/Item AWS API Documentation
    #
    class Item < Struct.new(
      :start_time,
      :end_time,
      :type,
      :content)
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
      include Aws::Structure
    end

    # The result of transcribing a portion of the input audio stream.
    #
    # @!attribute [rw] result_id
    #   A unique identifier for the result.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The offset in milliseconds from the beginning of the audio stream to
    #   the beginning of the result.
    #   @return [Float]
    #
    # @!attribute [rw] end_time
    #   The offset in milliseconds from the beginning of the audio stream to
    #   the end of the result.
    #   @return [Float]
    #
    # @!attribute [rw] is_partial
    #   `true` to indicate that Amazon Transcribe has additional
    #   transcription data to send, `false` to indicate that this is the
    #   last transcription result for the audio stream.
    #   @return [Boolean]
    #
    # @!attribute [rw] alternatives
    #   A list of possible transcriptions for the audio. Each alternative
    #   typically contains one `item` that contains the result of the
    #   transcription.
    #   @return [Array<Types::Alternative>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/Result AWS API Documentation
    #
    class Result < Struct.new(
      :result_id,
      :start_time,
      :end_time,
      :is_partial,
      :alternatives)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartStreamTranscriptionRequest
    #   data as a hash:
    #
    #       {
    #         language_code: "en-US", # required, accepts en-US, en-GB, es-US, fr-CA, fr-FR
    #         media_sample_rate_hertz: 1, # required
    #         media_encoding: "pcm", # required, accepts pcm
    #         vocabulary_name: "VocabularyName",
    #         session_id: "SessionId",
    #         input_event_stream_hander: EventStreams::AudioStream.new,
    #       }
    #
    # @!attribute [rw] language_code
    #   Indicates the language used in the input audio stream.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate, in Hertz, of the input audio. We suggest that you
    #   use 8000 Hz for low quality audio and 16000 Hz for high quality
    #   audio.
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
    #   HTTP2 data frame.
    #   @return [Types::AudioStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/StartStreamTranscriptionRequest AWS API Documentation
    #
    class StartStreamTranscriptionRequest < Struct.new(
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :session_id,
      :audio_stream)
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   An identifier for the streaming transcription.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code for the input audio stream.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate for the input audio stream. Use 8000 Hz for low
    #   quality audio and 16000 Hz for high quality audio.
    #   @return [Integer]
    #
    # @!attribute [rw] media_encoding
    #   The encoding used for the input audio stream.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary used when processing the job.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/StartStreamTranscriptionResponse AWS API Documentation
    #
    class StartStreamTranscriptionResponse < Struct.new(
      :request_id,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :session_id,
      :transcript_result_stream)
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
          :conflict_exception
        ]
      end

    end

  end
end
