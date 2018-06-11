# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Translate
  module Types

    # @note When making an API call, you may pass TranslateTextRequest
    #   data as a hash:
    #
    #       {
    #         text: "BoundedLengthString", # required
    #         source_language_code: "LanguageCodeString", # required
    #         target_language_code: "LanguageCodeString", # required
    #       }
    #
    # @!attribute [rw] text
    #   The text to translate.
    #   @return [String]
    #
    # @!attribute [rw] source_language_code
    #   One of the supported language codes for the source text. If the
    #   `TargetLanguageCode` is not "en", the `SourceLanguageCode` must be
    #   "en".
    #
    #   To have Amazon Translate determine the source language of your text,
    #   you can specify `auto` in the `SourceLanguageCode` field. If you
    #   specify `auto`, Amazon Translate will call Amazon Comprehend to
    #   determine the source language.
    #   @return [String]
    #
    # @!attribute [rw] target_language_code
    #   One of the supported language codes for the target text. If the
    #   `SourceLanguageCode` is not "en", the `TargetLanguageCode` must be
    #   "en".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslateTextRequest AWS API Documentation
    #
    class TranslateTextRequest < Struct.new(
      :text,
      :source_language_code,
      :target_language_code)
      include Aws::Structure
    end

    # @!attribute [rw] translated_text
    #   The text translated into the target language.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslateTextResponse AWS API Documentation
    #
    class TranslateTextResponse < Struct.new(
      :translated_text,
      :source_language_code,
      :target_language_code)
      include Aws::Structure
    end

  end
end
