# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
    Confidence = Shapes::FloatShape.new(name: 'Confidence')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentIdentificationType = Shapes::StringShape.new(name: 'ContentIdentificationType')
    ContentRedactionType = Shapes::StringShape.new(name: 'ContentRedactionType')
    Double = Shapes::FloatShape.new(name: 'Double')
    Entity = Shapes::StructureShape.new(name: 'Entity')
    EntityList = Shapes::ListShape.new(name: 'EntityList')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    Item = Shapes::StructureShape.new(name: 'Item')
    ItemList = Shapes::ListShape.new(name: 'ItemList')
    ItemType = Shapes::StringShape.new(name: 'ItemType')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    LanguageIdentification = Shapes::ListShape.new(name: 'LanguageIdentification')
    LanguageOptions = Shapes::StringShape.new(name: 'LanguageOptions')
    LanguageWithScore = Shapes::StructureShape.new(name: 'LanguageWithScore')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    MediaEncoding = Shapes::StringShape.new(name: 'MediaEncoding')
    MediaSampleRateHertz = Shapes::IntegerShape.new(name: 'MediaSampleRateHertz')
    MedicalAlternative = Shapes::StructureShape.new(name: 'MedicalAlternative')
    MedicalAlternativeList = Shapes::ListShape.new(name: 'MedicalAlternativeList')
    MedicalContentIdentificationType = Shapes::StringShape.new(name: 'MedicalContentIdentificationType')
    MedicalEntity = Shapes::StructureShape.new(name: 'MedicalEntity')
    MedicalEntityList = Shapes::ListShape.new(name: 'MedicalEntityList')
    MedicalItem = Shapes::StructureShape.new(name: 'MedicalItem')
    MedicalItemList = Shapes::ListShape.new(name: 'MedicalItemList')
    MedicalResult = Shapes::StructureShape.new(name: 'MedicalResult')
    MedicalResultList = Shapes::ListShape.new(name: 'MedicalResultList')
    MedicalTranscript = Shapes::StructureShape.new(name: 'MedicalTranscript')
    MedicalTranscriptEvent = Shapes::StructureShape.new(name: 'MedicalTranscriptEvent')
    MedicalTranscriptResultStream = Shapes::StructureShape.new(name: 'MedicalTranscriptResultStream')
    ModelName = Shapes::StringShape.new(name: 'ModelName')
    NumberOfChannels = Shapes::IntegerShape.new(name: 'NumberOfChannels')
    PartialResultsStability = Shapes::StringShape.new(name: 'PartialResultsStability')
    PiiEntityTypes = Shapes::StringShape.new(name: 'PiiEntityTypes')
    RequestId = Shapes::StringShape.new(name: 'RequestId')
    Result = Shapes::StructureShape.new(name: 'Result')
    ResultList = Shapes::ListShape.new(name: 'ResultList')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    Specialty = Shapes::StringShape.new(name: 'Specialty')
    Stable = Shapes::BooleanShape.new(name: 'Stable')
    StartMedicalStreamTranscriptionRequest = Shapes::StructureShape.new(name: 'StartMedicalStreamTranscriptionRequest')
    StartMedicalStreamTranscriptionResponse = Shapes::StructureShape.new(name: 'StartMedicalStreamTranscriptionResponse')
    StartStreamTranscriptionRequest = Shapes::StructureShape.new(name: 'StartStreamTranscriptionRequest')
    StartStreamTranscriptionResponse = Shapes::StructureShape.new(name: 'StartStreamTranscriptionResponse')
    String = Shapes::StringShape.new(name: 'String')
    Transcript = Shapes::StructureShape.new(name: 'Transcript')
    TranscriptEvent = Shapes::StructureShape.new(name: 'TranscriptEvent')
    TranscriptResultStream = Shapes::StructureShape.new(name: 'TranscriptResultStream')
    Type = Shapes::StringShape.new(name: 'Type')
    VocabularyFilterMethod = Shapes::StringShape.new(name: 'VocabularyFilterMethod')
    VocabularyFilterName = Shapes::StringShape.new(name: 'VocabularyFilterName')
    VocabularyName = Shapes::StringShape.new(name: 'VocabularyName')

    Alternative.add_member(:transcript, Shapes::ShapeRef.new(shape: String, location_name: "Transcript"))
    Alternative.add_member(:items, Shapes::ShapeRef.new(shape: ItemList, location_name: "Items"))
    Alternative.add_member(:entities, Shapes::ShapeRef.new(shape: EntityList, location_name: "Entities"))
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

    Entity.add_member(:start_time, Shapes::ShapeRef.new(shape: Double, location_name: "StartTime"))
    Entity.add_member(:end_time, Shapes::ShapeRef.new(shape: Double, location_name: "EndTime"))
    Entity.add_member(:category, Shapes::ShapeRef.new(shape: String, location_name: "Category"))
    Entity.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    Entity.add_member(:content, Shapes::ShapeRef.new(shape: String, location_name: "Content"))
    Entity.add_member(:confidence, Shapes::ShapeRef.new(shape: Confidence, location_name: "Confidence"))
    Entity.struct_class = Types::Entity

    EntityList.member = Shapes::ShapeRef.new(shape: Entity)

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    Item.add_member(:start_time, Shapes::ShapeRef.new(shape: Double, location_name: "StartTime"))
    Item.add_member(:end_time, Shapes::ShapeRef.new(shape: Double, location_name: "EndTime"))
    Item.add_member(:type, Shapes::ShapeRef.new(shape: ItemType, location_name: "Type"))
    Item.add_member(:content, Shapes::ShapeRef.new(shape: String, location_name: "Content"))
    Item.add_member(:vocabulary_filter_match, Shapes::ShapeRef.new(shape: Boolean, location_name: "VocabularyFilterMatch"))
    Item.add_member(:speaker, Shapes::ShapeRef.new(shape: String, location_name: "Speaker"))
    Item.add_member(:confidence, Shapes::ShapeRef.new(shape: Confidence, location_name: "Confidence"))
    Item.add_member(:stable, Shapes::ShapeRef.new(shape: Stable, location_name: "Stable"))
    Item.struct_class = Types::Item

    ItemList.member = Shapes::ShapeRef.new(shape: Item)

    LanguageIdentification.member = Shapes::ShapeRef.new(shape: LanguageWithScore)

    LanguageWithScore.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    LanguageWithScore.add_member(:score, Shapes::ShapeRef.new(shape: Double, location_name: "Score"))
    LanguageWithScore.struct_class = Types::LanguageWithScore

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    MedicalAlternative.add_member(:transcript, Shapes::ShapeRef.new(shape: String, location_name: "Transcript"))
    MedicalAlternative.add_member(:items, Shapes::ShapeRef.new(shape: MedicalItemList, location_name: "Items"))
    MedicalAlternative.add_member(:entities, Shapes::ShapeRef.new(shape: MedicalEntityList, location_name: "Entities"))
    MedicalAlternative.struct_class = Types::MedicalAlternative

    MedicalAlternativeList.member = Shapes::ShapeRef.new(shape: MedicalAlternative)

    MedicalEntity.add_member(:start_time, Shapes::ShapeRef.new(shape: Double, location_name: "StartTime"))
    MedicalEntity.add_member(:end_time, Shapes::ShapeRef.new(shape: Double, location_name: "EndTime"))
    MedicalEntity.add_member(:category, Shapes::ShapeRef.new(shape: String, location_name: "Category"))
    MedicalEntity.add_member(:content, Shapes::ShapeRef.new(shape: String, location_name: "Content"))
    MedicalEntity.add_member(:confidence, Shapes::ShapeRef.new(shape: Confidence, location_name: "Confidence"))
    MedicalEntity.struct_class = Types::MedicalEntity

    MedicalEntityList.member = Shapes::ShapeRef.new(shape: MedicalEntity)

    MedicalItem.add_member(:start_time, Shapes::ShapeRef.new(shape: Double, location_name: "StartTime"))
    MedicalItem.add_member(:end_time, Shapes::ShapeRef.new(shape: Double, location_name: "EndTime"))
    MedicalItem.add_member(:type, Shapes::ShapeRef.new(shape: ItemType, location_name: "Type"))
    MedicalItem.add_member(:content, Shapes::ShapeRef.new(shape: String, location_name: "Content"))
    MedicalItem.add_member(:confidence, Shapes::ShapeRef.new(shape: Confidence, location_name: "Confidence"))
    MedicalItem.add_member(:speaker, Shapes::ShapeRef.new(shape: String, location_name: "Speaker"))
    MedicalItem.struct_class = Types::MedicalItem

    MedicalItemList.member = Shapes::ShapeRef.new(shape: MedicalItem)

    MedicalResult.add_member(:result_id, Shapes::ShapeRef.new(shape: String, location_name: "ResultId"))
    MedicalResult.add_member(:start_time, Shapes::ShapeRef.new(shape: Double, location_name: "StartTime"))
    MedicalResult.add_member(:end_time, Shapes::ShapeRef.new(shape: Double, location_name: "EndTime"))
    MedicalResult.add_member(:is_partial, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsPartial"))
    MedicalResult.add_member(:alternatives, Shapes::ShapeRef.new(shape: MedicalAlternativeList, location_name: "Alternatives"))
    MedicalResult.add_member(:channel_id, Shapes::ShapeRef.new(shape: String, location_name: "ChannelId"))
    MedicalResult.struct_class = Types::MedicalResult

    MedicalResultList.member = Shapes::ShapeRef.new(shape: MedicalResult)

    MedicalTranscript.add_member(:results, Shapes::ShapeRef.new(shape: MedicalResultList, location_name: "Results"))
    MedicalTranscript.struct_class = Types::MedicalTranscript

    MedicalTranscriptEvent.add_member(:transcript, Shapes::ShapeRef.new(shape: MedicalTranscript, location_name: "Transcript"))
    MedicalTranscriptEvent.struct_class = Types::MedicalTranscriptEvent

    MedicalTranscriptResultStream.add_member(:transcript_event, Shapes::ShapeRef.new(shape: MedicalTranscriptEvent, event: true, location_name: "TranscriptEvent"))
    MedicalTranscriptResultStream.add_member(:bad_request_exception, Shapes::ShapeRef.new(shape: BadRequestException, event: true, location_name: "BadRequestException"))
    MedicalTranscriptResultStream.add_member(:limit_exceeded_exception, Shapes::ShapeRef.new(shape: LimitExceededException, event: true, location_name: "LimitExceededException"))
    MedicalTranscriptResultStream.add_member(:internal_failure_exception, Shapes::ShapeRef.new(shape: InternalFailureException, event: true, location_name: "InternalFailureException"))
    MedicalTranscriptResultStream.add_member(:conflict_exception, Shapes::ShapeRef.new(shape: ConflictException, event: true, location_name: "ConflictException"))
    MedicalTranscriptResultStream.add_member(:service_unavailable_exception, Shapes::ShapeRef.new(shape: ServiceUnavailableException, event: true, location_name: "ServiceUnavailableException"))
    MedicalTranscriptResultStream.struct_class = Types::MedicalTranscriptResultStream

    Result.add_member(:result_id, Shapes::ShapeRef.new(shape: String, location_name: "ResultId"))
    Result.add_member(:start_time, Shapes::ShapeRef.new(shape: Double, location_name: "StartTime"))
    Result.add_member(:end_time, Shapes::ShapeRef.new(shape: Double, location_name: "EndTime"))
    Result.add_member(:is_partial, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsPartial"))
    Result.add_member(:alternatives, Shapes::ShapeRef.new(shape: AlternativeList, location_name: "Alternatives"))
    Result.add_member(:channel_id, Shapes::ShapeRef.new(shape: String, location_name: "ChannelId"))
    Result.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    Result.add_member(:language_identification, Shapes::ShapeRef.new(shape: LanguageIdentification, location_name: "LanguageIdentification"))
    Result.struct_class = Types::Result

    ResultList.member = Shapes::ShapeRef.new(shape: Result)

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartMedicalStreamTranscriptionRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location: "header", location_name: "x-amzn-transcribe-language-code"))
    StartMedicalStreamTranscriptionRequest.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MediaSampleRateHertz, required: true, location: "header", location_name: "x-amzn-transcribe-sample-rate"))
    StartMedicalStreamTranscriptionRequest.add_member(:media_encoding, Shapes::ShapeRef.new(shape: MediaEncoding, required: true, location: "header", location_name: "x-amzn-transcribe-media-encoding"))
    StartMedicalStreamTranscriptionRequest.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location: "header", location_name: "x-amzn-transcribe-vocabulary-name"))
    StartMedicalStreamTranscriptionRequest.add_member(:specialty, Shapes::ShapeRef.new(shape: Specialty, required: true, location: "header", location_name: "x-amzn-transcribe-specialty"))
    StartMedicalStreamTranscriptionRequest.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location: "header", location_name: "x-amzn-transcribe-type"))
    StartMedicalStreamTranscriptionRequest.add_member(:show_speaker_label, Shapes::ShapeRef.new(shape: Boolean, location: "header", location_name: "x-amzn-transcribe-show-speaker-label"))
    StartMedicalStreamTranscriptionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location: "header", location_name: "x-amzn-transcribe-session-id"))
    StartMedicalStreamTranscriptionRequest.add_member(:audio_stream, Shapes::ShapeRef.new(shape: AudioStream, required: true, eventstream: true, location_name: "AudioStream"))
    StartMedicalStreamTranscriptionRequest.add_member(:enable_channel_identification, Shapes::ShapeRef.new(shape: Boolean, location: "header", location_name: "x-amzn-transcribe-enable-channel-identification"))
    StartMedicalStreamTranscriptionRequest.add_member(:number_of_channels, Shapes::ShapeRef.new(shape: NumberOfChannels, location: "header", location_name: "x-amzn-transcribe-number-of-channels"))
    StartMedicalStreamTranscriptionRequest.add_member(:content_identification_type, Shapes::ShapeRef.new(shape: MedicalContentIdentificationType, location: "header", location_name: "x-amzn-transcribe-content-identification-type"))
    StartMedicalStreamTranscriptionRequest.struct_class = Types::StartMedicalStreamTranscriptionRequest
    StartMedicalStreamTranscriptionRequest[:payload] = :audio_stream
    StartMedicalStreamTranscriptionRequest[:payload_member] = StartMedicalStreamTranscriptionRequest.member(:audio_stream)

    StartMedicalStreamTranscriptionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location: "header", location_name: "x-amzn-request-id"))
    StartMedicalStreamTranscriptionResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location: "header", location_name: "x-amzn-transcribe-language-code"))
    StartMedicalStreamTranscriptionResponse.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MediaSampleRateHertz, location: "header", location_name: "x-amzn-transcribe-sample-rate"))
    StartMedicalStreamTranscriptionResponse.add_member(:media_encoding, Shapes::ShapeRef.new(shape: MediaEncoding, location: "header", location_name: "x-amzn-transcribe-media-encoding"))
    StartMedicalStreamTranscriptionResponse.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location: "header", location_name: "x-amzn-transcribe-vocabulary-name"))
    StartMedicalStreamTranscriptionResponse.add_member(:specialty, Shapes::ShapeRef.new(shape: Specialty, location: "header", location_name: "x-amzn-transcribe-specialty"))
    StartMedicalStreamTranscriptionResponse.add_member(:type, Shapes::ShapeRef.new(shape: Type, location: "header", location_name: "x-amzn-transcribe-type"))
    StartMedicalStreamTranscriptionResponse.add_member(:show_speaker_label, Shapes::ShapeRef.new(shape: Boolean, location: "header", location_name: "x-amzn-transcribe-show-speaker-label"))
    StartMedicalStreamTranscriptionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location: "header", location_name: "x-amzn-transcribe-session-id"))
    StartMedicalStreamTranscriptionResponse.add_member(:transcript_result_stream, Shapes::ShapeRef.new(shape: MedicalTranscriptResultStream, eventstream: true, location_name: "TranscriptResultStream"))
    StartMedicalStreamTranscriptionResponse.add_member(:enable_channel_identification, Shapes::ShapeRef.new(shape: Boolean, location: "header", location_name: "x-amzn-transcribe-enable-channel-identification"))
    StartMedicalStreamTranscriptionResponse.add_member(:number_of_channels, Shapes::ShapeRef.new(shape: NumberOfChannels, location: "header", location_name: "x-amzn-transcribe-number-of-channels"))
    StartMedicalStreamTranscriptionResponse.add_member(:content_identification_type, Shapes::ShapeRef.new(shape: MedicalContentIdentificationType, location: "header", location_name: "x-amzn-transcribe-content-identification-type"))
    StartMedicalStreamTranscriptionResponse.struct_class = Types::StartMedicalStreamTranscriptionResponse
    StartMedicalStreamTranscriptionResponse[:payload] = :transcript_result_stream
    StartMedicalStreamTranscriptionResponse[:payload_member] = StartMedicalStreamTranscriptionResponse.member(:transcript_result_stream)

    StartStreamTranscriptionRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location: "header", location_name: "x-amzn-transcribe-language-code"))
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
    StartStreamTranscriptionRequest.add_member(:enable_partial_results_stabilization, Shapes::ShapeRef.new(shape: Boolean, location: "header", location_name: "x-amzn-transcribe-enable-partial-results-stabilization"))
    StartStreamTranscriptionRequest.add_member(:partial_results_stability, Shapes::ShapeRef.new(shape: PartialResultsStability, location: "header", location_name: "x-amzn-transcribe-partial-results-stability"))
    StartStreamTranscriptionRequest.add_member(:content_identification_type, Shapes::ShapeRef.new(shape: ContentIdentificationType, location: "header", location_name: "x-amzn-transcribe-content-identification-type"))
    StartStreamTranscriptionRequest.add_member(:content_redaction_type, Shapes::ShapeRef.new(shape: ContentRedactionType, location: "header", location_name: "x-amzn-transcribe-content-redaction-type"))
    StartStreamTranscriptionRequest.add_member(:pii_entity_types, Shapes::ShapeRef.new(shape: PiiEntityTypes, location: "header", location_name: "x-amzn-transcribe-pii-entity-types"))
    StartStreamTranscriptionRequest.add_member(:language_model_name, Shapes::ShapeRef.new(shape: ModelName, location: "header", location_name: "x-amzn-transcribe-language-model-name"))
    StartStreamTranscriptionRequest.add_member(:identify_language, Shapes::ShapeRef.new(shape: Boolean, location: "header", location_name: "x-amzn-transcribe-identify-language"))
    StartStreamTranscriptionRequest.add_member(:language_options, Shapes::ShapeRef.new(shape: LanguageOptions, location: "header", location_name: "x-amzn-transcribe-language-options"))
    StartStreamTranscriptionRequest.add_member(:preferred_language, Shapes::ShapeRef.new(shape: LanguageCode, location: "header", location_name: "x-amzn-transcribe-preferred-language"))
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
    StartStreamTranscriptionResponse.add_member(:enable_partial_results_stabilization, Shapes::ShapeRef.new(shape: Boolean, location: "header", location_name: "x-amzn-transcribe-enable-partial-results-stabilization"))
    StartStreamTranscriptionResponse.add_member(:partial_results_stability, Shapes::ShapeRef.new(shape: PartialResultsStability, location: "header", location_name: "x-amzn-transcribe-partial-results-stability"))
    StartStreamTranscriptionResponse.add_member(:content_identification_type, Shapes::ShapeRef.new(shape: ContentIdentificationType, location: "header", location_name: "x-amzn-transcribe-content-identification-type"))
    StartStreamTranscriptionResponse.add_member(:content_redaction_type, Shapes::ShapeRef.new(shape: ContentRedactionType, location: "header", location_name: "x-amzn-transcribe-content-redaction-type"))
    StartStreamTranscriptionResponse.add_member(:pii_entity_types, Shapes::ShapeRef.new(shape: PiiEntityTypes, location: "header", location_name: "x-amzn-transcribe-pii-entity-types"))
    StartStreamTranscriptionResponse.add_member(:language_model_name, Shapes::ShapeRef.new(shape: ModelName, location: "header", location_name: "x-amzn-transcribe-language-model-name"))
    StartStreamTranscriptionResponse.add_member(:identify_language, Shapes::ShapeRef.new(shape: Boolean, location: "header", location_name: "x-amzn-transcribe-identify-language"))
    StartStreamTranscriptionResponse.add_member(:language_options, Shapes::ShapeRef.new(shape: LanguageOptions, location: "header", location_name: "x-amzn-transcribe-language-options"))
    StartStreamTranscriptionResponse.add_member(:preferred_language, Shapes::ShapeRef.new(shape: LanguageCode, location: "header", location_name: "x-amzn-transcribe-preferred-language"))
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

      api.add_operation(:start_medical_stream_transcription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMedicalStreamTranscription"
        o.http_method = "POST"
        o.http_request_uri = "/medical-stream-transcription"
        o.input = Shapes::ShapeRef.new(shape: StartMedicalStreamTranscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMedicalStreamTranscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.async = true
      end)

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
