# frozen_string_literal: true

# This is generated code!

module Aws::Translate
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AppliedTerminology = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#AppliedTerminology", name: "AppliedTerminology")
    AppliedTerminologyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.translate#AppliedTerminologyList", name: "AppliedTerminologyList")
    BoundedLengthString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#BoundedLengthString", name: "BoundedLengthString", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{1,10000}$"})
    Brevity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.translate#Brevity", name: "Brevity")
    ClientTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#ClientTokenString", name: "ClientTokenString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#ContentType", name: "ContentType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[-\\w.]+\\/[-\\w.+]+$"})
    CreateParallelDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#CreateParallelDataRequest", name: "CreateParallelDataRequest")
    CreateParallelDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#CreateParallelDataResponse", name: "CreateParallelDataResponse")
    DeleteParallelDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#DeleteParallelDataRequest", name: "DeleteParallelDataRequest")
    DeleteParallelDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#DeleteParallelDataResponse", name: "DeleteParallelDataResponse")
    DeleteTerminologyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#DeleteTerminologyRequest", name: "DeleteTerminologyRequest")
    DescribeTextTranslationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#DescribeTextTranslationJobRequest", name: "DescribeTextTranslationJobRequest")
    DescribeTextTranslationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#DescribeTextTranslationJobResponse", name: "DescribeTextTranslationJobResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{0,256}$"})
    DetectedLanguageLowConfidenceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#DetectedLanguageLowConfidenceException", name: "DetectedLanguageLowConfidenceException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Directionality = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.translate#Directionality", name: "Directionality")
    DisplayLanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.translate#DisplayLanguageCode", name: "DisplayLanguageCode")
    Document = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#Document", name: "Document")
    DocumentContent = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.translate#DocumentContent", name: "DocumentContent", traits: {"smithy.api#length" => {"min" => 0, "max" => 102400}, "smithy.api#sensitive" => {}})
    EncryptionKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#EncryptionKey", name: "EncryptionKey")
    EncryptionKeyID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#EncryptionKeyID", name: "EncryptionKeyID", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}, "smithy.api#pattern" => "^(arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:kms:)?([a-z]{2}-[a-z]+(-[a-z]+)?-\\d:)?(\\d{12}:)?(((key/)?[a-zA-Z0-9-_]+)|(alias/[a-zA-Z0-9:/_-]+))$"})
    EncryptionKeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.translate#EncryptionKeyType", name: "EncryptionKeyType")
    Formality = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.translate#Formality", name: "Formality")
    GetParallelDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#GetParallelDataRequest", name: "GetParallelDataRequest")
    GetParallelDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#GetParallelDataResponse", name: "GetParallelDataResponse")
    GetTerminologyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#GetTerminologyRequest", name: "GetTerminologyRequest")
    GetTerminologyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#GetTerminologyResponse", name: "GetTerminologyResponse")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    ImportTerminologyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ImportTerminologyRequest", name: "ImportTerminologyRequest")
    ImportTerminologyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ImportTerminologyResponse", name: "ImportTerminologyResponse")
    InputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#InputDataConfig", name: "InputDataConfig")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.translate#Integer", name: "Integer")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidFilterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#InvalidFilterException", name: "InvalidFilterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JobDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#JobDetails", name: "JobDetails")
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    JobName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#JobName", name: "JobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.translate#JobStatus", name: "JobStatus")
    Language = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#Language", name: "Language")
    LanguageCodeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#LanguageCodeString", name: "LanguageCodeString", traits: {"smithy.api#length" => {"min" => 2, "max" => 5}})
    LanguageCodeStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.translate#LanguageCodeStringList", name: "LanguageCodeStringList")
    LanguagesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.translate#LanguagesList", name: "LanguagesList")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListLanguagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ListLanguagesRequest", name: "ListLanguagesRequest")
    ListLanguagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ListLanguagesResponse", name: "ListLanguagesResponse")
    ListParallelDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ListParallelDataRequest", name: "ListParallelDataRequest")
    ListParallelDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ListParallelDataResponse", name: "ListParallelDataResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTerminologiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ListTerminologiesRequest", name: "ListTerminologiesRequest")
    ListTerminologiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ListTerminologiesResponse", name: "ListTerminologiesResponse")
    ListTextTranslationJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ListTextTranslationJobsRequest", name: "ListTextTranslationJobsRequest")
    ListTextTranslationJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ListTextTranslationJobsResponse", name: "ListTextTranslationJobsResponse")
    LocalizedNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#LocalizedNameString", name: "LocalizedNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.translate#Long", name: "Long")
    MaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.translate#MaxResultsInteger", name: "MaxResultsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    MergeStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.translate#MergeStrategy", name: "MergeStrategy")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^\\p{ASCII}{0,8192}$"})
    OutputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#OutputDataConfig", name: "OutputDataConfig")
    ParallelDataArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#ParallelDataArn", name: "ParallelDataArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ParallelDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ParallelDataConfig", name: "ParallelDataConfig")
    ParallelDataDataLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ParallelDataDataLocation", name: "ParallelDataDataLocation")
    ParallelDataFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.translate#ParallelDataFormat", name: "ParallelDataFormat")
    ParallelDataProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ParallelDataProperties", name: "ParallelDataProperties")
    ParallelDataPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.translate#ParallelDataPropertiesList", name: "ParallelDataPropertiesList")
    ParallelDataStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.translate#ParallelDataStatus", name: "ParallelDataStatus")
    Profanity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.translate#Profanity", name: "Profanity")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([A-Za-z0-9-]_?)+$"})
    ResourceNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.translate#ResourceNameList", name: "ResourceNameList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#S3Uri", name: "S3Uri", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StartTextTranslationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#StartTextTranslationJobRequest", name: "StartTextTranslationJobRequest")
    StartTextTranslationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#StartTextTranslationJobResponse", name: "StartTextTranslationJobResponse")
    StopTextTranslationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#StopTextTranslationJobRequest", name: "StopTextTranslationJobRequest")
    StopTextTranslationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#StopTextTranslationJobResponse", name: "StopTextTranslationJobResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#String", name: "String", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{0,10000}$"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.translate#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.translate#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetLanguageCodeStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.translate#TargetLanguageCodeStringList", name: "TargetLanguageCodeStringList", traits: {"smithy.api#length" => {"min" => 1}})
    Term = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#Term", name: "Term")
    TermList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.translate#TermList", name: "TermList")
    TerminologyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#TerminologyArn", name: "TerminologyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    TerminologyData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TerminologyData", name: "TerminologyData")
    TerminologyDataFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.translate#TerminologyDataFormat", name: "TerminologyDataFormat")
    TerminologyDataLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TerminologyDataLocation", name: "TerminologyDataLocation")
    TerminologyFile = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.translate#TerminologyFile", name: "TerminologyFile", traits: {"smithy.api#length" => {"min" => 0, "max" => 10485760}, "smithy.api#sensitive" => {}})
    TerminologyProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TerminologyProperties", name: "TerminologyProperties")
    TerminologyPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.translate#TerminologyPropertiesList", name: "TerminologyPropertiesList")
    TextSizeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TextSizeLimitExceededException", name: "TextSizeLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TextTranslationJobFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TextTranslationJobFilter", name: "TextTranslationJobFilter")
    TextTranslationJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TextTranslationJobProperties", name: "TextTranslationJobProperties")
    TextTranslationJobPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.translate#TextTranslationJobPropertiesList", name: "TextTranslationJobPropertiesList")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.translate#Timestamp", name: "Timestamp")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TranslateDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TranslateDocumentRequest", name: "TranslateDocumentRequest")
    TranslateDocumentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TranslateDocumentResponse", name: "TranslateDocumentResponse")
    TranslateTextRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TranslateTextRequest", name: "TranslateTextRequest")
    TranslateTextResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TranslateTextResponse", name: "TranslateTextResponse")
    TranslatedDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TranslatedDocument", name: "TranslatedDocument")
    TranslatedDocumentContent = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.translate#TranslatedDocumentContent", name: "TranslatedDocumentContent", traits: {"smithy.api#sensitive" => {}})
    TranslatedTextString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#TranslatedTextString", name: "TranslatedTextString", traits: {"smithy.api#length" => {"min" => 0, "max" => 20000}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]{0,20000}$"})
    TranslationSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#TranslationSettings", name: "TranslationSettings")
    UnboundedLengthString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.translate#UnboundedLengthString", name: "UnboundedLengthString")
    UnsupportedDisplayLanguageCodeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#UnsupportedDisplayLanguageCodeException", name: "UnsupportedDisplayLanguageCodeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedLanguagePairException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#UnsupportedLanguagePairException", name: "UnsupportedLanguagePairException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateParallelDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#UpdateParallelDataRequest", name: "UpdateParallelDataRequest")
    UpdateParallelDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.translate#UpdateParallelDataResponse", name: "UpdateParallelDataResponse")

    AppliedTerminology.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    AppliedTerminology.add_member(:terms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TermList, location_name: "Terms"))
    AppliedTerminology.type = Types::AppliedTerminology
    AppliedTerminologyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedTerminology)
    Brevity.add_member(:on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ON", traits: {"smithy.api#enumValue" => "ON"}))
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateParallelDataRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateParallelDataRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateParallelDataRequest.add_member(:parallel_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataConfig, location_name: "ParallelDataConfig", traits: {"smithy.api#required" => {}}))
    CreateParallelDataRequest.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "EncryptionKey"))
    CreateParallelDataRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateParallelDataRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateParallelDataRequest.type = Types::CreateParallelDataRequest
    CreateParallelDataResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    CreateParallelDataResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: "Status"))
    CreateParallelDataResponse.type = Types::CreateParallelDataResponse
    DeleteParallelDataRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteParallelDataRequest.type = Types::DeleteParallelDataRequest
    DeleteParallelDataResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    DeleteParallelDataResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: "Status"))
    DeleteParallelDataResponse.type = Types::DeleteParallelDataResponse
    DeleteTerminologyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteTerminologyRequest.type = Types::DeleteTerminologyRequest
    DescribeTextTranslationJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeTextTranslationJobRequest.type = Types::DescribeTextTranslationJobRequest
    DescribeTextTranslationJobResponse.add_member(:text_translation_job_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextTranslationJobProperties, location_name: "TextTranslationJobProperties"))
    DescribeTextTranslationJobResponse.type = Types::DescribeTextTranslationJobResponse
    DetectedLanguageLowConfidenceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DetectedLanguageLowConfidenceException.add_member(:detected_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "DetectedLanguageCode"))
    DetectedLanguageLowConfidenceException.type = Types::DetectedLanguageLowConfidenceException
    Directionality.add_member(:uni, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNI", traits: {"smithy.api#enumValue" => "UNI"}))
    Directionality.add_member(:multi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTI", traits: {"smithy.api#enumValue" => "MULTI"}))
    DisplayLanguageCode.add_member(:de, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DE", traits: {"smithy.api#enumValue" => "de"}))
    DisplayLanguageCode.add_member(:en, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EN", traits: {"smithy.api#enumValue" => "en"}))
    DisplayLanguageCode.add_member(:es, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ES", traits: {"smithy.api#enumValue" => "es"}))
    DisplayLanguageCode.add_member(:fr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FR", traits: {"smithy.api#enumValue" => "fr"}))
    DisplayLanguageCode.add_member(:it, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IT", traits: {"smithy.api#enumValue" => "it"}))
    DisplayLanguageCode.add_member(:ja, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JA", traits: {"smithy.api#enumValue" => "ja"}))
    DisplayLanguageCode.add_member(:ko, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KO", traits: {"smithy.api#enumValue" => "ko"}))
    DisplayLanguageCode.add_member(:pt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT", traits: {"smithy.api#enumValue" => "pt"}))
    DisplayLanguageCode.add_member(:zh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZH", traits: {"smithy.api#enumValue" => "zh"}))
    DisplayLanguageCode.add_member(:zh_tw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZH_TW", traits: {"smithy.api#enumValue" => "zh-TW"}))
    Document.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentContent, location_name: "Content", traits: {"smithy.api#required" => {}}))
    Document.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType", traits: {"smithy.api#required" => {}}))
    Document.type = Types::Document
    EncryptionKey.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    EncryptionKey.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyID, location_name: "Id", traits: {"smithy.api#required" => {}}))
    EncryptionKey.type = Types::EncryptionKey
    EncryptionKeyType.add_member(:kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KMS", traits: {"smithy.api#enumValue" => "KMS"}))
    Formality.add_member(:formal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORMAL", traits: {"smithy.api#enumValue" => "FORMAL"}))
    Formality.add_member(:informal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFORMAL", traits: {"smithy.api#enumValue" => "INFORMAL"}))
    GetParallelDataRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    GetParallelDataRequest.type = Types::GetParallelDataRequest
    GetParallelDataResponse.add_member(:parallel_data_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataProperties, location_name: "ParallelDataProperties"))
    GetParallelDataResponse.add_member(:data_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataDataLocation, location_name: "DataLocation"))
    GetParallelDataResponse.add_member(:auxiliary_data_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataDataLocation, location_name: "AuxiliaryDataLocation"))
    GetParallelDataResponse.add_member(:latest_update_attempt_auxiliary_data_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataDataLocation, location_name: "LatestUpdateAttemptAuxiliaryDataLocation"))
    GetParallelDataResponse.type = Types::GetParallelDataResponse
    GetTerminologyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    GetTerminologyRequest.add_member(:terminology_data_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyDataFormat, location_name: "TerminologyDataFormat"))
    GetTerminologyRequest.type = Types::GetTerminologyRequest
    GetTerminologyResponse.add_member(:terminology_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyProperties, location_name: "TerminologyProperties"))
    GetTerminologyResponse.add_member(:terminology_data_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyDataLocation, location_name: "TerminologyDataLocation"))
    GetTerminologyResponse.add_member(:auxiliary_data_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyDataLocation, location_name: "AuxiliaryDataLocation"))
    GetTerminologyResponse.type = Types::GetTerminologyResponse
    ImportTerminologyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ImportTerminologyRequest.add_member(:merge_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MergeStrategy, location_name: "MergeStrategy", traits: {"smithy.api#required" => {}}))
    ImportTerminologyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ImportTerminologyRequest.add_member(:terminology_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyData, location_name: "TerminologyData", traits: {"smithy.api#required" => {}}))
    ImportTerminologyRequest.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "EncryptionKey"))
    ImportTerminologyRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ImportTerminologyRequest.type = Types::ImportTerminologyRequest
    ImportTerminologyResponse.add_member(:terminology_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyProperties, location_name: "TerminologyProperties"))
    ImportTerminologyResponse.add_member(:auxiliary_data_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyDataLocation, location_name: "AuxiliaryDataLocation"))
    ImportTerminologyResponse.type = Types::ImportTerminologyResponse
    InputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri", traits: {"smithy.api#required" => {}}))
    InputDataConfig.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType", traits: {"smithy.api#required" => {}}))
    InputDataConfig.type = Types::InputDataConfig
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.type = Types::InternalServerException
    InvalidFilterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidFilterException.type = Types::InvalidFilterException
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    JobDetails.add_member(:translated_documents_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "TranslatedDocumentsCount"))
    JobDetails.add_member(:documents_with_errors_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "DocumentsWithErrorsCount"))
    JobDetails.add_member(:input_documents_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "InputDocumentsCount"))
    JobDetails.type = Types::JobDetails
    JobStatus.add_member(:submitted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    JobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:completed_with_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED_WITH_ERROR", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ERROR"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:stop_requested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOP_REQUESTED", traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    JobStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    Language.add_member(:language_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalizedNameString, location_name: "LanguageName", traits: {"smithy.api#required" => {}}))
    Language.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    Language.type = Types::Language
    LanguageCodeStringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString)
    LanguagesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Language)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListLanguagesRequest.add_member(:display_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayLanguageCode, location_name: "DisplayLanguageCode"))
    ListLanguagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLanguagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListLanguagesRequest.type = Types::ListLanguagesRequest
    ListLanguagesResponse.add_member(:languages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguagesList, location_name: "Languages"))
    ListLanguagesResponse.add_member(:display_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayLanguageCode, location_name: "DisplayLanguageCode"))
    ListLanguagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLanguagesResponse.type = Types::ListLanguagesResponse
    ListParallelDataRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListParallelDataRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListParallelDataRequest.type = Types::ListParallelDataRequest
    ListParallelDataResponse.add_member(:parallel_data_properties_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataPropertiesList, location_name: "ParallelDataPropertiesList"))
    ListParallelDataResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListParallelDataResponse.type = Types::ListParallelDataResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTerminologiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTerminologiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListTerminologiesRequest.type = Types::ListTerminologiesRequest
    ListTerminologiesResponse.add_member(:terminology_properties_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyPropertiesList, location_name: "TerminologyPropertiesList"))
    ListTerminologiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTerminologiesResponse.type = Types::ListTerminologiesResponse
    ListTextTranslationJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextTranslationJobFilter, location_name: "Filter"))
    ListTextTranslationJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTextTranslationJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListTextTranslationJobsRequest.type = Types::ListTextTranslationJobsRequest
    ListTextTranslationJobsResponse.add_member(:text_translation_job_properties_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextTranslationJobPropertiesList, location_name: "TextTranslationJobPropertiesList"))
    ListTextTranslationJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTextTranslationJobsResponse.type = Types::ListTextTranslationJobsResponse
    MergeStrategy.add_member(:overwrite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OVERWRITE", traits: {"smithy.api#enumValue" => "OVERWRITE"}))
    OutputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri", traits: {"smithy.api#required" => {}}))
    OutputDataConfig.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "EncryptionKey"))
    OutputDataConfig.type = Types::OutputDataConfig
    ParallelDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri"))
    ParallelDataConfig.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataFormat, location_name: "Format"))
    ParallelDataConfig.type = Types::ParallelDataConfig
    ParallelDataDataLocation.add_member(:repository_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RepositoryType", traits: {"smithy.api#required" => {}}))
    ParallelDataDataLocation.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Location", traits: {"smithy.api#required" => {}}))
    ParallelDataDataLocation.type = Types::ParallelDataDataLocation
    ParallelDataFormat.add_member(:tsv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TSV", traits: {"smithy.api#enumValue" => "TSV"}))
    ParallelDataFormat.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    ParallelDataFormat.add_member(:tmx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TMX", traits: {"smithy.api#enumValue" => "TMX"}))
    ParallelDataProperties.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    ParallelDataProperties.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataArn, location_name: "Arn"))
    ParallelDataProperties.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ParallelDataProperties.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: "Status"))
    ParallelDataProperties.add_member(:source_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "SourceLanguageCode"))
    ParallelDataProperties.add_member(:target_language_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeStringList, location_name: "TargetLanguageCodes"))
    ParallelDataProperties.add_member(:parallel_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataConfig, location_name: "ParallelDataConfig"))
    ParallelDataProperties.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnboundedLengthString, location_name: "Message"))
    ParallelDataProperties.add_member(:imported_data_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "ImportedDataSize"))
    ParallelDataProperties.add_member(:imported_record_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "ImportedRecordCount"))
    ParallelDataProperties.add_member(:failed_record_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "FailedRecordCount"))
    ParallelDataProperties.add_member(:skipped_record_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "SkippedRecordCount"))
    ParallelDataProperties.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "EncryptionKey"))
    ParallelDataProperties.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ParallelDataProperties.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    ParallelDataProperties.add_member(:latest_update_attempt_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: "LatestUpdateAttemptStatus"))
    ParallelDataProperties.add_member(:latest_update_attempt_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "LatestUpdateAttemptAt"))
    ParallelDataProperties.type = Types::ParallelDataProperties
    ParallelDataPropertiesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataProperties)
    ParallelDataStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ParallelDataStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ParallelDataStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ParallelDataStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ParallelDataStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Profanity.add_member(:mask, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK", traits: {"smithy.api#enumValue" => "MASK"}))
    ResourceNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartTextTranslationJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartTextTranslationJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartTextTranslationJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartTextTranslationJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartTextTranslationJobRequest.add_member(:source_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "SourceLanguageCode", traits: {"smithy.api#required" => {}}))
    StartTextTranslationJobRequest.add_member(:target_language_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetLanguageCodeStringList, location_name: "TargetLanguageCodes", traits: {"smithy.api#required" => {}}))
    StartTextTranslationJobRequest.add_member(:terminology_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "TerminologyNames"))
    StartTextTranslationJobRequest.add_member(:parallel_data_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "ParallelDataNames"))
    StartTextTranslationJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartTextTranslationJobRequest.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranslationSettings, location_name: "Settings"))
    StartTextTranslationJobRequest.type = Types::StartTextTranslationJobRequest
    StartTextTranslationJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartTextTranslationJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StartTextTranslationJobResponse.type = Types::StartTextTranslationJobResponse
    StopTextTranslationJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    StopTextTranslationJobRequest.type = Types::StopTextTranslationJobRequest
    StopTextTranslationJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StopTextTranslationJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StopTextTranslationJobResponse.type = Types::StopTextTranslationJobResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetLanguageCodeStringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString)
    Term.add_member(:source_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceText"))
    Term.add_member(:target_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TargetText"))
    Term.type = Types::Term
    TermList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Term)
    TerminologyData.add_member(:file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyFile, location_name: "File", traits: {"smithy.api#required" => {}}))
    TerminologyData.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyDataFormat, location_name: "Format", traits: {"smithy.api#required" => {}}))
    TerminologyData.add_member(:directionality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Directionality, location_name: "Directionality"))
    TerminologyData.type = Types::TerminologyData
    TerminologyDataFormat.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    TerminologyDataFormat.add_member(:tmx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TMX", traits: {"smithy.api#enumValue" => "TMX"}))
    TerminologyDataFormat.add_member(:tsv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TSV", traits: {"smithy.api#enumValue" => "TSV"}))
    TerminologyDataLocation.add_member(:repository_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RepositoryType", traits: {"smithy.api#required" => {}}))
    TerminologyDataLocation.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Location", traits: {"smithy.api#required" => {}}))
    TerminologyDataLocation.type = Types::TerminologyDataLocation
    TerminologyProperties.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    TerminologyProperties.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    TerminologyProperties.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyArn, location_name: "Arn"))
    TerminologyProperties.add_member(:source_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "SourceLanguageCode"))
    TerminologyProperties.add_member(:target_language_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeStringList, location_name: "TargetLanguageCodes"))
    TerminologyProperties.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "EncryptionKey"))
    TerminologyProperties.add_member(:size_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "SizeBytes"))
    TerminologyProperties.add_member(:term_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "TermCount"))
    TerminologyProperties.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    TerminologyProperties.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    TerminologyProperties.add_member(:directionality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Directionality, location_name: "Directionality"))
    TerminologyProperties.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnboundedLengthString, location_name: "Message"))
    TerminologyProperties.add_member(:skipped_term_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "SkippedTermCount"))
    TerminologyProperties.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyDataFormat, location_name: "Format"))
    TerminologyProperties.type = Types::TerminologyProperties
    TerminologyPropertiesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminologyProperties)
    TextSizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TextSizeLimitExceededException.type = Types::TextSizeLimitExceededException
    TextTranslationJobFilter.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    TextTranslationJobFilter.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    TextTranslationJobFilter.add_member(:submitted_before_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedBeforeTime"))
    TextTranslationJobFilter.add_member(:submitted_after_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedAfterTime"))
    TextTranslationJobFilter.type = Types::TextTranslationJobFilter
    TextTranslationJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    TextTranslationJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    TextTranslationJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    TextTranslationJobProperties.add_member(:job_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDetails, location_name: "JobDetails"))
    TextTranslationJobProperties.add_member(:source_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "SourceLanguageCode"))
    TextTranslationJobProperties.add_member(:target_language_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetLanguageCodeStringList, location_name: "TargetLanguageCodes"))
    TextTranslationJobProperties.add_member(:terminology_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "TerminologyNames"))
    TextTranslationJobProperties.add_member(:parallel_data_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "ParallelDataNames"))
    TextTranslationJobProperties.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnboundedLengthString, location_name: "Message"))
    TextTranslationJobProperties.add_member(:submitted_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedTime"))
    TextTranslationJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    TextTranslationJobProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    TextTranslationJobProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    TextTranslationJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    TextTranslationJobProperties.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranslationSettings, location_name: "Settings"))
    TextTranslationJobProperties.type = Types::TextTranslationJobProperties
    TextTranslationJobPropertiesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextTranslationJobProperties)
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyTagsException.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    TooManyTagsException.type = Types::TooManyTagsException
    TranslateDocumentRequest.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: "Document", traits: {"smithy.api#required" => {}}))
    TranslateDocumentRequest.add_member(:terminology_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "TerminologyNames"))
    TranslateDocumentRequest.add_member(:source_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "SourceLanguageCode", traits: {"smithy.api#required" => {}}))
    TranslateDocumentRequest.add_member(:target_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "TargetLanguageCode", traits: {"smithy.api#required" => {}}))
    TranslateDocumentRequest.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranslationSettings, location_name: "Settings"))
    TranslateDocumentRequest.type = Types::TranslateDocumentRequest
    TranslateDocumentResponse.add_member(:translated_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranslatedDocument, location_name: "TranslatedDocument", traits: {"smithy.api#required" => {}}))
    TranslateDocumentResponse.add_member(:source_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "SourceLanguageCode", traits: {"smithy.api#required" => {}}))
    TranslateDocumentResponse.add_member(:target_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "TargetLanguageCode", traits: {"smithy.api#required" => {}}))
    TranslateDocumentResponse.add_member(:applied_terminologies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedTerminologyList, location_name: "AppliedTerminologies"))
    TranslateDocumentResponse.add_member(:applied_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranslationSettings, location_name: "AppliedSettings"))
    TranslateDocumentResponse.type = Types::TranslateDocumentResponse
    TranslateTextRequest.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedLengthString, location_name: "Text", traits: {"smithy.api#required" => {}}))
    TranslateTextRequest.add_member(:terminology_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "TerminologyNames"))
    TranslateTextRequest.add_member(:source_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "SourceLanguageCode", traits: {"smithy.api#required" => {}}))
    TranslateTextRequest.add_member(:target_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "TargetLanguageCode", traits: {"smithy.api#required" => {}}))
    TranslateTextRequest.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranslationSettings, location_name: "Settings"))
    TranslateTextRequest.type = Types::TranslateTextRequest
    TranslateTextResponse.add_member(:translated_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranslatedTextString, location_name: "TranslatedText", traits: {"smithy.api#required" => {}}))
    TranslateTextResponse.add_member(:source_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "SourceLanguageCode", traits: {"smithy.api#required" => {}}))
    TranslateTextResponse.add_member(:target_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "TargetLanguageCode", traits: {"smithy.api#required" => {}}))
    TranslateTextResponse.add_member(:applied_terminologies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedTerminologyList, location_name: "AppliedTerminologies"))
    TranslateTextResponse.add_member(:applied_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranslationSettings, location_name: "AppliedSettings"))
    TranslateTextResponse.type = Types::TranslateTextResponse
    TranslatedDocument.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranslatedDocumentContent, location_name: "Content", traits: {"smithy.api#required" => {}}))
    TranslatedDocument.type = Types::TranslatedDocument
    TranslationSettings.add_member(:formality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Formality, location_name: "Formality"))
    TranslationSettings.add_member(:profanity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Profanity, location_name: "Profanity"))
    TranslationSettings.add_member(:brevity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Brevity, location_name: "Brevity"))
    TranslationSettings.type = Types::TranslationSettings
    UnsupportedDisplayLanguageCodeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedDisplayLanguageCodeException.add_member(:display_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "DisplayLanguageCode"))
    UnsupportedDisplayLanguageCodeException.type = Types::UnsupportedDisplayLanguageCodeException
    UnsupportedLanguagePairException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedLanguagePairException.add_member(:source_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "SourceLanguageCode"))
    UnsupportedLanguagePairException.add_member(:target_language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "TargetLanguageCode"))
    UnsupportedLanguagePairException.type = Types::UnsupportedLanguagePairException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateParallelDataRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateParallelDataRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateParallelDataRequest.add_member(:parallel_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataConfig, location_name: "ParallelDataConfig", traits: {"smithy.api#required" => {}}))
    UpdateParallelDataRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateParallelDataRequest.type = Types::UpdateParallelDataRequest
    UpdateParallelDataResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    UpdateParallelDataResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: "Status"))
    UpdateParallelDataResponse.add_member(:latest_update_attempt_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelDataStatus, location_name: "LatestUpdateAttemptStatus"))
    UpdateParallelDataResponse.add_member(:latest_update_attempt_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "LatestUpdateAttemptAt"))
    UpdateParallelDataResponse.type = Types::UpdateParallelDataResponse

    AWSShineFrontendService20170701 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.translate#AWSShineFrontendService_20170701"
      service.name = "AWSShineFrontendService20170701"
      service.version = "2017-07-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Translate", "arnNamespace" => "translate", "cloudFormationName" => "Translate", "cloudTrailEventSource" => "translate.amazonaws.com", "endpointPrefix" => "translate"}, "aws.auth#sigv4" => {"name" => "translate"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Translate"}
      service.add_operation(:create_parallel_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#CreateParallelData"
        operation.name = "CreateParallelData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateParallelDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateParallelDataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_parallel_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#DeleteParallelData"
        operation.name = "DeleteParallelData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteParallelDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteParallelDataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_terminology, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#DeleteTerminology"
        operation.name = "DeleteTerminology"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTerminologyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_text_translation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#DescribeTextTranslationJob"
        operation.name = "DescribeTextTranslationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTextTranslationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTextTranslationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_parallel_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#GetParallelData"
        operation.name = "GetParallelData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetParallelDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetParallelDataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_terminology, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#GetTerminology"
        operation.name = "GetTerminology"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTerminologyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTerminologyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:import_terminology, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#ImportTerminology"
        operation.name = "ImportTerminology"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTerminologyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTerminologyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:list_languages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#ListLanguages"
        operation.name = "ListLanguages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLanguagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLanguagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDisplayLanguageCodeException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListLanguages.new
      end)
      service.add_operation(:list_parallel_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#ListParallelData"
        operation.name = "ListParallelData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListParallelDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListParallelDataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListParallelData.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_terminologies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#ListTerminologies"
        operation.name = "ListTerminologies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTerminologiesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTerminologiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTerminologies.new
      end)
      service.add_operation(:list_text_translation_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#ListTextTranslationJobs"
        operation.name = "ListTextTranslationJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTextTranslationJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTextTranslationJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTextTranslationJobs.new
      end)
      service.add_operation(:start_text_translation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#StartTextTranslationJob"
        operation.name = "StartTextTranslationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTextTranslationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTextTranslationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguagePairException)
        operation.traits = {}
      end)
      service.add_operation(:stop_text_translation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#StopTextTranslationJob"
        operation.name = "StopTextTranslationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopTextTranslationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopTextTranslationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:translate_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#TranslateDocument"
        operation.name = "TranslateDocument"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranslateDocumentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranslateDocumentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguagePairException)
        operation.traits = {}
      end)
      service.add_operation(:translate_text, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#TranslateText"
        operation.name = "TranslateText"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranslateTextRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranslateTextResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedLanguageLowConfidenceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguagePairException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_parallel_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.translate#UpdateParallelData"
        operation.name = "UpdateParallelData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateParallelDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateParallelDataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
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
