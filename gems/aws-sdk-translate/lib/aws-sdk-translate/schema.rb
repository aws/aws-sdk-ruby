# frozen_string_literal: true

# This is generated code!

module Aws::Translate
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AppliedTerminology = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#AppliedTerminology', name: 'AppliedTerminology')
    AppliedTerminologyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.translate#AppliedTerminologyList', name: 'AppliedTerminologyList')
    BoundedLengthString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#BoundedLengthString', name: 'BoundedLengthString', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{1,10000}$"})
    Brevity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.translate#Brevity', name: 'Brevity')
    ClientTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#ClientTokenString', name: 'ClientTokenString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#ContentType', name: 'ContentType', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[-\\w.]+\\/[-\\w.+]+$"})
    CreateParallelDataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#CreateParallelDataRequest', name: 'CreateParallelDataRequest')
    CreateParallelDataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#CreateParallelDataResponse', name: 'CreateParallelDataResponse')
    DeleteParallelDataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#DeleteParallelDataRequest', name: 'DeleteParallelDataRequest')
    DeleteParallelDataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#DeleteParallelDataResponse', name: 'DeleteParallelDataResponse')
    DeleteTerminologyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#DeleteTerminologyRequest', name: 'DeleteTerminologyRequest')
    DescribeTextTranslationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#DescribeTextTranslationJobRequest', name: 'DescribeTextTranslationJobRequest')
    DescribeTextTranslationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#DescribeTextTranslationJobResponse', name: 'DescribeTextTranslationJobResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{0,256}$"})
    DetectedLanguageLowConfidenceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#DetectedLanguageLowConfidenceException', name: 'DetectedLanguageLowConfidenceException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Directionality = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.translate#Directionality', name: 'Directionality')
    DisplayLanguageCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.translate#DisplayLanguageCode', name: 'DisplayLanguageCode')
    Document = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#Document', name: 'Document')
    DocumentContent = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.translate#DocumentContent', name: 'DocumentContent', traits: {"smithy.api#length" => {"min" => 0, "max" => 102400}, "smithy.api#sensitive" => {}})
    EncryptionKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#EncryptionKey', name: 'EncryptionKey')
    EncryptionKeyID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#EncryptionKeyID', name: 'EncryptionKeyID', traits: {"smithy.api#length" => {"min" => 1, "max" => 400}, "smithy.api#pattern" => "^(arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:kms:)?([a-z]{2}-[a-z]+(-[a-z]+)?-\\d:)?(\\d{12}:)?(((key/)?[a-zA-Z0-9-_]+)|(alias/[a-zA-Z0-9:/_-]+))$"})
    EncryptionKeyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.translate#EncryptionKeyType', name: 'EncryptionKeyType')
    Formality = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.translate#Formality', name: 'Formality')
    GetParallelDataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#GetParallelDataRequest', name: 'GetParallelDataRequest')
    GetParallelDataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#GetParallelDataResponse', name: 'GetParallelDataResponse')
    GetTerminologyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#GetTerminologyRequest', name: 'GetTerminologyRequest')
    GetTerminologyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#GetTerminologyResponse', name: 'GetTerminologyResponse')
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    ImportTerminologyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ImportTerminologyRequest', name: 'ImportTerminologyRequest')
    ImportTerminologyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ImportTerminologyResponse', name: 'ImportTerminologyResponse')
    InputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#InputDataConfig', name: 'InputDataConfig')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.translate#Integer', name: 'Integer')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidFilterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#InvalidFilterException', name: 'InvalidFilterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#InvalidParameterValueException', name: 'InvalidParameterValueException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JobDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#JobDetails', name: 'JobDetails')
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    JobName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#JobName', name: 'JobName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    JobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.translate#JobStatus', name: 'JobStatus')
    Language = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#Language', name: 'Language')
    LanguageCodeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#LanguageCodeString', name: 'LanguageCodeString', traits: {"smithy.api#length" => {"min" => 2, "max" => 5}})
    LanguageCodeStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.translate#LanguageCodeStringList', name: 'LanguageCodeStringList')
    LanguagesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.translate#LanguagesList', name: 'LanguagesList')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListLanguagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ListLanguagesRequest', name: 'ListLanguagesRequest')
    ListLanguagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ListLanguagesResponse', name: 'ListLanguagesResponse')
    ListParallelDataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ListParallelDataRequest', name: 'ListParallelDataRequest')
    ListParallelDataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ListParallelDataResponse', name: 'ListParallelDataResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTerminologiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ListTerminologiesRequest', name: 'ListTerminologiesRequest')
    ListTerminologiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ListTerminologiesResponse', name: 'ListTerminologiesResponse')
    ListTextTranslationJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ListTextTranslationJobsRequest', name: 'ListTextTranslationJobsRequest')
    ListTextTranslationJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ListTextTranslationJobsResponse', name: 'ListTextTranslationJobsResponse')
    LocalizedNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#LocalizedNameString', name: 'LocalizedNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.translate#Long', name: 'Long')
    MaxResultsInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.translate#MaxResultsInteger', name: 'MaxResultsInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    MergeStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.translate#MergeStrategy', name: 'MergeStrategy')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^\\p{ASCII}{0,8192}$"})
    OutputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#OutputDataConfig', name: 'OutputDataConfig')
    ParallelDataArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#ParallelDataArn', name: 'ParallelDataArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ParallelDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ParallelDataConfig', name: 'ParallelDataConfig')
    ParallelDataDataLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ParallelDataDataLocation', name: 'ParallelDataDataLocation')
    ParallelDataFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.translate#ParallelDataFormat', name: 'ParallelDataFormat')
    ParallelDataProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ParallelDataProperties', name: 'ParallelDataProperties')
    ParallelDataPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.translate#ParallelDataPropertiesList', name: 'ParallelDataPropertiesList')
    ParallelDataStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.translate#ParallelDataStatus', name: 'ParallelDataStatus')
    Profanity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.translate#Profanity', name: 'Profanity')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([A-Za-z0-9-]_?)+$"})
    ResourceNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.translate#ResourceNameList', name: 'ResourceNameList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#S3Uri', name: 'S3Uri', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StartTextTranslationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#StartTextTranslationJobRequest', name: 'StartTextTranslationJobRequest')
    StartTextTranslationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#StartTextTranslationJobResponse', name: 'StartTextTranslationJobResponse')
    StopTextTranslationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#StopTextTranslationJobRequest', name: 'StopTextTranslationJobRequest')
    StopTextTranslationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#StopTextTranslationJobResponse', name: 'StopTextTranslationJobResponse')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#String', name: 'String', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{0,10000}$"})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.translate#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.translate#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetLanguageCodeStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.translate#TargetLanguageCodeStringList', name: 'TargetLanguageCodeStringList', traits: {"smithy.api#length" => {"min" => 1}})
    Term = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#Term', name: 'Term')
    TermList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.translate#TermList', name: 'TermList')
    TerminologyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#TerminologyArn', name: 'TerminologyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    TerminologyData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TerminologyData', name: 'TerminologyData')
    TerminologyDataFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.translate#TerminologyDataFormat', name: 'TerminologyDataFormat')
    TerminologyDataLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TerminologyDataLocation', name: 'TerminologyDataLocation')
    TerminologyFile = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.translate#TerminologyFile', name: 'TerminologyFile', traits: {"smithy.api#length" => {"min" => 0, "max" => 10485760}, "smithy.api#sensitive" => {}})
    TerminologyProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TerminologyProperties', name: 'TerminologyProperties')
    TerminologyPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.translate#TerminologyPropertiesList', name: 'TerminologyPropertiesList')
    TextSizeLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TextSizeLimitExceededException', name: 'TextSizeLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TextTranslationJobFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TextTranslationJobFilter', name: 'TextTranslationJobFilter')
    TextTranslationJobProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TextTranslationJobProperties', name: 'TextTranslationJobProperties')
    TextTranslationJobPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.translate#TextTranslationJobPropertiesList', name: 'TextTranslationJobPropertiesList')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.translate#Timestamp', name: 'Timestamp')
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TranslateDocumentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TranslateDocumentRequest', name: 'TranslateDocumentRequest')
    TranslateDocumentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TranslateDocumentResponse', name: 'TranslateDocumentResponse')
    TranslateTextRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TranslateTextRequest', name: 'TranslateTextRequest')
    TranslateTextResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TranslateTextResponse', name: 'TranslateTextResponse')
    TranslatedDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TranslatedDocument', name: 'TranslatedDocument')
    TranslatedDocumentContent = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.translate#TranslatedDocumentContent', name: 'TranslatedDocumentContent', traits: {"smithy.api#sensitive" => {}})
    TranslatedTextString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#TranslatedTextString', name: 'TranslatedTextString', traits: {"smithy.api#length" => {"min" => 0, "max" => 20000}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{0,20000}$"})
    TranslationSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#TranslationSettings', name: 'TranslationSettings')
    UnboundedLengthString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.translate#UnboundedLengthString', name: 'UnboundedLengthString')
    UnsupportedDisplayLanguageCodeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#UnsupportedDisplayLanguageCodeException', name: 'UnsupportedDisplayLanguageCodeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedLanguagePairException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#UnsupportedLanguagePairException', name: 'UnsupportedLanguagePairException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateParallelDataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#UpdateParallelDataRequest', name: 'UpdateParallelDataRequest')
    UpdateParallelDataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.translate#UpdateParallelDataResponse', name: 'UpdateParallelDataResponse')

    AppliedTerminology.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the custom terminology applied to the input text by Amazon Translate for the translated\n      text response.</p>"}))
    AppliedTerminology.add_member(:terms, Smithy::Schema::Shapes::ShapeRef.new(shape: TermList, location_name: 'Terms', traits: {"smithy.api#documentation" => "<p>The specific terms of the custom terminology applied to the input text by Amazon Translate for the\n      translated text response. A maximum of 250 terms will be returned, and the specific terms\n      applied will be the first 250 terms in the source text. </p>"}))
    AppliedTerminology.type = Types::AppliedTerminology
    AppliedTerminologyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedTerminology)
    Brevity.add_member(:on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON', traits: {"smithy.api#enumValue" => "ON"}))
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateParallelDataRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A custom name for the parallel data resource in Amazon Translate. You must assign a name\n      that is unique in the account and region.</p>", "smithy.api#required" => {}}))
    CreateParallelDataRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A custom description for the parallel data resource in Amazon Translate.</p>"}))
    CreateParallelDataRequest.add_member(:parallel_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataConfig, location_name: 'ParallelDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and S3 location of the parallel data input file.</p>", "smithy.api#required" => {}}))
    CreateParallelDataRequest.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: 'EncryptionKey'))
    CreateParallelDataRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. This token is automatically generated when you use\n      Amazon Translate through an AWS SDK.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateParallelDataRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to be associated with this resource. A tag is a key-value pair that\n      adds metadata to a resource. Each tag key for the resource must be unique.\n      For more information, see <a href=\"https://docs.aws.amazon.com/translate/latest/dg/tagging.html\">\n        Tagging your resources</a>.</p>"}))
    CreateParallelDataRequest.type = Types::CreateParallelDataRequest
    CreateParallelDataResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The custom name that you assigned to the parallel data resource.</p>"}))
    CreateParallelDataResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the parallel data resource. When the resource is ready for you to use, the\n      status is <code>ACTIVE</code>.</p>"}))
    CreateParallelDataResponse.type = Types::CreateParallelDataResponse
    DeleteParallelDataRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the parallel data resource that is being deleted.</p>", "smithy.api#required" => {}}))
    DeleteParallelDataRequest.type = Types::DeleteParallelDataRequest
    DeleteParallelDataResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the parallel data resource that is being deleted.</p>"}))
    DeleteParallelDataResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the parallel data deletion.</p>"}))
    DeleteParallelDataResponse.type = Types::DeleteParallelDataResponse
    DeleteTerminologyRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the custom terminology being deleted. </p>", "smithy.api#required" => {}}))
    DeleteTerminologyRequest.type = Types::DeleteTerminologyRequest
    DescribeTextTranslationJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier that Amazon Translate generated for the job. The <a>StartTextTranslationJob</a> operation returns this identifier in its\n      response.</p>", "smithy.api#required" => {}}))
    DescribeTextTranslationJobRequest.type = Types::DescribeTextTranslationJobRequest
    DescribeTextTranslationJobResponse.add_member(:text_translation_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: TextTranslationJobProperties, location_name: 'TextTranslationJobProperties', traits: {"smithy.api#documentation" => "<p>An object that contains the properties associated with an asynchronous batch translation\n      job.</p>"}))
    DescribeTextTranslationJobResponse.type = Types::DescribeTextTranslationJobResponse
    DetectedLanguageLowConfidenceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    DetectedLanguageLowConfidenceException.add_member(:detected_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'DetectedLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code of the auto-detected language from Amazon Comprehend.</p>"}))
    DetectedLanguageLowConfidenceException.type = Types::DetectedLanguageLowConfidenceException
    Directionality.add_member(:uni, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNI', traits: {"smithy.api#enumValue" => "UNI"}))
    Directionality.add_member(:multi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTI', traits: {"smithy.api#enumValue" => "MULTI"}))
    DisplayLanguageCode.add_member(:de, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DE', traits: {"smithy.api#enumValue" => "de"}))
    DisplayLanguageCode.add_member(:en, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN', traits: {"smithy.api#enumValue" => "en"}))
    DisplayLanguageCode.add_member(:es, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES', traits: {"smithy.api#enumValue" => "es"}))
    DisplayLanguageCode.add_member(:fr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR', traits: {"smithy.api#enumValue" => "fr"}))
    DisplayLanguageCode.add_member(:it, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IT', traits: {"smithy.api#enumValue" => "it"}))
    DisplayLanguageCode.add_member(:ja, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JA', traits: {"smithy.api#enumValue" => "ja"}))
    DisplayLanguageCode.add_member(:ko, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KO', traits: {"smithy.api#enumValue" => "ko"}))
    DisplayLanguageCode.add_member(:pt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT', traits: {"smithy.api#enumValue" => "pt"}))
    DisplayLanguageCode.add_member(:zh, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZH', traits: {"smithy.api#enumValue" => "zh"}))
    DisplayLanguageCode.add_member(:zh_tw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZH_TW', traits: {"smithy.api#enumValue" => "zh-TW"}))
    Document.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The <code>Content</code>field type is Binary large object (blob).\n      This object contains the document content converted into base64-encoded binary data.   \n      If you use one of the AWS SDKs, the SDK performs the\n      Base64-encoding on this field before sending the request.   \n    </p>", "smithy.api#required" => {}}))
    Document.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>Describes the format of the document. You can specify one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>text/html</code> - The input data consists of HTML content. \n        Amazon Translate translates only the text in the HTML element.</p>\n            </li>\n            <li>\n               <p>\n                  <code>text/plain</code> - The input data consists of unformatted text. \n        Amazon Translate translates every character in the content. </p>\n            </li>\n            <li>\n               <p>\n                  <code>application/vnd.openxmlformats-officedocument.wordprocessingml.document</code> - The \n          input data consists of a Word document (.docx).</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    Document.type = Types::Document
    EncryptionKey.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of encryption key used by Amazon Translate to encrypt this object.</p>", "smithy.api#required" => {}}))
    EncryptionKey.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the encryption key being used to encrypt this object.</p>", "smithy.api#required" => {}}))
    EncryptionKey.type = Types::EncryptionKey
    EncryptionKeyType.add_member(:kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS', traits: {"smithy.api#enumValue" => "KMS"}))
    Formality.add_member(:formal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORMAL', traits: {"smithy.api#enumValue" => "FORMAL"}))
    Formality.add_member(:informal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFORMAL', traits: {"smithy.api#enumValue" => "INFORMAL"}))
    GetParallelDataRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the parallel data resource that is being retrieved.</p>", "smithy.api#required" => {}}))
    GetParallelDataRequest.type = Types::GetParallelDataRequest
    GetParallelDataResponse.add_member(:parallel_data_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataProperties, location_name: 'ParallelDataProperties', traits: {"smithy.api#documentation" => "<p>The properties of the parallel data resource that is being retrieved.</p>"}))
    GetParallelDataResponse.add_member(:data_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataDataLocation, location_name: 'DataLocation', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of the most recent parallel data input file that was successfully\n      imported into Amazon Translate. The location is returned as a presigned URL that has a\n      30-minute expiration.</p>\n    \n         <important>\n            <p>Amazon Translate doesn't scan all input files for the risk of CSV injection\n        attacks. </p>\n            <p>CSV injection occurs when a .csv or .tsv file is altered so that a record contains\n        malicious code. The record begins with a special character, such as =, +, -, or @. When the\n        file is opened in a spreadsheet program, the program might interpret the record as a formula\n        and run the code within it.</p>\n            <p>Before you download an input file from Amazon S3, ensure that you recognize the file and trust its creator.</p>\n         </important>"}))
    GetParallelDataResponse.add_member(:auxiliary_data_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataDataLocation, location_name: 'AuxiliaryDataLocation', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of a file that provides any errors or warnings that were produced\n      by your input file. This file was created when Amazon Translate attempted to create a parallel\n      data resource. The location is returned as a presigned URL to that has a 30-minute\n      expiration.</p>"}))
    GetParallelDataResponse.add_member(:latest_update_attempt_auxiliary_data_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataDataLocation, location_name: 'LatestUpdateAttemptAuxiliaryDataLocation', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of a file that provides any errors or warnings that were produced\n      by your input file. This file was created when Amazon Translate attempted to update a parallel\n      data resource. The location is returned as a presigned URL to that has a 30-minute\n      expiration.</p>"}))
    GetParallelDataResponse.type = Types::GetParallelDataResponse
    GetTerminologyRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the custom terminology being retrieved.</p>", "smithy.api#required" => {}}))
    GetTerminologyRequest.add_member(:terminology_data_format, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyDataFormat, location_name: 'TerminologyDataFormat', traits: {"smithy.api#documentation" => "<p>The data format of the custom terminology being retrieved.</p>\n         <p>If you don't specify this parameter, Amazon Translate returns a file with the same format\n      as the file that was imported to create the terminology. </p>\n         <p>If you specify this parameter when you retrieve a multi-directional terminology resource,\n      you must specify the same format as the input file that was imported to create it. Otherwise,\n      Amazon Translate throws an error.</p>"}))
    GetTerminologyRequest.type = Types::GetTerminologyRequest
    GetTerminologyResponse.add_member(:terminology_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyProperties, location_name: 'TerminologyProperties', traits: {"smithy.api#documentation" => "<p>The properties of the custom terminology being retrieved.</p>"}))
    GetTerminologyResponse.add_member(:terminology_data_location, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyDataLocation, location_name: 'TerminologyDataLocation', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of the most recent custom terminology input file that was\n      successfully imported into Amazon Translate. The location is returned as a presigned URL that\n      has a 30-minute expiration.</p>\n    \n         <important>\n            <p>Amazon Translate doesn't scan all input files for the risk of CSV injection\n        attacks. </p>\n            <p>CSV injection occurs when a .csv or .tsv file is altered so that a record contains\n        malicious code. The record begins with a special character, such as =, +, -, or @. When the\n        file is opened in a spreadsheet program, the program might interpret the record as a formula\n        and run the code within it.</p>\n            <p>Before you download an input file from Amazon S3, ensure that you recognize the file and trust its creator.</p>\n         </important>"}))
    GetTerminologyResponse.add_member(:auxiliary_data_location, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyDataLocation, location_name: 'AuxiliaryDataLocation', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of a file that provides any errors or warnings that were produced\n      by your input file. This file was created when Amazon Translate attempted to create a\n      terminology resource. The location is returned as a presigned URL to that has a 30-minute\n      expiration.</p>"}))
    GetTerminologyResponse.type = Types::GetTerminologyResponse
    ImportTerminologyRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the custom terminology being imported.</p>", "smithy.api#required" => {}}))
    ImportTerminologyRequest.add_member(:merge_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeStrategy, location_name: 'MergeStrategy', traits: {"smithy.api#documentation" => "<p>The merge strategy of the custom terminology being imported. Currently, only the OVERWRITE\n      merge strategy is supported. In this case, the imported terminology will overwrite an existing\n      terminology of the same name.</p>", "smithy.api#required" => {}}))
    ImportTerminologyRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the custom terminology being imported.</p>"}))
    ImportTerminologyRequest.add_member(:terminology_data, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyData, location_name: 'TerminologyData', traits: {"smithy.api#documentation" => "<p>The terminology data for the custom terminology being imported.</p>", "smithy.api#required" => {}}))
    ImportTerminologyRequest.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: 'EncryptionKey', traits: {"smithy.api#documentation" => "<p>The encryption key for the custom terminology being imported.</p>"}))
    ImportTerminologyRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to be associated with this resource. A tag is a key-value pair that\n      adds metadata to a resource. Each tag key for the resource must be unique.\n      For more information, see <a href=\"https://docs.aws.amazon.com/translate/latest/dg/tagging.html\">\n        Tagging your resources</a>.</p>"}))
    ImportTerminologyRequest.type = Types::ImportTerminologyRequest
    ImportTerminologyResponse.add_member(:terminology_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyProperties, location_name: 'TerminologyProperties', traits: {"smithy.api#documentation" => "<p>The properties of the custom terminology being imported.</p>"}))
    ImportTerminologyResponse.add_member(:auxiliary_data_location, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyDataLocation, location_name: 'AuxiliaryDataLocation', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of a file that provides any errors or warnings that were produced\n      by your input file. This file was created when Amazon Translate attempted to create a\n      terminology resource. The location is returned as a presigned URL to that has a 30 minute\n      expiration.</p>"}))
    ImportTerminologyResponse.type = Types::ImportTerminologyResponse
    InputDataConfig.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>The URI of the AWS S3 folder that contains the input files. Amazon Translate translates all the\n      files in the folder and all its sub-folders. The folder must be in the same Region as the API endpoint you are\n      calling.</p>", "smithy.api#required" => {}}))
    InputDataConfig.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>Describes the format of the data that you submit to Amazon Translate as input. You can\n      specify one of the following multipurpose internet mail extension (MIME) types:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>text/html</code>: The input data consists of one or more HTML files. Amazon\n          Translate translates only the text that resides in the <code>html</code> element in each\n          file.</p>\n            </li>\n            <li>\n               <p>\n                  <code>text/plain</code>: The input data consists of one or more unformatted text\n          files. Amazon Translate translates every character in this type of input.</p>\n            </li>\n            <li>\n               <p>\n                  <code>application/vnd.openxmlformats-officedocument.wordprocessingml.document</code>:\n          The input data consists of one or more Word documents (.docx).</p>\n            </li>\n            <li>\n               <p>\n                  <code>application/vnd.openxmlformats-officedocument.presentationml.presentation</code>:\n          The input data consists of one or more PowerPoint Presentation files (.pptx).</p>\n            </li>\n            <li>\n               <p>\n                  <code>application/vnd.openxmlformats-officedocument.spreadsheetml.sheet</code>: The\n          input data consists of one or more Excel Workbook files (.xlsx).</p>\n            </li>\n            <li>\n               <p>\n                  <code>application/x-xliff+xml</code>: The input data consists of one or more XML\n          Localization Interchange File Format (XLIFF) files (.xlf). Amazon Translate supports only\n          XLIFF version 1.2.</p>\n            </li>\n         </ul>\n         <important>\n            <p>If you structure your input data as HTML, ensure that you set this parameter to\n          <code>text/html</code>. By doing so, you cut costs by limiting the translation to the\n        contents of the <code>html</code> element in each file. Otherwise, if you set this parameter\n        to <code>text/plain</code>, your costs will cover the translation of every character.</p>\n         </important>", "smithy.api#required" => {}}))
    InputDataConfig.type = Types::InputDataConfig
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    InvalidFilterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidFilterException.type = Types::InvalidFilterException
    InvalidParameterValueException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidRequestException.type = Types::InvalidRequestException
    JobDetails.add_member(:translated_documents_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TranslatedDocumentsCount', traits: {"smithy.api#documentation" => "<p>The number of documents successfully processed during a translation job.</p>"}))
    JobDetails.add_member(:documents_with_errors_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DocumentsWithErrorsCount', traits: {"smithy.api#documentation" => "<p>The number of documents that could not be processed during a translation job.</p>"}))
    JobDetails.add_member(:input_documents_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InputDocumentsCount', traits: {"smithy.api#documentation" => "<p>The number of documents used as input in a translation job.</p>"}))
    JobDetails.type = Types::JobDetails
    JobStatus.add_member(:submitted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBMITTED', traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    JobStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:completed_with_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED_WITH_ERROR', traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ERROR"}))
    JobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:stop_requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_REQUESTED', traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    JobStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    Language.add_member(:language_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LocalizedNameString, location_name: 'LanguageName', traits: {"smithy.api#documentation" => "<p>Language name of the supported language.</p>", "smithy.api#required" => {}}))
    Language.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>Language code for the supported language.</p>", "smithy.api#required" => {}}))
    Language.type = Types::Language
    LanguageCodeStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString)
    LanguagesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Language)
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    ListLanguagesRequest.add_member(:display_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayLanguageCode, location_name: 'DisplayLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code for the language to use to display the language names in the response.\n      The language code is <code>en</code> by default. </p>"}))
    ListLanguagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Include the NextToken value to fetch the next group of supported languages. </p>"}))
    ListLanguagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each response.</p>"}))
    ListLanguagesRequest.type = Types::ListLanguagesRequest
    ListLanguagesResponse.add_member(:languages, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguagesList, location_name: 'Languages', traits: {"smithy.api#documentation" => "<p>The list of supported languages.</p>"}))
    ListLanguagesResponse.add_member(:display_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayLanguageCode, location_name: 'DisplayLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code passed in with the request.</p>"}))
    ListLanguagesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> If the response does not include all remaining results, use the NextToken\n      in the next request to fetch the next group of supported languages.</p>"}))
    ListLanguagesResponse.type = Types::ListLanguagesResponse
    ListParallelDataRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A string that specifies the next page of results to return in a paginated response.</p>"}))
    ListParallelDataRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of parallel data resources returned for each request.</p>"}))
    ListParallelDataRequest.type = Types::ListParallelDataRequest
    ListParallelDataResponse.add_member(:parallel_data_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataPropertiesList, location_name: 'ParallelDataPropertiesList', traits: {"smithy.api#documentation" => "<p>The properties of the parallel data resources returned by this request.</p>"}))
    ListParallelDataResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated\n      response. This value is null if there are no additional pages.</p>"}))
    ListParallelDataResponse.type = Types::ListParallelDataResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the given Amazon Translate resource you are querying.\n    </p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags associated with the Amazon Translate resource being queried. A tag is a key-value\n      pair that adds as a metadata to a resource used by Amazon Translate. For example, a tag with\n      \"Sales\" as the key might be added to a resource to indicate its use by the sales department.\n    </p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTerminologiesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the result of the request to ListTerminologies was truncated, include the NextToken to\n      fetch the next group of custom terminologies. </p>"}))
    ListTerminologiesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of custom terminologies returned per list request.</p>"}))
    ListTerminologiesRequest.type = Types::ListTerminologiesRequest
    ListTerminologiesResponse.add_member(:terminology_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyPropertiesList, location_name: 'TerminologyPropertiesList', traits: {"smithy.api#documentation" => "<p>The properties list of the custom terminologies returned on the list request.</p>"}))
    ListTerminologiesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> If the response to the ListTerminologies was truncated, the NextToken fetches the next\n      group of custom terminologies.</p>"}))
    ListTerminologiesResponse.type = Types::ListTerminologiesResponse
    ListTextTranslationJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: TextTranslationJobFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>The parameters that specify which batch translation jobs to retrieve. Filters include job\n      name, job status, and submission time. You can only set one filter at a time.</p>"}))
    ListTextTranslationJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>"}))
    ListTextTranslationJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page. The default value is 100.</p>"}))
    ListTextTranslationJobsRequest.type = Types::ListTextTranslationJobsRequest
    ListTextTranslationJobsResponse.add_member(:text_translation_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TextTranslationJobPropertiesList, location_name: 'TextTranslationJobPropertiesList', traits: {"smithy.api#documentation" => "<p>A list containing the properties of each job that is returned.</p>"}))
    ListTextTranslationJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is <code>null</code>\n      when there are no more results to return.</p>"}))
    ListTextTranslationJobsResponse.type = Types::ListTextTranslationJobsResponse
    MergeStrategy.add_member(:overwrite, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERWRITE', traits: {"smithy.api#enumValue" => "OVERWRITE"}))
    OutputDataConfig.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>The URI of the S3 folder that contains a translation job's output file. The folder must\n      be in the same Region as the API endpoint that you are calling.</p>", "smithy.api#required" => {}}))
    OutputDataConfig.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: 'EncryptionKey'))
    OutputDataConfig.type = Types::OutputDataConfig
    ParallelDataConfig.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>The URI of the Amazon S3 folder that contains the parallel data input file. The folder\n      must be in the same Region as the API endpoint you are calling.</p>"}))
    ParallelDataConfig.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataFormat, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>The format of the parallel data input file.</p>"}))
    ParallelDataConfig.type = Types::ParallelDataConfig
    ParallelDataDataLocation.add_member(:repository_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RepositoryType', traits: {"smithy.api#documentation" => "<p>Describes the repository that contains the parallel data input file.</p>", "smithy.api#required" => {}}))
    ParallelDataDataLocation.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of the parallel data input file. The location is returned as a\n      presigned URL to that has a 30-minute expiration.</p>\n    \n         <important>\n            <p>Amazon Translate doesn't scan all input files for the risk of CSV injection\n        attacks. </p>\n            <p>CSV injection occurs when a .csv or .tsv file is altered so that a record contains\n        malicious code. The record begins with a special character, such as =, +, -, or @. When the\n        file is opened in a spreadsheet program, the program might interpret the record as a formula\n        and run the code within it.</p>\n            <p>Before you download an input file from Amazon S3, ensure that you recognize the file and trust its creator.</p>\n         </important>", "smithy.api#required" => {}}))
    ParallelDataDataLocation.type = Types::ParallelDataDataLocation
    ParallelDataFormat.add_member(:tsv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TSV', traits: {"smithy.api#enumValue" => "TSV"}))
    ParallelDataFormat.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    ParallelDataFormat.add_member(:tmx, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TMX', traits: {"smithy.api#enumValue" => "TMX"}))
    ParallelDataProperties.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The custom name assigned to the parallel data resource.</p>"}))
    ParallelDataProperties.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the parallel data resource.</p>"}))
    ParallelDataProperties.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description assigned to the parallel data resource.</p>"}))
    ParallelDataProperties.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the parallel data resource. When the parallel data is ready for you to use,\n      the status is <code>ACTIVE</code>.</p>"}))
    ParallelDataProperties.add_member(:source_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'SourceLanguageCode', traits: {"smithy.api#documentation" => "<p>The source language of the translations in the parallel data file.</p>"}))
    ParallelDataProperties.add_member(:target_language_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeStringList, location_name: 'TargetLanguageCodes', traits: {"smithy.api#documentation" => "<p>The language codes for the target languages available in the parallel data file. All\n      possible target languages are returned as an array.</p>"}))
    ParallelDataProperties.add_member(:parallel_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataConfig, location_name: 'ParallelDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and S3 location of the parallel data input file.</p>"}))
    ParallelDataProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: UnboundedLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Additional information from Amazon Translate about the parallel data resource. </p>"}))
    ParallelDataProperties.add_member(:imported_data_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ImportedDataSize', traits: {"smithy.api#documentation" => "<p>The number of UTF-8 characters that Amazon Translate imported from the parallel data input\n      file. This number includes only the characters in your translation examples. It does not\n      include characters that are used to format your file. For example, if you provided a\n      Translation Memory Exchange (.tmx) file, this number does not include the tags.</p>"}))
    ParallelDataProperties.add_member(:imported_record_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ImportedRecordCount', traits: {"smithy.api#documentation" => "<p>The number of records successfully imported from the parallel data input file.</p>"}))
    ParallelDataProperties.add_member(:failed_record_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'FailedRecordCount', traits: {"smithy.api#documentation" => "<p>The number of records unsuccessfully imported from the parallel data input file.</p>"}))
    ParallelDataProperties.add_member(:skipped_record_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'SkippedRecordCount', traits: {"smithy.api#documentation" => "<p>The number of items in the input file that Amazon Translate skipped when you created or\n      updated the parallel data resource. For example, Amazon Translate skips empty records, empty\n      target texts, and empty lines.</p>"}))
    ParallelDataProperties.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: 'EncryptionKey'))
    ParallelDataProperties.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the parallel data resource was created.</p>"}))
    ParallelDataProperties.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the parallel data resource was last updated.</p>"}))
    ParallelDataProperties.add_member(:latest_update_attempt_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: 'LatestUpdateAttemptStatus', traits: {"smithy.api#documentation" => "<p>The status of the most recent update attempt for the parallel data resource.</p>"}))
    ParallelDataProperties.add_member(:latest_update_attempt_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LatestUpdateAttemptAt', traits: {"smithy.api#documentation" => "<p>The time that the most recent update was attempted.</p>"}))
    ParallelDataProperties.type = Types::ParallelDataProperties
    ParallelDataPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataProperties)
    ParallelDataStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ParallelDataStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ParallelDataStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ParallelDataStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ParallelDataStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    Profanity.add_member(:mask, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASK', traits: {"smithy.api#enumValue" => "MASK"}))
    ResourceNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartTextTranslationJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name of the batch translation job to be performed.</p>"}))
    StartTextTranslationJobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and location of the input documents for the translation job.</p>", "smithy.api#required" => {}}))
    StartTextTranslationJobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the S3 folder to which your job output will be saved.\n      </p>", "smithy.api#required" => {}}))
    StartTextTranslationJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role\n      that grants Amazon Translate read access to your input data. For more information, see\n      <a href=\"https://docs.aws.amazon.com/translate/latest/dg/identity-and-access-management.html\">Identity and access management </a>.</p>", "smithy.api#required" => {}}))
    StartTextTranslationJobRequest.add_member(:source_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'SourceLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code of the input language. Specify the language if all input documents share the same language.\n      If you don't know the language of the source files, or your input documents contains different source\n      languages, select <code>auto</code>. Amazon Translate auto detects the source language for each input document.\n      For a list of supported language codes, see\n      <a href=\"https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html\">Supported languages</a>.</p>", "smithy.api#required" => {}}))
    StartTextTranslationJobRequest.add_member(:target_language_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetLanguageCodeStringList, location_name: 'TargetLanguageCodes', traits: {"smithy.api#documentation" => "<p>The target languages of the translation job. Enter up to 10 language codes.\n      Each input file is translated into each target language.</p>\n         <p>Each language code is 2 or 5 characters long. For a list of language codes, see <a href=\"https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html\">Supported languages</a>.</p>", "smithy.api#required" => {}}))
    StartTextTranslationJobRequest.add_member(:terminology_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameList, location_name: 'TerminologyNames', traits: {"smithy.api#documentation" => "<p>The name of a custom terminology resource to add to the translation job. This resource\n      lists examples source terms and the desired translation for each term.</p>\n         <p>This parameter accepts only one custom terminology resource.</p>\n         <p>If you specify multiple target languages for the\n      job, translate uses the designated terminology for each\n      requested target language that has an entry for the source term\n      in the terminology file.</p>\n         <p>For a list of available custom terminology resources, use the <a>ListTerminologies</a> operation.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html\">Custom terminology</a>.</p>"}))
    StartTextTranslationJobRequest.add_member(:parallel_data_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameList, location_name: 'ParallelDataNames', traits: {"smithy.api#documentation" => "<p>The name of a parallel data resource to add to the translation job. This resource consists\n      of examples that show how you want segments of text to be translated.\n      If you specify multiple target languages for\n      the job, the parallel data file must include translations for\n      all the target languages.</p>\n         <p>When you add parallel\n      data to a translation job, you create an <i>Active Custom Translation</i> job. </p>\n         <p>This parameter accepts only one parallel data resource.</p>\n         <note>\n            <p>Active Custom Translation jobs are priced at a higher rate than other jobs that don't\n        use parallel data. For more information, see <a href=\"http://aws.amazon.com/translate/pricing/\">Amazon Translate pricing</a>.</p>\n         </note>\n         <p>For a list of available parallel data resources, use the <a>ListParallelData</a> operation.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-parallel-data.html\">\n    Customizing your translations with parallel data</a>.</p>"}))
    StartTextTranslationJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. This token is generated for you when using the Amazon Translate\n      SDK.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartTextTranslationJobRequest.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: TranslationSettings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>Settings to configure your translation output. You can configure the following options:</p>\n         <ul>\n            <li>\n               <p>Brevity: not supported.</p>\n            </li>\n            <li>\n               <p>Formality: sets the formality level of the output text.</p>\n            </li>\n            <li>\n               <p>Profanity: masks profane words and phrases in your translation output.</p>\n            </li>\n         </ul>"}))
    StartTextTranslationJobRequest.type = Types::StartTextTranslationJobRequest
    StartTextTranslationJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier generated for the job. To get the status of a job, use this ID with the\n        <a>DescribeTextTranslationJob</a> operation.</p>"}))
    StartTextTranslationJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the job. Possible values include:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SUBMITTED</code> - The job has been received and is queued for\n          processing.</p>\n            </li>\n            <li>\n               <p>\n                  <code>IN_PROGRESS</code> - Amazon Translate is processing the job.</p>\n            </li>\n            <li>\n               <p>\n                  <code>COMPLETED</code> - The job was successfully completed and the output is\n          available.</p>\n            </li>\n            <li>\n               <p>\n                  <code>COMPLETED_WITH_ERROR</code> - The job was completed with errors. The errors can\n          be analyzed in the job's output.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> - The job did not complete. To get details, use the <a>DescribeTextTranslationJob</a> operation.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOP_REQUESTED</code> - The user who started the job has requested that it be\n          stopped.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOPPED</code> - The job has been stopped.</p>\n            </li>\n         </ul>"}))
    StartTextTranslationJobResponse.type = Types::StartTextTranslationJobResponse
    StopTextTranslationJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job ID of the job to be stopped.</p>", "smithy.api#required" => {}}))
    StopTextTranslationJobRequest.type = Types::StopTextTranslationJobRequest
    StopTextTranslationJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job ID of the stopped batch translation job.</p>"}))
    StopTextTranslationJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the designated job. Upon successful completion, the job's status will be\n        <code>STOPPED</code>.</p>"}))
    StopTextTranslationJobResponse.type = Types::StopTextTranslationJobResponse
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The initial part of a key-value pair that forms a tag associated with a given resource.\n    </p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p> The second part of a key-value pair that forms a tag associated with a given resource.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the given Amazon Translate resource to which you want\n      to associate the tags. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags being associated with a specific Amazon Translate resource. There can be a maximum\n      of 50 tags (both existing and pending) associated with a specific resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetLanguageCodeStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString)
    Term.add_member(:source_text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceText', traits: {"smithy.api#documentation" => "<p>The source text of the term being translated by the custom terminology.</p>"}))
    Term.add_member(:target_text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetText', traits: {"smithy.api#documentation" => "<p>The target text of the term being translated by the custom terminology.</p>"}))
    Term.type = Types::Term
    TermList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Term)
    TerminologyData.add_member(:file, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyFile, location_name: 'File', traits: {"smithy.api#documentation" => "<p>The file containing the custom terminology data. Your version of the AWS SDK performs a\n      Base64-encoding on this field before sending a request to the AWS service. Users of the SDK\n      should not perform Base64-encoding themselves.</p>", "smithy.api#required" => {}}))
    TerminologyData.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyDataFormat, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>The data format of the custom terminology.</p>", "smithy.api#required" => {}}))
    TerminologyData.add_member(:directionality, Smithy::Schema::Shapes::ShapeRef.new(shape: Directionality, location_name: 'Directionality', traits: {"smithy.api#documentation" => "<p>The directionality of your terminology resource indicates whether it has one source\n      language (uni-directional) or multiple (multi-directional).</p>\n         <dl>\n            <dt>UNI</dt>\n            <dd>\n               <p>The terminology resource has one source language (for example, the first column in a\n            CSV file), and all of its other languages are target languages. </p>\n            </dd>\n            <dt>MULTI</dt>\n            <dd>\n               <p>Any language in the terminology resource can be the source language or a target\n            language. A single multi-directional terminology resource can be used for jobs that\n            translate different language pairs. For example, if the terminology contains English and\n            Spanish terms, it can be used for jobs that translate English to Spanish and Spanish to\n            English.</p>\n            </dd>\n         </dl>\n         <p>When you create a custom terminology resource without specifying the directionality, it\n      behaves as uni-directional terminology, although this parameter will have a null value.</p>"}))
    TerminologyData.type = Types::TerminologyData
    TerminologyDataFormat.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    TerminologyDataFormat.add_member(:tmx, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TMX', traits: {"smithy.api#enumValue" => "TMX"}))
    TerminologyDataFormat.add_member(:tsv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TSV', traits: {"smithy.api#enumValue" => "TSV"}))
    TerminologyDataLocation.add_member(:repository_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RepositoryType', traits: {"smithy.api#documentation" => "<p>The repository type for the custom terminology data.</p>", "smithy.api#required" => {}}))
    TerminologyDataLocation.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of the most recent custom terminology input file that was\n      successfully imported into Amazon Translate. The location is returned as a presigned URL that\n      has a 30-minute expiration .</p>\n    \n         <important>\n            <p>Amazon Translate doesn't scan all input files for the risk of CSV injection\n        attacks. </p>\n            <p>CSV injection occurs when a .csv or .tsv file is altered so that a record contains\n        malicious code. The record begins with a special character, such as =, +, -, or @. When the\n        file is opened in a spreadsheet program, the program might interpret the record as a formula\n        and run the code within it.</p>\n            <p>Before you download an input file from Amazon S3, ensure that you recognize the file and trust its creator.</p>\n         </important>", "smithy.api#required" => {}}))
    TerminologyDataLocation.type = Types::TerminologyDataLocation
    TerminologyProperties.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the custom terminology.</p>"}))
    TerminologyProperties.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the custom terminology properties.</p>"}))
    TerminologyProperties.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the custom terminology. </p>"}))
    TerminologyProperties.add_member(:source_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'SourceLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code for the source text of the translation request for which the custom\n      terminology is being used.</p>"}))
    TerminologyProperties.add_member(:target_language_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeStringList, location_name: 'TargetLanguageCodes', traits: {"smithy.api#documentation" => "<p>The language codes for the target languages available with the custom terminology\n      resource. All possible target languages are returned in array.</p>"}))
    TerminologyProperties.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: 'EncryptionKey', traits: {"smithy.api#documentation" => "<p>The encryption key for the custom terminology.</p>"}))
    TerminologyProperties.add_member(:size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SizeBytes', traits: {"smithy.api#documentation" => "<p>The size of the file used when importing a custom terminology.</p>"}))
    TerminologyProperties.add_member(:term_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TermCount', traits: {"smithy.api#documentation" => "<p>The number of terms included in the custom terminology.</p>"}))
    TerminologyProperties.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the custom terminology was created, based on the timestamp.</p>"}))
    TerminologyProperties.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the custom terminology was last update, based on the timestamp.</p>"}))
    TerminologyProperties.add_member(:directionality, Smithy::Schema::Shapes::ShapeRef.new(shape: Directionality, location_name: 'Directionality', traits: {"smithy.api#documentation" => "<p>The directionality of your terminology resource indicates whether it has one source\n      language (uni-directional) or multiple (multi-directional). </p>\n         <dl>\n            <dt>UNI</dt>\n            <dd>\n               <p>The terminology resource has one source language (the first column in a CSV file),\n            and all of its other languages are target languages.</p>\n            </dd>\n            <dt>MULTI</dt>\n            <dd>\n               <p>Any language in the terminology resource can be the source language.</p>\n            </dd>\n         </dl>"}))
    TerminologyProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: UnboundedLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Additional information from Amazon Translate about the terminology resource.</p>"}))
    TerminologyProperties.add_member(:skipped_term_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SkippedTermCount', traits: {"smithy.api#documentation" => "<p>The number of terms in the input file that Amazon Translate skipped when you created or\n      updated the terminology resource.</p>"}))
    TerminologyProperties.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyDataFormat, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>The format of the custom terminology input file.</p>"}))
    TerminologyProperties.type = Types::TerminologyProperties
    TerminologyPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyProperties)
    TextSizeLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TextSizeLimitExceededException.type = Types::TextSizeLimitExceededException
    TextTranslationJobFilter.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs by name.</p>"}))
    TextTranslationJobFilter.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based by job status.</p>"}))
    TextTranslationJobFilter.add_member(:submitted_before_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmittedBeforeTime', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing and\n      returns only the jobs submitted before the specified time. Jobs are returned in ascending\n      order, oldest to newest.</p>"}))
    TextTranslationJobFilter.add_member(:submitted_after_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmittedAfterTime', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing and\n      returns only the jobs submitted after the specified time. Jobs are returned in descending\n      order, newest to oldest.</p>"}))
    TextTranslationJobFilter.type = Types::TextTranslationJobFilter
    TextTranslationJobProperties.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID of the translation job.</p>"}))
    TextTranslationJobProperties.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The user-defined name of the translation job.</p>"}))
    TextTranslationJobProperties.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the translation job.</p>"}))
    TextTranslationJobProperties.add_member(:job_details, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDetails, location_name: 'JobDetails', traits: {"smithy.api#documentation" => "<p>The number of documents successfully and unsuccessfully processed during the translation\n      job.</p>"}))
    TextTranslationJobProperties.add_member(:source_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'SourceLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code of the language of the source text. The language must be a language\n      supported by Amazon Translate.</p>"}))
    TextTranslationJobProperties.add_member(:target_language_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetLanguageCodeStringList, location_name: 'TargetLanguageCodes', traits: {"smithy.api#documentation" => "<p>The language code of the language of the target text. The language must be a language\n      supported by Amazon Translate.</p>"}))
    TextTranslationJobProperties.add_member(:terminology_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameList, location_name: 'TerminologyNames', traits: {"smithy.api#documentation" => "<p>A list containing the names of the terminologies applied to a translation job. Only one\n      terminology can be applied per <a>StartTextTranslationJob</a> request at this\n      time.</p>"}))
    TextTranslationJobProperties.add_member(:parallel_data_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameList, location_name: 'ParallelDataNames', traits: {"smithy.api#documentation" => "<p>A list containing the names of the parallel data resources applied to the translation\n      job.</p>"}))
    TextTranslationJobProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: UnboundedLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>An explanation of any errors that may have occurred during the translation job.</p>"}))
    TextTranslationJobProperties.add_member(:submitted_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmittedTime', traits: {"smithy.api#documentation" => "<p>The time at which the translation job was submitted.</p>"}))
    TextTranslationJobProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time at which the translation job ended.</p>"}))
    TextTranslationJobProperties.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input configuration properties that were specified when the job was requested.</p>"}))
    TextTranslationJobProperties.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output configuration properties that were specified when the job was requested.</p>"}))
    TextTranslationJobProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role\n      that granted Amazon Translate read access to the job's input data.</p>"}))
    TextTranslationJobProperties.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: TranslationSettings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>Settings that modify the translation output.</p>"}))
    TextTranslationJobProperties.type = Types::TextTranslationJobProperties
    TextTranslationJobPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TextTranslationJobProperties)
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    TooManyTagsException.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn'))
    TooManyTagsException.type = Types::TooManyTagsException
    TranslateDocumentRequest.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'Document', traits: {"smithy.api#documentation" => "<p>The content and content type for the document to be translated. The document size must not exceed 100 KB.</p>", "smithy.api#required" => {}}))
    TranslateDocumentRequest.add_member(:terminology_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameList, location_name: 'TerminologyNames', traits: {"smithy.api#documentation" => "<p>The name of a terminology list file to add to the translation job. This file\n      provides source terms and the desired translation for each term. \n      A terminology list can contain a maximum of 256 terms.\n      You can use one custom terminology resource in your translation request.</p>\n         <p>Use the <a>ListTerminologies</a> operation\n       to get the available terminology lists.</p>\n         <p>For more information about custom terminology lists, see <a href=\"https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html\">Custom terminology</a>.</p>"}))
    TranslateDocumentRequest.add_member(:source_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'SourceLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code for the language of the source text. For a list of supported language codes, see\n      <a href=\"https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html\">Supported languages</a>.</p>\n         <p>To have Amazon Translate determine the source language of your text, you can specify\n      <code>auto</code> in the <code>SourceLanguageCode</code> field. If you specify\n      <code>auto</code>, Amazon Translate will call <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html\">Amazon\n        Comprehend</a> to determine the source language.</p>\n         <note>\n            <p>If you specify <code>auto</code>, you must send the <code>TranslateDocument</code> request in a region that supports\n      Amazon Comprehend. Otherwise, the request returns an error indicating that autodetect is not supported. </p>\n         </note>", "smithy.api#required" => {}}))
    TranslateDocumentRequest.add_member(:target_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'TargetLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code requested for the translated document.  \n      For a list of supported language codes, see\n      <a href=\"https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html\">Supported languages</a>.</p>", "smithy.api#required" => {}}))
    TranslateDocumentRequest.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: TranslationSettings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>Settings to configure your translation output. You can configure the following options:</p>\n         <ul>\n            <li>\n               <p>Brevity: not supported.</p>\n            </li>\n            <li>\n               <p>Formality: sets the formality level of the output text.</p>\n            </li>\n            <li>\n               <p>Profanity: masks profane words and phrases in your translation output.</p>\n            </li>\n         </ul>"}))
    TranslateDocumentRequest.type = Types::TranslateDocumentRequest
    TranslateDocumentResponse.add_member(:translated_document, Smithy::Schema::Shapes::ShapeRef.new(shape: TranslatedDocument, location_name: 'TranslatedDocument', traits: {"smithy.api#documentation" => "<p>The document containing the translated content. The document format matches the source document format.</p>", "smithy.api#required" => {}}))
    TranslateDocumentResponse.add_member(:source_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'SourceLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code of the source document.</p>", "smithy.api#required" => {}}))
    TranslateDocumentResponse.add_member(:target_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'TargetLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code of the translated document. </p>", "smithy.api#required" => {}}))
    TranslateDocumentResponse.add_member(:applied_terminologies, Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedTerminologyList, location_name: 'AppliedTerminologies', traits: {"smithy.api#documentation" => "<p>The names of the custom terminologies applied to the input text by Amazon Translate to produce the\n      translated text document.</p>"}))
    TranslateDocumentResponse.add_member(:applied_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: TranslationSettings, location_name: 'AppliedSettings'))
    TranslateDocumentResponse.type = Types::TranslateDocumentResponse
    TranslateTextRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The text to translate. The text string can be a maximum of 10,000 bytes long. Depending on\n      your character set, this may be fewer than 10,000 characters.</p>", "smithy.api#required" => {}}))
    TranslateTextRequest.add_member(:terminology_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameList, location_name: 'TerminologyNames', traits: {"smithy.api#documentation" => "<p>The name of a terminology list file to add to the translation job. This file\n      provides source terms and the desired translation for each term. \n      A terminology list can contain a maximum of 256 terms.\n      You can use one custom terminology resource in your translation request.</p>\n         <p>Use the <a>ListTerminologies</a> operation\n      to get the available terminology lists.</p>\n         <p>For more information about custom terminology lists, see <a href=\"https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html\">Custom terminology</a>.</p>"}))
    TranslateTextRequest.add_member(:source_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'SourceLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code for the language of the source text. For a list of language codes, see <a href=\"https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html\">Supported languages</a>.</p>\n         <p>To have Amazon Translate determine the source language of your text, you can specify\n        <code>auto</code> in the <code>SourceLanguageCode</code> field. If you specify\n        <code>auto</code>, Amazon Translate will call <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html\">Amazon\n        Comprehend</a> to determine the source language.</p>\n         <note>\n            <p>If you specify <code>auto</code>, you must send the <code>TranslateText</code> request in a region that supports\n          Amazon Comprehend. Otherwise, the request returns an error indicating that autodetect is not supported. </p>\n         </note>", "smithy.api#required" => {}}))
    TranslateTextRequest.add_member(:target_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'TargetLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code requested for the language of the target text.\n      For a list of language codes, see <a href=\"https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html\">Supported languages</a>.</p>", "smithy.api#required" => {}}))
    TranslateTextRequest.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: TranslationSettings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>Settings to configure your translation output. You can configure the following options:</p>\n         <ul>\n            <li>\n               <p>Brevity: reduces the length of the translated output for most translations.</p>\n            </li>\n            <li>\n               <p>Formality: sets the formality level of the output text.</p>\n            </li>\n            <li>\n               <p>Profanity: masks profane words and phrases in your translation output.</p>\n            </li>\n         </ul>"}))
    TranslateTextRequest.type = Types::TranslateTextRequest
    TranslateTextResponse.add_member(:translated_text, Smithy::Schema::Shapes::ShapeRef.new(shape: TranslatedTextString, location_name: 'TranslatedText', traits: {"smithy.api#documentation" => "<p>The translated text.</p>", "smithy.api#required" => {}}))
    TranslateTextResponse.add_member(:source_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'SourceLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code for the language of the source text.</p>", "smithy.api#required" => {}}))
    TranslateTextResponse.add_member(:target_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'TargetLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code for the language of the target text. </p>", "smithy.api#required" => {}}))
    TranslateTextResponse.add_member(:applied_terminologies, Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedTerminologyList, location_name: 'AppliedTerminologies', traits: {"smithy.api#documentation" => "<p>The names of the custom terminologies applied to the input text by Amazon Translate for the\n      translated text response.</p>"}))
    TranslateTextResponse.add_member(:applied_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: TranslationSettings, location_name: 'AppliedSettings', traits: {"smithy.api#documentation" => "<p>Optional settings that modify the translation output.</p>"}))
    TranslateTextResponse.type = Types::TranslateTextResponse
    TranslatedDocument.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: TranslatedDocumentContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The document containing the translated content.</p>", "smithy.api#required" => {}}))
    TranslatedDocument.type = Types::TranslatedDocument
    TranslationSettings.add_member(:formality, Smithy::Schema::Shapes::ShapeRef.new(shape: Formality, location_name: 'Formality', traits: {"smithy.api#documentation" => "<p>You can specify the desired level of formality for translations\n        to supported target languages. The formality\n      setting controls the level of formal language usage (also known as <a href=\"https://en.wikipedia.org/wiki/Register_(sociolinguistics)\">register</a>) in the\n      translation output.  You can set the value to informal or formal. If you don't specify a value for\n      formality, or if the target language doesn't support formality, the translation will\n      ignore the formality setting.</p>\n         <p> If you specify multiple target languages for the job, translate ignores\n      the formality setting for any unsupported target language.</p>\n         <p>For a list of target languages that support formality, see <a href=\"https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-formality.html#customizing-translations-formality-languages\">Supported languages</a>\n      in the Amazon Translate Developer Guide.</p>"}))
    TranslationSettings.add_member(:profanity, Smithy::Schema::Shapes::ShapeRef.new(shape: Profanity, location_name: 'Profanity', traits: {"smithy.api#documentation" => "<p>You can enable the profanity setting if you want to mask profane words and\n      phrases in your translation output.</p>\n         <p>To mask profane words and phrases, Amazon Translate replaces them with the grawlix string\n      “?$\#@$“. This 5-character sequence is used for each profane word or phrase, regardless of the\n      length or number of words.</p>\n         <p>Amazon Translate doesn't detect profanity in all of its supported languages. For languages\n      that don't support profanity detection, see <a href=\"https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-profanity.html#customizing-translations-profanity-languages\">Unsupported languages</a> in the Amazon Translate Developer Guide.</p>\n         <p>If you specify multiple target languages for the job, all the\n      target languages must support profanity masking. If any of the\n      target languages don't support profanity masking, the\n      translation job won't mask profanity for any target\n      language.</p>"}))
    TranslationSettings.add_member(:brevity, Smithy::Schema::Shapes::ShapeRef.new(shape: Brevity, location_name: 'Brevity', traits: {"smithy.api#documentation" => "<p>When you turn on brevity, Amazon Translate reduces the length of the translation output for most translations (when\n      compared with the same translation with brevity turned off). By default, brevity is turned\n      off.</p>\n         <p>If you turn on brevity for a translation request with an unsupported language pair, the\n      translation proceeds with the brevity setting turned off.</p>\n         <p>For the language pairs that brevity supports, see <a href=\"https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-brevity\">Using brevity</a> in the\n      Amazon Translate Developer Guide.</p>"}))
    TranslationSettings.type = Types::TranslationSettings
    UnsupportedDisplayLanguageCodeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnsupportedDisplayLanguageCodeException.add_member(:display_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'DisplayLanguageCode', traits: {"smithy.api#documentation" => "<p>Language code passed in with the request.</p>"}))
    UnsupportedDisplayLanguageCodeException.type = Types::UnsupportedDisplayLanguageCodeException
    UnsupportedLanguagePairException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnsupportedLanguagePairException.add_member(:source_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'SourceLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code for the language of the input text. </p>"}))
    UnsupportedLanguagePairException.add_member(:target_language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: 'TargetLanguageCode', traits: {"smithy.api#documentation" => "<p>The language code for the language of the translated text. </p>"}))
    UnsupportedLanguagePairException.type = Types::UnsupportedLanguagePairException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the given Amazon Translate resource from which you\n      want to remove the tags. </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The initial part of a key-value pair that forms a tag being removed from a given resource.\n        Keys must be unique and cannot be duplicated for a particular resource.\n    </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateParallelDataRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the parallel data resource being updated.</p>", "smithy.api#required" => {}}))
    UpdateParallelDataRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A custom description for the parallel data resource in Amazon Translate.</p>"}))
    UpdateParallelDataRequest.add_member(:parallel_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataConfig, location_name: 'ParallelDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and S3 location of the parallel data input file.</p>", "smithy.api#required" => {}}))
    UpdateParallelDataRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. This token is automatically generated when you use\n      Amazon Translate through an AWS SDK.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateParallelDataRequest.type = Types::UpdateParallelDataRequest
    UpdateParallelDataResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the parallel data resource being updated.</p>"}))
    UpdateParallelDataResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the parallel data resource that you are attempting to update. Your update\n      request is accepted only if this status is either <code>ACTIVE</code> or\n      <code>FAILED</code>.</p>"}))
    UpdateParallelDataResponse.add_member(:latest_update_attempt_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: 'LatestUpdateAttemptStatus', traits: {"smithy.api#documentation" => "<p>The status of the parallel data update attempt. When the updated parallel data resource is\n      ready for you to use, the status is <code>ACTIVE</code>.</p>"}))
    UpdateParallelDataResponse.add_member(:latest_update_attempt_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LatestUpdateAttemptAt', traits: {"smithy.api#documentation" => "<p>The time that the most recent update was attempted.</p>"}))
    UpdateParallelDataResponse.type = Types::UpdateParallelDataResponse

    AWSShineFrontendService20170701 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.translate#AWSShineFrontendService_20170701"
      service.name = "AWSShineFrontendService20170701"
      service.version = "2017-07-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Translate", "arnNamespace" => "translate", "cloudFormationName" => "Translate", "cloudTrailEventSource" => "translate.amazonaws.com", "endpointPrefix" => "translate"}, "aws.auth#sigv4" => {"name" => "translate"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Translate"}
      service.add_operation(:create_parallel_data, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#CreateParallelData"
        operation.name = "CreateParallelData"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateParallelDataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateParallelDataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_parallel_data, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#DeleteParallelData"
        operation.name = "DeleteParallelData"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteParallelDataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteParallelDataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_terminology, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#DeleteTerminology"
        operation.name = "DeleteTerminology"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTerminologyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_text_translation_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#DescribeTextTranslationJob"
        operation.name = "DescribeTextTranslationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTextTranslationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTextTranslationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_parallel_data, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#GetParallelData"
        operation.name = "GetParallelData"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetParallelDataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetParallelDataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_terminology, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#GetTerminology"
        operation.name = "GetTerminology"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTerminologyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTerminologyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:import_terminology, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#ImportTerminology"
        operation.name = "ImportTerminology"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTerminologyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTerminologyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:list_languages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#ListLanguages"
        operation.name = "ListLanguages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLanguagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLanguagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDisplayLanguageCodeException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListLanguages.new
      end)
      service.add_operation(:list_parallel_data, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#ListParallelData"
        operation.name = "ListParallelData"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListParallelDataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListParallelDataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListParallelData.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_terminologies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#ListTerminologies"
        operation.name = "ListTerminologies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTerminologiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTerminologiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTerminologies.new
      end)
      service.add_operation(:list_text_translation_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#ListTextTranslationJobs"
        operation.name = "ListTextTranslationJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTextTranslationJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTextTranslationJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTextTranslationJobs.new
      end)
      service.add_operation(:start_text_translation_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#StartTextTranslationJob"
        operation.name = "StartTextTranslationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTextTranslationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTextTranslationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguagePairException)
        operation.traits = {}
      end)
      service.add_operation(:stop_text_translation_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#StopTextTranslationJob"
        operation.name = "StopTextTranslationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopTextTranslationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopTextTranslationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:translate_document, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#TranslateDocument"
        operation.name = "TranslateDocument"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TranslateDocumentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TranslateDocumentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguagePairException)
        operation.traits = {}
      end)
      service.add_operation(:translate_text, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#TranslateText"
        operation.name = "TranslateText"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TranslateTextRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TranslateTextResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedLanguageLowConfidenceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguagePairException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_parallel_data, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#UpdateParallelData"
        operation.name = "UpdateParallelData"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateParallelDataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateParallelDataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
