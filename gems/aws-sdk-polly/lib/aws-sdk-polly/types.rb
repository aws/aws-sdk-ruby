# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Polly
  module Types

    # @note When making an API call, you may pass DeleteLexiconInput
    #   data as a hash:
    #
    #       {
    #         name: "LexiconName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the lexicon to delete. Must be an existing lexicon in
    #   the region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/DeleteLexiconInput AWS API Documentation
    #
    class DeleteLexiconInput < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/DeleteLexiconOutput AWS API Documentation
    #
    class DeleteLexiconOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeVoicesInput
    #   data as a hash:
    #
    #       {
    #         language_code: "cy-GB", # accepts cy-GB, da-DK, de-DE, en-AU, en-GB, en-GB-WLS, en-IN, en-US, es-ES, es-US, fr-CA, fr-FR, is-IS, it-IT, ko-KR, ja-JP, nb-NO, nl-NL, pl-PL, pt-BR, pt-PT, ro-RO, ru-RU, sv-SE, tr-TR
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] language_code
    #   The language identification tag (ISO 639 code for the language
    #   name-ISO 3166 country code) for filtering the list of voices
    #   returned. If you don't specify this optional parameter, all
    #   available voices are returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An opaque pagination token returned from the previous
    #   `DescribeVoices` operation. If present, this indicates where to
    #   continue the listing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/DescribeVoicesInput AWS API Documentation
    #
    class DescribeVoicesInput < Struct.new(
      :language_code,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] voices
    #   A list of voices with their properties.
    #   @return [Array<Types::Voice>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use in the next request to continue the
    #   listing of voices. `NextToken` is returned only if the response is
    #   truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/DescribeVoicesOutput AWS API Documentation
    #
    class DescribeVoicesOutput < Struct.new(
      :voices,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLexiconInput
    #   data as a hash:
    #
    #       {
    #         name: "LexiconName", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the lexicon.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/GetLexiconInput AWS API Documentation
    #
    class GetLexiconInput < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] lexicon
    #   Lexicon object that provides name and the string content of the
    #   lexicon.
    #   @return [Types::Lexicon]
    #
    # @!attribute [rw] lexicon_attributes
    #   Metadata of the lexicon, including phonetic alphabetic used,
    #   language code, lexicon ARN, number of lexemes defined in the
    #   lexicon, and size of lexicon in bytes.
    #   @return [Types::LexiconAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/GetLexiconOutput AWS API Documentation
    #
    class GetLexiconOutput < Struct.new(
      :lexicon,
      :lexicon_attributes)
      include Aws::Structure
    end

    # Provides lexicon name and lexicon content in string format. For more
    # information, see [Pronunciation Lexicon Specification (PLS) Version
    # 1.0][1].
    #
    #
    #
    # [1]: https://www.w3.org/TR/pronunciation-lexicon/
    #
    # @!attribute [rw] content
    #   Lexicon content in string format. The content of a lexicon must be
    #   in PLS format.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the lexicon.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/Lexicon AWS API Documentation
    #
    class Lexicon < Struct.new(
      :content,
      :name)
      include Aws::Structure
    end

    # Contains metadata describing the lexicon such as the number of
    # lexemes, language code, and so on. For more information, see [Managing
    # Lexicons][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html
    #
    # @!attribute [rw] alphabet
    #   Phonetic alphabet used in the lexicon. Valid values are `ipa` and
    #   `x-sampa`.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   Language code that the lexicon applies to. A lexicon with a language
    #   code such as "en" would be applied to all English languages
    #   (en-GB, en-US, en-AUS, en-WLS, and so on.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   Date lexicon was last modified (a timestamp value).
    #   @return [Time]
    #
    # @!attribute [rw] lexicon_arn
    #   Amazon Resource Name (ARN) of the lexicon.
    #   @return [String]
    #
    # @!attribute [rw] lexemes_count
    #   Number of lexemes in the lexicon.
    #   @return [Integer]
    #
    # @!attribute [rw] size
    #   Total size of the lexicon, in characters.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/LexiconAttributes AWS API Documentation
    #
    class LexiconAttributes < Struct.new(
      :alphabet,
      :language_code,
      :last_modified,
      :lexicon_arn,
      :lexemes_count,
      :size)
      include Aws::Structure
    end

    # Describes the content of the lexicon.
    #
    # @!attribute [rw] name
    #   Name of the lexicon.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Provides lexicon metadata.
    #   @return [Types::LexiconAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/LexiconDescription AWS API Documentation
    #
    class LexiconDescription < Struct.new(
      :name,
      :attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLexiconsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] next_token
    #   An opaque pagination token returned from previous `ListLexicons`
    #   operation. If present, indicates where to continue the list of
    #   lexicons.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/ListLexiconsInput AWS API Documentation
    #
    class ListLexiconsInput < Struct.new(
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] lexicons
    #   A list of lexicon names and attributes.
    #   @return [Array<Types::LexiconDescription>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use in the next request to continue the
    #   listing of lexicons. `NextToken` is returned only if the response is
    #   truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/ListLexiconsOutput AWS API Documentation
    #
    class ListLexiconsOutput < Struct.new(
      :lexicons,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutLexiconInput
    #   data as a hash:
    #
    #       {
    #         name: "LexiconName", # required
    #         content: "LexiconContent", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the lexicon. The name must follow the regular express format
    #   \[0-9A-Za-z\]\\\{1,20\\}. That is, the name is a case-sensitive
    #   alphanumeric string up to 20 characters long.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   Content of the PLS lexicon as string data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/PutLexiconInput AWS API Documentation
    #
    class PutLexiconInput < Struct.new(
      :name,
      :content)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/PutLexiconOutput AWS API Documentation
    #
    class PutLexiconOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass SynthesizeSpeechInput
    #   data as a hash:
    #
    #       {
    #         lexicon_names: ["LexiconName"],
    #         output_format: "json", # required, accepts json, mp3, ogg_vorbis, pcm
    #         sample_rate: "SampleRate",
    #         speech_mark_types: ["sentence"], # accepts sentence, ssml, viseme, word
    #         text: "Text", # required
    #         text_type: "ssml", # accepts ssml, text
    #         voice_id: "Geraint", # required, accepts Geraint, Gwyneth, Mads, Naja, Hans, Marlene, Nicole, Russell, Amy, Brian, Emma, Raveena, Ivy, Joanna, Joey, Justin, Kendra, Kimberly, Matthew, Salli, Conchita, Enrique, Miguel, Penelope, Chantal, Celine, Mathieu, Dora, Karl, Carla, Giorgio, Mizuki, Liv, Lotte, Ruben, Ewa, Jacek, Jan, Maja, Ricardo, Vitoria, Cristiano, Ines, Carmen, Maxim, Tatyana, Astrid, Filiz, Vicki, Takumi, Seoyeon, Aditi
    #       }
    #
    # @!attribute [rw] lexicon_names
    #   List of one or more pronunciation lexicon names you want the service
    #   to apply during synthesis. Lexicons are applied only if the language
    #   of the lexicon is the same as the language of the voice. For
    #   information about storing lexicons, see [PutLexicon][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] output_format
    #   The format in which the returned output will be encoded. For audio
    #   stream, this will be mp3, ogg\_vorbis, or pcm. For speech marks,
    #   this will be json.
    #   @return [String]
    #
    # @!attribute [rw] sample_rate
    #   The audio frequency specified in Hz.
    #
    #   The valid values for `mp3` and `ogg_vorbis` are "8000", "16000",
    #   and "22050". The default value is "22050".
    #
    #   Valid values for `pcm` are "8000" and "16000" The default value
    #   is "16000".
    #   @return [String]
    #
    # @!attribute [rw] speech_mark_types
    #   The type of speech marks returned for the input text.
    #   @return [Array<String>]
    #
    # @!attribute [rw] text
    #   Input text to synthesize. If you specify `ssml` as the `TextType`,
    #   follow the SSML format for the input text.
    #   @return [String]
    #
    # @!attribute [rw] text_type
    #   Specifies whether the input text is plain text or SSML. The default
    #   value is plain text. For more information, see [Using SSML][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/polly/latest/dg/ssml.html
    #   @return [String]
    #
    # @!attribute [rw] voice_id
    #   Voice ID to use for the synthesis. You can get a list of available
    #   voice IDs by calling the [DescribeVoices][1] operation.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/SynthesizeSpeechInput AWS API Documentation
    #
    class SynthesizeSpeechInput < Struct.new(
      :lexicon_names,
      :output_format,
      :sample_rate,
      :speech_mark_types,
      :text,
      :text_type,
      :voice_id)
      include Aws::Structure
    end

    # @!attribute [rw] audio_stream
    #   Stream containing the synthesized speech.
    #   @return [IO]
    #
    # @!attribute [rw] content_type
    #   Specifies the type audio stream. This should reflect the
    #   `OutputFormat` parameter in your request.
    #
    #   * If you request `mp3` as the `OutputFormat`, the `ContentType`
    #     returned is audio/mpeg.
    #
    #   * If you request `ogg_vorbis` as the `OutputFormat`, the
    #     `ContentType` returned is audio/ogg.
    #
    #   * If you request `pcm` as the `OutputFormat`, the `ContentType`
    #     returned is audio/pcm in a signed 16-bit, 1 channel (mono),
    #     little-endian format.
    #
    #   * If you request `json` as the `OutputFormat`, the `ContentType`
    #     returned is audio/json.
    #   @return [String]
    #
    # @!attribute [rw] request_characters
    #   Number of characters synthesized.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/SynthesizeSpeechOutput AWS API Documentation
    #
    class SynthesizeSpeechOutput < Struct.new(
      :audio_stream,
      :content_type,
      :request_characters)
      include Aws::Structure
    end

    # Description of the voice.
    #
    # @!attribute [rw] gender
    #   Gender of the voice.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Amazon Polly assigned voice ID. This is the ID that you specify when
    #   calling the `SynthesizeSpeech` operation.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   Language code of the voice.
    #   @return [String]
    #
    # @!attribute [rw] language_name
    #   Human readable name of the language in English.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the voice (for example, Salli, Kendra, etc.). This provides
    #   a human readable voice name that you might display in your
    #   application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/Voice AWS API Documentation
    #
    class Voice < Struct.new(
      :gender,
      :id,
      :language_code,
      :language_name,
      :name)
      include Aws::Structure
    end

  end
end
