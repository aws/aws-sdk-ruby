# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TranscribeStreamingService
  # @api private
  module ClientApi

    include Seahorse::Model

    Alternative = Shapes::StructureShape.new(name: 'Alternative')
    AlternativeList = Shapes::ListShape.new(name: 'AlternativeList')
    AudioChunk = Shapes::BlobShape.new(name: 'AudioChunk')
    AudioEvent = Shapes::StructureShape.new(name: 'AudioEvent')
    AudioStream = Shapes::StructureShape.new(name: 'AudioStream')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Double = Shapes::FloatShape.new(name: 'Double')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    Item = Shapes::StructureShape.new(name: 'Item')
    ItemList = Shapes::ListShape.new(name: 'ItemList')
    ItemType = Shapes::StringShape.new(name: 'ItemType')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    MediaEncoding = Shapes::StringShape.new(name: 'MediaEncoding')
    MediaSampleRateHertz = Shapes::IntegerShape.new(name: 'MediaSampleRateHertz')
    NumberOfChannels = Shapes::IntegerShape.new(name: 'NumberOfChannels')
    RequestId = Shapes::StringShape.new(name: 'RequestId')
    Result = Shapes::StructureShape.new(name: 'Result')
    ResultList = Shapes::ListShape.new(name: 'ResultList')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    StartStreamTranscriptionRequest = Shapes::StructureShape.new(name: 'StartStreamTranscriptionRequest')
    StartStreamTranscriptionResponse = Shapes::StructureShape.new(name: 'StartStreamTranscriptionResponse')
    String = Shapes::StringShape.new(name: 'String')
    Transcript = Shapes::StructureShape.new(name: 'Transcript')
    TranscriptEvent = Shapes::StructureShape.new(name: 'TranscriptEvent')
    TranscriptResultStream = Shapes::StructureShape.new(name: 'TranscriptResultStream')
    VocabularyFilterMethod = Shapes::StringShape.new(name: 'VocabularyFilterMethod')
    VocabularyFilterName = Shapes::StringShape.new(name: 'VocabularyFilterName')
    VocabularyName = Shapes::StringShape.new(name: 'VocabularyName')

    Alternative.add_member(:transcript, Shapes::ShapeRef.new(shape: String, location_name: "Transcript"))
    Alternative.add_member(:items, Shapes::ShapeRef.new(shape: ItemList, location_name: "Items"))
    Alternative.struct_class = Types::Alternative

    AlternativeList.member = Shapes::ShapeRef.new(shape: Alternative)

    AudioEvent.add_member(:audio_chunk, Shapes::ShapeRef.new(shape: AudioChunk, eventpayload: true, eventpayload_type: 'blob', location_name: "AudioChunk", metadata: {"eventpayload"=>true}))
    AudioEvent.struct_class = Types::AudioEvent

    AudioStream.add_member(:audio_event, Shapes::ShapeRef.new(shape: AudioEvent, event: true, location_name: "AudioEvent"))
    AudioStream.struct_class = Types::AudioStream

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    Item.add_member(:start_time, Shapes::ShapeRef.new(shape: Double, location_name: "StartTime"))
    Item.add_member(:end_time, Shapes::ShapeRef.new(shape: Double, location_name: "EndTime"))
    Item.add_member(:type, Shapes::ShapeRef.new(shape: ItemType, location_name: "Type"))
    Item.add_member(:content, Shapes::ShapeRef.new(shape: String, location_name: "Content"))
    Item.add_member(:vocabulary_filter_match, Shapes::ShapeRef.new(shape: Boolean, location_name: "VocabularyFilterMatch"))
    Item.add_member(:speaker, Shapes::ShapeRef.new(shape: String, location_name: "Speaker"))
    Item.struct_class = Types::Item

    ItemList.member = Shapes::ShapeRef.new(shape: Item)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    Result.add_member(:result_id, Shapes::ShapeRef.new(shape: String, location_name: "ResultId"))
    Result.add_member(:start_time, Shapes::ShapeRef.new(shape: Double, location_name: "StartTime"))
    Result.add_member(:end_time, Shapes::ShapeRef.new(shape: Double, location_name: "EndTime"))
    Result.add_member(:is_partial, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsPartial"))
    Result.add_member(:alternatives, Shapes::ShapeRef.new(shape: AlternativeList, location_name: "Alternatives"))
    Result.add_member(:channel_id, Shapes::ShapeRef.new(shape: String, location_name: "ChannelId"))
    Result.struct_class = Types::Result

    ResultList.member = Shapes::ShapeRef.new(shape: Result)

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartStreamTranscriptionRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location: "header", location_name: "x-amzn-transcribe-language-code"))
    StartStreamTranscriptionRequest.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MediaSampleRateHertz, required: true, location: "header", location_name: "x-amzn-transcribe-sample-rate"))
    StartStreamTranscriptionRequest.add_member(:media_encoding, Shapes::ShapeRef.new(shape: MediaEncoding, required: true, location: "header", location_name: "x-amzn-transcribe-media-encoding"))
    StartStreamTranscriptionRequest.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location: "header", location_name: "x-amzn-transcribe-vocabulary-name"))
    StartStreamTranscriptionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location: "header", location_name: "x-amzn-transcribe-session-id"))
    StartStreamTranscriptionRequest.add_member(:audio_stream, Shapes::ShapeRef.new(shape: AudioStream, required: true, eventstream: true, location_name: "AudioStream"))
    StartStreamTranscriptionRequest.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, location: "header", location_name: "x-amzn-transcribe-vocabulary-filter-name"))
    StartStreamTranscriptionRequest.add_member(:vocabulary_filter_method, Shapes::ShapeRef.new(shape: VocabularyFilterMethod, location: "header", location_name: "x-amzn-transcribe-vocabulary-filter-method"))
    StartStreamTranscriptionRequest.add_member(:show_speaker_label, Shapes::ShapeRef.new(shape: Boolean, location: "header", location_name: "x-amzn-transcribe-show-speaker-label"))
    StartStreamTranscriptionRequest.add_member(:enable_channel_identification, Shapes::ShapeRef.new(shape: Boolean, location: "header", location_name: "x-amzn-transcribe-enable-channel-identification"))
    StartStreamTranscriptionRequest.add_member(:number_of_channels, Shapes::ShapeRef.new(shape: NumberOfChannels, location: "header", location_name: "x-amzn-transcribe-number-of-channels"))
    StartStreamTranscriptionRequest.struct_class = Types::StartStreamTranscriptionRequest
    StartStreamTranscriptionRequest[:payload] = :audio_stream
    StartStreamTranscriptionRequest[:payload_member] = StartStreamTranscriptionRequest.member(:audio_stream)

    StartStreamTranscriptionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location: "header", location_name: "x-amzn-request-id"))
    StartStreamTranscriptionResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location: "header", location_name: "x-amzn-transcribe-language-code"))
    StartStreamTranscriptionResponse.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MediaSampleRateHertz, location: "header", location_name: "x-amzn-transcribe-sample-rate"))
    StartStreamTranscriptionResponse.add_member(:media_encoding, Shapes::ShapeRef.new(shape: MediaEncoding, location: "header", location_name: "x-amzn-transcribe-media-encoding"))
    StartStreamTranscriptionResponse.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location: "header", location_name: "x-amzn-transcribe-vocabulary-name"))
    StartStreamTranscriptionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location: "header", location_name: "x-amzn-transcribe-session-id"))
    StartStreamTranscriptionResponse.add_member(:transcript_result_stream, Shapes::ShapeRef.new(shape: TranscriptResultStream, eventstream: true, location_name: "TranscriptResultStream"))
    StartStreamTranscriptionResponse.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, location: "header", location_name: "x-amzn-transcribe-vocabulary-filter-name"))
    StartStreamTranscriptionResponse.add_member(:vocabulary_filter_method, Shapes::ShapeRef.new(shape: VocabularyFilterMethod, location: "header", location_name: "x-amzn-transcribe-vocabulary-filter-method"))
    StartStreamTranscriptionResponse.add_member(:show_speaker_label, Shapes::ShapeRef.new(shape: Boolean, location: "header", location_name: "x-amzn-transcribe-show-speaker-label"))
    StartStreamTranscriptionResponse.add_member(:enable_channel_identification, Shapes::ShapeRef.new(shape: Boolean, location: "header", location_name: "x-amzn-transcribe-enable-channel-identification"))
    StartStreamTranscriptionResponse.add_member(:number_of_channels, Shapes::ShapeRef.new(shape: NumberOfChannels, location: "header", location_name: "x-amzn-transcribe-number-of-channels"))
    StartStreamTranscriptionResponse.struct_class = Types::StartStreamTranscriptionResponse
    StartStreamTranscriptionResponse[:payload] = :transcript_result_stream
    StartStreamTranscriptionResponse[:payload_member] = StartStreamTranscriptionResponse.member(:transcript_result_stream)

    Transcript.add_member(:results, Shapes::ShapeRef.new(shape: ResultList, location_name: "Results"))
    Transcript.struct_class = Types::Transcript

    TranscriptEvent.add_member(:transcript, Shapes::ShapeRef.new(shape: Transcript, location_name: "Transcript"))
    TranscriptEvent.struct_class = Types::TranscriptEvent

    TranscriptResultStream.add_member(:transcript_event, Shapes::ShapeRef.new(shape: TranscriptEvent, event: true, location_name: "TranscriptEvent"))
    TranscriptResultStream.add_member(:bad_request_exception, Shapes::ShapeRef.new(shape: BadRequestException, event: true, location_name: "BadRequestException"))
    TranscriptResultStream.add_member(:limit_exceeded_exception, Shapes::ShapeRef.new(shape: LimitExceededException, event: true, location_name: "LimitExceededException"))
    TranscriptResultStream.add_member(:internal_failure_exception, Shapes::ShapeRef.new(shape: InternalFailureException, event: true, location_name: "InternalFailureException"))
    TranscriptResultStream.add_member(:conflict_exception, Shapes::ShapeRef.new(shape: ConflictException, event: true, location_name: "ConflictException"))
    TranscriptResultStream.add_member(:service_unavailable_exception, Shapes::ShapeRef.new(shape: ServiceUnavailableException, event: true, location_name: "ServiceUnavailableException"))
    TranscriptResultStream.struct_class = Types::TranscriptResultStream


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-10-26"

      api.metadata = {
        "apiVersion" => "2017-10-26",
        "endpointPrefix" => "transcribestreaming",
        "protocol" => "rest-json",
        "protocolSettings" => {"h2"=>"eventstream"},
        "serviceFullName" => "Amazon Transcribe Streaming Service",
        "serviceId" => "Transcribe Streaming",
        "signatureVersion" => "v4",
        "signingName" => "transcribe",
        "uid" => "transcribe-streaming-2017-10-26",
      }

      api.add_operation(:start_stream_transcription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartStreamTranscription"
        o.http_method = "POST"
        o.http_request_uri = "/stream-transcription"
        o.input = Shapes::ShapeRef.new(shape: StartStreamTranscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartStreamTranscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.async = true
      end)
    end

  end
end
