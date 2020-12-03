# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TranscribeService
  # @api private
  module ClientApi

    include Seahorse::Model

    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BaseModelName = Shapes::StringShape.new(name: 'BaseModelName')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CLMLanguageCode = Shapes::StringShape.new(name: 'CLMLanguageCode')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentRedaction = Shapes::StructureShape.new(name: 'ContentRedaction')
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
    DeleteLanguageModelRequest = Shapes::StructureShape.new(name: 'DeleteLanguageModelRequest')
    DeleteMedicalTranscriptionJobRequest = Shapes::StructureShape.new(name: 'DeleteMedicalTranscriptionJobRequest')
    DeleteMedicalVocabularyRequest = Shapes::StructureShape.new(name: 'DeleteMedicalVocabularyRequest')
    DeleteTranscriptionJobRequest = Shapes::StructureShape.new(name: 'DeleteTranscriptionJobRequest')
    DeleteVocabularyFilterRequest = Shapes::StructureShape.new(name: 'DeleteVocabularyFilterRequest')
    DeleteVocabularyRequest = Shapes::StructureShape.new(name: 'DeleteVocabularyRequest')
    DescribeLanguageModelRequest = Shapes::StructureShape.new(name: 'DescribeLanguageModelRequest')
    DescribeLanguageModelResponse = Shapes::StructureShape.new(name: 'DescribeLanguageModelResponse')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
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
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    JobExecutionSettings = Shapes::StructureShape.new(name: 'JobExecutionSettings')
    KMSKeyId = Shapes::StringShape.new(name: 'KMSKeyId')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    LanguageModel = Shapes::StructureShape.new(name: 'LanguageModel')
    LanguageOptions = Shapes::ListShape.new(name: 'LanguageOptions')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListLanguageModelsRequest = Shapes::StructureShape.new(name: 'ListLanguageModelsRequest')
    ListLanguageModelsResponse = Shapes::StructureShape.new(name: 'ListLanguageModelsResponse')
    ListMedicalTranscriptionJobsRequest = Shapes::StructureShape.new(name: 'ListMedicalTranscriptionJobsRequest')
    ListMedicalTranscriptionJobsResponse = Shapes::StructureShape.new(name: 'ListMedicalTranscriptionJobsResponse')
    ListMedicalVocabulariesRequest = Shapes::StructureShape.new(name: 'ListMedicalVocabulariesRequest')
    ListMedicalVocabulariesResponse = Shapes::StructureShape.new(name: 'ListMedicalVocabulariesResponse')
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
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OutputBucketName = Shapes::StringShape.new(name: 'OutputBucketName')
    OutputKey = Shapes::StringShape.new(name: 'OutputKey')
    OutputLocationType = Shapes::StringShape.new(name: 'OutputLocationType')
    Phrase = Shapes::StringShape.new(name: 'Phrase')
    Phrases = Shapes::ListShape.new(name: 'Phrases')
    RedactionOutput = Shapes::StringShape.new(name: 'RedactionOutput')
    RedactionType = Shapes::StringShape.new(name: 'RedactionType')
    Settings = Shapes::StructureShape.new(name: 'Settings')
    Specialty = Shapes::StringShape.new(name: 'Specialty')
    StartMedicalTranscriptionJobRequest = Shapes::StructureShape.new(name: 'StartMedicalTranscriptionJobRequest')
    StartMedicalTranscriptionJobResponse = Shapes::StructureShape.new(name: 'StartMedicalTranscriptionJobResponse')
    StartTranscriptionJobRequest = Shapes::StructureShape.new(name: 'StartTranscriptionJobRequest')
    StartTranscriptionJobResponse = Shapes::StructureShape.new(name: 'StartTranscriptionJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    Transcript = Shapes::StructureShape.new(name: 'Transcript')
    TranscriptionJob = Shapes::StructureShape.new(name: 'TranscriptionJob')
    TranscriptionJobName = Shapes::StringShape.new(name: 'TranscriptionJobName')
    TranscriptionJobStatus = Shapes::StringShape.new(name: 'TranscriptionJobStatus')
    TranscriptionJobSummaries = Shapes::ListShape.new(name: 'TranscriptionJobSummaries')
    TranscriptionJobSummary = Shapes::StructureShape.new(name: 'TranscriptionJobSummary')
    Type = Shapes::StringShape.new(name: 'Type')
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

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ContentRedaction.add_member(:redaction_type, Shapes::ShapeRef.new(shape: RedactionType, required: true, location_name: "RedactionType"))
    ContentRedaction.add_member(:redaction_output, Shapes::ShapeRef.new(shape: RedactionOutput, required: true, location_name: "RedactionOutput"))
    ContentRedaction.struct_class = Types::ContentRedaction

    CreateLanguageModelRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: CLMLanguageCode, required: true, location_name: "LanguageCode"))
    CreateLanguageModelRequest.add_member(:base_model_name, Shapes::ShapeRef.new(shape: BaseModelName, required: true, location_name: "BaseModelName"))
    CreateLanguageModelRequest.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    CreateLanguageModelRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
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
    CreateVocabularyFilterRequest.struct_class = Types::CreateVocabularyFilterRequest

    CreateVocabularyFilterResponse.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: "VocabularyFilterName"))
    CreateVocabularyFilterResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    CreateVocabularyFilterResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    CreateVocabularyFilterResponse.struct_class = Types::CreateVocabularyFilterResponse

    CreateVocabularyRequest.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "VocabularyName"))
    CreateVocabularyRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    CreateVocabularyRequest.add_member(:phrases, Shapes::ShapeRef.new(shape: Phrases, location_name: "Phrases"))
    CreateVocabularyRequest.add_member(:vocabulary_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "VocabularyFileUri"))
    CreateVocabularyRequest.struct_class = Types::CreateVocabularyRequest

    CreateVocabularyResponse.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    CreateVocabularyResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    CreateVocabularyResponse.add_member(:vocabulary_state, Shapes::ShapeRef.new(shape: VocabularyState, location_name: "VocabularyState"))
    CreateVocabularyResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    CreateVocabularyResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    CreateVocabularyResponse.struct_class = Types::CreateVocabularyResponse

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

    JobExecutionSettings.add_member(:allow_deferred_execution, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowDeferredExecution"))
    JobExecutionSettings.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: DataAccessRoleArn, location_name: "DataAccessRoleArn"))
    JobExecutionSettings.struct_class = Types::JobExecutionSettings

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
    Media.struct_class = Types::Media

    MedicalTranscript.add_member(:transcript_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "TranscriptFileUri"))
    MedicalTranscript.struct_class = Types::MedicalTranscript

    MedicalTranscriptionJob.add_member(:medical_transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: "MedicalTranscriptionJobName"))
    MedicalTranscriptionJob.add_member(:transcription_job_status, Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: "TranscriptionJobStatus"))
    MedicalTranscriptionJob.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    MedicalTranscriptionJob.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MediaSampleRateHertz, location_name: "MediaSampleRateHertz"))
    MedicalTranscriptionJob.add_member(:media_format, Shapes::ShapeRef.new(shape: MediaFormat, location_name: "MediaFormat"))
    MedicalTranscriptionJob.add_member(:media, Shapes::ShapeRef.new(shape: Media, location_name: "Media"))
    MedicalTranscriptionJob.add_member(:transcript, Shapes::ShapeRef.new(shape: MedicalTranscript, location_name: "Transcript"))
    MedicalTranscriptionJob.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    MedicalTranscriptionJob.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    MedicalTranscriptionJob.add_member(:completion_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletionTime"))
    MedicalTranscriptionJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    MedicalTranscriptionJob.add_member(:settings, Shapes::ShapeRef.new(shape: MedicalTranscriptionSetting, location_name: "Settings"))
    MedicalTranscriptionJob.add_member(:specialty, Shapes::ShapeRef.new(shape: Specialty, location_name: "Specialty"))
    MedicalTranscriptionJob.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
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

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    Phrases.member = Shapes::ShapeRef.new(shape: Phrase)

    Settings.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    Settings.add_member(:show_speaker_labels, Shapes::ShapeRef.new(shape: Boolean, location_name: "ShowSpeakerLabels"))
    Settings.add_member(:max_speaker_labels, Shapes::ShapeRef.new(shape: MaxSpeakers, location_name: "MaxSpeakerLabels"))
    Settings.add_member(:channel_identification, Shapes::ShapeRef.new(shape: Boolean, location_name: "ChannelIdentification"))
    Settings.add_member(:show_alternatives, Shapes::ShapeRef.new(shape: Boolean, location_name: "ShowAlternatives"))
    Settings.add_member(:max_alternatives, Shapes::ShapeRef.new(shape: MaxAlternatives, location_name: "MaxAlternatives"))
    Settings.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: "VocabularyFilterName"))
    Settings.add_member(:vocabulary_filter_method, Shapes::ShapeRef.new(shape: VocabularyFilterMethod, location_name: "VocabularyFilterMethod"))
    Settings.struct_class = Types::Settings

    StartMedicalTranscriptionJobRequest.add_member(:medical_transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, required: true, location_name: "MedicalTranscriptionJobName"))
    StartMedicalTranscriptionJobRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    StartMedicalTranscriptionJobRequest.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MediaSampleRateHertz, location_name: "MediaSampleRateHertz"))
    StartMedicalTranscriptionJobRequest.add_member(:media_format, Shapes::ShapeRef.new(shape: MediaFormat, location_name: "MediaFormat"))
    StartMedicalTranscriptionJobRequest.add_member(:media, Shapes::ShapeRef.new(shape: Media, required: true, location_name: "Media"))
    StartMedicalTranscriptionJobRequest.add_member(:output_bucket_name, Shapes::ShapeRef.new(shape: OutputBucketName, required: true, location_name: "OutputBucketName"))
    StartMedicalTranscriptionJobRequest.add_member(:output_key, Shapes::ShapeRef.new(shape: OutputKey, location_name: "OutputKey"))
    StartMedicalTranscriptionJobRequest.add_member(:output_encryption_kms_key_id, Shapes::ShapeRef.new(shape: KMSKeyId, location_name: "OutputEncryptionKMSKeyId"))
    StartMedicalTranscriptionJobRequest.add_member(:settings, Shapes::ShapeRef.new(shape: MedicalTranscriptionSetting, location_name: "Settings"))
    StartMedicalTranscriptionJobRequest.add_member(:specialty, Shapes::ShapeRef.new(shape: Specialty, required: true, location_name: "Specialty"))
    StartMedicalTranscriptionJobRequest.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
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
    StartTranscriptionJobRequest.add_member(:settings, Shapes::ShapeRef.new(shape: Settings, location_name: "Settings"))
    StartTranscriptionJobRequest.add_member(:model_settings, Shapes::ShapeRef.new(shape: ModelSettings, location_name: "ModelSettings"))
    StartTranscriptionJobRequest.add_member(:job_execution_settings, Shapes::ShapeRef.new(shape: JobExecutionSettings, location_name: "JobExecutionSettings"))
    StartTranscriptionJobRequest.add_member(:content_redaction, Shapes::ShapeRef.new(shape: ContentRedaction, location_name: "ContentRedaction"))
    StartTranscriptionJobRequest.add_member(:identify_language, Shapes::ShapeRef.new(shape: Boolean, location_name: "IdentifyLanguage"))
    StartTranscriptionJobRequest.add_member(:language_options, Shapes::ShapeRef.new(shape: LanguageOptions, location_name: "LanguageOptions"))
    StartTranscriptionJobRequest.struct_class = Types::StartTranscriptionJobRequest

    StartTranscriptionJobResponse.add_member(:transcription_job, Shapes::ShapeRef.new(shape: TranscriptionJob, location_name: "TranscriptionJob"))
    StartTranscriptionJobResponse.struct_class = Types::StartTranscriptionJobResponse

    Transcript.add_member(:transcript_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "TranscriptFileUri"))
    Transcript.add_member(:redacted_transcript_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "RedactedTranscriptFileUri"))
    Transcript.struct_class = Types::Transcript

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
    TranscriptionJob.add_member(:language_options, Shapes::ShapeRef.new(shape: LanguageOptions, location_name: "LanguageOptions"))
    TranscriptionJob.add_member(:identified_language_score, Shapes::ShapeRef.new(shape: IdentifiedLanguageScore, location_name: "IdentifiedLanguageScore"))
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
    TranscriptionJobSummary.add_member(:identified_language_score, Shapes::ShapeRef.new(shape: IdentifiedLanguageScore, location_name: "IdentifiedLanguageScore"))
    TranscriptionJobSummary.struct_class = Types::TranscriptionJobSummary

    UpdateMedicalVocabularyRequest.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "VocabularyName"))
    UpdateMedicalVocabularyRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    UpdateMedicalVocabularyRequest.add_member(:vocabulary_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "VocabularyFileUri"))
    UpdateMedicalVocabularyRequest.struct_class = Types::UpdateMedicalVocabularyRequest

    UpdateMedicalVocabularyResponse.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    UpdateMedicalVocabularyResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    UpdateMedicalVocabularyResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    UpdateMedicalVocabularyResponse.add_member(:vocabulary_state, Shapes::ShapeRef.new(shape: VocabularyState, location_name: "VocabularyState"))
    UpdateMedicalVocabularyResponse.struct_class = Types::UpdateMedicalVocabularyResponse

    UpdateVocabularyFilterRequest.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, required: true, location_name: "VocabularyFilterName"))
    UpdateVocabularyFilterRequest.add_member(:words, Shapes::ShapeRef.new(shape: Words, location_name: "Words"))
    UpdateVocabularyFilterRequest.add_member(:vocabulary_filter_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "VocabularyFilterFileUri"))
    UpdateVocabularyFilterRequest.struct_class = Types::UpdateVocabularyFilterRequest

    UpdateVocabularyFilterResponse.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: "VocabularyFilterName"))
    UpdateVocabularyFilterResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    UpdateVocabularyFilterResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    UpdateVocabularyFilterResponse.struct_class = Types::UpdateVocabularyFilterResponse

    UpdateVocabularyRequest.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, required: true, location_name: "VocabularyName"))
    UpdateVocabularyRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    UpdateVocabularyRequest.add_member(:phrases, Shapes::ShapeRef.new(shape: Phrases, location_name: "Phrases"))
    UpdateVocabularyRequest.add_member(:vocabulary_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "VocabularyFileUri"))
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
