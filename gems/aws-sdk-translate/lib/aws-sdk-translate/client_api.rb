# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Translate
  # @api private
  module ClientApi

    include Seahorse::Model

    AppliedTerminology = Shapes::StructureShape.new(name: 'AppliedTerminology')
    AppliedTerminologyList = Shapes::ListShape.new(name: 'AppliedTerminologyList')
    BoundedLengthString = Shapes::StringShape.new(name: 'BoundedLengthString')
    DeleteTerminologyRequest = Shapes::StructureShape.new(name: 'DeleteTerminologyRequest')
    Description = Shapes::StringShape.new(name: 'Description')
    DetectedLanguageLowConfidenceException = Shapes::StructureShape.new(name: 'DetectedLanguageLowConfidenceException')
    EncryptionKey = Shapes::StructureShape.new(name: 'EncryptionKey')
    EncryptionKeyID = Shapes::StringShape.new(name: 'EncryptionKeyID')
    EncryptionKeyType = Shapes::StringShape.new(name: 'EncryptionKeyType')
    GetTerminologyRequest = Shapes::StructureShape.new(name: 'GetTerminologyRequest')
    GetTerminologyResponse = Shapes::StructureShape.new(name: 'GetTerminologyResponse')
    ImportTerminologyRequest = Shapes::StructureShape.new(name: 'ImportTerminologyRequest')
    ImportTerminologyResponse = Shapes::StructureShape.new(name: 'ImportTerminologyResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    LanguageCodeString = Shapes::StringShape.new(name: 'LanguageCodeString')
    LanguageCodeStringList = Shapes::ListShape.new(name: 'LanguageCodeStringList')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListTerminologiesRequest = Shapes::StructureShape.new(name: 'ListTerminologiesRequest')
    ListTerminologiesResponse = Shapes::StructureShape.new(name: 'ListTerminologiesResponse')
    MaxResultsInteger = Shapes::IntegerShape.new(name: 'MaxResultsInteger')
    MergeStrategy = Shapes::StringShape.new(name: 'MergeStrategy')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNameList = Shapes::ListShape.new(name: 'ResourceNameList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
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
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TranslateTextRequest = Shapes::StructureShape.new(name: 'TranslateTextRequest')
    TranslateTextResponse = Shapes::StructureShape.new(name: 'TranslateTextResponse')
    UnsupportedLanguagePairException = Shapes::StructureShape.new(name: 'UnsupportedLanguagePairException')

    AppliedTerminology.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    AppliedTerminology.add_member(:terms, Shapes::ShapeRef.new(shape: TermList, location_name: "Terms"))
    AppliedTerminology.struct_class = Types::AppliedTerminology

    AppliedTerminologyList.member = Shapes::ShapeRef.new(shape: AppliedTerminology)

    DeleteTerminologyRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    DeleteTerminologyRequest.struct_class = Types::DeleteTerminologyRequest

    DetectedLanguageLowConfidenceException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DetectedLanguageLowConfidenceException.add_member(:detected_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "DetectedLanguageCode"))
    DetectedLanguageLowConfidenceException.struct_class = Types::DetectedLanguageLowConfidenceException

    EncryptionKey.add_member(:type, Shapes::ShapeRef.new(shape: EncryptionKeyType, required: true, location_name: "Type"))
    EncryptionKey.add_member(:id, Shapes::ShapeRef.new(shape: EncryptionKeyID, required: true, location_name: "Id"))
    EncryptionKey.struct_class = Types::EncryptionKey

    GetTerminologyRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    GetTerminologyRequest.add_member(:terminology_data_format, Shapes::ShapeRef.new(shape: TerminologyDataFormat, required: true, location_name: "TerminologyDataFormat"))
    GetTerminologyRequest.struct_class = Types::GetTerminologyRequest

    GetTerminologyResponse.add_member(:terminology_properties, Shapes::ShapeRef.new(shape: TerminologyProperties, location_name: "TerminologyProperties"))
    GetTerminologyResponse.add_member(:terminology_data_location, Shapes::ShapeRef.new(shape: TerminologyDataLocation, location_name: "TerminologyDataLocation"))
    GetTerminologyResponse.struct_class = Types::GetTerminologyResponse

    ImportTerminologyRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    ImportTerminologyRequest.add_member(:merge_strategy, Shapes::ShapeRef.new(shape: MergeStrategy, required: true, location_name: "MergeStrategy"))
    ImportTerminologyRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ImportTerminologyRequest.add_member(:terminology_data, Shapes::ShapeRef.new(shape: TerminologyData, required: true, location_name: "TerminologyData"))
    ImportTerminologyRequest.add_member(:encryption_key, Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "EncryptionKey"))
    ImportTerminologyRequest.struct_class = Types::ImportTerminologyRequest

    ImportTerminologyResponse.add_member(:terminology_properties, Shapes::ShapeRef.new(shape: TerminologyProperties, location_name: "TerminologyProperties"))
    ImportTerminologyResponse.struct_class = Types::ImportTerminologyResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    LanguageCodeStringList.member = Shapes::ShapeRef.new(shape: LanguageCodeString)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListTerminologiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTerminologiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListTerminologiesRequest.struct_class = Types::ListTerminologiesRequest

    ListTerminologiesResponse.add_member(:terminology_properties_list, Shapes::ShapeRef.new(shape: TerminologyPropertiesList, location_name: "TerminologyPropertiesList"))
    ListTerminologiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTerminologiesResponse.struct_class = Types::ListTerminologiesResponse

    ResourceNameList.member = Shapes::ShapeRef.new(shape: ResourceName)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    Term.add_member(:source_text, Shapes::ShapeRef.new(shape: String, location_name: "SourceText"))
    Term.add_member(:target_text, Shapes::ShapeRef.new(shape: String, location_name: "TargetText"))
    Term.struct_class = Types::Term

    TermList.member = Shapes::ShapeRef.new(shape: Term)

    TerminologyData.add_member(:file, Shapes::ShapeRef.new(shape: TerminologyFile, required: true, location_name: "File"))
    TerminologyData.add_member(:format, Shapes::ShapeRef.new(shape: TerminologyDataFormat, required: true, location_name: "Format"))
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
    TerminologyProperties.struct_class = Types::TerminologyProperties

    TerminologyPropertiesList.member = Shapes::ShapeRef.new(shape: TerminologyProperties)

    TextSizeLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TextSizeLimitExceededException.struct_class = Types::TextSizeLimitExceededException

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    TranslateTextRequest.add_member(:text, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Text"))
    TranslateTextRequest.add_member(:terminology_names, Shapes::ShapeRef.new(shape: ResourceNameList, location_name: "TerminologyNames"))
    TranslateTextRequest.add_member(:source_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "SourceLanguageCode"))
    TranslateTextRequest.add_member(:target_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "TargetLanguageCode"))
    TranslateTextRequest.struct_class = Types::TranslateTextRequest

    TranslateTextResponse.add_member(:translated_text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TranslatedText"))
    TranslateTextResponse.add_member(:source_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "SourceLanguageCode"))
    TranslateTextResponse.add_member(:target_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "TargetLanguageCode"))
    TranslateTextResponse.add_member(:applied_terminologies, Shapes::ShapeRef.new(shape: AppliedTerminologyList, location_name: "AppliedTerminologies"))
    TranslateTextResponse.struct_class = Types::TranslateTextResponse

    UnsupportedLanguagePairException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedLanguagePairException.add_member(:source_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "SourceLanguageCode"))
    UnsupportedLanguagePairException.add_member(:target_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, location_name: "TargetLanguageCode"))
    UnsupportedLanguagePairException.struct_class = Types::UnsupportedLanguagePairException


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

      api.add_operation(:delete_terminology, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTerminology"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTerminologyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
    end

  end
end
