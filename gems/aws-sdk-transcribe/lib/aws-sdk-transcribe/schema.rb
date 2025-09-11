# frozen_string_literal: true

# This is generated code!

module Aws::Transcribe
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AbsoluteTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#AbsoluteTimeRange', name: 'AbsoluteTimeRange')
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BaseModelName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#BaseModelName', name: 'BaseModelName')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.transcribe#Boolean', name: 'Boolean')
    CLMLanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#CLMLanguageCode', name: 'CLMLanguageCode')
    CallAnalyticsFeature = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#CallAnalyticsFeature', name: 'CallAnalyticsFeature')
    CallAnalyticsJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CallAnalyticsJob', name: 'CallAnalyticsJob')
    CallAnalyticsJobDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CallAnalyticsJobDetails', name: 'CallAnalyticsJobDetails')
    CallAnalyticsJobName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#CallAnalyticsJobName', name: 'CallAnalyticsJobName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    CallAnalyticsJobSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CallAnalyticsJobSettings', name: 'CallAnalyticsJobSettings')
    CallAnalyticsJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#CallAnalyticsJobStatus', name: 'CallAnalyticsJobStatus')
    CallAnalyticsJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#CallAnalyticsJobSummaries', name: 'CallAnalyticsJobSummaries')
    CallAnalyticsJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CallAnalyticsJobSummary', name: 'CallAnalyticsJobSummary')
    CallAnalyticsSkippedFeature = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CallAnalyticsSkippedFeature', name: 'CallAnalyticsSkippedFeature')
    CallAnalyticsSkippedFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#CallAnalyticsSkippedFeatureList', name: 'CallAnalyticsSkippedFeatureList')
    CallAnalyticsSkippedReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#CallAnalyticsSkippedReasonCode', name: 'CallAnalyticsSkippedReasonCode')
    CategoryName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#CategoryName', name: 'CategoryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    CategoryProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CategoryProperties', name: 'CategoryProperties')
    CategoryPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#CategoryPropertiesList', name: 'CategoryPropertiesList')
    ChannelDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ChannelDefinition', name: 'ChannelDefinition')
    ChannelDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#ChannelDefinitions', name: 'ChannelDefinitions', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    ChannelId = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transcribe#ChannelId', name: 'ChannelId', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    ClinicalNoteGenerationSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ClinicalNoteGenerationSettings', name: 'ClinicalNoteGenerationSettings')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentRedaction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ContentRedaction', name: 'ContentRedaction')
    CreateCallAnalyticsCategoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CreateCallAnalyticsCategoryRequest', name: 'CreateCallAnalyticsCategoryRequest')
    CreateCallAnalyticsCategoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CreateCallAnalyticsCategoryResponse', name: 'CreateCallAnalyticsCategoryResponse')
    CreateLanguageModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CreateLanguageModelRequest', name: 'CreateLanguageModelRequest')
    CreateLanguageModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CreateLanguageModelResponse', name: 'CreateLanguageModelResponse')
    CreateMedicalVocabularyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CreateMedicalVocabularyRequest', name: 'CreateMedicalVocabularyRequest')
    CreateMedicalVocabularyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CreateMedicalVocabularyResponse', name: 'CreateMedicalVocabularyResponse')
    CreateVocabularyFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CreateVocabularyFilterRequest', name: 'CreateVocabularyFilterRequest')
    CreateVocabularyFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CreateVocabularyFilterResponse', name: 'CreateVocabularyFilterResponse')
    CreateVocabularyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CreateVocabularyRequest', name: 'CreateVocabularyRequest')
    CreateVocabularyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#CreateVocabularyResponse', name: 'CreateVocabularyResponse')
    DataAccessRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#DataAccessRoleArn', name: 'DataAccessRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso-{0,1}[a-z]{0,1}):iam::[0-9]{0,63}:role/[A-Za-z0-9:_/+=,@.-]{0,1024}$"})
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.transcribe#DateTime', name: 'DateTime')
    DeleteCallAnalyticsCategoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#DeleteCallAnalyticsCategoryRequest', name: 'DeleteCallAnalyticsCategoryRequest')
    DeleteCallAnalyticsCategoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#DeleteCallAnalyticsCategoryResponse', name: 'DeleteCallAnalyticsCategoryResponse')
    DeleteCallAnalyticsJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#DeleteCallAnalyticsJobRequest', name: 'DeleteCallAnalyticsJobRequest')
    DeleteCallAnalyticsJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#DeleteCallAnalyticsJobResponse', name: 'DeleteCallAnalyticsJobResponse')
    DeleteLanguageModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#DeleteLanguageModelRequest', name: 'DeleteLanguageModelRequest')
    DeleteMedicalScribeJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#DeleteMedicalScribeJobRequest', name: 'DeleteMedicalScribeJobRequest')
    DeleteMedicalTranscriptionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#DeleteMedicalTranscriptionJobRequest', name: 'DeleteMedicalTranscriptionJobRequest')
    DeleteMedicalVocabularyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#DeleteMedicalVocabularyRequest', name: 'DeleteMedicalVocabularyRequest')
    DeleteTranscriptionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#DeleteTranscriptionJobRequest', name: 'DeleteTranscriptionJobRequest')
    DeleteVocabularyFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#DeleteVocabularyFilterRequest', name: 'DeleteVocabularyFilterRequest')
    DeleteVocabularyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#DeleteVocabularyRequest', name: 'DeleteVocabularyRequest')
    DescribeLanguageModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#DescribeLanguageModelRequest', name: 'DescribeLanguageModelRequest')
    DescribeLanguageModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#DescribeLanguageModelResponse', name: 'DescribeLanguageModelResponse')
    DurationInSeconds = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.transcribe#DurationInSeconds', name: 'DurationInSeconds')
    FailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#FailureReason', name: 'FailureReason')
    GetCallAnalyticsCategoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetCallAnalyticsCategoryRequest', name: 'GetCallAnalyticsCategoryRequest')
    GetCallAnalyticsCategoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetCallAnalyticsCategoryResponse', name: 'GetCallAnalyticsCategoryResponse')
    GetCallAnalyticsJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetCallAnalyticsJobRequest', name: 'GetCallAnalyticsJobRequest')
    GetCallAnalyticsJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetCallAnalyticsJobResponse', name: 'GetCallAnalyticsJobResponse')
    GetMedicalScribeJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetMedicalScribeJobRequest', name: 'GetMedicalScribeJobRequest')
    GetMedicalScribeJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetMedicalScribeJobResponse', name: 'GetMedicalScribeJobResponse')
    GetMedicalTranscriptionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetMedicalTranscriptionJobRequest', name: 'GetMedicalTranscriptionJobRequest')
    GetMedicalTranscriptionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetMedicalTranscriptionJobResponse', name: 'GetMedicalTranscriptionJobResponse')
    GetMedicalVocabularyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetMedicalVocabularyRequest', name: 'GetMedicalVocabularyRequest')
    GetMedicalVocabularyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetMedicalVocabularyResponse', name: 'GetMedicalVocabularyResponse')
    GetTranscriptionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetTranscriptionJobRequest', name: 'GetTranscriptionJobRequest')
    GetTranscriptionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetTranscriptionJobResponse', name: 'GetTranscriptionJobResponse')
    GetVocabularyFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetVocabularyFilterRequest', name: 'GetVocabularyFilterRequest')
    GetVocabularyFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetVocabularyFilterResponse', name: 'GetVocabularyFilterResponse')
    GetVocabularyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetVocabularyRequest', name: 'GetVocabularyRequest')
    GetVocabularyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#GetVocabularyResponse', name: 'GetVocabularyResponse')
    IdentifiedLanguageScore = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.transcribe#IdentifiedLanguageScore', name: 'IdentifiedLanguageScore')
    InputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#InputDataConfig', name: 'InputDataConfig')
    InputType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#InputType', name: 'InputType')
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#InternalFailureException', name: 'InternalFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InterruptionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#InterruptionFilter', name: 'InterruptionFilter')
    JobExecutionSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#JobExecutionSettings', name: 'JobExecutionSettings')
    KMSEncryptionContextMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.transcribe#KMSEncryptionContextMap', name: 'KMSEncryptionContextMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    KMSKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#KMSKeyId', name: 'KMSKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,2048}$"})
    LanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#LanguageCode', name: 'LanguageCode')
    LanguageCodeItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#LanguageCodeItem', name: 'LanguageCodeItem')
    LanguageCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#LanguageCodeList', name: 'LanguageCodeList')
    LanguageIdSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#LanguageIdSettings', name: 'LanguageIdSettings')
    LanguageIdSettingsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.transcribe#LanguageIdSettingsMap', name: 'LanguageIdSettingsMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    LanguageModel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#LanguageModel', name: 'LanguageModel')
    LanguageOptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#LanguageOptions', name: 'LanguageOptions', traits: {"smithy.api#length" => {"min" => 1}})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListCallAnalyticsCategoriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListCallAnalyticsCategoriesRequest', name: 'ListCallAnalyticsCategoriesRequest')
    ListCallAnalyticsCategoriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListCallAnalyticsCategoriesResponse', name: 'ListCallAnalyticsCategoriesResponse')
    ListCallAnalyticsJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListCallAnalyticsJobsRequest', name: 'ListCallAnalyticsJobsRequest')
    ListCallAnalyticsJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListCallAnalyticsJobsResponse', name: 'ListCallAnalyticsJobsResponse')
    ListLanguageModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListLanguageModelsRequest', name: 'ListLanguageModelsRequest')
    ListLanguageModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListLanguageModelsResponse', name: 'ListLanguageModelsResponse')
    ListMedicalScribeJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListMedicalScribeJobsRequest', name: 'ListMedicalScribeJobsRequest')
    ListMedicalScribeJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListMedicalScribeJobsResponse', name: 'ListMedicalScribeJobsResponse')
    ListMedicalTranscriptionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListMedicalTranscriptionJobsRequest', name: 'ListMedicalTranscriptionJobsRequest')
    ListMedicalTranscriptionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListMedicalTranscriptionJobsResponse', name: 'ListMedicalTranscriptionJobsResponse')
    ListMedicalVocabulariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListMedicalVocabulariesRequest', name: 'ListMedicalVocabulariesRequest')
    ListMedicalVocabulariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListMedicalVocabulariesResponse', name: 'ListMedicalVocabulariesResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTranscriptionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListTranscriptionJobsRequest', name: 'ListTranscriptionJobsRequest')
    ListTranscriptionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListTranscriptionJobsResponse', name: 'ListTranscriptionJobsResponse')
    ListVocabulariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListVocabulariesRequest', name: 'ListVocabulariesRequest')
    ListVocabulariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListVocabulariesResponse', name: 'ListVocabulariesResponse')
    ListVocabularyFiltersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListVocabularyFiltersRequest', name: 'ListVocabularyFiltersRequest')
    ListVocabularyFiltersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ListVocabularyFiltersResponse', name: 'ListVocabularyFiltersResponse')
    MaxAlternatives = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transcribe#MaxAlternatives', name: 'MaxAlternatives', traits: {"smithy.api#range" => {"min" => 2, "max" => 10}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transcribe#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxSpeakers = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transcribe#MaxSpeakers', name: 'MaxSpeakers', traits: {"smithy.api#range" => {"min" => 2, "max" => 30}})
    Media = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#Media', name: 'Media')
    MediaFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#MediaFormat', name: 'MediaFormat')
    MediaSampleRateHertz = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transcribe#MediaSampleRateHertz', name: 'MediaSampleRateHertz', traits: {"smithy.api#range" => {"min" => 8000, "max" => 48000}})
    MedicalContentIdentificationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#MedicalContentIdentificationType', name: 'MedicalContentIdentificationType')
    MedicalMediaSampleRateHertz = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transcribe#MedicalMediaSampleRateHertz', name: 'MedicalMediaSampleRateHertz', traits: {"smithy.api#range" => {"min" => 16000, "max" => 48000}})
    MedicalScribeChannelDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#MedicalScribeChannelDefinition', name: 'MedicalScribeChannelDefinition')
    MedicalScribeChannelDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#MedicalScribeChannelDefinitions', name: 'MedicalScribeChannelDefinitions', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    MedicalScribeChannelId = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transcribe#MedicalScribeChannelId', name: 'MedicalScribeChannelId', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    MedicalScribeContext = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#MedicalScribeContext', name: 'MedicalScribeContext')
    MedicalScribeJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#MedicalScribeJob', name: 'MedicalScribeJob')
    MedicalScribeJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#MedicalScribeJobStatus', name: 'MedicalScribeJobStatus')
    MedicalScribeJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#MedicalScribeJobSummaries', name: 'MedicalScribeJobSummaries')
    MedicalScribeJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#MedicalScribeJobSummary', name: 'MedicalScribeJobSummary')
    MedicalScribeLanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#MedicalScribeLanguageCode', name: 'MedicalScribeLanguageCode')
    MedicalScribeNoteTemplate = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#MedicalScribeNoteTemplate', name: 'MedicalScribeNoteTemplate')
    MedicalScribeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#MedicalScribeOutput', name: 'MedicalScribeOutput')
    MedicalScribeParticipantRole = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#MedicalScribeParticipantRole', name: 'MedicalScribeParticipantRole')
    MedicalScribePatientContext = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#MedicalScribePatientContext', name: 'MedicalScribePatientContext')
    MedicalScribeSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#MedicalScribeSettings', name: 'MedicalScribeSettings')
    MedicalTranscript = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#MedicalTranscript', name: 'MedicalTranscript')
    MedicalTranscriptionJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#MedicalTranscriptionJob', name: 'MedicalTranscriptionJob')
    MedicalTranscriptionJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#MedicalTranscriptionJobSummaries', name: 'MedicalTranscriptionJobSummaries')
    MedicalTranscriptionJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#MedicalTranscriptionJobSummary', name: 'MedicalTranscriptionJobSummary')
    MedicalTranscriptionSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#MedicalTranscriptionSetting', name: 'MedicalTranscriptionSetting')
    ModelName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#ModelName', name: 'ModelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    ModelSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ModelSettings', name: 'ModelSettings')
    ModelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#ModelStatus', name: 'ModelStatus')
    Models = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#Models', name: 'Models')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^.+$"})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "\\S"})
    NonTalkTimeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#NonTalkTimeFilter', name: 'NonTalkTimeFilter')
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OutputBucketName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#OutputBucketName', name: 'OutputBucketName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    OutputKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#OutputKey', name: 'OutputKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9-_.!*'()/]{1,1024}$"})
    OutputLocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#OutputLocationType', name: 'OutputLocationType')
    ParticipantRole = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#ParticipantRole', name: 'ParticipantRole')
    Percentage = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transcribe#Percentage', name: 'Percentage', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    Phrase = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#Phrase', name: 'Phrase', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^.+$"})
    Phrases = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#Phrases', name: 'Phrases')
    PiiEntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#PiiEntityType', name: 'PiiEntityType')
    PiiEntityTypes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#PiiEntityTypes', name: 'PiiEntityTypes', traits: {"smithy.api#length" => {"min" => 0, "max" => 11}})
    Pronouns = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#Pronouns', name: 'Pronouns', traits: {"smithy.api#sensitive" => {}})
    RedactionOutput = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#RedactionOutput', name: 'RedactionOutput')
    RedactionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#RedactionType', name: 'RedactionType')
    RelativeTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#RelativeTimeRange', name: 'RelativeTimeRange')
    Rule = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.transcribe#Rule', name: 'Rule')
    RuleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#RuleList', name: 'RuleList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    SentimentFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#SentimentFilter', name: 'SentimentFilter')
    SentimentValue = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#SentimentValue', name: 'SentimentValue')
    SentimentValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#SentimentValueList', name: 'SentimentValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Settings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#Settings', name: 'Settings')
    Specialty = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#Specialty', name: 'Specialty')
    StartCallAnalyticsJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#StartCallAnalyticsJobRequest', name: 'StartCallAnalyticsJobRequest')
    StartCallAnalyticsJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#StartCallAnalyticsJobResponse', name: 'StartCallAnalyticsJobResponse')
    StartMedicalScribeJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#StartMedicalScribeJobRequest', name: 'StartMedicalScribeJobRequest')
    StartMedicalScribeJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#StartMedicalScribeJobResponse', name: 'StartMedicalScribeJobResponse')
    StartMedicalTranscriptionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#StartMedicalTranscriptionJobRequest', name: 'StartMedicalTranscriptionJobRequest')
    StartMedicalTranscriptionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#StartMedicalTranscriptionJobResponse', name: 'StartMedicalTranscriptionJobResponse')
    StartTranscriptionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#StartTranscriptionJobRequest', name: 'StartTranscriptionJobRequest')
    StartTranscriptionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#StartTranscriptionJobResponse', name: 'StartTranscriptionJobResponse')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#String', name: 'String')
    StringTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#StringTargetList', name: 'StringTargetList', traits: {"smithy.api#length" => {"min" => 1}})
    SubtitleFileUris = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#SubtitleFileUris', name: 'SubtitleFileUris')
    SubtitleFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#SubtitleFormat', name: 'SubtitleFormat')
    SubtitleFormats = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#SubtitleFormats', name: 'SubtitleFormats')
    SubtitleOutputStartIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transcribe#SubtitleOutputStartIndex', name: 'SubtitleOutputStartIndex', traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    Subtitles = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#Subtitles', name: 'Subtitles')
    SubtitlesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#SubtitlesOutput', name: 'SubtitlesOutput')
    Summarization = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#Summarization', name: 'Summarization')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TimestampMilliseconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transcribe#TimestampMilliseconds', name: 'TimestampMilliseconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 14400000}})
    ToxicityCategories = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#ToxicityCategories', name: 'ToxicityCategories', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ToxicityCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#ToxicityCategory', name: 'ToxicityCategory')
    ToxicityDetection = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#ToxicityDetection', name: 'ToxicityDetection', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ToxicityDetectionSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#ToxicityDetectionSettings', name: 'ToxicityDetectionSettings')
    TranscribeArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#TranscribeArn', name: 'TranscribeArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:transcribe:[a-zA-Z0-9-]*:[0-9]{12}:[a-zA-Z-]*/[0-9a-zA-Z._-]+$"})
    Transcript = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#Transcript', name: 'Transcript')
    TranscriptFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#TranscriptFilter', name: 'TranscriptFilter')
    TranscriptFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#TranscriptFilterType', name: 'TranscriptFilterType')
    TranscriptionJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#TranscriptionJob', name: 'TranscriptionJob')
    TranscriptionJobName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#TranscriptionJobName', name: 'TranscriptionJobName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    TranscriptionJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#TranscriptionJobStatus', name: 'TranscriptionJobStatus')
    TranscriptionJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#TranscriptionJobSummaries', name: 'TranscriptionJobSummaries')
    TranscriptionJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#TranscriptionJobSummary', name: 'TranscriptionJobSummary')
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#Type', name: 'Type')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateCallAnalyticsCategoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#UpdateCallAnalyticsCategoryRequest', name: 'UpdateCallAnalyticsCategoryRequest')
    UpdateCallAnalyticsCategoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#UpdateCallAnalyticsCategoryResponse', name: 'UpdateCallAnalyticsCategoryResponse')
    UpdateMedicalVocabularyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#UpdateMedicalVocabularyRequest', name: 'UpdateMedicalVocabularyRequest')
    UpdateMedicalVocabularyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#UpdateMedicalVocabularyResponse', name: 'UpdateMedicalVocabularyResponse')
    UpdateVocabularyFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#UpdateVocabularyFilterRequest', name: 'UpdateVocabularyFilterRequest')
    UpdateVocabularyFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#UpdateVocabularyFilterResponse', name: 'UpdateVocabularyFilterResponse')
    UpdateVocabularyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#UpdateVocabularyRequest', name: 'UpdateVocabularyRequest')
    UpdateVocabularyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#UpdateVocabularyResponse', name: 'UpdateVocabularyResponse')
    Uri = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#Uri', name: 'Uri', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^(s3://|http(s*)://).+$"})
    Vocabularies = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#Vocabularies', name: 'Vocabularies')
    VocabularyFilterInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#VocabularyFilterInfo', name: 'VocabularyFilterInfo')
    VocabularyFilterMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#VocabularyFilterMethod', name: 'VocabularyFilterMethod')
    VocabularyFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#VocabularyFilterName', name: 'VocabularyFilterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    VocabularyFilters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#VocabularyFilters', name: 'VocabularyFilters')
    VocabularyInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transcribe#VocabularyInfo', name: 'VocabularyInfo')
    VocabularyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#VocabularyName', name: 'VocabularyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    VocabularyState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transcribe#VocabularyState', name: 'VocabularyState')
    Word = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transcribe#Word', name: 'Word', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Words = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transcribe#Words', name: 'Words', traits: {"smithy.api#length" => {"min" => 1}})

    AbsoluteTimeRange.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampMilliseconds, location_name: 'StartTime'))
    AbsoluteTimeRange.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampMilliseconds, location_name: 'EndTime'))
    AbsoluteTimeRange.add_member(:first, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampMilliseconds, location_name: 'First'))
    AbsoluteTimeRange.add_member(:last, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampMilliseconds, location_name: 'Last'))
    AbsoluteTimeRange.type = Types::AbsoluteTimeRange
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'Message'))
    BadRequestException.type = Types::BadRequestException
    BaseModelName.add_member(:narrow_band, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NARROW_BAND', traits: {"smithy.api#enumValue" => "NarrowBand"}))
    BaseModelName.add_member(:wide_band, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WIDE_BAND', traits: {"smithy.api#enumValue" => "WideBand"}))
    CLMLanguageCode.add_member(:en_us, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_US', traits: {"smithy.api#enumValue" => "en-US"}))
    CLMLanguageCode.add_member(:hi_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HI_IN', traits: {"smithy.api#enumValue" => "hi-IN"}))
    CLMLanguageCode.add_member(:es_us, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES_US', traits: {"smithy.api#enumValue" => "es-US"}))
    CLMLanguageCode.add_member(:en_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_GB', traits: {"smithy.api#enumValue" => "en-GB"}))
    CLMLanguageCode.add_member(:en_au, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_AU', traits: {"smithy.api#enumValue" => "en-AU"}))
    CLMLanguageCode.add_member(:de_de, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DE_DE', traits: {"smithy.api#enumValue" => "de-DE"}))
    CLMLanguageCode.add_member(:ja_jp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JA_JP', traits: {"smithy.api#enumValue" => "ja-JP"}))
    CallAnalyticsFeature.add_member(:generative_summarization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERATIVE_SUMMARIZATION', traits: {"smithy.api#enumValue" => "GENERATIVE_SUMMARIZATION"}))
    CallAnalyticsJob.add_member(:call_analytics_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobName, location_name: 'CallAnalyticsJobName'))
    CallAnalyticsJob.add_member(:call_analytics_job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobStatus, location_name: 'CallAnalyticsJobStatus'))
    CallAnalyticsJob.add_member(:call_analytics_job_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobDetails, location_name: 'CallAnalyticsJobDetails'))
    CallAnalyticsJob.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    CallAnalyticsJob.add_member(:media_sample_rate_hertz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaSampleRateHertz, location_name: 'MediaSampleRateHertz'))
    CallAnalyticsJob.add_member(:media_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaFormat, location_name: 'MediaFormat'))
    CallAnalyticsJob.add_member(:media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Media, location_name: 'Media'))
    CallAnalyticsJob.add_member(:transcript, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Transcript, location_name: 'Transcript'))
    CallAnalyticsJob.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime'))
    CallAnalyticsJob.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTime'))
    CallAnalyticsJob.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CompletionTime'))
    CallAnalyticsJob.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    CallAnalyticsJob.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: 'DataAccessRoleArn'))
    CallAnalyticsJob.add_member(:identified_language_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentifiedLanguageScore, location_name: 'IdentifiedLanguageScore'))
    CallAnalyticsJob.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobSettings, location_name: 'Settings'))
    CallAnalyticsJob.add_member(:channel_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelDefinitions, location_name: 'ChannelDefinitions'))
    CallAnalyticsJob.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CallAnalyticsJob.type = Types::CallAnalyticsJob
    CallAnalyticsJobDetails.add_member(:skipped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsSkippedFeatureList, location_name: 'Skipped'))
    CallAnalyticsJobDetails.type = Types::CallAnalyticsJobDetails
    CallAnalyticsJobSettings.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName'))
    CallAnalyticsJobSettings.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'VocabularyFilterName'))
    CallAnalyticsJobSettings.add_member(:vocabulary_filter_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterMethod, location_name: 'VocabularyFilterMethod'))
    CallAnalyticsJobSettings.add_member(:language_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'LanguageModelName'))
    CallAnalyticsJobSettings.add_member(:content_redaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentRedaction, location_name: 'ContentRedaction'))
    CallAnalyticsJobSettings.add_member(:language_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageOptions, location_name: 'LanguageOptions'))
    CallAnalyticsJobSettings.add_member(:language_id_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageIdSettingsMap, location_name: 'LanguageIdSettings'))
    CallAnalyticsJobSettings.add_member(:summarization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Summarization, location_name: 'Summarization'))
    CallAnalyticsJobSettings.type = Types::CallAnalyticsJobSettings
    CallAnalyticsJobStatus.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    CallAnalyticsJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CallAnalyticsJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CallAnalyticsJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CallAnalyticsJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobSummary)
    CallAnalyticsJobSummary.add_member(:call_analytics_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobName, location_name: 'CallAnalyticsJobName'))
    CallAnalyticsJobSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTime'))
    CallAnalyticsJobSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime'))
    CallAnalyticsJobSummary.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CompletionTime'))
    CallAnalyticsJobSummary.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    CallAnalyticsJobSummary.add_member(:call_analytics_job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobStatus, location_name: 'CallAnalyticsJobStatus'))
    CallAnalyticsJobSummary.add_member(:call_analytics_job_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobDetails, location_name: 'CallAnalyticsJobDetails'))
    CallAnalyticsJobSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    CallAnalyticsJobSummary.type = Types::CallAnalyticsJobSummary
    CallAnalyticsSkippedFeature.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsFeature, location_name: 'Feature'))
    CallAnalyticsSkippedFeature.add_member(:reason_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsSkippedReasonCode, location_name: 'ReasonCode'))
    CallAnalyticsSkippedFeature.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    CallAnalyticsSkippedFeature.type = Types::CallAnalyticsSkippedFeature
    CallAnalyticsSkippedFeatureList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsSkippedFeature)
    CallAnalyticsSkippedReasonCode.add_member(:insufficient_conversation_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_CONVERSATION_CONTENT', traits: {"smithy.api#enumValue" => "INSUFFICIENT_CONVERSATION_CONTENT"}))
    CallAnalyticsSkippedReasonCode.add_member(:failed_safety_guidelines, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_SAFETY_GUIDELINES', traits: {"smithy.api#enumValue" => "FAILED_SAFETY_GUIDELINES"}))
    CategoryProperties.add_member(:category_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryName, location_name: 'CategoryName'))
    CategoryProperties.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleList, location_name: 'Rules'))
    CategoryProperties.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreateTime'))
    CategoryProperties.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastUpdateTime'))
    CategoryProperties.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CategoryProperties.add_member(:input_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputType, location_name: 'InputType'))
    CategoryProperties.type = Types::CategoryProperties
    CategoryPropertiesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryProperties)
    ChannelDefinition.add_member(:channel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: 'ChannelId', traits: {"smithy.api#default" => 0}))
    ChannelDefinition.add_member(:participant_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRole, location_name: 'ParticipantRole'))
    ChannelDefinition.type = Types::ChannelDefinition
    ChannelDefinitions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelDefinition)
    ClinicalNoteGenerationSettings.add_member(:note_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeNoteTemplate, location_name: 'NoteTemplate'))
    ClinicalNoteGenerationSettings.type = Types::ClinicalNoteGenerationSettings
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    ContentRedaction.add_member(:redaction_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedactionType, location_name: 'RedactionType', traits: {"smithy.api#required" => {}}))
    ContentRedaction.add_member(:redaction_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedactionOutput, location_name: 'RedactionOutput', traits: {"smithy.api#required" => {}}))
    ContentRedaction.add_member(:pii_entity_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntityTypes, location_name: 'PiiEntityTypes'))
    ContentRedaction.type = Types::ContentRedaction
    CreateCallAnalyticsCategoryRequest.add_member(:category_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryName, location_name: 'CategoryName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCallAnalyticsCategoryRequest.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleList, location_name: 'Rules', traits: {"smithy.api#required" => {}}))
    CreateCallAnalyticsCategoryRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateCallAnalyticsCategoryRequest.add_member(:input_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputType, location_name: 'InputType'))
    CreateCallAnalyticsCategoryRequest.type = Types::CreateCallAnalyticsCategoryRequest
    CreateCallAnalyticsCategoryResponse.add_member(:category_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryProperties, location_name: 'CategoryProperties'))
    CreateCallAnalyticsCategoryResponse.type = Types::CreateCallAnalyticsCategoryResponse
    CreateLanguageModelRequest.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CLMLanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#required" => {}}))
    CreateLanguageModelRequest.add_member(:base_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseModelName, location_name: 'BaseModelName', traits: {"smithy.api#required" => {}}))
    CreateLanguageModelRequest.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLanguageModelRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#required" => {}}))
    CreateLanguageModelRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateLanguageModelRequest.type = Types::CreateLanguageModelRequest
    CreateLanguageModelResponse.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CLMLanguageCode, location_name: 'LanguageCode'))
    CreateLanguageModelResponse.add_member(:base_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseModelName, location_name: 'BaseModelName'))
    CreateLanguageModelResponse.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName'))
    CreateLanguageModelResponse.add_member(:input_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig'))
    CreateLanguageModelResponse.add_member(:model_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'ModelStatus'))
    CreateLanguageModelResponse.type = Types::CreateLanguageModelResponse
    CreateMedicalVocabularyRequest.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMedicalVocabularyRequest.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#required" => {}}))
    CreateMedicalVocabularyRequest.add_member(:vocabulary_file_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'VocabularyFileUri', traits: {"smithy.api#required" => {}}))
    CreateMedicalVocabularyRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateMedicalVocabularyRequest.type = Types::CreateMedicalVocabularyRequest
    CreateMedicalVocabularyResponse.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName'))
    CreateMedicalVocabularyResponse.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    CreateMedicalVocabularyResponse.add_member(:vocabulary_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyState, location_name: 'VocabularyState'))
    CreateMedicalVocabularyResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastModifiedTime'))
    CreateMedicalVocabularyResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    CreateMedicalVocabularyResponse.type = Types::CreateMedicalVocabularyResponse
    CreateVocabularyFilterRequest.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'VocabularyFilterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVocabularyFilterRequest.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#required" => {}}))
    CreateVocabularyFilterRequest.add_member(:words, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Words, location_name: 'Words'))
    CreateVocabularyFilterRequest.add_member(:vocabulary_filter_file_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'VocabularyFilterFileUri'))
    CreateVocabularyFilterRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateVocabularyFilterRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: 'DataAccessRoleArn'))
    CreateVocabularyFilterRequest.type = Types::CreateVocabularyFilterRequest
    CreateVocabularyFilterResponse.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'VocabularyFilterName'))
    CreateVocabularyFilterResponse.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    CreateVocabularyFilterResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastModifiedTime'))
    CreateVocabularyFilterResponse.type = Types::CreateVocabularyFilterResponse
    CreateVocabularyRequest.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVocabularyRequest.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#required" => {}}))
    CreateVocabularyRequest.add_member(:phrases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Phrases, location_name: 'Phrases'))
    CreateVocabularyRequest.add_member(:vocabulary_file_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'VocabularyFileUri'))
    CreateVocabularyRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateVocabularyRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: 'DataAccessRoleArn'))
    CreateVocabularyRequest.type = Types::CreateVocabularyRequest
    CreateVocabularyResponse.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName'))
    CreateVocabularyResponse.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    CreateVocabularyResponse.add_member(:vocabulary_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyState, location_name: 'VocabularyState'))
    CreateVocabularyResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastModifiedTime'))
    CreateVocabularyResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    CreateVocabularyResponse.type = Types::CreateVocabularyResponse
    DeleteCallAnalyticsCategoryRequest.add_member(:category_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryName, location_name: 'CategoryName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCallAnalyticsCategoryRequest.type = Types::DeleteCallAnalyticsCategoryRequest
    DeleteCallAnalyticsCategoryResponse.type = Types::DeleteCallAnalyticsCategoryResponse
    DeleteCallAnalyticsJobRequest.add_member(:call_analytics_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobName, location_name: 'CallAnalyticsJobName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCallAnalyticsJobRequest.type = Types::DeleteCallAnalyticsJobRequest
    DeleteCallAnalyticsJobResponse.type = Types::DeleteCallAnalyticsJobResponse
    DeleteLanguageModelRequest.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLanguageModelRequest.type = Types::DeleteLanguageModelRequest
    DeleteMedicalScribeJobRequest.add_member(:medical_scribe_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'MedicalScribeJobName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMedicalScribeJobRequest.type = Types::DeleteMedicalScribeJobRequest
    DeleteMedicalTranscriptionJobRequest.add_member(:medical_transcription_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'MedicalTranscriptionJobName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMedicalTranscriptionJobRequest.type = Types::DeleteMedicalTranscriptionJobRequest
    DeleteMedicalVocabularyRequest.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMedicalVocabularyRequest.type = Types::DeleteMedicalVocabularyRequest
    DeleteTranscriptionJobRequest.add_member(:transcription_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'TranscriptionJobName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTranscriptionJobRequest.type = Types::DeleteTranscriptionJobRequest
    DeleteVocabularyFilterRequest.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'VocabularyFilterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVocabularyFilterRequest.type = Types::DeleteVocabularyFilterRequest
    DeleteVocabularyRequest.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVocabularyRequest.type = Types::DeleteVocabularyRequest
    DescribeLanguageModelRequest.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeLanguageModelRequest.type = Types::DescribeLanguageModelRequest
    DescribeLanguageModelResponse.add_member(:language_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageModel, location_name: 'LanguageModel'))
    DescribeLanguageModelResponse.type = Types::DescribeLanguageModelResponse
    GetCallAnalyticsCategoryRequest.add_member(:category_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryName, location_name: 'CategoryName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCallAnalyticsCategoryRequest.type = Types::GetCallAnalyticsCategoryRequest
    GetCallAnalyticsCategoryResponse.add_member(:category_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryProperties, location_name: 'CategoryProperties'))
    GetCallAnalyticsCategoryResponse.type = Types::GetCallAnalyticsCategoryResponse
    GetCallAnalyticsJobRequest.add_member(:call_analytics_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobName, location_name: 'CallAnalyticsJobName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCallAnalyticsJobRequest.type = Types::GetCallAnalyticsJobRequest
    GetCallAnalyticsJobResponse.add_member(:call_analytics_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJob, location_name: 'CallAnalyticsJob'))
    GetCallAnalyticsJobResponse.type = Types::GetCallAnalyticsJobResponse
    GetMedicalScribeJobRequest.add_member(:medical_scribe_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'MedicalScribeJobName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMedicalScribeJobRequest.type = Types::GetMedicalScribeJobRequest
    GetMedicalScribeJobResponse.add_member(:medical_scribe_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeJob, location_name: 'MedicalScribeJob'))
    GetMedicalScribeJobResponse.type = Types::GetMedicalScribeJobResponse
    GetMedicalTranscriptionJobRequest.add_member(:medical_transcription_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'MedicalTranscriptionJobName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMedicalTranscriptionJobRequest.type = Types::GetMedicalTranscriptionJobRequest
    GetMedicalTranscriptionJobResponse.add_member(:medical_transcription_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalTranscriptionJob, location_name: 'MedicalTranscriptionJob'))
    GetMedicalTranscriptionJobResponse.type = Types::GetMedicalTranscriptionJobResponse
    GetMedicalVocabularyRequest.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMedicalVocabularyRequest.type = Types::GetMedicalVocabularyRequest
    GetMedicalVocabularyResponse.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName'))
    GetMedicalVocabularyResponse.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    GetMedicalVocabularyResponse.add_member(:vocabulary_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyState, location_name: 'VocabularyState'))
    GetMedicalVocabularyResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastModifiedTime'))
    GetMedicalVocabularyResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    GetMedicalVocabularyResponse.add_member(:download_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'DownloadUri'))
    GetMedicalVocabularyResponse.type = Types::GetMedicalVocabularyResponse
    GetTranscriptionJobRequest.add_member(:transcription_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'TranscriptionJobName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTranscriptionJobRequest.type = Types::GetTranscriptionJobRequest
    GetTranscriptionJobResponse.add_member(:transcription_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJob, location_name: 'TranscriptionJob'))
    GetTranscriptionJobResponse.type = Types::GetTranscriptionJobResponse
    GetVocabularyFilterRequest.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'VocabularyFilterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVocabularyFilterRequest.type = Types::GetVocabularyFilterRequest
    GetVocabularyFilterResponse.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'VocabularyFilterName'))
    GetVocabularyFilterResponse.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    GetVocabularyFilterResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastModifiedTime'))
    GetVocabularyFilterResponse.add_member(:download_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'DownloadUri'))
    GetVocabularyFilterResponse.type = Types::GetVocabularyFilterResponse
    GetVocabularyRequest.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVocabularyRequest.type = Types::GetVocabularyRequest
    GetVocabularyResponse.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName'))
    GetVocabularyResponse.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    GetVocabularyResponse.add_member(:vocabulary_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyState, location_name: 'VocabularyState'))
    GetVocabularyResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastModifiedTime'))
    GetVocabularyResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    GetVocabularyResponse.add_member(:download_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'DownloadUri'))
    GetVocabularyResponse.type = Types::GetVocabularyResponse
    InputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'S3Uri', traits: {"smithy.api#required" => {}}))
    InputDataConfig.add_member(:tuning_data_s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'TuningDataS3Uri'))
    InputDataConfig.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#required" => {}}))
    InputDataConfig.type = Types::InputDataConfig
    InputType.add_member(:real_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REAL_TIME', traits: {"smithy.api#enumValue" => "REAL_TIME"}))
    InputType.add_member(:post_call, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POST_CALL', traits: {"smithy.api#enumValue" => "POST_CALL"}))
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InternalFailureException.type = Types::InternalFailureException
    InterruptionFilter.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampMilliseconds, location_name: 'Threshold'))
    InterruptionFilter.add_member(:participant_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRole, location_name: 'ParticipantRole'))
    InterruptionFilter.add_member(:absolute_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbsoluteTimeRange, location_name: 'AbsoluteTimeRange'))
    InterruptionFilter.add_member(:relative_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativeTimeRange, location_name: 'RelativeTimeRange'))
    InterruptionFilter.add_member(:negate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Negate'))
    InterruptionFilter.type = Types::InterruptionFilter
    JobExecutionSettings.add_member(:allow_deferred_execution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowDeferredExecution'))
    JobExecutionSettings.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: 'DataAccessRoleArn'))
    JobExecutionSettings.type = Types::JobExecutionSettings
    KMSEncryptionContextMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    KMSEncryptionContextMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    LanguageCode.add_member(:af_za, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AF_ZA', traits: {"smithy.api#enumValue" => "af-ZA"}))
    LanguageCode.add_member(:ar_ae, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AR_AE', traits: {"smithy.api#enumValue" => "ar-AE"}))
    LanguageCode.add_member(:ar_sa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AR_SA', traits: {"smithy.api#enumValue" => "ar-SA"}))
    LanguageCode.add_member(:da_dk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DA_DK', traits: {"smithy.api#enumValue" => "da-DK"}))
    LanguageCode.add_member(:de_ch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DE_CH', traits: {"smithy.api#enumValue" => "de-CH"}))
    LanguageCode.add_member(:de_de, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DE_DE', traits: {"smithy.api#enumValue" => "de-DE"}))
    LanguageCode.add_member(:en_ab, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_AB', traits: {"smithy.api#enumValue" => "en-AB"}))
    LanguageCode.add_member(:en_au, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_AU', traits: {"smithy.api#enumValue" => "en-AU"}))
    LanguageCode.add_member(:en_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_GB', traits: {"smithy.api#enumValue" => "en-GB"}))
    LanguageCode.add_member(:en_ie, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_IE', traits: {"smithy.api#enumValue" => "en-IE"}))
    LanguageCode.add_member(:en_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_IN', traits: {"smithy.api#enumValue" => "en-IN"}))
    LanguageCode.add_member(:en_us, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_US', traits: {"smithy.api#enumValue" => "en-US"}))
    LanguageCode.add_member(:en_wl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_WL', traits: {"smithy.api#enumValue" => "en-WL"}))
    LanguageCode.add_member(:es_es, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES_ES', traits: {"smithy.api#enumValue" => "es-ES"}))
    LanguageCode.add_member(:es_us, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES_US', traits: {"smithy.api#enumValue" => "es-US"}))
    LanguageCode.add_member(:fa_ir, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FA_IR', traits: {"smithy.api#enumValue" => "fa-IR"}))
    LanguageCode.add_member(:fr_ca, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR_CA', traits: {"smithy.api#enumValue" => "fr-CA"}))
    LanguageCode.add_member(:fr_fr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR_FR', traits: {"smithy.api#enumValue" => "fr-FR"}))
    LanguageCode.add_member(:he_il, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HE_IL', traits: {"smithy.api#enumValue" => "he-IL"}))
    LanguageCode.add_member(:hi_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HI_IN', traits: {"smithy.api#enumValue" => "hi-IN"}))
    LanguageCode.add_member(:id_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ID_ID', traits: {"smithy.api#enumValue" => "id-ID"}))
    LanguageCode.add_member(:it_it, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IT_IT', traits: {"smithy.api#enumValue" => "it-IT"}))
    LanguageCode.add_member(:ja_jp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JA_JP', traits: {"smithy.api#enumValue" => "ja-JP"}))
    LanguageCode.add_member(:ko_kr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KO_KR', traits: {"smithy.api#enumValue" => "ko-KR"}))
    LanguageCode.add_member(:ms_my, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MS_MY', traits: {"smithy.api#enumValue" => "ms-MY"}))
    LanguageCode.add_member(:nl_nl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NL_NL', traits: {"smithy.api#enumValue" => "nl-NL"}))
    LanguageCode.add_member(:pt_br, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT_BR', traits: {"smithy.api#enumValue" => "pt-BR"}))
    LanguageCode.add_member(:pt_pt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT_PT', traits: {"smithy.api#enumValue" => "pt-PT"}))
    LanguageCode.add_member(:ru_ru, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RU_RU', traits: {"smithy.api#enumValue" => "ru-RU"}))
    LanguageCode.add_member(:ta_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TA_IN', traits: {"smithy.api#enumValue" => "ta-IN"}))
    LanguageCode.add_member(:te_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TE_IN', traits: {"smithy.api#enumValue" => "te-IN"}))
    LanguageCode.add_member(:tr_tr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TR_TR', traits: {"smithy.api#enumValue" => "tr-TR"}))
    LanguageCode.add_member(:zh_cn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZH_CN', traits: {"smithy.api#enumValue" => "zh-CN"}))
    LanguageCode.add_member(:zh_tw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZH_TW', traits: {"smithy.api#enumValue" => "zh-TW"}))
    LanguageCode.add_member(:th_th, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TH_TH', traits: {"smithy.api#enumValue" => "th-TH"}))
    LanguageCode.add_member(:en_za, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_ZA', traits: {"smithy.api#enumValue" => "en-ZA"}))
    LanguageCode.add_member(:en_nz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_NZ', traits: {"smithy.api#enumValue" => "en-NZ"}))
    LanguageCode.add_member(:vi_vn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VI_VN', traits: {"smithy.api#enumValue" => "vi-VN"}))
    LanguageCode.add_member(:sv_se, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SV_SE', traits: {"smithy.api#enumValue" => "sv-SE"}))
    LanguageCode.add_member(:ab_ge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AB_GE', traits: {"smithy.api#enumValue" => "ab-GE"}))
    LanguageCode.add_member(:ast_es, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AST_ES', traits: {"smithy.api#enumValue" => "ast-ES"}))
    LanguageCode.add_member(:az_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AZ_AZ', traits: {"smithy.api#enumValue" => "az-AZ"}))
    LanguageCode.add_member(:ba_ru, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BA_RU', traits: {"smithy.api#enumValue" => "ba-RU"}))
    LanguageCode.add_member(:be_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BE_BY', traits: {"smithy.api#enumValue" => "be-BY"}))
    LanguageCode.add_member(:bg_bg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BG_BG', traits: {"smithy.api#enumValue" => "bg-BG"}))
    LanguageCode.add_member(:bn_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BN_IN', traits: {"smithy.api#enumValue" => "bn-IN"}))
    LanguageCode.add_member(:bs_ba, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BS_BA', traits: {"smithy.api#enumValue" => "bs-BA"}))
    LanguageCode.add_member(:ca_es, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CA_ES', traits: {"smithy.api#enumValue" => "ca-ES"}))
    LanguageCode.add_member(:ckb_iq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CKB_IQ', traits: {"smithy.api#enumValue" => "ckb-IQ"}))
    LanguageCode.add_member(:ckb_ir, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CKB_IR', traits: {"smithy.api#enumValue" => "ckb-IR"}))
    LanguageCode.add_member(:cs_cz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CS_CZ', traits: {"smithy.api#enumValue" => "cs-CZ"}))
    LanguageCode.add_member(:cy_wl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CY_WL', traits: {"smithy.api#enumValue" => "cy-WL"}))
    LanguageCode.add_member(:el_gr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EL_GR', traits: {"smithy.api#enumValue" => "el-GR"}))
    LanguageCode.add_member(:et_ee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ET_EE', traits: {"smithy.api#enumValue" => "et-EE"}))
    LanguageCode.add_member(:et_et, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ET_ET', traits: {"smithy.api#enumValue" => "et-ET"}))
    LanguageCode.add_member(:eu_es, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_ES', traits: {"smithy.api#enumValue" => "eu-ES"}))
    LanguageCode.add_member(:fi_fi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FI_FI', traits: {"smithy.api#enumValue" => "fi-FI"}))
    LanguageCode.add_member(:gl_es, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GL_ES', traits: {"smithy.api#enumValue" => "gl-ES"}))
    LanguageCode.add_member(:gu_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GU_IN', traits: {"smithy.api#enumValue" => "gu-IN"}))
    LanguageCode.add_member(:ha_ng, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HA_NG', traits: {"smithy.api#enumValue" => "ha-NG"}))
    LanguageCode.add_member(:hr_hr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HR_HR', traits: {"smithy.api#enumValue" => "hr-HR"}))
    LanguageCode.add_member(:hu_hu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HU_HU', traits: {"smithy.api#enumValue" => "hu-HU"}))
    LanguageCode.add_member(:hy_am, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HY_AM', traits: {"smithy.api#enumValue" => "hy-AM"}))
    LanguageCode.add_member(:is_is, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IS_IS', traits: {"smithy.api#enumValue" => "is-IS"}))
    LanguageCode.add_member(:ka_ge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KA_GE', traits: {"smithy.api#enumValue" => "ka-GE"}))
    LanguageCode.add_member(:kab_dz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KAB_DZ', traits: {"smithy.api#enumValue" => "kab-DZ"}))
    LanguageCode.add_member(:kk_kz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KK_KZ', traits: {"smithy.api#enumValue" => "kk-KZ"}))
    LanguageCode.add_member(:kn_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KN_IN', traits: {"smithy.api#enumValue" => "kn-IN"}))
    LanguageCode.add_member(:ky_kg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KY_KG', traits: {"smithy.api#enumValue" => "ky-KG"}))
    LanguageCode.add_member(:lg_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LG_IN', traits: {"smithy.api#enumValue" => "lg-IN"}))
    LanguageCode.add_member(:lt_lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LT_LT', traits: {"smithy.api#enumValue" => "lt-LT"}))
    LanguageCode.add_member(:lv_lv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LV_LV', traits: {"smithy.api#enumValue" => "lv-LV"}))
    LanguageCode.add_member(:mhr_ru, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MHR_RU', traits: {"smithy.api#enumValue" => "mhr-RU"}))
    LanguageCode.add_member(:mi_nz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MI_NZ', traits: {"smithy.api#enumValue" => "mi-NZ"}))
    LanguageCode.add_member(:mk_mk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MK_MK', traits: {"smithy.api#enumValue" => "mk-MK"}))
    LanguageCode.add_member(:ml_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_IN', traits: {"smithy.api#enumValue" => "ml-IN"}))
    LanguageCode.add_member(:mn_mn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MN_MN', traits: {"smithy.api#enumValue" => "mn-MN"}))
    LanguageCode.add_member(:mr_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MR_IN', traits: {"smithy.api#enumValue" => "mr-IN"}))
    LanguageCode.add_member(:mt_mt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MT_MT', traits: {"smithy.api#enumValue" => "mt-MT"}))
    LanguageCode.add_member(:no_no, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_NO', traits: {"smithy.api#enumValue" => "no-NO"}))
    LanguageCode.add_member(:or_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OR_IN', traits: {"smithy.api#enumValue" => "or-IN"}))
    LanguageCode.add_member(:pa_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PA_IN', traits: {"smithy.api#enumValue" => "pa-IN"}))
    LanguageCode.add_member(:pl_pl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PL_PL', traits: {"smithy.api#enumValue" => "pl-PL"}))
    LanguageCode.add_member(:ps_af, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PS_AF', traits: {"smithy.api#enumValue" => "ps-AF"}))
    LanguageCode.add_member(:ro_ro, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RO_RO', traits: {"smithy.api#enumValue" => "ro-RO"}))
    LanguageCode.add_member(:rw_rw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RW_RW', traits: {"smithy.api#enumValue" => "rw-RW"}))
    LanguageCode.add_member(:si_lk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SI_LK', traits: {"smithy.api#enumValue" => "si-LK"}))
    LanguageCode.add_member(:sk_sk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SK_SK', traits: {"smithy.api#enumValue" => "sk-SK"}))
    LanguageCode.add_member(:sl_si, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SL_SI', traits: {"smithy.api#enumValue" => "sl-SI"}))
    LanguageCode.add_member(:so_so, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SO_SO', traits: {"smithy.api#enumValue" => "so-SO"}))
    LanguageCode.add_member(:sr_rs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SR_RS', traits: {"smithy.api#enumValue" => "sr-RS"}))
    LanguageCode.add_member(:su_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SU_ID', traits: {"smithy.api#enumValue" => "su-ID"}))
    LanguageCode.add_member(:sw_bi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SW_BI', traits: {"smithy.api#enumValue" => "sw-BI"}))
    LanguageCode.add_member(:sw_ke, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SW_KE', traits: {"smithy.api#enumValue" => "sw-KE"}))
    LanguageCode.add_member(:sw_rw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SW_RW', traits: {"smithy.api#enumValue" => "sw-RW"}))
    LanguageCode.add_member(:sw_tz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SW_TZ', traits: {"smithy.api#enumValue" => "sw-TZ"}))
    LanguageCode.add_member(:sw_ug, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SW_UG', traits: {"smithy.api#enumValue" => "sw-UG"}))
    LanguageCode.add_member(:tl_ph, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TL_PH', traits: {"smithy.api#enumValue" => "tl-PH"}))
    LanguageCode.add_member(:tt_ru, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TT_RU', traits: {"smithy.api#enumValue" => "tt-RU"}))
    LanguageCode.add_member(:ug_cn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UG_CN', traits: {"smithy.api#enumValue" => "ug-CN"}))
    LanguageCode.add_member(:uk_ua, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UK_UA', traits: {"smithy.api#enumValue" => "uk-UA"}))
    LanguageCode.add_member(:uz_uz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UZ_UZ', traits: {"smithy.api#enumValue" => "uz-UZ"}))
    LanguageCode.add_member(:wo_sn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WO_SN', traits: {"smithy.api#enumValue" => "wo-SN"}))
    LanguageCode.add_member(:zh_hk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZH_HK', traits: {"smithy.api#enumValue" => "zh-HK"}))
    LanguageCode.add_member(:zu_za, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZU_ZA', traits: {"smithy.api#enumValue" => "zu-ZA"}))
    LanguageCodeItem.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    LanguageCodeItem.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: 'DurationInSeconds'))
    LanguageCodeItem.type = Types::LanguageCodeItem
    LanguageCodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeItem)
    LanguageIdSettings.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName'))
    LanguageIdSettings.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'VocabularyFilterName'))
    LanguageIdSettings.add_member(:language_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'LanguageModelName'))
    LanguageIdSettings.type = Types::LanguageIdSettings
    LanguageIdSettingsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode)
    LanguageIdSettingsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageIdSettings)
    LanguageModel.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName'))
    LanguageModel.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreateTime'))
    LanguageModel.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastModifiedTime'))
    LanguageModel.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CLMLanguageCode, location_name: 'LanguageCode'))
    LanguageModel.add_member(:base_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseModelName, location_name: 'BaseModelName'))
    LanguageModel.add_member(:model_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'ModelStatus'))
    LanguageModel.add_member(:upgrade_availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UpgradeAvailability'))
    LanguageModel.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    LanguageModel.add_member(:input_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig'))
    LanguageModel.type = Types::LanguageModel
    LanguageOptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    ListCallAnalyticsCategoriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListCallAnalyticsCategoriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListCallAnalyticsCategoriesRequest.type = Types::ListCallAnalyticsCategoriesRequest
    ListCallAnalyticsCategoriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListCallAnalyticsCategoriesResponse.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryPropertiesList, location_name: 'Categories'))
    ListCallAnalyticsCategoriesResponse.type = Types::ListCallAnalyticsCategoriesResponse
    ListCallAnalyticsJobsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobStatus, location_name: 'Status', traits: {"smithy.api#httpQuery" => "Status"}))
    ListCallAnalyticsJobsRequest.add_member(:job_name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobName, location_name: 'JobNameContains', traits: {"smithy.api#httpQuery" => "JobNameContains"}))
    ListCallAnalyticsJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListCallAnalyticsJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListCallAnalyticsJobsRequest.type = Types::ListCallAnalyticsJobsRequest
    ListCallAnalyticsJobsResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobStatus, location_name: 'Status'))
    ListCallAnalyticsJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListCallAnalyticsJobsResponse.add_member(:call_analytics_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobSummaries, location_name: 'CallAnalyticsJobSummaries'))
    ListCallAnalyticsJobsResponse.type = Types::ListCallAnalyticsJobsResponse
    ListLanguageModelsRequest.add_member(:status_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'StatusEquals', traits: {"smithy.api#httpQuery" => "         StatusEquals"}))
    ListLanguageModelsRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'NameContains', traits: {"smithy.api#httpQuery" => "NameContains"}))
    ListLanguageModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListLanguageModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListLanguageModelsRequest.type = Types::ListLanguageModelsRequest
    ListLanguageModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListLanguageModelsResponse.add_member(:models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Models, location_name: 'Models'))
    ListLanguageModelsResponse.type = Types::ListLanguageModelsResponse
    ListMedicalScribeJobsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeJobStatus, location_name: 'Status', traits: {"smithy.api#httpQuery" => "Status"}))
    ListMedicalScribeJobsRequest.add_member(:job_name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'JobNameContains', traits: {"smithy.api#httpQuery" => "JobNameContains"}))
    ListMedicalScribeJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListMedicalScribeJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListMedicalScribeJobsRequest.type = Types::ListMedicalScribeJobsRequest
    ListMedicalScribeJobsResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeJobStatus, location_name: 'Status'))
    ListMedicalScribeJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListMedicalScribeJobsResponse.add_member(:medical_scribe_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeJobSummaries, location_name: 'MedicalScribeJobSummaries'))
    ListMedicalScribeJobsResponse.type = Types::ListMedicalScribeJobsResponse
    ListMedicalTranscriptionJobsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: 'Status', traits: {"smithy.api#httpQuery" => "Status"}))
    ListMedicalTranscriptionJobsRequest.add_member(:job_name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'JobNameContains', traits: {"smithy.api#httpQuery" => "JobNameContains"}))
    ListMedicalTranscriptionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListMedicalTranscriptionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListMedicalTranscriptionJobsRequest.type = Types::ListMedicalTranscriptionJobsRequest
    ListMedicalTranscriptionJobsResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: 'Status'))
    ListMedicalTranscriptionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListMedicalTranscriptionJobsResponse.add_member(:medical_transcription_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalTranscriptionJobSummaries, location_name: 'MedicalTranscriptionJobSummaries'))
    ListMedicalTranscriptionJobsResponse.type = Types::ListMedicalTranscriptionJobsResponse
    ListMedicalVocabulariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListMedicalVocabulariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListMedicalVocabulariesRequest.add_member(:state_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyState, location_name: 'StateEquals', traits: {"smithy.api#httpQuery" => "StateEquals"}))
    ListMedicalVocabulariesRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'NameContains', traits: {"smithy.api#httpQuery" => "NameContains"}))
    ListMedicalVocabulariesRequest.type = Types::ListMedicalVocabulariesRequest
    ListMedicalVocabulariesResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyState, location_name: 'Status'))
    ListMedicalVocabulariesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListMedicalVocabulariesResponse.add_member(:vocabularies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Vocabularies, location_name: 'Vocabularies'))
    ListMedicalVocabulariesResponse.type = Types::ListMedicalVocabulariesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeArn, location_name: 'ResourceArn'))
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTranscriptionJobsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: 'Status', traits: {"smithy.api#httpQuery" => "Status"}))
    ListTranscriptionJobsRequest.add_member(:job_name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'JobNameContains', traits: {"smithy.api#httpQuery" => "JobNameContains"}))
    ListTranscriptionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListTranscriptionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListTranscriptionJobsRequest.type = Types::ListTranscriptionJobsRequest
    ListTranscriptionJobsResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: 'Status'))
    ListTranscriptionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTranscriptionJobsResponse.add_member(:transcription_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobSummaries, location_name: 'TranscriptionJobSummaries'))
    ListTranscriptionJobsResponse.type = Types::ListTranscriptionJobsResponse
    ListVocabulariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListVocabulariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListVocabulariesRequest.add_member(:state_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyState, location_name: 'StateEquals', traits: {"smithy.api#httpQuery" => "StateEquals"}))
    ListVocabulariesRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'NameContains', traits: {"smithy.api#httpQuery" => "NameContains"}))
    ListVocabulariesRequest.type = Types::ListVocabulariesRequest
    ListVocabulariesResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyState, location_name: 'Status'))
    ListVocabulariesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListVocabulariesResponse.add_member(:vocabularies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Vocabularies, location_name: 'Vocabularies'))
    ListVocabulariesResponse.type = Types::ListVocabulariesResponse
    ListVocabularyFiltersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListVocabularyFiltersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListVocabularyFiltersRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'NameContains', traits: {"smithy.api#httpQuery" => "NameContains"}))
    ListVocabularyFiltersRequest.type = Types::ListVocabularyFiltersRequest
    ListVocabularyFiltersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListVocabularyFiltersResponse.add_member(:vocabulary_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilters, location_name: 'VocabularyFilters'))
    ListVocabularyFiltersResponse.type = Types::ListVocabularyFiltersResponse
    Media.add_member(:media_file_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'MediaFileUri'))
    Media.add_member(:redacted_media_file_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'RedactedMediaFileUri'))
    Media.type = Types::Media
    MediaFormat.add_member(:mp3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MP3', traits: {"smithy.api#enumValue" => "mp3"}))
    MediaFormat.add_member(:mp4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MP4', traits: {"smithy.api#enumValue" => "mp4"}))
    MediaFormat.add_member(:wav, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAV', traits: {"smithy.api#enumValue" => "wav"}))
    MediaFormat.add_member(:flac, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLAC', traits: {"smithy.api#enumValue" => "flac"}))
    MediaFormat.add_member(:ogg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OGG', traits: {"smithy.api#enumValue" => "ogg"}))
    MediaFormat.add_member(:amr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMR', traits: {"smithy.api#enumValue" => "amr"}))
    MediaFormat.add_member(:webm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEBM', traits: {"smithy.api#enumValue" => "webm"}))
    MediaFormat.add_member(:m4_a, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'M4A', traits: {"smithy.api#enumValue" => "m4a"}))
    MedicalContentIdentificationType.add_member(:phi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHI', traits: {"smithy.api#enumValue" => "PHI"}))
    MedicalScribeChannelDefinition.add_member(:channel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeChannelId, location_name: 'ChannelId', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MedicalScribeChannelDefinition.add_member(:participant_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeParticipantRole, location_name: 'ParticipantRole', traits: {"smithy.api#required" => {}}))
    MedicalScribeChannelDefinition.type = Types::MedicalScribeChannelDefinition
    MedicalScribeChannelDefinitions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeChannelDefinition)
    MedicalScribeContext.add_member(:patient_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribePatientContext, location_name: 'PatientContext'))
    MedicalScribeContext.type = Types::MedicalScribeContext
    MedicalScribeJob.add_member(:medical_scribe_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'MedicalScribeJobName'))
    MedicalScribeJob.add_member(:medical_scribe_job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeJobStatus, location_name: 'MedicalScribeJobStatus'))
    MedicalScribeJob.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeLanguageCode, location_name: 'LanguageCode'))
    MedicalScribeJob.add_member(:media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Media, location_name: 'Media'))
    MedicalScribeJob.add_member(:medical_scribe_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeOutput, location_name: 'MedicalScribeOutput'))
    MedicalScribeJob.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime'))
    MedicalScribeJob.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTime'))
    MedicalScribeJob.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CompletionTime'))
    MedicalScribeJob.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    MedicalScribeJob.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeSettings, location_name: 'Settings'))
    MedicalScribeJob.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: 'DataAccessRoleArn'))
    MedicalScribeJob.add_member(:channel_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeChannelDefinitions, location_name: 'ChannelDefinitions'))
    MedicalScribeJob.add_member(:medical_scribe_context_provided, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MedicalScribeContextProvided'))
    MedicalScribeJob.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    MedicalScribeJob.type = Types::MedicalScribeJob
    MedicalScribeJobStatus.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    MedicalScribeJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    MedicalScribeJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    MedicalScribeJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    MedicalScribeJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeJobSummary)
    MedicalScribeJobSummary.add_member(:medical_scribe_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'MedicalScribeJobName'))
    MedicalScribeJobSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTime'))
    MedicalScribeJobSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime'))
    MedicalScribeJobSummary.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CompletionTime'))
    MedicalScribeJobSummary.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeLanguageCode, location_name: 'LanguageCode'))
    MedicalScribeJobSummary.add_member(:medical_scribe_job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeJobStatus, location_name: 'MedicalScribeJobStatus'))
    MedicalScribeJobSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    MedicalScribeJobSummary.type = Types::MedicalScribeJobSummary
    MedicalScribeLanguageCode.add_member(:en_us, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_US', traits: {"smithy.api#enumValue" => "en-US"}))
    MedicalScribeNoteTemplate.add_member(:history_and_physical, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HISTORY_AND_PHYSICAL', traits: {"smithy.api#enumValue" => "HISTORY_AND_PHYSICAL"}))
    MedicalScribeNoteTemplate.add_member(:girpp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIRPP', traits: {"smithy.api#enumValue" => "GIRPP"}))
    MedicalScribeNoteTemplate.add_member(:birp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BIRP', traits: {"smithy.api#enumValue" => "BIRP"}))
    MedicalScribeNoteTemplate.add_member(:sirp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIRP', traits: {"smithy.api#enumValue" => "SIRP"}))
    MedicalScribeNoteTemplate.add_member(:dap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAP', traits: {"smithy.api#enumValue" => "DAP"}))
    MedicalScribeNoteTemplate.add_member(:behavioral_soap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEHAVIORAL_SOAP', traits: {"smithy.api#enumValue" => "BEHAVIORAL_SOAP"}))
    MedicalScribeNoteTemplate.add_member(:physical_soap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHYSICAL_SOAP', traits: {"smithy.api#enumValue" => "PHYSICAL_SOAP"}))
    MedicalScribeOutput.add_member(:transcript_file_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'TranscriptFileUri', traits: {"smithy.api#required" => {}}))
    MedicalScribeOutput.add_member(:clinical_document_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'ClinicalDocumentUri', traits: {"smithy.api#required" => {}}))
    MedicalScribeOutput.type = Types::MedicalScribeOutput
    MedicalScribeParticipantRole.add_member(:patient, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PATIENT', traits: {"smithy.api#enumValue" => "PATIENT"}))
    MedicalScribeParticipantRole.add_member(:clinician, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLINICIAN', traits: {"smithy.api#enumValue" => "CLINICIAN"}))
    MedicalScribePatientContext.add_member(:pronouns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pronouns, location_name: 'Pronouns'))
    MedicalScribePatientContext.type = Types::MedicalScribePatientContext
    MedicalScribeSettings.add_member(:show_speaker_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ShowSpeakerLabels'))
    MedicalScribeSettings.add_member(:max_speaker_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSpeakers, location_name: 'MaxSpeakerLabels'))
    MedicalScribeSettings.add_member(:channel_identification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ChannelIdentification'))
    MedicalScribeSettings.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName'))
    MedicalScribeSettings.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'VocabularyFilterName'))
    MedicalScribeSettings.add_member(:vocabulary_filter_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterMethod, location_name: 'VocabularyFilterMethod'))
    MedicalScribeSettings.add_member(:clinical_note_generation_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClinicalNoteGenerationSettings, location_name: 'ClinicalNoteGenerationSettings'))
    MedicalScribeSettings.type = Types::MedicalScribeSettings
    MedicalTranscript.add_member(:transcript_file_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'TranscriptFileUri'))
    MedicalTranscript.type = Types::MedicalTranscript
    MedicalTranscriptionJob.add_member(:medical_transcription_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'MedicalTranscriptionJobName'))
    MedicalTranscriptionJob.add_member(:transcription_job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: 'TranscriptionJobStatus'))
    MedicalTranscriptionJob.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    MedicalTranscriptionJob.add_member(:media_sample_rate_hertz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalMediaSampleRateHertz, location_name: 'MediaSampleRateHertz'))
    MedicalTranscriptionJob.add_member(:media_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaFormat, location_name: 'MediaFormat'))
    MedicalTranscriptionJob.add_member(:media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Media, location_name: 'Media'))
    MedicalTranscriptionJob.add_member(:transcript, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalTranscript, location_name: 'Transcript'))
    MedicalTranscriptionJob.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime'))
    MedicalTranscriptionJob.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTime'))
    MedicalTranscriptionJob.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CompletionTime'))
    MedicalTranscriptionJob.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    MedicalTranscriptionJob.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalTranscriptionSetting, location_name: 'Settings'))
    MedicalTranscriptionJob.add_member(:content_identification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalContentIdentificationType, location_name: 'ContentIdentificationType'))
    MedicalTranscriptionJob.add_member(:specialty, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Specialty, location_name: 'Specialty'))
    MedicalTranscriptionJob.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type'))
    MedicalTranscriptionJob.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    MedicalTranscriptionJob.type = Types::MedicalTranscriptionJob
    MedicalTranscriptionJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalTranscriptionJobSummary)
    MedicalTranscriptionJobSummary.add_member(:medical_transcription_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'MedicalTranscriptionJobName'))
    MedicalTranscriptionJobSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTime'))
    MedicalTranscriptionJobSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime'))
    MedicalTranscriptionJobSummary.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CompletionTime'))
    MedicalTranscriptionJobSummary.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    MedicalTranscriptionJobSummary.add_member(:transcription_job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: 'TranscriptionJobStatus'))
    MedicalTranscriptionJobSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    MedicalTranscriptionJobSummary.add_member(:output_location_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocationType, location_name: 'OutputLocationType'))
    MedicalTranscriptionJobSummary.add_member(:specialty, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Specialty, location_name: 'Specialty'))
    MedicalTranscriptionJobSummary.add_member(:content_identification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalContentIdentificationType, location_name: 'ContentIdentificationType'))
    MedicalTranscriptionJobSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type'))
    MedicalTranscriptionJobSummary.type = Types::MedicalTranscriptionJobSummary
    MedicalTranscriptionSetting.add_member(:show_speaker_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ShowSpeakerLabels'))
    MedicalTranscriptionSetting.add_member(:max_speaker_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSpeakers, location_name: 'MaxSpeakerLabels'))
    MedicalTranscriptionSetting.add_member(:channel_identification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ChannelIdentification'))
    MedicalTranscriptionSetting.add_member(:show_alternatives, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ShowAlternatives'))
    MedicalTranscriptionSetting.add_member(:max_alternatives, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxAlternatives, location_name: 'MaxAlternatives'))
    MedicalTranscriptionSetting.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName'))
    MedicalTranscriptionSetting.type = Types::MedicalTranscriptionSetting
    ModelSettings.add_member(:language_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'LanguageModelName'))
    ModelSettings.type = Types::ModelSettings
    ModelStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ModelStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ModelStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    Models.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageModel)
    NonTalkTimeFilter.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampMilliseconds, location_name: 'Threshold'))
    NonTalkTimeFilter.add_member(:absolute_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbsoluteTimeRange, location_name: 'AbsoluteTimeRange'))
    NonTalkTimeFilter.add_member(:relative_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativeTimeRange, location_name: 'RelativeTimeRange'))
    NonTalkTimeFilter.add_member(:negate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Negate'))
    NonTalkTimeFilter.type = Types::NonTalkTimeFilter
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NotFoundException.type = Types::NotFoundException
    OutputLocationType.add_member(:customer_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_BUCKET', traits: {"smithy.api#enumValue" => "CUSTOMER_BUCKET"}))
    OutputLocationType.add_member(:service_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_BUCKET', traits: {"smithy.api#enumValue" => "SERVICE_BUCKET"}))
    ParticipantRole.add_member(:agent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGENT', traits: {"smithy.api#enumValue" => "AGENT"}))
    ParticipantRole.add_member(:customer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER', traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    Phrases.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Phrase)
    PiiEntityType.add_member(:bank_account_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BANK_ACCOUNT_NUMBER', traits: {"smithy.api#enumValue" => "BANK_ACCOUNT_NUMBER"}))
    PiiEntityType.add_member(:bank_routing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BANK_ROUTING', traits: {"smithy.api#enumValue" => "BANK_ROUTING"}))
    PiiEntityType.add_member(:credit_debit_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREDIT_DEBIT_NUMBER', traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_NUMBER"}))
    PiiEntityType.add_member(:credit_debit_cvv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREDIT_DEBIT_CVV', traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CVV"}))
    PiiEntityType.add_member(:credit_debit_expiry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREDIT_DEBIT_EXPIRY', traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_EXPIRY"}))
    PiiEntityType.add_member(:pin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PIN', traits: {"smithy.api#enumValue" => "PIN"}))
    PiiEntityType.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    PiiEntityType.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDRESS', traits: {"smithy.api#enumValue" => "ADDRESS"}))
    PiiEntityType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAME', traits: {"smithy.api#enumValue" => "NAME"}))
    PiiEntityType.add_member(:phone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE', traits: {"smithy.api#enumValue" => "PHONE"}))
    PiiEntityType.add_member(:ssn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSN', traits: {"smithy.api#enumValue" => "SSN"}))
    PiiEntityType.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    PiiEntityTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntityType)
    Pronouns.add_member(:he_him, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HE_HIM', traits: {"smithy.api#enumValue" => "HE_HIM"}))
    Pronouns.add_member(:she_her, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHE_HER', traits: {"smithy.api#enumValue" => "SHE_HER"}))
    Pronouns.add_member(:they_them, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THEY_THEM', traits: {"smithy.api#enumValue" => "THEY_THEM"}))
    RedactionOutput.add_member(:redacted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDACTED', traits: {"smithy.api#enumValue" => "redacted"}))
    RedactionOutput.add_member(:redacted_and_unredacted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDACTED_AND_UNREDACTED', traits: {"smithy.api#enumValue" => "redacted_and_unredacted"}))
    RedactionType.add_member(:pii, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PII', traits: {"smithy.api#enumValue" => "PII"}))
    RelativeTimeRange.add_member(:start_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'StartPercentage'))
    RelativeTimeRange.add_member(:end_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'EndPercentage'))
    RelativeTimeRange.add_member(:first, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'First'))
    RelativeTimeRange.add_member(:last, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'Last'))
    RelativeTimeRange.type = Types::RelativeTimeRange
    Rule.add_member(:non_talk_time_filter, Types::Rule::NonTalkTimeFilter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonTalkTimeFilter, location_name: 'NonTalkTimeFilter'))
    Rule.add_member(:interruption_filter, Types::Rule::InterruptionFilter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterruptionFilter, location_name: 'InterruptionFilter'))
    Rule.add_member(:transcript_filter, Types::Rule::TranscriptFilter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptFilter, location_name: 'TranscriptFilter'))
    Rule.add_member(:sentiment_filter, Types::Rule::SentimentFilter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentFilter, location_name: 'SentimentFilter'))
    Rule.add_member(:unknown, Types::Rule::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Rule.type = Types::Rule
    RuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rule)
    SentimentFilter.add_member(:sentiments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentValueList, location_name: 'Sentiments', traits: {"smithy.api#required" => {}}))
    SentimentFilter.add_member(:absolute_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbsoluteTimeRange, location_name: 'AbsoluteTimeRange'))
    SentimentFilter.add_member(:relative_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativeTimeRange, location_name: 'RelativeTimeRange'))
    SentimentFilter.add_member(:participant_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRole, location_name: 'ParticipantRole'))
    SentimentFilter.add_member(:negate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Negate'))
    SentimentFilter.type = Types::SentimentFilter
    SentimentValue.add_member(:positive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSITIVE', traits: {"smithy.api#enumValue" => "POSITIVE"}))
    SentimentValue.add_member(:negative, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEGATIVE', traits: {"smithy.api#enumValue" => "NEGATIVE"}))
    SentimentValue.add_member(:neutral, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEUTRAL', traits: {"smithy.api#enumValue" => "NEUTRAL"}))
    SentimentValue.add_member(:mixed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIXED', traits: {"smithy.api#enumValue" => "MIXED"}))
    SentimentValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentValue)
    Settings.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName'))
    Settings.add_member(:show_speaker_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ShowSpeakerLabels'))
    Settings.add_member(:max_speaker_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSpeakers, location_name: 'MaxSpeakerLabels'))
    Settings.add_member(:channel_identification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ChannelIdentification'))
    Settings.add_member(:show_alternatives, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ShowAlternatives'))
    Settings.add_member(:max_alternatives, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxAlternatives, location_name: 'MaxAlternatives'))
    Settings.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'VocabularyFilterName'))
    Settings.add_member(:vocabulary_filter_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterMethod, location_name: 'VocabularyFilterMethod'))
    Settings.type = Types::Settings
    Specialty.add_member(:primarycare, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIMARYCARE', traits: {"smithy.api#enumValue" => "PRIMARYCARE"}))
    StartCallAnalyticsJobRequest.add_member(:call_analytics_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobName, location_name: 'CallAnalyticsJobName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCallAnalyticsJobRequest.add_member(:media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Media, location_name: 'Media', traits: {"smithy.api#required" => {}}))
    StartCallAnalyticsJobRequest.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'OutputLocation'))
    StartCallAnalyticsJobRequest.add_member(:output_encryption_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyId, location_name: 'OutputEncryptionKMSKeyId'))
    StartCallAnalyticsJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: 'DataAccessRoleArn'))
    StartCallAnalyticsJobRequest.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJobSettings, location_name: 'Settings'))
    StartCallAnalyticsJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    StartCallAnalyticsJobRequest.add_member(:channel_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelDefinitions, location_name: 'ChannelDefinitions'))
    StartCallAnalyticsJobRequest.type = Types::StartCallAnalyticsJobRequest
    StartCallAnalyticsJobResponse.add_member(:call_analytics_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsJob, location_name: 'CallAnalyticsJob'))
    StartCallAnalyticsJobResponse.type = Types::StartCallAnalyticsJobResponse
    StartMedicalScribeJobRequest.add_member(:medical_scribe_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'MedicalScribeJobName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartMedicalScribeJobRequest.add_member(:media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Media, location_name: 'Media', traits: {"smithy.api#required" => {}}))
    StartMedicalScribeJobRequest.add_member(:output_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputBucketName, location_name: 'OutputBucketName', traits: {"smithy.api#required" => {}}))
    StartMedicalScribeJobRequest.add_member(:output_encryption_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyId, location_name: 'OutputEncryptionKMSKeyId'))
    StartMedicalScribeJobRequest.add_member(:kms_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSEncryptionContextMap, location_name: 'KMSEncryptionContext'))
    StartMedicalScribeJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#required" => {}}))
    StartMedicalScribeJobRequest.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeSettings, location_name: 'Settings', traits: {"smithy.api#required" => {}}))
    StartMedicalScribeJobRequest.add_member(:channel_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeChannelDefinitions, location_name: 'ChannelDefinitions'))
    StartMedicalScribeJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    StartMedicalScribeJobRequest.add_member(:medical_scribe_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeContext, location_name: 'MedicalScribeContext'))
    StartMedicalScribeJobRequest.type = Types::StartMedicalScribeJobRequest
    StartMedicalScribeJobResponse.add_member(:medical_scribe_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalScribeJob, location_name: 'MedicalScribeJob'))
    StartMedicalScribeJobResponse.type = Types::StartMedicalScribeJobResponse
    StartMedicalTranscriptionJobRequest.add_member(:medical_transcription_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'MedicalTranscriptionJobName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartMedicalTranscriptionJobRequest.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#required" => {}}))
    StartMedicalTranscriptionJobRequest.add_member(:media_sample_rate_hertz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalMediaSampleRateHertz, location_name: 'MediaSampleRateHertz'))
    StartMedicalTranscriptionJobRequest.add_member(:media_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaFormat, location_name: 'MediaFormat'))
    StartMedicalTranscriptionJobRequest.add_member(:media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Media, location_name: 'Media', traits: {"smithy.api#required" => {}}))
    StartMedicalTranscriptionJobRequest.add_member(:output_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputBucketName, location_name: 'OutputBucketName', traits: {"smithy.api#required" => {}}))
    StartMedicalTranscriptionJobRequest.add_member(:output_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputKey, location_name: 'OutputKey'))
    StartMedicalTranscriptionJobRequest.add_member(:output_encryption_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyId, location_name: 'OutputEncryptionKMSKeyId'))
    StartMedicalTranscriptionJobRequest.add_member(:kms_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSEncryptionContextMap, location_name: 'KMSEncryptionContext'))
    StartMedicalTranscriptionJobRequest.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalTranscriptionSetting, location_name: 'Settings'))
    StartMedicalTranscriptionJobRequest.add_member(:content_identification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalContentIdentificationType, location_name: 'ContentIdentificationType'))
    StartMedicalTranscriptionJobRequest.add_member(:specialty, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Specialty, location_name: 'Specialty', traits: {"smithy.api#required" => {}}))
    StartMedicalTranscriptionJobRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    StartMedicalTranscriptionJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    StartMedicalTranscriptionJobRequest.type = Types::StartMedicalTranscriptionJobRequest
    StartMedicalTranscriptionJobResponse.add_member(:medical_transcription_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MedicalTranscriptionJob, location_name: 'MedicalTranscriptionJob'))
    StartMedicalTranscriptionJobResponse.type = Types::StartMedicalTranscriptionJobResponse
    StartTranscriptionJobRequest.add_member(:transcription_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'TranscriptionJobName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartTranscriptionJobRequest.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    StartTranscriptionJobRequest.add_member(:media_sample_rate_hertz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaSampleRateHertz, location_name: 'MediaSampleRateHertz'))
    StartTranscriptionJobRequest.add_member(:media_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaFormat, location_name: 'MediaFormat'))
    StartTranscriptionJobRequest.add_member(:media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Media, location_name: 'Media', traits: {"smithy.api#required" => {}}))
    StartTranscriptionJobRequest.add_member(:output_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputBucketName, location_name: 'OutputBucketName'))
    StartTranscriptionJobRequest.add_member(:output_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputKey, location_name: 'OutputKey'))
    StartTranscriptionJobRequest.add_member(:output_encryption_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyId, location_name: 'OutputEncryptionKMSKeyId'))
    StartTranscriptionJobRequest.add_member(:kms_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSEncryptionContextMap, location_name: 'KMSEncryptionContext'))
    StartTranscriptionJobRequest.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Settings, location_name: 'Settings'))
    StartTranscriptionJobRequest.add_member(:model_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelSettings, location_name: 'ModelSettings'))
    StartTranscriptionJobRequest.add_member(:job_execution_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionSettings, location_name: 'JobExecutionSettings'))
    StartTranscriptionJobRequest.add_member(:content_redaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentRedaction, location_name: 'ContentRedaction'))
    StartTranscriptionJobRequest.add_member(:identify_language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IdentifyLanguage'))
    StartTranscriptionJobRequest.add_member(:identify_multiple_languages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IdentifyMultipleLanguages'))
    StartTranscriptionJobRequest.add_member(:language_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageOptions, location_name: 'LanguageOptions'))
    StartTranscriptionJobRequest.add_member(:subtitles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subtitles, location_name: 'Subtitles'))
    StartTranscriptionJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    StartTranscriptionJobRequest.add_member(:language_id_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageIdSettingsMap, location_name: 'LanguageIdSettings'))
    StartTranscriptionJobRequest.add_member(:toxicity_detection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToxicityDetection, location_name: 'ToxicityDetection'))
    StartTranscriptionJobRequest.type = Types::StartTranscriptionJobRequest
    StartTranscriptionJobResponse.add_member(:transcription_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJob, location_name: 'TranscriptionJob'))
    StartTranscriptionJobResponse.type = Types::StartTranscriptionJobResponse
    StringTargetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    SubtitleFileUris.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri)
    SubtitleFormat.add_member(:vtt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VTT', traits: {"smithy.api#enumValue" => "vtt"}))
    SubtitleFormat.add_member(:srt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SRT', traits: {"smithy.api#enumValue" => "srt"}))
    SubtitleFormats.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubtitleFormat)
    Subtitles.add_member(:formats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubtitleFormats, location_name: 'Formats'))
    Subtitles.add_member(:output_start_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubtitleOutputStartIndex, location_name: 'OutputStartIndex'))
    Subtitles.type = Types::Subtitles
    SubtitlesOutput.add_member(:formats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubtitleFormats, location_name: 'Formats'))
    SubtitlesOutput.add_member(:subtitle_file_uris, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubtitleFileUris, location_name: 'SubtitleFileUris'))
    SubtitlesOutput.add_member(:output_start_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubtitleOutputStartIndex, location_name: 'OutputStartIndex'))
    SubtitlesOutput.type = Types::SubtitlesOutput
    Summarization.add_member(:generate_abstractive_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'GenerateAbstractiveSummary', traits: {"smithy.api#required" => {}}))
    Summarization.type = Types::Summarization
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ToxicityCategories.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToxicityCategory)
    ToxicityCategory.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    ToxicityDetection.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToxicityDetectionSettings)
    ToxicityDetectionSettings.add_member(:toxicity_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToxicityCategories, location_name: 'ToxicityCategories', traits: {"smithy.api#required" => {}}))
    ToxicityDetectionSettings.type = Types::ToxicityDetectionSettings
    Transcript.add_member(:transcript_file_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'TranscriptFileUri'))
    Transcript.add_member(:redacted_transcript_file_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'RedactedTranscriptFileUri'))
    Transcript.type = Types::Transcript
    TranscriptFilter.add_member(:transcript_filter_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptFilterType, location_name: 'TranscriptFilterType', traits: {"smithy.api#required" => {}}))
    TranscriptFilter.add_member(:absolute_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbsoluteTimeRange, location_name: 'AbsoluteTimeRange'))
    TranscriptFilter.add_member(:relative_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativeTimeRange, location_name: 'RelativeTimeRange'))
    TranscriptFilter.add_member(:participant_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRole, location_name: 'ParticipantRole'))
    TranscriptFilter.add_member(:negate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Negate'))
    TranscriptFilter.add_member(:targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringTargetList, location_name: 'Targets', traits: {"smithy.api#required" => {}}))
    TranscriptFilter.type = Types::TranscriptFilter
    TranscriptFilterType.add_member(:exact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXACT', traits: {"smithy.api#enumValue" => "EXACT"}))
    TranscriptionJob.add_member(:transcription_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'TranscriptionJobName'))
    TranscriptionJob.add_member(:transcription_job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: 'TranscriptionJobStatus'))
    TranscriptionJob.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    TranscriptionJob.add_member(:media_sample_rate_hertz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaSampleRateHertz, location_name: 'MediaSampleRateHertz'))
    TranscriptionJob.add_member(:media_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaFormat, location_name: 'MediaFormat'))
    TranscriptionJob.add_member(:media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Media, location_name: 'Media'))
    TranscriptionJob.add_member(:transcript, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Transcript, location_name: 'Transcript'))
    TranscriptionJob.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime'))
    TranscriptionJob.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTime'))
    TranscriptionJob.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CompletionTime'))
    TranscriptionJob.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    TranscriptionJob.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Settings, location_name: 'Settings'))
    TranscriptionJob.add_member(:model_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelSettings, location_name: 'ModelSettings'))
    TranscriptionJob.add_member(:job_execution_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionSettings, location_name: 'JobExecutionSettings'))
    TranscriptionJob.add_member(:content_redaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentRedaction, location_name: 'ContentRedaction'))
    TranscriptionJob.add_member(:identify_language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IdentifyLanguage'))
    TranscriptionJob.add_member(:identify_multiple_languages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IdentifyMultipleLanguages'))
    TranscriptionJob.add_member(:language_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageOptions, location_name: 'LanguageOptions'))
    TranscriptionJob.add_member(:identified_language_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentifiedLanguageScore, location_name: 'IdentifiedLanguageScore'))
    TranscriptionJob.add_member(:language_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeList, location_name: 'LanguageCodes'))
    TranscriptionJob.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    TranscriptionJob.add_member(:subtitles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubtitlesOutput, location_name: 'Subtitles'))
    TranscriptionJob.add_member(:language_id_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageIdSettingsMap, location_name: 'LanguageIdSettings'))
    TranscriptionJob.add_member(:toxicity_detection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToxicityDetection, location_name: 'ToxicityDetection'))
    TranscriptionJob.type = Types::TranscriptionJob
    TranscriptionJobStatus.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    TranscriptionJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    TranscriptionJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    TranscriptionJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    TranscriptionJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobSummary)
    TranscriptionJobSummary.add_member(:transcription_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: 'TranscriptionJobName'))
    TranscriptionJobSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTime'))
    TranscriptionJobSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime'))
    TranscriptionJobSummary.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CompletionTime'))
    TranscriptionJobSummary.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    TranscriptionJobSummary.add_member(:transcription_job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: 'TranscriptionJobStatus'))
    TranscriptionJobSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    TranscriptionJobSummary.add_member(:output_location_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocationType, location_name: 'OutputLocationType'))
    TranscriptionJobSummary.add_member(:content_redaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentRedaction, location_name: 'ContentRedaction'))
    TranscriptionJobSummary.add_member(:model_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelSettings, location_name: 'ModelSettings'))
    TranscriptionJobSummary.add_member(:identify_language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IdentifyLanguage'))
    TranscriptionJobSummary.add_member(:identify_multiple_languages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IdentifyMultipleLanguages'))
    TranscriptionJobSummary.add_member(:identified_language_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentifiedLanguageScore, location_name: 'IdentifiedLanguageScore'))
    TranscriptionJobSummary.add_member(:language_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeList, location_name: 'LanguageCodes'))
    TranscriptionJobSummary.add_member(:toxicity_detection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToxicityDetection, location_name: 'ToxicityDetection'))
    TranscriptionJobSummary.type = Types::TranscriptionJobSummary
    Type.add_member(:conversation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONVERSATION', traits: {"smithy.api#enumValue" => "CONVERSATION"}))
    Type.add_member(:dictation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DICTATION', traits: {"smithy.api#enumValue" => "DICTATION"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateCallAnalyticsCategoryRequest.add_member(:category_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryName, location_name: 'CategoryName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCallAnalyticsCategoryRequest.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleList, location_name: 'Rules', traits: {"smithy.api#required" => {}}))
    UpdateCallAnalyticsCategoryRequest.add_member(:input_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputType, location_name: 'InputType'))
    UpdateCallAnalyticsCategoryRequest.type = Types::UpdateCallAnalyticsCategoryRequest
    UpdateCallAnalyticsCategoryResponse.add_member(:category_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryProperties, location_name: 'CategoryProperties'))
    UpdateCallAnalyticsCategoryResponse.type = Types::UpdateCallAnalyticsCategoryResponse
    UpdateMedicalVocabularyRequest.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMedicalVocabularyRequest.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#required" => {}}))
    UpdateMedicalVocabularyRequest.add_member(:vocabulary_file_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'VocabularyFileUri', traits: {"smithy.api#required" => {}}))
    UpdateMedicalVocabularyRequest.type = Types::UpdateMedicalVocabularyRequest
    UpdateMedicalVocabularyResponse.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName'))
    UpdateMedicalVocabularyResponse.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    UpdateMedicalVocabularyResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastModifiedTime'))
    UpdateMedicalVocabularyResponse.add_member(:vocabulary_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyState, location_name: 'VocabularyState'))
    UpdateMedicalVocabularyResponse.type = Types::UpdateMedicalVocabularyResponse
    UpdateVocabularyFilterRequest.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'VocabularyFilterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVocabularyFilterRequest.add_member(:words, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Words, location_name: 'Words'))
    UpdateVocabularyFilterRequest.add_member(:vocabulary_filter_file_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'VocabularyFilterFileUri'))
    UpdateVocabularyFilterRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: 'DataAccessRoleArn'))
    UpdateVocabularyFilterRequest.type = Types::UpdateVocabularyFilterRequest
    UpdateVocabularyFilterResponse.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'VocabularyFilterName'))
    UpdateVocabularyFilterResponse.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    UpdateVocabularyFilterResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastModifiedTime'))
    UpdateVocabularyFilterResponse.type = Types::UpdateVocabularyFilterResponse
    UpdateVocabularyRequest.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVocabularyRequest.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#required" => {}}))
    UpdateVocabularyRequest.add_member(:phrases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Phrases, location_name: 'Phrases'))
    UpdateVocabularyRequest.add_member(:vocabulary_file_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'VocabularyFileUri'))
    UpdateVocabularyRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: 'DataAccessRoleArn'))
    UpdateVocabularyRequest.type = Types::UpdateVocabularyRequest
    UpdateVocabularyResponse.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName'))
    UpdateVocabularyResponse.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    UpdateVocabularyResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastModifiedTime'))
    UpdateVocabularyResponse.add_member(:vocabulary_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyState, location_name: 'VocabularyState'))
    UpdateVocabularyResponse.type = Types::UpdateVocabularyResponse
    Vocabularies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyInfo)
    VocabularyFilterInfo.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'VocabularyFilterName'))
    VocabularyFilterInfo.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    VocabularyFilterInfo.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastModifiedTime'))
    VocabularyFilterInfo.type = Types::VocabularyFilterInfo
    VocabularyFilterMethod.add_member(:remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE', traits: {"smithy.api#enumValue" => "remove"}))
    VocabularyFilterMethod.add_member(:mask, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASK', traits: {"smithy.api#enumValue" => "mask"}))
    VocabularyFilterMethod.add_member(:tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG', traits: {"smithy.api#enumValue" => "tag"}))
    VocabularyFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterInfo)
    VocabularyInfo.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName'))
    VocabularyInfo.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode'))
    VocabularyInfo.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastModifiedTime'))
    VocabularyInfo.add_member(:vocabulary_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyState, location_name: 'VocabularyState'))
    VocabularyInfo.type = Types::VocabularyInfo
    VocabularyState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    VocabularyState.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    VocabularyState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    Words.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Word)

    Transcribe = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.transcribe#Transcribe"
      service.name = "Transcribe"
      service.version = "2017-10-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Transcribe", "arnNamespace" => "transcribe", "cloudFormationName" => "Transcribe", "cloudTrailEventSource" => "transcribe.amazonaws.com", "endpointPrefix" => "transcribe"}, "aws.auth#sigv4" => {"name" => "transcribe"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Transcribe Service"}
      service.add_operation(:create_call_analytics_category, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#CreateCallAnalyticsCategory"
        operation.name = "CreateCallAnalyticsCategory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCallAnalyticsCategoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCallAnalyticsCategoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/callanalyticscategories/{CategoryName}", "code" => 200}}
      end)
      service.add_operation(:create_language_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#CreateLanguageModel"
        operation.name = "CreateLanguageModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLanguageModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLanguageModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/languagemodels/{ModelName}", "code" => 200}}
      end)
      service.add_operation(:create_medical_vocabulary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#CreateMedicalVocabulary"
        operation.name = "CreateMedicalVocabulary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMedicalVocabularyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMedicalVocabularyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/medicalvocabularies/{VocabularyName}", "code" => 200}}
      end)
      service.add_operation(:create_vocabulary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#CreateVocabulary"
        operation.name = "CreateVocabulary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVocabularyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVocabularyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/vocabularies/{VocabularyName}", "code" => 200}}
      end)
      service.add_operation(:create_vocabulary_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#CreateVocabularyFilter"
        operation.name = "CreateVocabularyFilter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVocabularyFilterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVocabularyFilterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/vocabularyFilters/{VocabularyFilterName}", "code" => 201}}
      end)
      service.add_operation(:delete_call_analytics_category, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#DeleteCallAnalyticsCategory"
        operation.name = "DeleteCallAnalyticsCategory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCallAnalyticsCategoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCallAnalyticsCategoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/callanalyticscategories/{CategoryName}", "code" => 204}}
      end)
      service.add_operation(:delete_call_analytics_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#DeleteCallAnalyticsJob"
        operation.name = "DeleteCallAnalyticsJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCallAnalyticsJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCallAnalyticsJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/callanalyticsjobs/{CallAnalyticsJobName}", "code" => 204}}
      end)
      service.add_operation(:delete_language_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#DeleteLanguageModel"
        operation.name = "DeleteLanguageModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLanguageModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/languagemodels/{ModelName}", "code" => 204}}
      end)
      service.add_operation(:delete_medical_scribe_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#DeleteMedicalScribeJob"
        operation.name = "DeleteMedicalScribeJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMedicalScribeJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/medicalscribejobs/{MedicalScribeJobName}", "code" => 204}}
      end)
      service.add_operation(:delete_medical_transcription_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#DeleteMedicalTranscriptionJob"
        operation.name = "DeleteMedicalTranscriptionJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMedicalTranscriptionJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}", "code" => 204}}
      end)
      service.add_operation(:delete_medical_vocabulary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#DeleteMedicalVocabulary"
        operation.name = "DeleteMedicalVocabulary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMedicalVocabularyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/medicalvocabularies/{VocabularyName}", "code" => 204}}
      end)
      service.add_operation(:delete_transcription_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#DeleteTranscriptionJob"
        operation.name = "DeleteTranscriptionJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTranscriptionJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/transcriptionjobs/{TranscriptionJobName}", "code" => 204}}
      end)
      service.add_operation(:delete_vocabulary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#DeleteVocabulary"
        operation.name = "DeleteVocabulary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVocabularyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/vocabularies/{VocabularyName}", "code" => 204}}
      end)
      service.add_operation(:delete_vocabulary_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#DeleteVocabularyFilter"
        operation.name = "DeleteVocabularyFilter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVocabularyFilterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/vocabularyFilters/{VocabularyFilterName}", "code" => 204}}
      end)
      service.add_operation(:describe_language_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#DescribeLanguageModel"
        operation.name = "DescribeLanguageModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLanguageModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLanguageModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/languagemodels/{ModelName}", "code" => 200}}
      end)
      service.add_operation(:get_call_analytics_category, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#GetCallAnalyticsCategory"
        operation.name = "GetCallAnalyticsCategory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCallAnalyticsCategoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCallAnalyticsCategoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/callanalyticscategories/{CategoryName}", "code" => 200}}
      end)
      service.add_operation(:get_call_analytics_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#GetCallAnalyticsJob"
        operation.name = "GetCallAnalyticsJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCallAnalyticsJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCallAnalyticsJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/callanalyticsjobs/{CallAnalyticsJobName}", "code" => 200}}
      end)
      service.add_operation(:get_medical_scribe_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#GetMedicalScribeJob"
        operation.name = "GetMedicalScribeJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMedicalScribeJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMedicalScribeJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/medicalscribejobs/{MedicalScribeJobName}", "code" => 200}}
      end)
      service.add_operation(:get_medical_transcription_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#GetMedicalTranscriptionJob"
        operation.name = "GetMedicalTranscriptionJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMedicalTranscriptionJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMedicalTranscriptionJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}", "code" => 200}}
      end)
      service.add_operation(:get_medical_vocabulary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#GetMedicalVocabulary"
        operation.name = "GetMedicalVocabulary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMedicalVocabularyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMedicalVocabularyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/medicalvocabularies/{VocabularyName}", "code" => 200}}
      end)
      service.add_operation(:get_transcription_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#GetTranscriptionJob"
        operation.name = "GetTranscriptionJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTranscriptionJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTranscriptionJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/transcriptionjobs/{TranscriptionJobName}", "code" => 200}}
      end)
      service.add_operation(:get_vocabulary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#GetVocabulary"
        operation.name = "GetVocabulary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVocabularyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVocabularyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/vocabularies/{VocabularyName}", "code" => 200}}
      end)
      service.add_operation(:get_vocabulary_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#GetVocabularyFilter"
        operation.name = "GetVocabularyFilter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVocabularyFilterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVocabularyFilterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/vocabularyFilters/{VocabularyFilterName}", "code" => 200}}
      end)
      service.add_operation(:list_call_analytics_categories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#ListCallAnalyticsCategories"
        operation.name = "ListCallAnalyticsCategories"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCallAnalyticsCategoriesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCallAnalyticsCategoriesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/callanalyticscategories", "code" => 200}}
        operation[:paginator] = Paginators::ListCallAnalyticsCategories.new
      end)
      service.add_operation(:list_call_analytics_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#ListCallAnalyticsJobs"
        operation.name = "ListCallAnalyticsJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCallAnalyticsJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCallAnalyticsJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/callanalyticsjobs", "code" => 200}}
        operation[:paginator] = Paginators::ListCallAnalyticsJobs.new
      end)
      service.add_operation(:list_language_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#ListLanguageModels"
        operation.name = "ListLanguageModels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLanguageModelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLanguageModelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/languagemodels", "code" => 200}}
        operation[:paginator] = Paginators::ListLanguageModels.new
      end)
      service.add_operation(:list_medical_scribe_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#ListMedicalScribeJobs"
        operation.name = "ListMedicalScribeJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMedicalScribeJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMedicalScribeJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/medicalscribejobs", "code" => 200}}
        operation[:paginator] = Paginators::ListMedicalScribeJobs.new
      end)
      service.add_operation(:list_medical_transcription_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#ListMedicalTranscriptionJobs"
        operation.name = "ListMedicalTranscriptionJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMedicalTranscriptionJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMedicalTranscriptionJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/medicaltranscriptionjobs", "code" => 200}}
        operation[:paginator] = Paginators::ListMedicalTranscriptionJobs.new
      end)
      service.add_operation(:list_medical_vocabularies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#ListMedicalVocabularies"
        operation.name = "ListMedicalVocabularies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMedicalVocabulariesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMedicalVocabulariesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/medicalvocabularies", "code" => 200}}
        operation[:paginator] = Paginators::ListMedicalVocabularies.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_transcription_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#ListTranscriptionJobs"
        operation.name = "ListTranscriptionJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTranscriptionJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTranscriptionJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/transcriptionjobs", "code" => 200}}
        operation[:paginator] = Paginators::ListTranscriptionJobs.new
      end)
      service.add_operation(:list_vocabularies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#ListVocabularies"
        operation.name = "ListVocabularies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVocabulariesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVocabulariesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/vocabularies", "code" => 200}}
        operation[:paginator] = Paginators::ListVocabularies.new
      end)
      service.add_operation(:list_vocabulary_filters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#ListVocabularyFilters"
        operation.name = "ListVocabularyFilters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVocabularyFiltersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVocabularyFiltersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/vocabularyFilters", "code" => 200}}
        operation[:paginator] = Paginators::ListVocabularyFilters.new
      end)
      service.add_operation(:start_call_analytics_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#StartCallAnalyticsJob"
        operation.name = "StartCallAnalyticsJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCallAnalyticsJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCallAnalyticsJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/callanalyticsjobs/{CallAnalyticsJobName}", "code" => 200}}
      end)
      service.add_operation(:start_medical_scribe_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#StartMedicalScribeJob"
        operation.name = "StartMedicalScribeJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMedicalScribeJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMedicalScribeJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/medicalscribejobs/{MedicalScribeJobName}", "code" => 200}}
      end)
      service.add_operation(:start_medical_transcription_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#StartMedicalTranscriptionJob"
        operation.name = "StartMedicalTranscriptionJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMedicalTranscriptionJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMedicalTranscriptionJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}", "code" => 200}}
      end)
      service.add_operation(:start_transcription_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#StartTranscriptionJob"
        operation.name = "StartTranscriptionJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTranscriptionJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTranscriptionJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/transcriptionjobs/{TranscriptionJobName}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_call_analytics_category, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#UpdateCallAnalyticsCategory"
        operation.name = "UpdateCallAnalyticsCategory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCallAnalyticsCategoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCallAnalyticsCategoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/callanalyticscategories/{CategoryName}", "code" => 200}}
      end)
      service.add_operation(:update_medical_vocabulary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#UpdateMedicalVocabulary"
        operation.name = "UpdateMedicalVocabulary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMedicalVocabularyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMedicalVocabularyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/medicalvocabularies/{VocabularyName}", "code" => 200}}
      end)
      service.add_operation(:update_vocabulary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#UpdateVocabulary"
        operation.name = "UpdateVocabulary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVocabularyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVocabularyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/vocabularies/{VocabularyName}", "code" => 200}}
      end)
      service.add_operation(:update_vocabulary_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transcribe#UpdateVocabularyFilter"
        operation.name = "UpdateVocabularyFilter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVocabularyFilterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVocabularyFilterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/vocabularyFilters/{VocabularyFilterName}", "code" => 200}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
