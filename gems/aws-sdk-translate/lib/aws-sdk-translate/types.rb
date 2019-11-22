# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Translate
  module Types

    # The custom terminology applied to the input text by Amazon Translate
    # for the translated text response. This is optional in the response and
    # will only be present if you specified terminology input in the
    # request. Currently, only one terminology can be applied per
    # TranslateText request.
    #
    # @!attribute [rw] name
    #   The name of the custom terminology applied to the input text by
    #   Amazon Translate for the translated text response.
    #   @return [String]
    #
    # @!attribute [rw] terms
    #   The specific terms of the custom terminology applied to the input
    #   text by Amazon Translate for the translated text response. A maximum
    #   of 250 terms will be returned, and the specific terms applied will
    #   be the first 250 terms in the source text.
    #   @return [Array<Types::Term>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/AppliedTerminology AWS API Documentation
    #
    class AppliedTerminology < Struct.new(
      :name,
      :terms)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteTerminologyRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the custom terminology being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/DeleteTerminologyRequest AWS API Documentation
    #
    class DeleteTerminologyRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # The confidence that Amazon Comprehend accurately detected the source
    # language is low. If a low confidence level is acceptable for your
    # application, you can use the language in the exception to call Amazon
    # Translate again. For more information, see the
    # [DetectDominantLanguage][1] operation in the *Amazon Comprehend
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/API_DetectDominantLanguage.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] detected_language_code
    #   The language code of the auto-detected language from Amazon
    #   Comprehend.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/DetectedLanguageLowConfidenceException AWS API Documentation
    #
    class DetectedLanguageLowConfidenceException < Struct.new(
      :message,
      :detected_language_code)
      include Aws::Structure
    end

    # The encryption key used to encrypt the custom terminologies used by
    # Amazon Translate.
    #
    # @note When making an API call, you may pass EncryptionKey
    #   data as a hash:
    #
    #       {
    #         type: "KMS", # required, accepts KMS
    #         id: "EncryptionKeyID", # required
    #       }
    #
    # @!attribute [rw] type
    #   The type of encryption key used by Amazon Translate to encrypt
    #   custom terminologies.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The Amazon Resource Name (ARN) of the encryption key being used to
    #   encrypt the custom terminology.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/EncryptionKey AWS API Documentation
    #
    class EncryptionKey < Struct.new(
      :type,
      :id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTerminologyRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         terminology_data_format: "CSV", # required, accepts CSV, TMX
    #       }
    #
    # @!attribute [rw] name
    #   The name of the custom terminology being retrieved.
    #   @return [String]
    #
    # @!attribute [rw] terminology_data_format
    #   The data format of the custom terminology being retrieved, either
    #   CSV or TMX.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/GetTerminologyRequest AWS API Documentation
    #
    class GetTerminologyRequest < Struct.new(
      :name,
      :terminology_data_format)
      include Aws::Structure
    end

    # @!attribute [rw] terminology_properties
    #   The properties of the custom terminology being retrieved.
    #   @return [Types::TerminologyProperties]
    #
    # @!attribute [rw] terminology_data_location
    #   The data location of the custom terminology being retrieved. The
    #   custom terminology file is returned in a presigned url that has a 30
    #   minute expiration.
    #   @return [Types::TerminologyDataLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/GetTerminologyResponse AWS API Documentation
    #
    class GetTerminologyResponse < Struct.new(
      :terminology_properties,
      :terminology_data_location)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportTerminologyRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         merge_strategy: "OVERWRITE", # required, accepts OVERWRITE
    #         description: "Description",
    #         terminology_data: { # required
    #           file: "data", # required
    #           format: "CSV", # required, accepts CSV, TMX
    #         },
    #         encryption_key: {
    #           type: "KMS", # required, accepts KMS
    #           id: "EncryptionKeyID", # required
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the custom terminology being imported.
    #   @return [String]
    #
    # @!attribute [rw] merge_strategy
    #   The merge strategy of the custom terminology being imported.
    #   Currently, only the OVERWRITE merge strategy is supported. In this
    #   case, the imported terminology will overwrite an existing
    #   terminology of the same name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the custom terminology being imported.
    #   @return [String]
    #
    # @!attribute [rw] terminology_data
    #   The terminology data for the custom terminology being imported.
    #   @return [Types::TerminologyData]
    #
    # @!attribute [rw] encryption_key
    #   The encryption key for the custom terminology being imported.
    #   @return [Types::EncryptionKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ImportTerminologyRequest AWS API Documentation
    #
    class ImportTerminologyRequest < Struct.new(
      :name,
      :merge_strategy,
      :description,
      :terminology_data,
      :encryption_key)
      include Aws::Structure
    end

    # @!attribute [rw] terminology_properties
    #   The properties of the custom terminology being imported.
    #   @return [Types::TerminologyProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ImportTerminologyResponse AWS API Documentation
    #
    class ImportTerminologyResponse < Struct.new(
      :terminology_properties)
      include Aws::Structure
    end

    # An internal server error occurred. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The value of the parameter is invalid. Review the value of the
    # parameter you are using to correct it, and then retry your operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request that you made is invalid. Check your request to determine
    # why it's invalid and then retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified limit has been exceeded. Review your request and retry
    # it with a quantity below the stated limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTerminologiesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the request to ListTerminologies was truncated,
    #   include the NextToken to fetch the next group of custom
    #   terminologies.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of custom terminologies returned per list
    #   request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListTerminologiesRequest AWS API Documentation
    #
    class ListTerminologiesRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] terminology_properties_list
    #   The properties list of the custom terminologies returned on the list
    #   request.
    #   @return [Array<Types::TerminologyProperties>]
    #
    # @!attribute [rw] next_token
    #   If the response to the ListTerminologies was truncated, the
    #   NextToken fetches the next group of custom terminologies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListTerminologiesResponse AWS API Documentation
    #
    class ListTerminologiesResponse < Struct.new(
      :terminology_properties_list,
      :next_token)
      include Aws::Structure
    end

    # The resource you are looking for has not been found. Review the
    # resource you're looking for and see if a different resource will
    # accomplish your needs before retrying the revised request. .
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The Amazon Translate service is temporarily unavailable. Please wait a
    # bit and then retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The term being translated by the custom terminology.
    #
    # @!attribute [rw] source_text
    #   The source text of the term being translated by the custom
    #   terminology.
    #   @return [String]
    #
    # @!attribute [rw] target_text
    #   The target text of the term being translated by the custom
    #   terminology.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/Term AWS API Documentation
    #
    class Term < Struct.new(
      :source_text,
      :target_text)
      include Aws::Structure
    end

    # The data associated with the custom terminology.
    #
    # @note When making an API call, you may pass TerminologyData
    #   data as a hash:
    #
    #       {
    #         file: "data", # required
    #         format: "CSV", # required, accepts CSV, TMX
    #       }
    #
    # @!attribute [rw] file
    #   The file containing the custom terminology data.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The data format of the custom terminology. Either CSV or TMX.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TerminologyData AWS API Documentation
    #
    class TerminologyData < Struct.new(
      :file,
      :format)
      include Aws::Structure
    end

    # The location of the custom terminology data.
    #
    # @!attribute [rw] repository_type
    #   The repository type for the custom terminology data.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the custom terminology data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TerminologyDataLocation AWS API Documentation
    #
    class TerminologyDataLocation < Struct.new(
      :repository_type,
      :location)
      include Aws::Structure
    end

    # The properties of the custom terminology.
    #
    # @!attribute [rw] name
    #   The name of the custom terminology.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the custom terminology properties.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the custom terminology.
    #   @return [String]
    #
    # @!attribute [rw] source_language_code
    #   The language code for the source text of the translation request for
    #   which the custom terminology is being used.
    #   @return [String]
    #
    # @!attribute [rw] target_language_codes
    #   The language codes for the target languages available with the
    #   custom terminology file. All possible target languages are returned
    #   in array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] encryption_key
    #   The encryption key for the custom terminology.
    #   @return [Types::EncryptionKey]
    #
    # @!attribute [rw] size_bytes
    #   The size of the file used when importing a custom terminology.
    #   @return [Integer]
    #
    # @!attribute [rw] term_count
    #   The number of terms included in the custom terminology.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The time at which the custom terminology was created, based on the
    #   timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time at which the custom terminology was last update, based on
    #   the timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TerminologyProperties AWS API Documentation
    #
    class TerminologyProperties < Struct.new(
      :name,
      :description,
      :arn,
      :source_language_code,
      :target_language_codes,
      :encryption_key,
      :size_bytes,
      :term_count,
      :created_at,
      :last_updated_at)
      include Aws::Structure
    end

    # The size of the text you submitted exceeds the size limit. Reduce the
    # size of the text or use a smaller document and then retry your
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TextSizeLimitExceededException AWS API Documentation
    #
    class TextSizeLimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # You have made too many requests within a short period of time. Wait
    # for a short time and then try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TranslateTextRequest
    #   data as a hash:
    #
    #       {
    #         text: "BoundedLengthString", # required
    #         terminology_names: ["ResourceName"],
    #         source_language_code: "LanguageCodeString", # required
    #         target_language_code: "LanguageCodeString", # required
    #       }
    #
    # @!attribute [rw] text
    #   The text to translate. The text string can be a maximum of 5,000
    #   bytes long. Depending on your character set, this may be fewer than
    #   5,000 characters.
    #   @return [String]
    #
    # @!attribute [rw] terminology_names
    #   The TerminologyNames list that is taken as input to the
    #   TranslateText request. This has a minimum length of 0 and a maximum
    #   length of 1.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_language_code
    #   The language code for the language of the source text. The language
    #   must be a language supported by Amazon Translate.
    #
    #   To have Amazon Translate determine the source language of your text,
    #   you can specify `auto` in the `SourceLanguageCode` field. If you
    #   specify `auto`, Amazon Translate will call Amazon Comprehend to
    #   determine the source language.
    #   @return [String]
    #
    # @!attribute [rw] target_language_code
    #   The language code requested for the language of the target text. The
    #   language must be a language supported by Amazon Translate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslateTextRequest AWS API Documentation
    #
    class TranslateTextRequest < Struct.new(
      :text,
      :terminology_names,
      :source_language_code,
      :target_language_code)
      include Aws::Structure
    end

    # @!attribute [rw] translated_text
    #   The the translated text. The maximum length of this text is 5kb.
    #   @return [String]
    #
    # @!attribute [rw] source_language_code
    #   The language code for the language of the source text.
    #   @return [String]
    #
    # @!attribute [rw] target_language_code
    #   The language code for the language of the target text.
    #   @return [String]
    #
    # @!attribute [rw] applied_terminologies
    #   The names of the custom terminologies applied to the input text by
    #   Amazon Translate for the translated text response.
    #   @return [Array<Types::AppliedTerminology>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslateTextResponse AWS API Documentation
    #
    class TranslateTextResponse < Struct.new(
      :translated_text,
      :source_language_code,
      :target_language_code,
      :applied_terminologies)
      include Aws::Structure
    end

    # Amazon Translate does not support translation from the language of the
    # source text into the requested target language. For more information,
    # see how-to-error-msg.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] source_language_code
    #   The language code for the language of the input text.
    #   @return [String]
    #
    # @!attribute [rw] target_language_code
    #   The language code for the language of the translated text.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/UnsupportedLanguagePairException AWS API Documentation
    #
    class UnsupportedLanguagePairException < Struct.new(
      :message,
      :source_language_code,
      :target_language_code)
      include Aws::Structure
    end

  end
end
