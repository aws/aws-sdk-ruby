# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TranscribeService
  # @api private
  module ClientApi

    include Seahorse::Model

    AbsoluteTimeRange = Shapes::StructureShape.new(name: 'AbsoluteTimeRange')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BaseModelName = Shapes::StringShape.new(name: 'BaseModelName')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CLMLanguageCode = Shapes::StringShape.new(name: 'CLMLanguageCode')
    CallAnalyticsJob = Shapes::StructureShape.new(name: 'CallAnalyticsJob')
    CallAnalyticsJobName = Shapes::StringShape.new(name: 'CallAnalyticsJobName')
    CallAnalyticsJobSettings = Shapes::StructureShape.new(name: 'CallAnalyticsJobSettings')
    CallAnalyticsJobStatus = Shapes::StringShape.new(name: 'CallAnalyticsJobStatus')
    CallAnalyticsJobSummaries = Shapes::ListShape.new(name: 'CallAnalyticsJobSummaries')
    CallAnalyticsJobSummary = Shapes::StructureShape.new(name: 'CallAnalyticsJobSummary')
    CategoryName = Shapes::StringShape.new(name: 'CategoryName')
    CategoryProperties = Shapes::StructureShape.new(name: 'CategoryProperties')
    CategoryPropertiesList = Shapes::ListShape.new(name: 'CategoryPropertiesList')
    ChannelDefinition = Shapes::StructureShape.new(name: 'ChannelDefinition')
    ChannelDefinitions = Shapes::ListShape.new(name: 'ChannelDefinitions')
    ChannelId = Shapes::IntegerShape.new(name: 'ChannelId')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentRedaction = Shapes::StructureShape.new(name: 'ContentRedaction')
    CreateCallAnalyticsCategoryRequest = Shapes::StructureShape.new(name: 'CreateCallAnalyticsCategoryRequest')
    CreateCallAnalyticsCategoryResponse = Shapes::StructureShape.new(name: 'CreateCallAnalyticsCategoryResponse')
    CreateLanguageModelRequest = Shapes::StructureShape.new(name: 'CreateLanguageModelRequest')
    CreateLanguageModelResponse = Shapes::StructureShape.new(name: 'CreateLanguageModelResponse')
    CreateMedicalVocabularyRequest = Shapes::StructureShape.new(name: 'CreateMedicalVocabularyRequest')
    CreateMedicalVocabularyResponse = Shapes::StructureShape.new(name: 'CreateMedicalVocabularyResponse')
    CreateVocabularyFilterRequest = Shapes::StructureShape.new(name: 'CreateVocabularyFilterRequest')
    CreateVocabularyFilterResponse = Shapes::StructureShape.new(name: 'CreateVocabularyFilterResponse')
    CreateVocabularyRequest = Shapes::StructureShape.new(name: 'CreateVocabularyRequest')
    CreateVocabularyResponse = Shapes::StructureShape.new(name: 'CreateVocabularyResponse')
    DataAccessRoleArn = Shapes::StringShape.new(name: 'DataAccessRoleArn')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DeleteCallAnalyticsCategoryRequest = Shapes::StructureShape.new(name: 'DeleteCallAnalyticsCategoryRequest')
    DeleteCallAnalyticsCategoryResponse = Shapes::StructureShape.new(name: 'DeleteCallAnalyticsCategoryResponse')
    DeleteCallAnalyticsJobRequest = Shapes::StructureShape.new(name: 'DeleteCallAnalyticsJobRequest')
    DeleteCallAnalyticsJobResponse = Shapes::StructureShape.new(name: 'DeleteCallAnalyticsJobResponse')
    DeleteLanguageModelRequest = Shapes::StructureShape.new(name: 'DeleteLanguageModelRequest')
    DeleteMedicalTranscriptionJobRequest = Shapes::StructureShape.new(name: 'DeleteMedicalTranscriptionJobRequest')
    DeleteMedicalVocabularyRequest = Shapes::StructureShape.new(name: 'DeleteMedicalVocabularyRequest')
    DeleteTranscriptionJobRequest = Shapes::StructureShape.new(name: 'DeleteTranscriptionJobRequest')
    DeleteVocabularyFilterRequest = Shapes::StructureShape.new(name: 'DeleteVocabularyFilterRequest')
    DeleteVocabularyRequest = Shapes::StructureShape.new(name: 'DeleteVocabularyRequest')
    DescribeLanguageModelRequest = Shapes::StructureShape.new(name: 'DescribeLanguageModelRequest')
    DescribeLanguageModelResponse = Shapes::StructureShape.new(name: 'DescribeLanguageModelResponse')
    DurationInSeconds = Shapes::FloatShape.new(name: 'DurationInSeconds')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    GetCallAnalyticsCategoryRequest = Shapes::StructureShape.new(name: 'GetCallAnalyticsCategoryRequest')
    GetCallAnalyticsCategoryResponse = Shapes::StructureShape.new(name: 'GetCallAnalyticsCategoryResponse')
    GetCallAnalyticsJobRequest = Shapes::StructureShape.new(name: 'GetCallAnalyticsJobRequest')
    GetCallAnalyticsJobResponse = Shapes::StructureShape.new(name: 'GetCallAnalyticsJobResponse')
    GetMedicalTranscriptionJobRequest = Shapes::StructureShape.new(name: 'GetMedicalTranscriptionJobRequest')
    GetMedicalTranscriptionJobResponse = Shapes::StructureShape.new(name: 'GetMedicalTranscriptionJobResponse')
    GetMedicalVocabularyRequest = Shapes::StructureShape.new(name: 'GetMedicalVocabularyRequest')
    GetMedicalVocabularyResponse = Shapes::StructureShape.new(name: 'GetMedicalVocabularyResponse')
    GetTranscriptionJobRequest = Shapes::StructureShape.new(name: 'GetTranscriptionJobRequest')
    GetTranscriptionJobResponse = Shapes::StructureShape.new(name: 'GetTranscriptionJobResponse')
    GetVocabularyFilterRequest = Shapes::StructureShape.new(name: 'GetVocabularyFilterRequest')
    GetVocabularyFilterResponse = Shapes::StructureShape.new(name: 'GetVocabularyFilterResponse')
    GetVocabularyRequest = Shapes::StructureShape.new(name: 'GetVocabularyRequest')
    GetVocabularyResponse = Shapes::StructureShape.new(name: 'GetVocabularyResponse')
    IdentifiedLanguageScore = Shapes::FloatShape.new(name: 'IdentifiedLanguageScore')
    InputDataConfig = Shapes::StructureShape.new(name: 'InputDataConfig')
    InputType = Shapes::StringShape.new(name: 'InputType')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InterruptionFilter = Shapes::StructureShape.new(name: 'InterruptionFilter')
    JobExecutionSettings = Shapes::StructureShape.new(name: 'JobExecutionSettings')
    KMSEncryptionContextMap = Shapes::MapShape.new(name: 'KMSEncryptionContextMap')
    KMSKeyId = Shapes::StringShape.new(name: 'KMSKeyId')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    LanguageCodeItem = Shapes::StructureShape.new(name: 'LanguageCodeItem')
    LanguageCodeList = Shapes::ListShape.new(name: 'LanguageCodeList')
    LanguageIdSettings = Shapes::StructureShape.new(name: 'LanguageIdSettings')
    LanguageIdSettingsMap = Shapes::MapShape.new(name: 'LanguageIdSettingsMap')
    LanguageModel = Shapes::StructureShape.new(name: 'LanguageModel')
    LanguageOptions = Shapes::ListShape.new(name: 'LanguageOptions')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListCallAnalyticsCategoriesRequest = Shapes::StructureShape.new(name: 'ListCallAnalyticsCategoriesRequest')
    ListCallAnalyticsCategoriesResponse = Shapes::StructureShape.new(name: 'ListCallAnalyticsCategoriesResponse')
    ListCallAnalyticsJobsRequest = Shapes::StructureShape.new(name: 'ListCallAnalyticsJobsRequest')
    ListCallAnalyticsJobsResponse = Shapes::StructureShape.new(name: 'ListCallAnalyticsJobsResponse')
    ListLanguageModelsRequest = Shapes::StructureShape.new(name: 'ListLanguageModelsRequest')
    ListLanguageModelsResponse = Shapes::StructureShape.new(name: 'ListLanguageModelsResponse')
    ListMedicalTranscriptionJobsRequest = Shapes::StructureShape.new(name: 'ListMedicalTranscriptionJobsRequest')
    ListMedicalTranscriptionJobsResponse = Shapes::StructureShape.new(name: 'ListMedicalTranscriptionJobsResponse')
    ListMedicalVocabulariesRequest = Shapes::StructureShape.new(name: 'ListMedicalVocabulariesRequest')
    ListMedicalVocabulariesResponse = Shapes::StructureShape.new(name: 'ListMedicalVocabulariesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTranscriptionJobsRequest = Shapes::StructureShape.new(name: 'ListTranscriptionJobsRequest')
    ListTranscriptionJobsResponse = Shapes::StructureShape.new(name: 'ListTranscriptionJobsResponse')
    ListVocabulariesRequest = Shapes::StructureShape.new(name: 'ListVocabulariesRequest')
    ListVocabulariesResponse = Shapes::StructureShape.new(name: 'ListVocabulariesResponse')
    ListVocabularyFiltersRequest = Shapes::StructureShape.new(name: 'ListVocabularyFiltersRequest')
    ListVocabularyFiltersResponse = Shapes::StructureShape.new(name: 'ListVocabularyFiltersResponse')
    MaxAlternatives = Shapes::IntegerShape.new(name: 'MaxAlternatives')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxSpeakers = Shapes::IntegerShape.new(name: 'MaxSpeakers')
    Media = Shapes::StructureShape.new(name: 'Media')
    MediaFormat = Shapes::StringShape.new(name: 'MediaFormat')
    MediaSampleRateHertz = Shapes::IntegerShape.new(name: 'MediaSampleRateHertz')
    MedicalContentIdentificationType = Shapes::StringShape.new(name: 'MedicalContentIdentificationType')
    MedicalMediaSampleRateHertz = Shapes::IntegerShape.new(name: 'MedicalMediaSampleRateHertz')
    MedicalTranscript = Shapes::StructureShape.new(name: 'MedicalTranscript')
    MedicalTranscriptionJob = Shapes::StructureShape.new(name: 'MedicalTranscriptionJob')
    MedicalTranscriptionJobSummaries = Shapes::ListShape.new(name: 'MedicalTranscriptionJobSummaries')
    MedicalTranscriptionJobSummary = Shapes::StructureShape.new(name: 'MedicalTranscriptionJobSummary')
    MedicalTranscriptionSetting = Shapes::StructureShape.new(name: 'MedicalTranscriptionSetting')
    ModelName = Shapes::StringShape.new(name: 'ModelName')
    ModelSettings = Shapes::StructureShape.new(name: 'ModelSettings')
    ModelStatus = Shapes::StringShape.new(name: 'ModelStatus')
    Models = Shapes::ListShape.new(name: 'Models')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonTalkTimeFilter = Shapes::StructureShape.new(name: 'NonTalkTimeFilter')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OutputBucketName = Shapes::StringShape.new(name: 'OutputBucketName')
    OutputKey = Shapes::StringShape.new(name: 'OutputKey')
    OutputLocationType = Shapes::StringShape.new(name: 'OutputLocationType')
    ParticipantRole = Shapes::StringShape.new(name: 'ParticipantRole')
    Percentage = Shapes::IntegerShape.new(name: 'Percentage')
    Phrase = Shapes::StringShape.new(name: 'Phrase')
    Phrases = Shapes::ListShape.new(name: 'Phrases')
    PiiEntityType = Shapes::StringShape.new(name: 'PiiEntityType')
    PiiEntityTypes = Shapes::ListShape.new(name: 'PiiEntityTypes')
    RedactionOutput = Shapes::StringShape.new(name: 'RedactionOutput')
    RedactionType = Shapes::StringShape.new(name: 'RedactionType')
    RelativeTimeRange = Shapes::StructureShape.new(name: 'RelativeTimeRange')
    Rule = Shapes::UnionShape.new(name: 'Rule')
    RuleList = Shapes::ListShape.new(name: 'RuleList')
    SentimentFilter = Shapes::StructureShape.new(name: 'SentimentFilter')
    SentimentValue = Shapes::StringShape.new(name: 'SentimentValue')
    SentimentValueList = Shapes::ListShape.new(name: 'SentimentValueList')
    Settings = Shapes::StructureShape.new(name: 'Settings')
    Specialty = Shapes::StringShape.new(name: 'Specialty')
    StartCallAnalyticsJobRequest = Shapes::StructureShape.new(name: 'StartCallAnalyticsJobRequest')
    StartCallAnalyticsJobResponse = Shapes::StructureShape.new(name: 'StartCallAnalyticsJobResponse')
    StartMedicalTranscriptionJobRequest = Shapes::StructureShape.new(name: 'StartMedicalTranscriptionJobRequest')
    StartMedicalTranscriptionJobResponse = Shapes::StructureShape.new(name: 'StartMedicalTranscriptionJobResponse')
    StartTranscriptionJobRequest = Shapes::StructureShape.new(name: 'StartTranscriptionJobRequest')
    StartTranscriptionJobResponse = Shapes::StructureShape.new(name: 'StartTranscriptionJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringTargetList = Shapes::ListShape.new(name: 'StringTargetList')
    SubtitleFileUris = Shapes::ListShape.new(name: 'SubtitleFileUris')
    SubtitleFormat = Shapes::StringShape.new(name: 'SubtitleFormat')
    SubtitleFormats = Shapes::ListShape.new(name: 'SubtitleFormats')
    SubtitleOutputStartIndex = Shapes::IntegerShape.new(name: 'SubtitleOutputStartIndex')
    Subtitles = Shapes::StructureShape.new(name: 'Subtitles')
    SubtitlesOutput = Shapes::StructureShape.new(name: 'SubtitlesOutput')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TimestampMilliseconds = Shapes::IntegerShape.new(name: 'TimestampMilliseconds')
    TranscribeArn = Shapes::StringShape.new(name: 'TranscribeArn')
    Transcript = Shapes::StructureShape.new(name: 'Transcript')
    TranscriptFilter = Shapes::StructureShape.new(name: 'TranscriptFilter')
    TranscriptFilterType = Shapes::StringShape.new(name: 'TranscriptFilterType')
    TranscriptionJob = Shapes::StructureShape.new(name: 'TranscriptionJob')
    TranscriptionJobName = Shapes::StringShape.new(name: 'TranscriptionJobName')
    TranscriptionJobStatus = Shapes::StringShape.new(name: 'TranscriptionJobStatus')
    TranscriptionJobSummaries = Shapes::ListShape.new(name: 'TranscriptionJobSummaries')
    TranscriptionJobSummary = Shapes::StructureShape.new(name: 'TranscriptionJobSummary')
    Type = Shapes::StringShape.new(name: 'Type')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateCallAnalyticsCategoryRequest = Shapes::StructureShape.new(name: 'UpdateCallAnalyticsCategoryRequest')
    UpdateCallAnalyticsCategoryResponse = Shapes::StructureShape.new(name: 'UpdateCallAnalyticsCategoryResponse')
    UpdateMedicalVocabularyRequest = Shapes::StructureShape.new(name: 'UpdateMedicalVocabularyRequest')
    UpdateMedicalVocabularyResponse = Shapes::StructureShape.new(name: 'UpdateMedicalVocabularyResponse')
    UpdateVocabularyFilterRequest = Shapes::StructureShape.new(name: 'UpdateVocabularyFilterRequest')
    UpdateVocabularyFilterResponse = Shapes::StructureShape.new(name: 'UpdateVocabularyFilterResponse')
    UpdateVocabularyRequest = Shapes::StructureShape.new(name: 'UpdateVocabularyRequest')
    UpdateVocabularyResponse = Shapes::StructureShape.new(name: 'UpdateVocabularyResponse')
    Uri = Shapes::StringShape.new(name: 'Uri')
    Vocabularies = Shapes::ListShape.new(name: 'Vocabularies')
    VocabularyFilterInfo = Shapes::StructureShape.new(name: 'VocabularyFilterInfo')
    VocabularyFilterMethod = Shapes::StringShape.new(name: 'VocabularyFilterMethod')
    VocabularyFilterName = Shapes::StringShape.new(name: 'VocabularyFilterName')
    VocabularyFilters = Shapes::ListShape.new(name: 'VocabularyFilters')
    VocabularyInfo = Shapes::StructureShape.new(name: 'VocabularyInfo')
    VocabularyName = Shapes::StringShape.new(name: 'VocabularyName')
    VocabularyState = Shapes::StringShape.new(name: 'VocabularyState')
    Word = Shapes::StringShape.new(name: 'Word')
    Words = Shapes::ListShape.new(name: 'Words')

    AbsoluteTimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampMilliseconds, location_name: "StartTime"))
    AbsoluteTimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampMilliseconds, location_name: "EndTime"))
    AbsoluteTimeRange.add_member(:first, Shapes::ShapeRef.new(shape: TimestampMilliseconds, location_name: "First"))
    AbsoluteTimeRange.add_member(:last, Shapes::ShapeRef.new(shape: TimestampMilliseconds, location_name: "Last"))
    AbsoluteTimeRange.struct_class = Types::AbsoluteTimeRange

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    CallAnalyticsJob.add_member(:call_analytics_job_name, Shapes::ShapeRef.new(shape: CallAnalyticsJobName, location_name: "CallAnalyticsJobName"))
    CallAnalyticsJob.add_member(:call_analytics_job_status, Shapes::ShapeRef.new(shape: CallAnalyticsJobStatus, location_name: "CallAnalyticsJobStatus"))
    CallAnalyticsJob.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    CallAnalyticsJob.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MediaSampleRateHertz, location_name: "MediaSampleRateHertz"))
    CallAnalyticsJob.add_member(:media_format, Shapes::ShapeRef.new(shape: MediaFormat, location_name: "MediaFormat"))
    CallAnalyticsJob.add_member(:media, Shapes::ShapeRef.new(shape: Media, location_name: "Media"))
    CallAnalyticsJob.add_member(:transcript, Shapes::ShapeRef.new(shape: Transcript, location_name: "Transcript"))
    CallAnalyticsJob.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    CallAnalyticsJob.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    CallAnalyticsJob.add_member(:completion_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletionTime"))
    CallAnalyticsJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    CallAnalyticsJob.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: "DataAccessRoleArn"))
    CallAnalyticsJob.add_member(:identified_language_score, Shapes::ShapeRef.new(shape: IdentifiedLanguageScore, location_name: "IdentifiedLanguageScore"))
    CallAnalyticsJob.add_member(:settings, Shapes::ShapeRef.new(shape: CallAnalyticsJobSettings, location_name: "Settings"))
    CallAnalyticsJob.add_member(:channel_definitions, Shapes::ShapeRef.new(shape: ChannelDefinitions, location_name: "ChannelDefinitions"))
    CallAnalyticsJob.struct_class = Types::CallAnalyticsJob

    CallAnalyticsJobSettings.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    CallAnalyticsJobSettings.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: "VocabularyFilterName"))
    CallAnalyticsJobSettings.add_member(:vocabulary_filter_method, Shapes::ShapeRef.new(shape: VocabularyFilterMethod, location_name: "VocabularyFilterMethod"))
    CallAnalyticsJobSettings.add_member(:language_model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "LanguageModelName"))
    CallAnalyticsJobSettings.add_member(:content_redaction, Shapes::ShapeRef.new(shape: ContentRedaction, location_name: "ContentRedaction"))
    CallAnalyticsJobSettings.add_member(:language_options, Shapes::ShapeRef.new(shape: LanguageOptions, location_name: "LanguageOptions"))
    CallAnalyticsJobSettings.add_member(:language_id_settings, Shapes::ShapeRef.new(shape: LanguageIdSettingsMap, location_name: "LanguageIdSettings"))
    CallAnalyticsJobSettings.struct_class = Types::CallAnalyticsJobSettings

    CallAnalyticsJobSummaries.member = Shapes::ShapeRef.new(shape: CallAnalyticsJobSummary)

    CallAnalyticsJobSummary.add_member(:call_analytics_job_name, Shapes::ShapeRef.new(shape: CallAnalyticsJobName, location_name: "CallAnalyticsJobName"))
    CallAnalyticsJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    CallAnalyticsJobSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    CallAnalyticsJobSummary.add_member(:completion_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletionTime"))
    CallAnalyticsJobSummary.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    CallAnalyticsJobSummary.add_member(:call_analytics_job_status, Shapes::ShapeRef.new(shape: CallAnalyticsJobStatus, location_name: "CallAnalyticsJobStatus"))
    CallAnalyticsJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    CallAnalyticsJobSummary.struct_class = Types::CallAnalyticsJobSummary

    CategoryProperties.add_member(:category_name, Shapes::ShapeRef.new(shape: CategoryName, location_name: "CategoryName"))
    CategoryProperties.add_member(:rules, Shapes::ShapeRef.new(shape: RuleList, location_name: "Rules"))
    CategoryProperties.add_member(:create_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreateTime"))
    CategoryProperties.add_member(:last_update_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdateTime"))
    CategoryProperties.add_member(:input_type, Shapes::ShapeRef.new(shape: InputType, location_name: "InputType"))
    CategoryProperties.struct_class = Types::CategoryProperties

    CategoryPropertiesList.member = Shapes::ShapeRef.new(shape: CategoryProperties)

    ChannelDefinition.add_member(:channel_id, Shapes::ShapeRef.new(shape: ChannelId, location_name: "ChannelId"))
    ChannelDefinition.add_member(:participant_role, Shapes::ShapeRef.new(shape: ParticipantRole, location_name: "ParticipantRole"))
    ChannelDefinition.struct_class = Types::ChannelDefinition

    ChannelDefinitions.member = Shapes::ShapeRef.new(shape: ChannelDefinition)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ContentRedaction.add_member(:redaction_type, Shapes::ShapeRef.new(shape: RedactionType, required: true, location_name: "RedactionType"))
    ContentRedaction.add_member(:redaction_output, Shapes::ShapeRef.new(shape: RedactionOutput, required: true, location_name: "RedactionOutput"))
    ContentRedaction.add_member(:pii_entity_types, Shapes::ShapeRef.new(shape: PiiEntityTypes, location_name: "PiiEntityTypes"))
    ContentRedaction.struct_class = Types::ContentRedaction

    CreateCallAnalyticsCategoryRequest.add_member(:category_name, Shapes::ShapeRef.new(shape: CategoryName, required: true, location_name: "CategoryName"))
    CreateCallAnalyticsCategoryRequest.add_member(:rules, Shapes::ShapeRef.new(shape: RuleList, required: true, location_name: "Rules"))
    CreateCallAnalyticsCategoryRequest.add_member(:input_type, Shapes::ShapeRef.new(shape: InputType, location_name: "InputType"))
    CreateCallAnalyticsCategoryRequest.struct_class = Types::CreateCallAnalyticsCategoryRequest

    CreateCallAnalyticsCategoryResponse.add_member(:category_properties, Shapes::ShapeRef.new(shape: CategoryProperties, location_name: "CategoryProperties"))
    CreateCallAnalyticsCategoryResponse.struct_class = Types::CreateCallAnalyticsCategoryResponse

    CreateLanguageModelRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: CLMLanguageCode, required: true, location_name: "LanguageCode"))
    CreateLanguageModelRequest.add_member(:base_model_name, Shapes::ShapeRef.new(shape: BaseModelName, required: true, location_name: "BaseModelName"))
    CreateLanguageModelRequest.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    CreateLanguageModelRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    CreateLanguageModelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateLanguageModelRequest.struct_class = Types::CreateLanguageModelRequest

    CreateLanguageModelResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: CLMLanguageCode, location_name: "LanguageCode"))
    CreateLanguageModelResponse.add_member(:base_model_name, Shapes::ShapeRef.new(shape: BaseModelName, location_name: "BaseModelName"))
    CreateLanguageModelResponse.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelName"))
    CreateLanguageModelResponse.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    CreateLanguageModelResponse.add_member(:model_status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "ModelStatus"))
    CreateLanguageModelResponse.struct_class = Types::CreateLanguageModelResponse

    CreateMedicalVocabularyRequest.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "VocabularyName"))
    CreateMedicalVocabularyRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    CreateMedicalVocabularyRequest.add_member(:vocabulary_file_uri, Shapes::ShapeRef.new(shape: Uri, required: true, location_name: "VocabularyFileUri"))
    CreateMedicalVocabularyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMedicalVocabularyRequest.struct_class = Types::CreateMedicalVocabularyRequest

    CreateMedicalVocabularyResponse.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    CreateMedicalVocabularyResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    CreateMedicalVocabularyResponse.add_member(:vocabulary_state, Shapes::ShapeRef.new(shape: VocabularyState, location_name: "VocabularyState"))
    CreateMedicalVocabularyResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    CreateMedicalVocabularyResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    CreateMedicalVocabularyResponse.struct_class = Types::CreateMedicalVocabularyResponse

    CreateVocabularyFilterRequest.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, required: true, location_name: "VocabularyFilterName"))
    CreateVocabularyFilterRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    CreateVocabularyFilterRequest.add_member(:words, Shapes::ShapeRef.new(shape: Words, location_name: "Words"))
    CreateVocabularyFilterRequest.add_member(:vocabulary_filter_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "VocabularyFilterFileUri"))
    CreateVocabularyFilterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateVocabularyFilterRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: "DataAccessRoleArn"))
    CreateVocabularyFilterRequest.struct_class = Types::CreateVocabularyFilterRequest

    CreateVocabularyFilterResponse.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: "VocabularyFilterName"))
    CreateVocabularyFilterResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    CreateVocabularyFilterResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    CreateVocabularyFilterResponse.struct_class = Types::CreateVocabularyFilterResponse

    CreateVocabularyRequest.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "VocabularyName"))
    CreateVocabularyRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    CreateVocabularyRequest.add_member(:phrases, Shapes::ShapeRef.new(shape: Phrases, location_name: "Phrases"))
    CreateVocabularyRequest.add_member(:vocabulary_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "VocabularyFileUri"))
    CreateVocabularyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateVocabularyRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: "DataAccessRoleArn"))
    CreateVocabularyRequest.struct_class = Types::CreateVocabularyRequest

    CreateVocabularyResponse.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    CreateVocabularyResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    CreateVocabularyResponse.add_member(:vocabulary_state, Shapes::ShapeRef.new(shape: VocabularyState, location_name: "VocabularyState"))
    CreateVocabularyResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    CreateVocabularyResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    CreateVocabularyResponse.struct_class = Types::CreateVocabularyResponse

    DeleteCallAnalyticsCategoryRequest.add_member(:category_name, Shapes::ShapeRef.new(shape: CategoryName, required: true, location_name: "CategoryName"))
    DeleteCallAnalyticsCategoryRequest.struct_class = Types::DeleteCallAnalyticsCategoryRequest

    DeleteCallAnalyticsCategoryResponse.struct_class = Types::DeleteCallAnalyticsCategoryResponse

    DeleteCallAnalyticsJobRequest.add_member(:call_analytics_job_name, Shapes::ShapeRef.new(shape: CallAnalyticsJobName, required: true, location_name: "CallAnalyticsJobName"))
    DeleteCallAnalyticsJobRequest.struct_class = Types::DeleteCallAnalyticsJobRequest

    DeleteCallAnalyticsJobResponse.struct_class = Types::DeleteCallAnalyticsJobResponse

    DeleteLanguageModelRequest.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DeleteLanguageModelRequest.struct_class = Types::DeleteLanguageModelRequest

    DeleteMedicalTranscriptionJobRequest.add_member(:medical_transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, required: true, location_name: "MedicalTranscriptionJobName"))
    DeleteMedicalTranscriptionJobRequest.struct_class = Types::DeleteMedicalTranscriptionJobRequest

    DeleteMedicalVocabularyRequest.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "VocabularyName"))
    DeleteMedicalVocabularyRequest.struct_class = Types::DeleteMedicalVocabularyRequest

    DeleteTranscriptionJobRequest.add_member(:transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, required: true, location_name: "TranscriptionJobName"))
    DeleteTranscriptionJobRequest.struct_class = Types::DeleteTranscriptionJobRequest

    DeleteVocabularyFilterRequest.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, required: true, location_name: "VocabularyFilterName"))
    DeleteVocabularyFilterRequest.struct_class = Types::DeleteVocabularyFilterRequest

    DeleteVocabularyRequest.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "VocabularyName"))
    DeleteVocabularyRequest.struct_class = Types::DeleteVocabularyRequest

    DescribeLanguageModelRequest.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DescribeLanguageModelRequest.struct_class = Types::DescribeLanguageModelRequest

    DescribeLanguageModelResponse.add_member(:language_model, Shapes::ShapeRef.new(shape: LanguageModel, location_name: "LanguageModel"))
    DescribeLanguageModelResponse.struct_class = Types::DescribeLanguageModelResponse

    GetCallAnalyticsCategoryRequest.add_member(:category_name, Shapes::ShapeRef.new(shape: CategoryName, required: true, location_name: "CategoryName"))
    GetCallAnalyticsCategoryRequest.struct_class = Types::GetCallAnalyticsCategoryRequest

    GetCallAnalyticsCategoryResponse.add_member(:category_properties, Shapes::ShapeRef.new(shape: CategoryProperties, location_name: "CategoryProperties"))
    GetCallAnalyticsCategoryResponse.struct_class = Types::GetCallAnalyticsCategoryResponse

    GetCallAnalyticsJobRequest.add_member(:call_analytics_job_name, Shapes::ShapeRef.new(shape: CallAnalyticsJobName, required: true, location_name: "CallAnalyticsJobName"))
    GetCallAnalyticsJobRequest.struct_class = Types::GetCallAnalyticsJobRequest

    GetCallAnalyticsJobResponse.add_member(:call_analytics_job, Shapes::ShapeRef.new(shape: CallAnalyticsJob, location_name: "CallAnalyticsJob"))
    GetCallAnalyticsJobResponse.struct_class = Types::GetCallAnalyticsJobResponse

    GetMedicalTranscriptionJobRequest.add_member(:medical_transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, required: true, location_name: "MedicalTranscriptionJobName"))
    GetMedicalTranscriptionJobRequest.struct_class = Types::GetMedicalTranscriptionJobRequest

    GetMedicalTranscriptionJobResponse.add_member(:medical_transcription_job, Shapes::ShapeRef.new(shape: MedicalTranscriptionJob, location_name: "MedicalTranscriptionJob"))
    GetMedicalTranscriptionJobResponse.struct_class = Types::GetMedicalTranscriptionJobResponse

    GetMedicalVocabularyRequest.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "VocabularyName"))
    GetMedicalVocabularyRequest.struct_class = Types::GetMedicalVocabularyRequest

    GetMedicalVocabularyResponse.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    GetMedicalVocabularyResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    GetMedicalVocabularyResponse.add_member(:vocabulary_state, Shapes::ShapeRef.new(shape: VocabularyState, location_name: "VocabularyState"))
    GetMedicalVocabularyResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    GetMedicalVocabularyResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    GetMedicalVocabularyResponse.add_member(:download_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "DownloadUri"))
    GetMedicalVocabularyResponse.struct_class = Types::GetMedicalVocabularyResponse

    GetTranscriptionJobRequest.add_member(:transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, required: true, location_name: "TranscriptionJobName"))
    GetTranscriptionJobRequest.struct_class = Types::GetTranscriptionJobRequest

    GetTranscriptionJobResponse.add_member(:transcription_job, Shapes::ShapeRef.new(shape: TranscriptionJob, location_name: "TranscriptionJob"))
    GetTranscriptionJobResponse.struct_class = Types::GetTranscriptionJobResponse

    GetVocabularyFilterRequest.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, required: true, location_name: "VocabularyFilterName"))
    GetVocabularyFilterRequest.struct_class = Types::GetVocabularyFilterRequest

    GetVocabularyFilterResponse.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: "VocabularyFilterName"))
    GetVocabularyFilterResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    GetVocabularyFilterResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    GetVocabularyFilterResponse.add_member(:download_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "DownloadUri"))
    GetVocabularyFilterResponse.struct_class = Types::GetVocabularyFilterResponse

    GetVocabularyRequest.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "VocabularyName"))
    GetVocabularyRequest.struct_class = Types::GetVocabularyRequest

    GetVocabularyResponse.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    GetVocabularyResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    GetVocabularyResponse.add_member(:vocabulary_state, Shapes::ShapeRef.new(shape: VocabularyState, location_name: "VocabularyState"))
    GetVocabularyResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    GetVocabularyResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    GetVocabularyResponse.add_member(:download_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "DownloadUri"))
    GetVocabularyResponse.struct_class = Types::GetVocabularyResponse

    InputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: Uri, required: true, location_name: "S3Uri"))
    InputDataConfig.add_member(:tuning_data_s3_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "TuningDataS3Uri"))
    InputDataConfig.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: DataAccessRoleArn, required: true, location_name: "DataAccessRoleArn"))
    InputDataConfig.struct_class = Types::InputDataConfig

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InterruptionFilter.add_member(:threshold, Shapes::ShapeRef.new(shape: TimestampMilliseconds, location_name: "Threshold"))
    InterruptionFilter.add_member(:participant_role, Shapes::ShapeRef.new(shape: ParticipantRole, location_name: "ParticipantRole"))
    InterruptionFilter.add_member(:absolute_time_range, Shapes::ShapeRef.new(shape: AbsoluteTimeRange, location_name: "AbsoluteTimeRange"))
    InterruptionFilter.add_member(:relative_time_range, Shapes::ShapeRef.new(shape: RelativeTimeRange, location_name: "RelativeTimeRange"))
    InterruptionFilter.add_member(:negate, Shapes::ShapeRef.new(shape: Boolean, location_name: "Negate"))
    InterruptionFilter.struct_class = Types::InterruptionFilter

    JobExecutionSettings.add_member(:allow_deferred_execution, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowDeferredExecution"))
    JobExecutionSettings.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: "DataAccessRoleArn"))
    JobExecutionSettings.struct_class = Types::JobExecutionSettings

    KMSEncryptionContextMap.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    KMSEncryptionContextMap.value = Shapes::ShapeRef.new(shape: NonEmptyString)

    LanguageCodeItem.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    LanguageCodeItem.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "DurationInSeconds"))
    LanguageCodeItem.struct_class = Types::LanguageCodeItem

    LanguageCodeList.member = Shapes::ShapeRef.new(shape: LanguageCodeItem)

    LanguageIdSettings.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    LanguageIdSettings.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: "VocabularyFilterName"))
    LanguageIdSettings.add_member(:language_model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "LanguageModelName"))
    LanguageIdSettings.struct_class = Types::LanguageIdSettings

    LanguageIdSettingsMap.key = Shapes::ShapeRef.new(shape: LanguageCode)
    LanguageIdSettingsMap.value = Shapes::ShapeRef.new(shape: LanguageIdSettings)

    LanguageModel.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelName"))
    LanguageModel.add_member(:create_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreateTime"))
    LanguageModel.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    LanguageModel.add_member(:language_code, Shapes::ShapeRef.new(shape: CLMLanguageCode, location_name: "LanguageCode"))
    LanguageModel.add_member(:base_model_name, Shapes::ShapeRef.new(shape: BaseModelName, location_name: "BaseModelName"))
    LanguageModel.add_member(:model_status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "ModelStatus"))
    LanguageModel.add_member(:upgrade_availability, Shapes::ShapeRef.new(shape: Boolean, location_name: "UpgradeAvailability"))
    LanguageModel.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    LanguageModel.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    LanguageModel.struct_class = Types::LanguageModel

    LanguageOptions.member = Shapes::ShapeRef.new(shape: LanguageCode)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListCallAnalyticsCategoriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCallAnalyticsCategoriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCallAnalyticsCategoriesRequest.struct_class = Types::ListCallAnalyticsCategoriesRequest

    ListCallAnalyticsCategoriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCallAnalyticsCategoriesResponse.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryPropertiesList, location_name: "Categories"))
    ListCallAnalyticsCategoriesResponse.struct_class = Types::ListCallAnalyticsCategoriesResponse

    ListCallAnalyticsJobsRequest.add_member(:status, Shapes::ShapeRef.new(shape: CallAnalyticsJobStatus, location_name: "Status"))
    ListCallAnalyticsJobsRequest.add_member(:job_name_contains, Shapes::ShapeRef.new(shape: CallAnalyticsJobName, location_name: "JobNameContains"))
    ListCallAnalyticsJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCallAnalyticsJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCallAnalyticsJobsRequest.struct_class = Types::ListCallAnalyticsJobsRequest

    ListCallAnalyticsJobsResponse.add_member(:status, Shapes::ShapeRef.new(shape: CallAnalyticsJobStatus, location_name: "Status"))
    ListCallAnalyticsJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCallAnalyticsJobsResponse.add_member(:call_analytics_job_summaries, Shapes::ShapeRef.new(shape: CallAnalyticsJobSummaries, location_name: "CallAnalyticsJobSummaries"))
    ListCallAnalyticsJobsResponse.struct_class = Types::ListCallAnalyticsJobsResponse

    ListLanguageModelsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "StatusEquals"))
    ListLanguageModelsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: ModelName, location_name: "NameContains"))
    ListLanguageModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLanguageModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListLanguageModelsRequest.struct_class = Types::ListLanguageModelsRequest

    ListLanguageModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLanguageModelsResponse.add_member(:models, Shapes::ShapeRef.new(shape: Models, location_name: "Models"))
    ListLanguageModelsResponse.struct_class = Types::ListLanguageModelsResponse

    ListMedicalTranscriptionJobsRequest.add_member(:status, Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: "Status"))
    ListMedicalTranscriptionJobsRequest.add_member(:job_name_contains, Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: "JobNameContains"))
    ListMedicalTranscriptionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMedicalTranscriptionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListMedicalTranscriptionJobsRequest.struct_class = Types::ListMedicalTranscriptionJobsRequest

    ListMedicalTranscriptionJobsResponse.add_member(:status, Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: "Status"))
    ListMedicalTranscriptionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMedicalTranscriptionJobsResponse.add_member(:medical_transcription_job_summaries, Shapes::ShapeRef.new(shape: MedicalTranscriptionJobSummaries, location_name: "MedicalTranscriptionJobSummaries"))
    ListMedicalTranscriptionJobsResponse.struct_class = Types::ListMedicalTranscriptionJobsResponse

    ListMedicalVocabulariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMedicalVocabulariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListMedicalVocabulariesRequest.add_member(:state_equals, Shapes::ShapeRef.new(shape: VocabularyState, location_name: "StateEquals"))
    ListMedicalVocabulariesRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "NameContains"))
    ListMedicalVocabulariesRequest.struct_class = Types::ListMedicalVocabulariesRequest

    ListMedicalVocabulariesResponse.add_member(:status, Shapes::ShapeRef.new(shape: VocabularyState, location_name: "Status"))
    ListMedicalVocabulariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMedicalVocabulariesResponse.add_member(:vocabularies, Shapes::ShapeRef.new(shape: Vocabularies, location_name: "Vocabularies"))
    ListMedicalVocabulariesResponse.struct_class = Types::ListMedicalVocabulariesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TranscribeArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TranscribeArn, location_name: "ResourceArn"))
    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTranscriptionJobsRequest.add_member(:status, Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: "Status"))
    ListTranscriptionJobsRequest.add_member(:job_name_contains, Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: "JobNameContains"))
    ListTranscriptionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTranscriptionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTranscriptionJobsRequest.struct_class = Types::ListTranscriptionJobsRequest

    ListTranscriptionJobsResponse.add_member(:status, Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: "Status"))
    ListTranscriptionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTranscriptionJobsResponse.add_member(:transcription_job_summaries, Shapes::ShapeRef.new(shape: TranscriptionJobSummaries, location_name: "TranscriptionJobSummaries"))
    ListTranscriptionJobsResponse.struct_class = Types::ListTranscriptionJobsResponse

    ListVocabulariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVocabulariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListVocabulariesRequest.add_member(:state_equals, Shapes::ShapeRef.new(shape: VocabularyState, location_name: "StateEquals"))
    ListVocabulariesRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "NameContains"))
    ListVocabulariesRequest.struct_class = Types::ListVocabulariesRequest

    ListVocabulariesResponse.add_member(:status, Shapes::ShapeRef.new(shape: VocabularyState, location_name: "Status"))
    ListVocabulariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVocabulariesResponse.add_member(:vocabularies, Shapes::ShapeRef.new(shape: Vocabularies, location_name: "Vocabularies"))
    ListVocabulariesResponse.struct_class = Types::ListVocabulariesResponse

    ListVocabularyFiltersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVocabularyFiltersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListVocabularyFiltersRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: "NameContains"))
    ListVocabularyFiltersRequest.struct_class = Types::ListVocabularyFiltersRequest

    ListVocabularyFiltersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVocabularyFiltersResponse.add_member(:vocabulary_filters, Shapes::ShapeRef.new(shape: VocabularyFilters, location_name: "VocabularyFilters"))
    ListVocabularyFiltersResponse.struct_class = Types::ListVocabularyFiltersResponse

    Media.add_member(:media_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "MediaFileUri"))
    Media.add_member(:redacted_media_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "RedactedMediaFileUri"))
    Media.struct_class = Types::Media

    MedicalTranscript.add_member(:transcript_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "TranscriptFileUri"))
    MedicalTranscript.struct_class = Types::MedicalTranscript

    MedicalTranscriptionJob.add_member(:medical_transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: "MedicalTranscriptionJobName"))
    MedicalTranscriptionJob.add_member(:transcription_job_status, Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: "TranscriptionJobStatus"))
    MedicalTranscriptionJob.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    MedicalTranscriptionJob.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MedicalMediaSampleRateHertz, location_name: "MediaSampleRateHertz"))
    MedicalTranscriptionJob.add_member(:media_format, Shapes::ShapeRef.new(shape: MediaFormat, location_name: "MediaFormat"))
    MedicalTranscriptionJob.add_member(:media, Shapes::ShapeRef.new(shape: Media, location_name: "Media"))
    MedicalTranscriptionJob.add_member(:transcript, Shapes::ShapeRef.new(shape: MedicalTranscript, location_name: "Transcript"))
    MedicalTranscriptionJob.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    MedicalTranscriptionJob.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    MedicalTranscriptionJob.add_member(:completion_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletionTime"))
    MedicalTranscriptionJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    MedicalTranscriptionJob.add_member(:settings, Shapes::ShapeRef.new(shape: MedicalTranscriptionSetting, location_name: "Settings"))
    MedicalTranscriptionJob.add_member(:content_identification_type, Shapes::ShapeRef.new(shape: MedicalContentIdentificationType, location_name: "ContentIdentificationType"))
    MedicalTranscriptionJob.add_member(:specialty, Shapes::ShapeRef.new(shape: Specialty, location_name: "Specialty"))
    MedicalTranscriptionJob.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
    MedicalTranscriptionJob.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    MedicalTranscriptionJob.struct_class = Types::MedicalTranscriptionJob

    MedicalTranscriptionJobSummaries.member = Shapes::ShapeRef.new(shape: MedicalTranscriptionJobSummary)

    MedicalTranscriptionJobSummary.add_member(:medical_transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: "MedicalTranscriptionJobName"))
    MedicalTranscriptionJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    MedicalTranscriptionJobSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    MedicalTranscriptionJobSummary.add_member(:completion_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletionTime"))
    MedicalTranscriptionJobSummary.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    MedicalTranscriptionJobSummary.add_member(:transcription_job_status, Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: "TranscriptionJobStatus"))
    MedicalTranscriptionJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    MedicalTranscriptionJobSummary.add_member(:output_location_type, Shapes::ShapeRef.new(shape: OutputLocationType, location_name: "OutputLocationType"))
    MedicalTranscriptionJobSummary.add_member(:specialty, Shapes::ShapeRef.new(shape: Specialty, location_name: "Specialty"))
    MedicalTranscriptionJobSummary.add_member(:content_identification_type, Shapes::ShapeRef.new(shape: MedicalContentIdentificationType, location_name: "ContentIdentificationType"))
    MedicalTranscriptionJobSummary.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
    MedicalTranscriptionJobSummary.struct_class = Types::MedicalTranscriptionJobSummary

    MedicalTranscriptionSetting.add_member(:show_speaker_labels, Shapes::ShapeRef.new(shape: Boolean, location_name: "ShowSpeakerLabels"))
    MedicalTranscriptionSetting.add_member(:max_speaker_labels, Shapes::ShapeRef.new(shape: MaxSpeakers, location_name: "MaxSpeakerLabels"))
    MedicalTranscriptionSetting.add_member(:channel_identification, Shapes::ShapeRef.new(shape: Boolean, location_name: "ChannelIdentification"))
    MedicalTranscriptionSetting.add_member(:show_alternatives, Shapes::ShapeRef.new(shape: Boolean, location_name: "ShowAlternatives"))
    MedicalTranscriptionSetting.add_member(:max_alternatives, Shapes::ShapeRef.new(shape: MaxAlternatives, location_name: "MaxAlternatives"))
    MedicalTranscriptionSetting.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    MedicalTranscriptionSetting.struct_class = Types::MedicalTranscriptionSetting

    ModelSettings.add_member(:language_model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "LanguageModelName"))
    ModelSettings.struct_class = Types::ModelSettings

    Models.member = Shapes::ShapeRef.new(shape: LanguageModel)

    NonTalkTimeFilter.add_member(:threshold, Shapes::ShapeRef.new(shape: TimestampMilliseconds, location_name: "Threshold"))
    NonTalkTimeFilter.add_member(:absolute_time_range, Shapes::ShapeRef.new(shape: AbsoluteTimeRange, location_name: "AbsoluteTimeRange"))
    NonTalkTimeFilter.add_member(:relative_time_range, Shapes::ShapeRef.new(shape: RelativeTimeRange, location_name: "RelativeTimeRange"))
    NonTalkTimeFilter.add_member(:negate, Shapes::ShapeRef.new(shape: Boolean, location_name: "Negate"))
    NonTalkTimeFilter.struct_class = Types::NonTalkTimeFilter

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    Phrases.member = Shapes::ShapeRef.new(shape: Phrase)

    PiiEntityTypes.member = Shapes::ShapeRef.new(shape: PiiEntityType)

    RelativeTimeRange.add_member(:start_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "StartPercentage"))
    RelativeTimeRange.add_member(:end_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "EndPercentage"))
    RelativeTimeRange.add_member(:first, Shapes::ShapeRef.new(shape: Percentage, location_name: "First"))
    RelativeTimeRange.add_member(:last, Shapes::ShapeRef.new(shape: Percentage, location_name: "Last"))
    RelativeTimeRange.struct_class = Types::RelativeTimeRange

    Rule.add_member(:non_talk_time_filter, Shapes::ShapeRef.new(shape: NonTalkTimeFilter, location_name: "NonTalkTimeFilter"))
    Rule.add_member(:interruption_filter, Shapes::ShapeRef.new(shape: InterruptionFilter, location_name: "InterruptionFilter"))
    Rule.add_member(:transcript_filter, Shapes::ShapeRef.new(shape: TranscriptFilter, location_name: "TranscriptFilter"))
    Rule.add_member(:sentiment_filter, Shapes::ShapeRef.new(shape: SentimentFilter, location_name: "SentimentFilter"))
    Rule.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Rule.add_member_subclass(:non_talk_time_filter, Types::Rule::NonTalkTimeFilter)
    Rule.add_member_subclass(:interruption_filter, Types::Rule::InterruptionFilter)
    Rule.add_member_subclass(:transcript_filter, Types::Rule::TranscriptFilter)
    Rule.add_member_subclass(:sentiment_filter, Types::Rule::SentimentFilter)
    Rule.add_member_subclass(:unknown, Types::Rule::Unknown)
    Rule.struct_class = Types::Rule

    RuleList.member = Shapes::ShapeRef.new(shape: Rule)

    SentimentFilter.add_member(:sentiments, Shapes::ShapeRef.new(shape: SentimentValueList, required: true, location_name: "Sentiments"))
    SentimentFilter.add_member(:absolute_time_range, Shapes::ShapeRef.new(shape: AbsoluteTimeRange, location_name: "AbsoluteTimeRange"))
    SentimentFilter.add_member(:relative_time_range, Shapes::ShapeRef.new(shape: RelativeTimeRange, location_name: "RelativeTimeRange"))
    SentimentFilter.add_member(:participant_role, Shapes::ShapeRef.new(shape: ParticipantRole, location_name: "ParticipantRole"))
    SentimentFilter.add_member(:negate, Shapes::ShapeRef.new(shape: Boolean, location_name: "Negate"))
    SentimentFilter.struct_class = Types::SentimentFilter

    SentimentValueList.member = Shapes::ShapeRef.new(shape: SentimentValue)

    Settings.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    Settings.add_member(:show_speaker_labels, Shapes::ShapeRef.new(shape: Boolean, location_name: "ShowSpeakerLabels"))
    Settings.add_member(:max_speaker_labels, Shapes::ShapeRef.new(shape: MaxSpeakers, location_name: "MaxSpeakerLabels"))
    Settings.add_member(:channel_identification, Shapes::ShapeRef.new(shape: Boolean, location_name: "ChannelIdentification"))
    Settings.add_member(:show_alternatives, Shapes::ShapeRef.new(shape: Boolean, location_name: "ShowAlternatives"))
    Settings.add_member(:max_alternatives, Shapes::ShapeRef.new(shape: MaxAlternatives, location_name: "MaxAlternatives"))
    Settings.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: "VocabularyFilterName"))
    Settings.add_member(:vocabulary_filter_method, Shapes::ShapeRef.new(shape: VocabularyFilterMethod, location_name: "VocabularyFilterMethod"))
    Settings.struct_class = Types::Settings

    StartCallAnalyticsJobRequest.add_member(:call_analytics_job_name, Shapes::ShapeRef.new(shape: CallAnalyticsJobName, required: true, location_name: "CallAnalyticsJobName"))
    StartCallAnalyticsJobRequest.add_member(:media, Shapes::ShapeRef.new(shape: Media, required: true, location_name: "Media"))
    StartCallAnalyticsJobRequest.add_member(:output_location, Shapes::ShapeRef.new(shape: Uri, location_name: "OutputLocation"))
    StartCallAnalyticsJobRequest.add_member(:output_encryption_kms_key_id, Shapes::ShapeRef.new(shape: KMSKeyId, location_name: "OutputEncryptionKMSKeyId"))
    StartCallAnalyticsJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: "DataAccessRoleArn"))
    StartCallAnalyticsJobRequest.add_member(:settings, Shapes::ShapeRef.new(shape: CallAnalyticsJobSettings, location_name: "Settings"))
    StartCallAnalyticsJobRequest.add_member(:channel_definitions, Shapes::ShapeRef.new(shape: ChannelDefinitions, location_name: "ChannelDefinitions"))
    StartCallAnalyticsJobRequest.struct_class = Types::StartCallAnalyticsJobRequest

    StartCallAnalyticsJobResponse.add_member(:call_analytics_job, Shapes::ShapeRef.new(shape: CallAnalyticsJob, location_name: "CallAnalyticsJob"))
    StartCallAnalyticsJobResponse.struct_class = Types::StartCallAnalyticsJobResponse

    StartMedicalTranscriptionJobRequest.add_member(:medical_transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, required: true, location_name: "MedicalTranscriptionJobName"))
    StartMedicalTranscriptionJobRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    StartMedicalTranscriptionJobRequest.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MedicalMediaSampleRateHertz, location_name: "MediaSampleRateHertz"))
    StartMedicalTranscriptionJobRequest.add_member(:media_format, Shapes::ShapeRef.new(shape: MediaFormat, location_name: "MediaFormat"))
    StartMedicalTranscriptionJobRequest.add_member(:media, Shapes::ShapeRef.new(shape: Media, required: true, location_name: "Media"))
    StartMedicalTranscriptionJobRequest.add_member(:output_bucket_name, Shapes::ShapeRef.new(shape: OutputBucketName, required: true, location_name: "OutputBucketName"))
    StartMedicalTranscriptionJobRequest.add_member(:output_key, Shapes::ShapeRef.new(shape: OutputKey, location_name: "OutputKey"))
    StartMedicalTranscriptionJobRequest.add_member(:output_encryption_kms_key_id, Shapes::ShapeRef.new(shape: KMSKeyId, location_name: "OutputEncryptionKMSKeyId"))
    StartMedicalTranscriptionJobRequest.add_member(:kms_encryption_context, Shapes::ShapeRef.new(shape: KMSEncryptionContextMap, location_name: "KMSEncryptionContext"))
    StartMedicalTranscriptionJobRequest.add_member(:settings, Shapes::ShapeRef.new(shape: MedicalTranscriptionSetting, location_name: "Settings"))
    StartMedicalTranscriptionJobRequest.add_member(:content_identification_type, Shapes::ShapeRef.new(shape: MedicalContentIdentificationType, location_name: "ContentIdentificationType"))
    StartMedicalTranscriptionJobRequest.add_member(:specialty, Shapes::ShapeRef.new(shape: Specialty, required: true, location_name: "Specialty"))
    StartMedicalTranscriptionJobRequest.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    StartMedicalTranscriptionJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartMedicalTranscriptionJobRequest.struct_class = Types::StartMedicalTranscriptionJobRequest

    StartMedicalTranscriptionJobResponse.add_member(:medical_transcription_job, Shapes::ShapeRef.new(shape: MedicalTranscriptionJob, location_name: "MedicalTranscriptionJob"))
    StartMedicalTranscriptionJobResponse.struct_class = Types::StartMedicalTranscriptionJobResponse

    StartTranscriptionJobRequest.add_member(:transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, required: true, location_name: "TranscriptionJobName"))
    StartTranscriptionJobRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    StartTranscriptionJobRequest.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MediaSampleRateHertz, location_name: "MediaSampleRateHertz"))
    StartTranscriptionJobRequest.add_member(:media_format, Shapes::ShapeRef.new(shape: MediaFormat, location_name: "MediaFormat"))
    StartTranscriptionJobRequest.add_member(:media, Shapes::ShapeRef.new(shape: Media, required: true, location_name: "Media"))
    StartTranscriptionJobRequest.add_member(:output_bucket_name, Shapes::ShapeRef.new(shape: OutputBucketName, location_name: "OutputBucketName"))
    StartTranscriptionJobRequest.add_member(:output_key, Shapes::ShapeRef.new(shape: OutputKey, location_name: "OutputKey"))
    StartTranscriptionJobRequest.add_member(:output_encryption_kms_key_id, Shapes::ShapeRef.new(shape: KMSKeyId, location_name: "OutputEncryptionKMSKeyId"))
    StartTranscriptionJobRequest.add_member(:kms_encryption_context, Shapes::ShapeRef.new(shape: KMSEncryptionContextMap, location_name: "KMSEncryptionContext"))
    StartTranscriptionJobRequest.add_member(:settings, Shapes::ShapeRef.new(shape: Settings, location_name: "Settings"))
    StartTranscriptionJobRequest.add_member(:model_settings, Shapes::ShapeRef.new(shape: ModelSettings, location_name: "ModelSettings"))
    StartTranscriptionJobRequest.add_member(:job_execution_settings, Shapes::ShapeRef.new(shape: JobExecutionSettings, location_name: "JobExecutionSettings"))
    StartTranscriptionJobRequest.add_member(:content_redaction, Shapes::ShapeRef.new(shape: ContentRedaction, location_name: "ContentRedaction"))
    StartTranscriptionJobRequest.add_member(:identify_language, Shapes::ShapeRef.new(shape: Boolean, location_name: "IdentifyLanguage"))
    StartTranscriptionJobRequest.add_member(:identify_multiple_languages, Shapes::ShapeRef.new(shape: Boolean, location_name: "IdentifyMultipleLanguages"))
    StartTranscriptionJobRequest.add_member(:language_options, Shapes::ShapeRef.new(shape: LanguageOptions, location_name: "LanguageOptions"))
    StartTranscriptionJobRequest.add_member(:subtitles, Shapes::ShapeRef.new(shape: Subtitles, location_name: "Subtitles"))
    StartTranscriptionJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartTranscriptionJobRequest.add_member(:language_id_settings, Shapes::ShapeRef.new(shape: LanguageIdSettingsMap, location_name: "LanguageIdSettings"))
    StartTranscriptionJobRequest.struct_class = Types::StartTranscriptionJobRequest

    StartTranscriptionJobResponse.add_member(:transcription_job, Shapes::ShapeRef.new(shape: TranscriptionJob, location_name: "TranscriptionJob"))
    StartTranscriptionJobResponse.struct_class = Types::StartTranscriptionJobResponse

    StringTargetList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    SubtitleFileUris.member = Shapes::ShapeRef.new(shape: Uri)

    SubtitleFormats.member = Shapes::ShapeRef.new(shape: SubtitleFormat)

    Subtitles.add_member(:formats, Shapes::ShapeRef.new(shape: SubtitleFormats, location_name: "Formats"))
    Subtitles.add_member(:output_start_index, Shapes::ShapeRef.new(shape: SubtitleOutputStartIndex, location_name: "OutputStartIndex"))
    Subtitles.struct_class = Types::Subtitles

    SubtitlesOutput.add_member(:formats, Shapes::ShapeRef.new(shape: SubtitleFormats, location_name: "Formats"))
    SubtitlesOutput.add_member(:subtitle_file_uris, Shapes::ShapeRef.new(shape: SubtitleFileUris, location_name: "SubtitleFileUris"))
    SubtitlesOutput.add_member(:output_start_index, Shapes::ShapeRef.new(shape: SubtitleOutputStartIndex, location_name: "OutputStartIndex"))
    SubtitlesOutput.struct_class = Types::SubtitlesOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TranscribeArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Transcript.add_member(:transcript_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "TranscriptFileUri"))
    Transcript.add_member(:redacted_transcript_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "RedactedTranscriptFileUri"))
    Transcript.struct_class = Types::Transcript

    TranscriptFilter.add_member(:transcript_filter_type, Shapes::ShapeRef.new(shape: TranscriptFilterType, required: true, location_name: "TranscriptFilterType"))
    TranscriptFilter.add_member(:absolute_time_range, Shapes::ShapeRef.new(shape: AbsoluteTimeRange, location_name: "AbsoluteTimeRange"))
    TranscriptFilter.add_member(:relative_time_range, Shapes::ShapeRef.new(shape: RelativeTimeRange, location_name: "RelativeTimeRange"))
    TranscriptFilter.add_member(:participant_role, Shapes::ShapeRef.new(shape: ParticipantRole, location_name: "ParticipantRole"))
    TranscriptFilter.add_member(:negate, Shapes::ShapeRef.new(shape: Boolean, location_name: "Negate"))
    TranscriptFilter.add_member(:targets, Shapes::ShapeRef.new(shape: StringTargetList, required: true, location_name: "Targets"))
    TranscriptFilter.struct_class = Types::TranscriptFilter

    TranscriptionJob.add_member(:transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: "TranscriptionJobName"))
    TranscriptionJob.add_member(:transcription_job_status, Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: "TranscriptionJobStatus"))
    TranscriptionJob.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    TranscriptionJob.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MediaSampleRateHertz, location_name: "MediaSampleRateHertz"))
    TranscriptionJob.add_member(:media_format, Shapes::ShapeRef.new(shape: MediaFormat, location_name: "MediaFormat"))
    TranscriptionJob.add_member(:media, Shapes::ShapeRef.new(shape: Media, location_name: "Media"))
    TranscriptionJob.add_member(:transcript, Shapes::ShapeRef.new(shape: Transcript, location_name: "Transcript"))
    TranscriptionJob.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    TranscriptionJob.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    TranscriptionJob.add_member(:completion_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletionTime"))
    TranscriptionJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    TranscriptionJob.add_member(:settings, Shapes::ShapeRef.new(shape: Settings, location_name: "Settings"))
    TranscriptionJob.add_member(:model_settings, Shapes::ShapeRef.new(shape: ModelSettings, location_name: "ModelSettings"))
    TranscriptionJob.add_member(:job_execution_settings, Shapes::ShapeRef.new(shape: JobExecutionSettings, location_name: "JobExecutionSettings"))
    TranscriptionJob.add_member(:content_redaction, Shapes::ShapeRef.new(shape: ContentRedaction, location_name: "ContentRedaction"))
    TranscriptionJob.add_member(:identify_language, Shapes::ShapeRef.new(shape: Boolean, location_name: "IdentifyLanguage"))
    TranscriptionJob.add_member(:identify_multiple_languages, Shapes::ShapeRef.new(shape: Boolean, location_name: "IdentifyMultipleLanguages"))
    TranscriptionJob.add_member(:language_options, Shapes::ShapeRef.new(shape: LanguageOptions, location_name: "LanguageOptions"))
    TranscriptionJob.add_member(:identified_language_score, Shapes::ShapeRef.new(shape: IdentifiedLanguageScore, location_name: "IdentifiedLanguageScore"))
    TranscriptionJob.add_member(:language_codes, Shapes::ShapeRef.new(shape: LanguageCodeList, location_name: "LanguageCodes"))
    TranscriptionJob.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    TranscriptionJob.add_member(:subtitles, Shapes::ShapeRef.new(shape: SubtitlesOutput, location_name: "Subtitles"))
    TranscriptionJob.add_member(:language_id_settings, Shapes::ShapeRef.new(shape: LanguageIdSettingsMap, location_name: "LanguageIdSettings"))
    TranscriptionJob.struct_class = Types::TranscriptionJob

    TranscriptionJobSummaries.member = Shapes::ShapeRef.new(shape: TranscriptionJobSummary)

    TranscriptionJobSummary.add_member(:transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: "TranscriptionJobName"))
    TranscriptionJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    TranscriptionJobSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    TranscriptionJobSummary.add_member(:completion_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletionTime"))
    TranscriptionJobSummary.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    TranscriptionJobSummary.add_member(:transcription_job_status, Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: "TranscriptionJobStatus"))
    TranscriptionJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    TranscriptionJobSummary.add_member(:output_location_type, Shapes::ShapeRef.new(shape: OutputLocationType, location_name: "OutputLocationType"))
    TranscriptionJobSummary.add_member(:content_redaction, Shapes::ShapeRef.new(shape: ContentRedaction, location_name: "ContentRedaction"))
    TranscriptionJobSummary.add_member(:model_settings, Shapes::ShapeRef.new(shape: ModelSettings, location_name: "ModelSettings"))
    TranscriptionJobSummary.add_member(:identify_language, Shapes::ShapeRef.new(shape: Boolean, location_name: "IdentifyLanguage"))
    TranscriptionJobSummary.add_member(:identify_multiple_languages, Shapes::ShapeRef.new(shape: Boolean, location_name: "IdentifyMultipleLanguages"))
    TranscriptionJobSummary.add_member(:identified_language_score, Shapes::ShapeRef.new(shape: IdentifiedLanguageScore, location_name: "IdentifiedLanguageScore"))
    TranscriptionJobSummary.add_member(:language_codes, Shapes::ShapeRef.new(shape: LanguageCodeList, location_name: "LanguageCodes"))
    TranscriptionJobSummary.struct_class = Types::TranscriptionJobSummary

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TranscribeArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateCallAnalyticsCategoryRequest.add_member(:category_name, Shapes::ShapeRef.new(shape: CategoryName, required: true, location_name: "CategoryName"))
    UpdateCallAnalyticsCategoryRequest.add_member(:rules, Shapes::ShapeRef.new(shape: RuleList, required: true, location_name: "Rules"))
    UpdateCallAnalyticsCategoryRequest.add_member(:input_type, Shapes::ShapeRef.new(shape: InputType, location_name: "InputType"))
    UpdateCallAnalyticsCategoryRequest.struct_class = Types::UpdateCallAnalyticsCategoryRequest

    UpdateCallAnalyticsCategoryResponse.add_member(:category_properties, Shapes::ShapeRef.new(shape: CategoryProperties, location_name: "CategoryProperties"))
    UpdateCallAnalyticsCategoryResponse.struct_class = Types::UpdateCallAnalyticsCategoryResponse

    UpdateMedicalVocabularyRequest.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "VocabularyName"))
    UpdateMedicalVocabularyRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    UpdateMedicalVocabularyRequest.add_member(:vocabulary_file_uri, Shapes::ShapeRef.new(shape: Uri, required: true, location_name: "VocabularyFileUri"))
    UpdateMedicalVocabularyRequest.struct_class = Types::UpdateMedicalVocabularyRequest

    UpdateMedicalVocabularyResponse.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    UpdateMedicalVocabularyResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    UpdateMedicalVocabularyResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    UpdateMedicalVocabularyResponse.add_member(:vocabulary_state, Shapes::ShapeRef.new(shape: VocabularyState, location_name: "VocabularyState"))
    UpdateMedicalVocabularyResponse.struct_class = Types::UpdateMedicalVocabularyResponse

    UpdateVocabularyFilterRequest.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, required: true, location_name: "VocabularyFilterName"))
    UpdateVocabularyFilterRequest.add_member(:words, Shapes::ShapeRef.new(shape: Words, location_name: "Words"))
    UpdateVocabularyFilterRequest.add_member(:vocabulary_filter_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "VocabularyFilterFileUri"))
    UpdateVocabularyFilterRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: "DataAccessRoleArn"))
    UpdateVocabularyFilterRequest.struct_class = Types::UpdateVocabularyFilterRequest

    UpdateVocabularyFilterResponse.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: "VocabularyFilterName"))
    UpdateVocabularyFilterResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    UpdateVocabularyFilterResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    UpdateVocabularyFilterResponse.struct_class = Types::UpdateVocabularyFilterResponse

    UpdateVocabularyRequest.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "VocabularyName"))
    UpdateVocabularyRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    UpdateVocabularyRequest.add_member(:phrases, Shapes::ShapeRef.new(shape: Phrases, location_name: "Phrases"))
    UpdateVocabularyRequest.add_member(:vocabulary_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "VocabularyFileUri"))
    UpdateVocabularyRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: "DataAccessRoleArn"))
    UpdateVocabularyRequest.struct_class = Types::UpdateVocabularyRequest

    UpdateVocabularyResponse.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    UpdateVocabularyResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    UpdateVocabularyResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    UpdateVocabularyResponse.add_member(:vocabulary_state, Shapes::ShapeRef.new(shape: VocabularyState, location_name: "VocabularyState"))
    UpdateVocabularyResponse.struct_class = Types::UpdateVocabularyResponse

    Vocabularies.member = Shapes::ShapeRef.new(shape: VocabularyInfo)

    VocabularyFilterInfo.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: "VocabularyFilterName"))
    VocabularyFilterInfo.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    VocabularyFilterInfo.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    VocabularyFilterInfo.struct_class = Types::VocabularyFilterInfo

    VocabularyFilters.member = Shapes::ShapeRef.new(shape: VocabularyFilterInfo)

    VocabularyInfo.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    VocabularyInfo.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    VocabularyInfo.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    VocabularyInfo.add_member(:vocabulary_state, Shapes::ShapeRef.new(shape: VocabularyState, location_name: "VocabularyState"))
    VocabularyInfo.struct_class = Types::VocabularyInfo

    Words.member = Shapes::ShapeRef.new(shape: Word)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-10-26"

      api.metadata = {
        "apiVersion" => "2017-10-26",
        "endpointPrefix" => "transcribe",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Transcribe Service",
        "serviceId" => "Transcribe",
        "signatureVersion" => "v4",
        "signingName" => "transcribe",
        "targetPrefix" => "Transcribe",
        "uid" => "transcribe-2017-10-26",
      }

      api.add_operation(:create_call_analytics_category, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCallAnalyticsCategory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCallAnalyticsCategoryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCallAnalyticsCategoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_language_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLanguageModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLanguageModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLanguageModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_medical_vocabulary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMedicalVocabulary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateMedicalVocabularyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMedicalVocabularyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_vocabulary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVocabulary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateVocabularyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVocabularyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_vocabulary_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVocabularyFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateVocabularyFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVocabularyFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_call_analytics_category, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCallAnalyticsCategory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCallAnalyticsCategoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCallAnalyticsCategoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_call_analytics_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCallAnalyticsJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCallAnalyticsJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCallAnalyticsJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_language_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLanguageModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLanguageModelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_medical_transcription_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMedicalTranscriptionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMedicalTranscriptionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_medical_vocabulary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMedicalVocabulary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMedicalVocabularyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_transcription_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTranscriptionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTranscriptionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_vocabulary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVocabulary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVocabularyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_vocabulary_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVocabularyFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVocabularyFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_language_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLanguageModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLanguageModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLanguageModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_call_analytics_category, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCallAnalyticsCategory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCallAnalyticsCategoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCallAnalyticsCategoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_call_analytics_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCallAnalyticsJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCallAnalyticsJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCallAnalyticsJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_medical_transcription_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMedicalTranscriptionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMedicalTranscriptionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMedicalTranscriptionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_medical_vocabulary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMedicalVocabulary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMedicalVocabularyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMedicalVocabularyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_transcription_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTranscriptionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTranscriptionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTranscriptionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_vocabulary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVocabulary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetVocabularyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVocabularyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_vocabulary_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVocabularyFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetVocabularyFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVocabularyFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:list_call_analytics_categories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCallAnalyticsCategories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCallAnalyticsCategoriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCallAnalyticsCategoriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_call_analytics_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCallAnalyticsJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCallAnalyticsJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCallAnalyticsJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_language_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLanguageModels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLanguageModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLanguageModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_medical_transcription_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMedicalTranscriptionJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMedicalTranscriptionJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMedicalTranscriptionJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_medical_vocabularies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMedicalVocabularies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMedicalVocabulariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMedicalVocabulariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_transcription_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTranscriptionJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTranscriptionJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTranscriptionJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_vocabularies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVocabularies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListVocabulariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVocabulariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_vocabulary_filters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVocabularyFilters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListVocabularyFiltersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVocabularyFiltersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_call_analytics_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCallAnalyticsJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartCallAnalyticsJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCallAnalyticsJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_medical_transcription_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMedicalTranscriptionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMedicalTranscriptionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMedicalTranscriptionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_transcription_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTranscriptionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartTranscriptionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTranscriptionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_call_analytics_category, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCallAnalyticsCategory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCallAnalyticsCategoryRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCallAnalyticsCategoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_medical_vocabulary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMedicalVocabulary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMedicalVocabularyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMedicalVocabularyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_vocabulary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVocabulary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateVocabularyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVocabularyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_vocabulary_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVocabularyFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateVocabularyFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVocabularyFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)
    end

  end
end
