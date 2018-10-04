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

    BoundedLengthString = Shapes::StringShape.new(name: 'BoundedLengthString')
    DetectedLanguageLowConfidenceException = Shapes::StructureShape.new(name: 'DetectedLanguageLowConfidenceException')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    LanguageCodeString = Shapes::StringShape.new(name: 'LanguageCodeString')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    TextSizeLimitExceededException = Shapes::StructureShape.new(name: 'TextSizeLimitExceededException')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TranslateTextRequest = Shapes::StructureShape.new(name: 'TranslateTextRequest')
    TranslateTextResponse = Shapes::StructureShape.new(name: 'TranslateTextResponse')
    UnsupportedLanguagePairException = Shapes::StructureShape.new(name: 'UnsupportedLanguagePairException')

    TranslateTextRequest.add_member(:text, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Text"))
    TranslateTextRequest.add_member(:source_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "SourceLanguageCode"))
    TranslateTextRequest.add_member(:target_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "TargetLanguageCode"))
    TranslateTextRequest.struct_class = Types::TranslateTextRequest

    TranslateTextResponse.add_member(:translated_text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TranslatedText"))
    TranslateTextResponse.add_member(:source_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "SourceLanguageCode"))
    TranslateTextResponse.add_member(:target_language_code, Shapes::ShapeRef.new(shape: LanguageCodeString, required: true, location_name: "TargetLanguageCode"))
    TranslateTextResponse.struct_class = Types::TranslateTextResponse


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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)
    end

  end
end
