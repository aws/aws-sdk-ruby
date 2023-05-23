# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Translate
  # @api private
  module ClientApi

    include Seahorse::Model

    AppliedTerminology = Shapes::StructureShape.new(name: 'AppliedTerminology')
    AppliedTerminologyList = Shapes::ListShape.new(name: 'AppliedTerminologyList')
    BoundedLengthString = Shapes::StringShape.new(name: 'BoundedLengthString')
    ClientTokenString = Shapes::StringShape.new(name: 'ClientTokenString')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    CreateParallelDataRequest = Shapes::StructureShape.new(name: 'CreateParallelDataRequest')
    CreateParallelDataResponse = Shapes::StructureShape.new(name: 'CreateParallelDataResponse')
    DeleteParallelDataRequest = Shapes::StructureShape.new(name: 'DeleteParallelDataRequest')
    DeleteParallelDataResponse = Shapes::StructureShape.new(name: 'DeleteParallelDataResponse')
    DeleteTerminologyRequest = Shapes::StructureShape.new(name: 'DeleteTerminologyRequest')
    DescribeTextTranslationJobRequest = Shapes::StructureShape.new(name: 'DescribeTextTranslationJobRequest')
    DescribeTextTranslationJobResponse = Shapes::StructureShape.new(name: 'DescribeTextTranslationJobResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DetectedLanguageLowConfidenceException = Shapes::StructureShape.new(name: 'DetectedLanguageLowConfidenceException')
    Directionality = Shapes::StringShape.new(name: 'Directionality')
    DisplayLanguageCode = Shapes::StringShape.new(name: 'DisplayLanguageCode')
    Document = Shapes::StructureShape.new(name: 'Document')
    DocumentContent = Shapes::BlobShape.new(name: 'DocumentContent')
    EncryptionKey = Shapes::StructureShape.new(name: 'EncryptionKey')
    EncryptionKeyID = Shapes::StringShape.new(name: 'EncryptionKeyID')
    EncryptionKeyType = Shapes::StringShape.new(name: 'EncryptionKeyType')
    Formality = Shapes::StringShape.new(name: 'Formality')
    GetParallelDataRequest = Shapes::StructureShape.new(name: 'GetParallelDataRequest')
    GetParallelDataResponse = Shapes::StructureShape.new(name: 'GetParallelDataResponse')
    GetTerminologyRequest = Shapes::StructureShape.new(name: 'GetTerminologyRequest')
    GetTerminologyResponse = Shapes::StructureShape.new(name: 'GetTerminologyResponse')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    ImportTerminologyRequest = Shapes::StructureShape.new(name: 'ImportTerminologyRequest')
    ImportTerminologyResponse = Shapes::StructureShape.new(name: 'ImportTerminologyResponse')
    InputDataConfig = Shapes::StructureShape.new(name: 'InputDataConfig')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidFilterException = Shapes::StructureShape.new(name: 'InvalidFilterException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    JobDetails = Shapes::StructureShape.new(name: 'JobDetails')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobName = Shapes::StringShape.new(name: 'JobName')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    Language = Shapes::StructureShape.new(name: 'Language')
    LanguageCodeString = Shapes::StringShape.new(name: 'LanguageCodeString')
    LanguageCodeStringList = Shapes::ListShape.new(name: 'LanguageCodeStringList')
    LanguagesList = Shapes::ListShape.new(name: 'LanguagesList')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListLanguagesRequest = Shapes::StructureShape.new(name: 'ListLanguagesRequest')
    ListLanguagesResponse = Shapes::StructureShape.new(name: 'ListLanguagesResponse')
    ListParallelDataRequest = Shapes::StructureShape.new(name: 'ListParallelDataRequest')
    ListParallelDataResponse = Shapes::StructureShape.new(name: 'ListParallelDataResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTerminologiesRequest = Shapes::StructureShape.new(name: 'ListTerminologiesRequest')
    ListTerminologiesResponse = Shapes::StructureShape.new(name: 'ListTerminologiesResponse')
    ListTextTranslationJobsRequest = Shapes::StructureShape.new(name: 'ListTextTranslationJobsRequest')
    ListTextTranslationJobsResponse = Shapes::StructureShape.new(name: 'ListTextTranslationJobsResponse')
    LocalizedNameString = Shapes::StringShape.new(name: 'LocalizedNameString')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResultsInteger = Shapes::IntegerShape.new(name: 'MaxResultsInteger')
    MergeStrategy = Shapes::StringShape.new(name: 'MergeStrategy')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    ParallelDataArn = Shapes::StringShape.new(name: 'ParallelDataArn')
    ParallelDataConfig = Shapes::StructureShape.new(name: 'ParallelDataConfig')
    ParallelDataDataLocation = Shapes::StructureShape.new(name: 'ParallelDataDataLocation')
    ParallelDataFormat = Shapes::StringShape.new(name: 'ParallelDataFormat')
    ParallelDataProperties = Shapes::StructureShape.new(name: 'ParallelDataProperties')
    ParallelDataPropertiesList = Shapes::ListShape.new(name: 'ParallelDataPropertiesList')
    ParallelDataStatus = Shapes::StringShape.new(name: 'ParallelDataStatus')
    Profanity = Shapes::StringShape.new(name: 'Profanity')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNameList = Shapes::ListShape.new(name: 'ResourceNameList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StartTextTranslationJobRequest = Shapes::StructureShape.new(name: 'StartTextTranslationJobRequest')
    StartTextTranslationJobResponse = Shapes::StructureShape.new(name: 'StartTextTranslationJobResponse')
    StopTextTranslationJobRequest = Shapes::StructureShape.new(name: 'StopTextTranslationJobRequest')
    StopTextTranslationJobResponse = Shapes::StructureShape.new(name: 'StopTextTranslationJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetLanguageCodeStringList = Shapes::ListShape.new(name: 'TargetLanguageCodeStringList')
    Term = Shapes::StructureShape.new(name: 'Term')
    TermList = Shapes::ListShape.new(name: 'TermList')
    TerminologyArn = Shapes::StringShape.new(name: 'TerminologyArn')
    TerminologyData = Shapes::StructureShape.new(name: 'TerminologyData')
    TerminologyDataFormat = Shapes::StringShape.new(name: 'TerminologyDataFormat')
    TerminologyDataLocation = Shapes::StructureShape.new(name: 'TerminologyDataLocation')
    TerminologyFile = Shapes::BlobShape.new(name: 'TerminologyFile')
    TerminologyProperties = Shapes::StructureShape.new(name: 'TerminologyProperties')
    TerminologyPropertiesList = Shapes::ListShape.new(name: 'TerminologyPropertiesList')
    TextSizeLimitExceededException = Shapes::StructureShape.new(name: 'TextSizeLimitExceededException')
    TextTranslationJobFilter = Shapes::StructureShape.new(name: 'TextTranslationJobFilter')
    TextTranslationJobProperties = Shapes::StructureShape.new(name: 'TextTranslationJobProperties')
    TextTranslationJobPropertiesList = Shapes::ListShape.new(name: 'TextTranslationJobPropertiesList')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TranslateDocumentRequest = Shapes::StructureShape.new(name: 'TranslateDocumentRequest')
    TranslateDocumentResponse = Shapes::StructureShape.new(name: 'TranslateDocumentResponse')
    TranslateTextRequest = Shapes::StructureShape.new(name: 'TranslateTextRequest')
    TranslateTextResponse = Shapes::StructureShape.new(name: 'TranslateTextResponse')
    TranslatedDocument = Shapes::StructureShape.new(name: 'TranslatedDocument')
    TranslatedDocumentContent = Shapes::BlobShape.new(name: 'TranslatedDocumentContent')
    TranslatedTextString = Shapes::StringShape.new(name: 'TranslatedTextString')
    TranslationSettings = Shapes::StructureShape.new(name: 'TranslationSettings')
    UnboundedLengthString = Shapes::StringShape.new(name: 'UnboundedLengthString')
    UnsupportedDisplayLanguageCodeException = Shapes::StructureShape.new(name: 'UnsupportedDisplayLanguageCodeException')
    UnsupportedLanguagePairException = Shapes::StructureShape.new(name: 'UnsupportedLanguagePairException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateParallelDataRequest = Shapes::StructureShape.new(name: 'UpdateParallelDataRequest')
    UpdateParallelDataResponse = Shapes::StructureShape.new(name: 'UpdateParallelDataResponse')

    AppliedTerminology.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    AppliedTerminology.add_member(:terms, Shapes::ShapeRef.new(shape: TermList, location_name: "Terms"))
    AppliedTerminology.struct_class = Types::AppliedTerminology

    AppliedTerminologyList.member = Shapes::ShapeRef.new(shape: AppliedTerminology)

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateParallelDataRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateParallelDataRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateParallelDataRequest.add_member(:parallel_data_config, Shapes::ShapeRef.new(shape: ParallelDataConfig, required: true, location_name: "ParallelDataConfig"))
    CreateParallelDataRequest.add_member(:encryption_key, Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "EncryptionKey"))
    CreateParallelDataRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateParallelDataRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateParallelDataRequest.struct_class = Types::CreateParallelDataRequest

    CreateParallelDataResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    CreateParallelDataResponse.add_member(:status, Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: "Status"))
    CreateParallelDataResponse.struct_class = Types::CreateParallelDataResponse

    DeleteParallelDataRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    DeleteParallelDataRequest.struct_class = Types::DeleteParallelDataRequest

    DeleteParallelDataResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    DeleteParallelDataResponse.add_member(:status, Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: "Status"))
    DeleteParallelDataResponse.struct_class = Types::DeleteParallelDataResponse

    DeleteTerminologyRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    DeleteTerminologyRequest.struct_class = Types::DeleteTerminologyRequest

    DescribeTextTranslationJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeTextTranslationJobRequest.struct_class = Types::DescribeTextTranslationJobRequest

    DescribeTextTranslationJobResponse.add_member(:text_translation_job_properties, Shapes::ShapeRef.new(shape: TextTranslationJobProperties, location_name: "TextTranslationJobProperties"))
    DescribeTextTranslationJobResponse.struct_class = Types::DescribeTextTranslationJobResponse

    DetectedLanguageLowConfidenceException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DetectedLanguageLowConfidenceException.add_member(:detected_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "DetectedLanguageCode"))
    DetectedLanguageLowConfidenceException.struct_class = Types::DetectedLanguageLowConfidenceException

    Document.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, required: true, location_name: "Content"))
    Document.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, required: true, location_name: "ContentType"))
    Document.struct_class = Types::Document

    EncryptionKey.add_member(:type, Shapes::ShapeRef.new(shape: EncryptionKeyType, required: true, location_name: "Type"))
    EncryptionKey.add_member(:id, Shapes::ShapeRef.new(shape: EncryptionKeyID, required: true, location_name: "Id"))
    EncryptionKey.struct_class = Types::EncryptionKey

    GetParallelDataRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    GetParallelDataRequest.struct_class = Types::GetParallelDataRequest

    GetParallelDataResponse.add_member(:parallel_data_properties, Shapes::ShapeRef.new(shape: ParallelDataProperties, location_name: "ParallelDataProperties"))
    GetParallelDataResponse.add_member(:data_location, Shapes::ShapeRef.new(shape: ParallelDataDataLocation, location_name: "DataLocation"))
    GetParallelDataResponse.add_member(:auxiliary_data_location, Shapes::ShapeRef.new(shape: ParallelDataDataLocation, location_name: "AuxiliaryDataLocation"))
    GetParallelDataResponse.add_member(:latest_update_attempt_auxiliary_data_location, Shapes::ShapeRef.new(shape: ParallelDataDataLocation, location_name: "LatestUpdateAttemptAuxiliaryDataLocation"))
    GetParallelDataResponse.struct_class = Types::GetParallelDataResponse

    GetTerminologyRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    GetTerminologyRequest.add_member(:terminology_data_format, Shapes::ShapeRef.new(shape: TerminologyDataFormat, location_name: "TerminologyDataFormat"))
    GetTerminologyRequest.struct_class = Types::GetTerminologyRequest

    GetTerminologyResponse.add_member(:terminology_properties, Shapes::ShapeRef.new(shape: TerminologyProperties, location_name: "TerminologyProperties"))
    GetTerminologyResponse.add_member(:terminology_data_location, Shapes::ShapeRef.new(shape: TerminologyDataLocation, location_name: "TerminologyDataLocation"))
    GetTerminologyResponse.add_member(:auxiliary_data_location, Shapes::ShapeRef.new(shape: TerminologyDataLocation, location_name: "AuxiliaryDataLocation"))
    GetTerminologyResponse.struct_class = Types::GetTerminologyResponse

    ImportTerminologyRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    ImportTerminologyRequest.add_member(:merge_strategy, Shapes::ShapeRef.new(shape: MergeStrategy, required: true, location_name: "MergeStrategy"))
    ImportTerminologyRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ImportTerminologyRequest.add_member(:terminology_data, Shapes::ShapeRef.new(shape: TerminologyData, required: true, location_name: "TerminologyData"))
    ImportTerminologyRequest.add_member(:encryption_key, Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "EncryptionKey"))
    ImportTerminologyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ImportTerminologyRequest.struct_class = Types::ImportTerminologyRequest

    ImportTerminologyResponse.add_member(:terminology_properties, Shapes::ShapeRef.new(shape: TerminologyProperties, location_name: "TerminologyProperties"))
    ImportTerminologyResponse.add_member(:auxiliary_data_location, Shapes::ShapeRef.new(shape: TerminologyDataLocation, location_name: "AuxiliaryDataLocation"))
    ImportTerminologyResponse.struct_class = Types::ImportTerminologyResponse

    InputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    InputDataConfig.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, required: true, location_name: "ContentType"))
    InputDataConfig.struct_class = Types::InputDataConfig

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidFilterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidFilterException.struct_class = Types::InvalidFilterException

    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    JobDetails.add_member(:translated_documents_count, Shapes::ShapeRef.new(shape: Integer, location_name: "TranslatedDocumentsCount"))
    JobDetails.add_member(:documents_with_errors_count, Shapes::ShapeRef.new(shape: Integer, location_name: "DocumentsWithErrorsCount"))
    JobDetails.add_member(:input_documents_count, Shapes::ShapeRef.new(shape: Integer, location_name: "InputDocumentsCount"))
    JobDetails.struct_class = Types::JobDetails

    Language.add_member(:language_name, Shapes::ShapeRef.new(shape: LocalizedNameString, required: true, location_name: "LanguageName"))
    Language.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "LanguageCode"))
    Language.struct_class = Types::Language

    LanguageCodeStringList.member = Shapes::ShapeRef.new(shape: LanguageCodeString)

    LanguagesList.member = Shapes::ShapeRef.new(shape: Language)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListLanguagesRequest.add_member(:display_language_code, Shapes::ShapeRef.new(shape: DisplayLanguageCode, location_name: "DisplayLanguageCode"))
    ListLanguagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLanguagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListLanguagesRequest.struct_class = Types::ListLanguagesRequest

    ListLanguagesResponse.add_member(:languages, Shapes::ShapeRef.new(shape: LanguagesList, location_name: "Languages"))
    ListLanguagesResponse.add_member(:display_language_code, Shapes::ShapeRef.new(shape: DisplayLanguageCode, location_name: "DisplayLanguageCode"))
    ListLanguagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLanguagesResponse.struct_class = Types::ListLanguagesResponse

    ListParallelDataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListParallelDataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListParallelDataRequest.struct_class = Types::ListParallelDataRequest

    ListParallelDataResponse.add_member(:parallel_data_properties_list, Shapes::ShapeRef.new(shape: ParallelDataPropertiesList, location_name: "ParallelDataPropertiesList"))
    ListParallelDataResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListParallelDataResponse.struct_class = Types::ListParallelDataResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTerminologiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTerminologiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListTerminologiesRequest.struct_class = Types::ListTerminologiesRequest

    ListTerminologiesResponse.add_member(:terminology_properties_list, Shapes::ShapeRef.new(shape: TerminologyPropertiesList, location_name: "TerminologyPropertiesList"))
    ListTerminologiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTerminologiesResponse.struct_class = Types::ListTerminologiesResponse

    ListTextTranslationJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: TextTranslationJobFilter, location_name: "Filter"))
    ListTextTranslationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTextTranslationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListTextTranslationJobsRequest.struct_class = Types::ListTextTranslationJobsRequest

    ListTextTranslationJobsResponse.add_member(:text_translation_job_properties_list, Shapes::ShapeRef.new(shape: TextTranslationJobPropertiesList, location_name: "TextTranslationJobPropertiesList"))
    ListTextTranslationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTextTranslationJobsResponse.struct_class = Types::ListTextTranslationJobsResponse

    OutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    OutputDataConfig.add_member(:encryption_key, Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "EncryptionKey"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    ParallelDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    ParallelDataConfig.add_member(:format, Shapes::ShapeRef.new(shape: ParallelDataFormat, required: true, location_name: "Format"))
    ParallelDataConfig.struct_class = Types::ParallelDataConfig

    ParallelDataDataLocation.add_member(:repository_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RepositoryType"))
    ParallelDataDataLocation.add_member(:location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Location"))
    ParallelDataDataLocation.struct_class = Types::ParallelDataDataLocation

    ParallelDataProperties.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    ParallelDataProperties.add_member(:arn, Shapes::ShapeRef.new(shape: ParallelDataArn, location_name: "Arn"))
    ParallelDataProperties.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ParallelDataProperties.add_member(:status, Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: "Status"))
    ParallelDataProperties.add_member(:source_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "SourceLanguageCode"))
    ParallelDataProperties.add_member(:target_language_codes, Shapes::ShapeRef.new(shape: LanguageCodeStringList, location_name: "TargetLanguageCodes"))
    ParallelDataProperties.add_member(:parallel_data_config, Shapes::ShapeRef.new(shape: ParallelDataConfig, location_name: "ParallelDataConfig"))
    ParallelDataProperties.add_member(:message, Shapes::ShapeRef.new(shape: UnboundedLengthString, location_name: "Message"))
    ParallelDataProperties.add_member(:imported_data_size, Shapes::ShapeRef.new(shape: Long, location_name: "ImportedDataSize"))
    ParallelDataProperties.add_member(:imported_record_count, Shapes::ShapeRef.new(shape: Long, location_name: "ImportedRecordCount"))
    ParallelDataProperties.add_member(:failed_record_count, Shapes::ShapeRef.new(shape: Long, location_name: "FailedRecordCount"))
    ParallelDataProperties.add_member(:skipped_record_count, Shapes::ShapeRef.new(shape: Long, location_name: "SkippedRecordCount"))
    ParallelDataProperties.add_member(:encryption_key, Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "EncryptionKey"))
    ParallelDataProperties.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ParallelDataProperties.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    ParallelDataProperties.add_member(:latest_update_attempt_status, Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: "LatestUpdateAttemptStatus"))
    ParallelDataProperties.add_member(:latest_update_attempt_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LatestUpdateAttemptAt"))
    ParallelDataProperties.struct_class = Types::ParallelDataProperties

    ParallelDataPropertiesList.member = Shapes::ShapeRef.new(shape: ParallelDataProperties)

    ResourceNameList.member = Shapes::ShapeRef.new(shape: ResourceName)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartTextTranslationJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartTextTranslationJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartTextTranslationJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartTextTranslationJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartTextTranslationJobRequest.add_member(:source_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "SourceLanguageCode"))
    StartTextTranslationJobRequest.add_member(:target_language_codes, Shapes::ShapeRef.new(shape: TargetLanguageCodeStringList, required: true, location_name: "TargetLanguageCodes"))
    StartTextTranslationJobRequest.add_member(:terminology_names, Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "TerminologyNames"))
    StartTextTranslationJobRequest.add_member(:parallel_data_names, Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "ParallelDataNames"))
    StartTextTranslationJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartTextTranslationJobRequest.add_member(:settings, Shapes::ShapeRef.new(shape: TranslationSettings, location_name: "Settings"))
    StartTextTranslationJobRequest.struct_class = Types::StartTextTranslationJobRequest

    StartTextTranslationJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartTextTranslationJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StartTextTranslationJobResponse.struct_class = Types::StartTextTranslationJobResponse

    StopTextTranslationJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StopTextTranslationJobRequest.struct_class = Types::StopTextTranslationJobRequest

    StopTextTranslationJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StopTextTranslationJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StopTextTranslationJobResponse.struct_class = Types::StopTextTranslationJobResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TargetLanguageCodeStringList.member = Shapes::ShapeRef.new(shape: LanguageCodeString)

    Term.add_member(:source_text, Shapes::ShapeRef.new(shape: String, location_name: "SourceText"))
    Term.add_member(:target_text, Shapes::ShapeRef.new(shape: String, location_name: "TargetText"))
    Term.struct_class = Types::Term

    TermList.member = Shapes::ShapeRef.new(shape: Term)

    TerminologyData.add_member(:file, Shapes::ShapeRef.new(shape: TerminologyFile, required: true, location_name: "File"))
    TerminologyData.add_member(:format, Shapes::ShapeRef.new(shape: TerminologyDataFormat, required: true, location_name: "Format"))
    TerminologyData.add_member(:directionality, Shapes::ShapeRef.new(shape: Directionality, location_name: "Directionality"))
    TerminologyData.struct_class = Types::TerminologyData

    TerminologyDataLocation.add_member(:repository_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RepositoryType"))
    TerminologyDataLocation.add_member(:location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Location"))
    TerminologyDataLocation.struct_class = Types::TerminologyDataLocation

    TerminologyProperties.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    TerminologyProperties.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    TerminologyProperties.add_member(:arn, Shapes::ShapeRef.new(shape: TerminologyArn, location_name: "Arn"))
    TerminologyProperties.add_member(:source_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "SourceLanguageCode"))
    TerminologyProperties.add_member(:target_language_codes, Shapes::ShapeRef.new(shape: LanguageCodeStringList, location_name: "TargetLanguageCodes"))
    TerminologyProperties.add_member(:encryption_key, Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "EncryptionKey"))
    TerminologyProperties.add_member(:size_bytes, Shapes::ShapeRef.new(shape: Integer, location_name: "SizeBytes"))
    TerminologyProperties.add_member(:term_count, Shapes::ShapeRef.new(shape: Integer, location_name: "TermCount"))
    TerminologyProperties.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    TerminologyProperties.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    TerminologyProperties.add_member(:directionality, Shapes::ShapeRef.new(shape: Directionality, location_name: "Directionality"))
    TerminologyProperties.add_member(:message, Shapes::ShapeRef.new(shape: UnboundedLengthString, location_name: "Message"))
    TerminologyProperties.add_member(:skipped_term_count, Shapes::ShapeRef.new(shape: Integer, location_name: "SkippedTermCount"))
    TerminologyProperties.add_member(:format, Shapes::ShapeRef.new(shape: TerminologyDataFormat, location_name: "Format"))
    TerminologyProperties.struct_class = Types::TerminologyProperties

    TerminologyPropertiesList.member = Shapes::ShapeRef.new(shape: TerminologyProperties)

    TextSizeLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TextSizeLimitExceededException.struct_class = Types::TextSizeLimitExceededException

    TextTranslationJobFilter.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    TextTranslationJobFilter.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    TextTranslationJobFilter.add_member(:submitted_before_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedBeforeTime"))
    TextTranslationJobFilter.add_member(:submitted_after_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedAfterTime"))
    TextTranslationJobFilter.struct_class = Types::TextTranslationJobFilter

    TextTranslationJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    TextTranslationJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    TextTranslationJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    TextTranslationJobProperties.add_member(:job_details, Shapes::ShapeRef.new(shape: JobDetails, location_name: "JobDetails"))
    TextTranslationJobProperties.add_member(:source_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "SourceLanguageCode"))
    TextTranslationJobProperties.add_member(:target_language_codes, Shapes::ShapeRef.new(shape: TargetLanguageCodeStringList, location_name: "TargetLanguageCodes"))
    TextTranslationJobProperties.add_member(:terminology_names, Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "TerminologyNames"))
    TextTranslationJobProperties.add_member(:parallel_data_names, Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "ParallelDataNames"))
    TextTranslationJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: UnboundedLengthString, location_name: "Message"))
    TextTranslationJobProperties.add_member(:submitted_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedTime"))
    TextTranslationJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    TextTranslationJobProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    TextTranslationJobProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    TextTranslationJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    TextTranslationJobProperties.add_member(:settings, Shapes::ShapeRef.new(shape: TranslationSettings, location_name: "Settings"))
    TextTranslationJobProperties.struct_class = Types::TextTranslationJobProperties

    TextTranslationJobPropertiesList.member = Shapes::ShapeRef.new(shape: TextTranslationJobProperties)

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyTagsException.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    TranslateDocumentRequest.add_member(:document, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "Document"))
    TranslateDocumentRequest.add_member(:terminology_names, Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "TerminologyNames"))
    TranslateDocumentRequest.add_member(:source_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "SourceLanguageCode"))
    TranslateDocumentRequest.add_member(:target_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "TargetLanguageCode"))
    TranslateDocumentRequest.add_member(:settings, Shapes::ShapeRef.new(shape: TranslationSettings, location_name: "Settings"))
    TranslateDocumentRequest.struct_class = Types::TranslateDocumentRequest

    TranslateDocumentResponse.add_member(:translated_document, Shapes::ShapeRef.new(shape: TranslatedDocument, required: true, location_name: "TranslatedDocument"))
    TranslateDocumentResponse.add_member(:source_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "SourceLanguageCode"))
    TranslateDocumentResponse.add_member(:target_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "TargetLanguageCode"))
    TranslateDocumentResponse.add_member(:applied_terminologies, Shapes::ShapeRef.new(shape: AppliedTerminologyList, location_name: "AppliedTerminologies"))
    TranslateDocumentResponse.add_member(:applied_settings, Shapes::ShapeRef.new(shape: TranslationSettings, location_name: "AppliedSettings"))
    TranslateDocumentResponse.struct_class = Types::TranslateDocumentResponse

    TranslateTextRequest.add_member(:text, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Text"))
    TranslateTextRequest.add_member(:terminology_names, Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "TerminologyNames"))
    TranslateTextRequest.add_member(:source_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "SourceLanguageCode"))
    TranslateTextRequest.add_member(:target_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "TargetLanguageCode"))
    TranslateTextRequest.add_member(:settings, Shapes::ShapeRef.new(shape: TranslationSettings, location_name: "Settings"))
    TranslateTextRequest.struct_class = Types::TranslateTextRequest

    TranslateTextResponse.add_member(:translated_text, Shapes::ShapeRef.new(shape: TranslatedTextString, required: true, location_name: "TranslatedText"))
    TranslateTextResponse.add_member(:source_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "SourceLanguageCode"))
    TranslateTextResponse.add_member(:target_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "TargetLanguageCode"))
    TranslateTextResponse.add_member(:applied_terminologies, Shapes::ShapeRef.new(shape: AppliedTerminologyList, location_name: "AppliedTerminologies"))
    TranslateTextResponse.add_member(:applied_settings, Shapes::ShapeRef.new(shape: TranslationSettings, location_name: "AppliedSettings"))
    TranslateTextResponse.struct_class = Types::TranslateTextResponse

    TranslatedDocument.add_member(:content, Shapes::ShapeRef.new(shape: TranslatedDocumentContent, required: true, location_name: "Content"))
    TranslatedDocument.struct_class = Types::TranslatedDocument

    TranslationSettings.add_member(:formality, Shapes::ShapeRef.new(shape: Formality, location_name: "Formality"))
    TranslationSettings.add_member(:profanity, Shapes::ShapeRef.new(shape: Profanity, location_name: "Profanity"))
    TranslationSettings.struct_class = Types::TranslationSettings

    UnsupportedDisplayLanguageCodeException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedDisplayLanguageCodeException.add_member(:display_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "DisplayLanguageCode"))
    UnsupportedDisplayLanguageCodeException.struct_class = Types::UnsupportedDisplayLanguageCodeException

    UnsupportedLanguagePairException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedLanguagePairException.add_member(:source_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "SourceLanguageCode"))
    UnsupportedLanguagePairException.add_member(:target_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "TargetLanguageCode"))
    UnsupportedLanguagePairException.struct_class = Types::UnsupportedLanguagePairException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateParallelDataRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    UpdateParallelDataRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateParallelDataRequest.add_member(:parallel_data_config, Shapes::ShapeRef.new(shape: ParallelDataConfig, required: true, location_name: "ParallelDataConfig"))
    UpdateParallelDataRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    UpdateParallelDataRequest.struct_class = Types::UpdateParallelDataRequest

    UpdateParallelDataResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    UpdateParallelDataResponse.add_member(:status, Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: "Status"))
    UpdateParallelDataResponse.add_member(:latest_update_attempt_status, Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: "LatestUpdateAttemptStatus"))
    UpdateParallelDataResponse.add_member(:latest_update_attempt_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LatestUpdateAttemptAt"))
    UpdateParallelDataResponse.struct_class = Types::UpdateParallelDataResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-01"

      api.metadata = {
        "apiVersion" => "2017-07-01",
        "endpointPrefix" => "translate",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Translate",
        "serviceId" => "Translate",
        "signatureVersion" => "v4",
        "signingName" => "translate",
        "targetPrefix" => "AWSShineFrontendService_20170701",
        "uid" => "translate-2017-07-01",
      }

      api.add_operation(:create_parallel_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateParallelData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateParallelDataRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateParallelDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_parallel_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteParallelData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteParallelDataRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteParallelDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_terminology, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTerminology"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTerminologyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_text_translation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTextTranslationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTextTranslationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTextTranslationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_parallel_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetParallelData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetParallelDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetParallelDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_terminology, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTerminology"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTerminologyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTerminologyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:import_terminology, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportTerminology"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportTerminologyRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportTerminologyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_languages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLanguages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLanguagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLanguagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDisplayLanguageCodeException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_parallel_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListParallelData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListParallelDataRequest)
        o.output = Shapes::ShapeRef.new(shape: ListParallelDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_terminologies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTerminologies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTerminologiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTerminologiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_text_translation_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTextTranslationJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTextTranslationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTextTranslationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_text_translation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTextTranslationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartTextTranslationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTextTranslationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLanguagePairException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_text_translation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTextTranslationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopTextTranslationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopTextTranslationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:translate_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TranslateDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TranslateDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: TranslateDocumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLanguagePairException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:translate_text, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TranslateText"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TranslateTextRequest)
        o.output = Shapes::ShapeRef.new(shape: TranslateTextResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLanguagePairException)
        o.errors << Shapes::ShapeRef.new(shape: DetectedLanguageLowConfidenceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_parallel_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateParallelData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateParallelDataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateParallelDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
