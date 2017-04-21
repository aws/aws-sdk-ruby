# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Polly
  # @api private
  module ClientApi

    include Seahorse::Model

    Alphabet = Shapes::StringShape.new(name: 'Alphabet')
    AudioStream = Shapes::BlobShape.new(name: 'AudioStream')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    DeleteLexiconInput = Shapes::StructureShape.new(name: 'DeleteLexiconInput')
    DeleteLexiconOutput = Shapes::StructureShape.new(name: 'DeleteLexiconOutput')
    DescribeVoicesInput = Shapes::StructureShape.new(name: 'DescribeVoicesInput')
    DescribeVoicesOutput = Shapes::StructureShape.new(name: 'DescribeVoicesOutput')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Gender = Shapes::StringShape.new(name: 'Gender')
    GetLexiconInput = Shapes::StructureShape.new(name: 'GetLexiconInput')
    GetLexiconOutput = Shapes::StructureShape.new(name: 'GetLexiconOutput')
    InvalidLexiconException = Shapes::StructureShape.new(name: 'InvalidLexiconException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidSampleRateException = Shapes::StructureShape.new(name: 'InvalidSampleRateException')
    InvalidSsmlException = Shapes::StructureShape.new(name: 'InvalidSsmlException')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    LanguageName = Shapes::StringShape.new(name: 'LanguageName')
    LastModified = Shapes::TimestampShape.new(name: 'LastModified')
    LexemesCount = Shapes::IntegerShape.new(name: 'LexemesCount')
    Lexicon = Shapes::StructureShape.new(name: 'Lexicon')
    LexiconArn = Shapes::StringShape.new(name: 'LexiconArn')
    LexiconAttributes = Shapes::StructureShape.new(name: 'LexiconAttributes')
    LexiconContent = Shapes::StringShape.new(name: 'LexiconContent')
    LexiconDescription = Shapes::StructureShape.new(name: 'LexiconDescription')
    LexiconDescriptionList = Shapes::ListShape.new(name: 'LexiconDescriptionList')
    LexiconName = Shapes::StringShape.new(name: 'LexiconName')
    LexiconNameList = Shapes::ListShape.new(name: 'LexiconNameList')
    LexiconNotFoundException = Shapes::StructureShape.new(name: 'LexiconNotFoundException')
    LexiconSizeExceededException = Shapes::StructureShape.new(name: 'LexiconSizeExceededException')
    ListLexiconsInput = Shapes::StructureShape.new(name: 'ListLexiconsInput')
    ListLexiconsOutput = Shapes::StructureShape.new(name: 'ListLexiconsOutput')
    MarksNotSupportedForFormatException = Shapes::StructureShape.new(name: 'MarksNotSupportedForFormatException')
    MaxLexemeLengthExceededException = Shapes::StructureShape.new(name: 'MaxLexemeLengthExceededException')
    MaxLexiconsNumberExceededException = Shapes::StructureShape.new(name: 'MaxLexiconsNumberExceededException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OutputFormat = Shapes::StringShape.new(name: 'OutputFormat')
    PutLexiconInput = Shapes::StructureShape.new(name: 'PutLexiconInput')
    PutLexiconOutput = Shapes::StructureShape.new(name: 'PutLexiconOutput')
    RequestCharacters = Shapes::IntegerShape.new(name: 'RequestCharacters')
    SampleRate = Shapes::StringShape.new(name: 'SampleRate')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    Size = Shapes::IntegerShape.new(name: 'Size')
    SpeechMarkType = Shapes::StringShape.new(name: 'SpeechMarkType')
    SpeechMarkTypeList = Shapes::ListShape.new(name: 'SpeechMarkTypeList')
    SsmlMarksNotSupportedForTextTypeException = Shapes::StructureShape.new(name: 'SsmlMarksNotSupportedForTextTypeException')
    SynthesizeSpeechInput = Shapes::StructureShape.new(name: 'SynthesizeSpeechInput')
    SynthesizeSpeechOutput = Shapes::StructureShape.new(name: 'SynthesizeSpeechOutput')
    Text = Shapes::StringShape.new(name: 'Text')
    TextLengthExceededException = Shapes::StructureShape.new(name: 'TextLengthExceededException')
    TextType = Shapes::StringShape.new(name: 'TextType')
    UnsupportedPlsAlphabetException = Shapes::StructureShape.new(name: 'UnsupportedPlsAlphabetException')
    UnsupportedPlsLanguageException = Shapes::StructureShape.new(name: 'UnsupportedPlsLanguageException')
    Voice = Shapes::StructureShape.new(name: 'Voice')
    VoiceId = Shapes::StringShape.new(name: 'VoiceId')
    VoiceList = Shapes::ListShape.new(name: 'VoiceList')
    VoiceName = Shapes::StringShape.new(name: 'VoiceName')

    DeleteLexiconInput.add_member(:name, Shapes::ShapeRef.new(shape: LexiconName, required: true, location: "uri", location_name: "LexiconName"))
    DeleteLexiconInput.struct_class = Types::DeleteLexiconInput

    DeleteLexiconOutput.struct_class = Types::DeleteLexiconOutput

    DescribeVoicesInput.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location: "querystring", location_name: "LanguageCode"))
    DescribeVoicesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    DescribeVoicesInput.struct_class = Types::DescribeVoicesInput

    DescribeVoicesOutput.add_member(:voices, Shapes::ShapeRef.new(shape: VoiceList, location_name: "Voices"))
    DescribeVoicesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeVoicesOutput.struct_class = Types::DescribeVoicesOutput

    GetLexiconInput.add_member(:name, Shapes::ShapeRef.new(shape: LexiconName, required: true, location: "uri", location_name: "LexiconName"))
    GetLexiconInput.struct_class = Types::GetLexiconInput

    GetLexiconOutput.add_member(:lexicon, Shapes::ShapeRef.new(shape: Lexicon, location_name: "Lexicon"))
    GetLexiconOutput.add_member(:lexicon_attributes, Shapes::ShapeRef.new(shape: LexiconAttributes, location_name: "LexiconAttributes"))
    GetLexiconOutput.struct_class = Types::GetLexiconOutput

    Lexicon.add_member(:content, Shapes::ShapeRef.new(shape: LexiconContent, location_name: "Content"))
    Lexicon.add_member(:name, Shapes::ShapeRef.new(shape: LexiconName, location_name: "Name"))
    Lexicon.struct_class = Types::Lexicon

    LexiconAttributes.add_member(:alphabet, Shapes::ShapeRef.new(shape: Alphabet, location_name: "Alphabet"))
    LexiconAttributes.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    LexiconAttributes.add_member(:last_modified, Shapes::ShapeRef.new(shape: LastModified, location_name: "LastModified"))
    LexiconAttributes.add_member(:lexicon_arn, Shapes::ShapeRef.new(shape: LexiconArn, location_name: "LexiconArn"))
    LexiconAttributes.add_member(:lexemes_count, Shapes::ShapeRef.new(shape: LexemesCount, location_name: "LexemesCount"))
    LexiconAttributes.add_member(:size, Shapes::ShapeRef.new(shape: Size, location_name: "Size"))
    LexiconAttributes.struct_class = Types::LexiconAttributes

    LexiconDescription.add_member(:name, Shapes::ShapeRef.new(shape: LexiconName, location_name: "Name"))
    LexiconDescription.add_member(:attributes, Shapes::ShapeRef.new(shape: LexiconAttributes, location_name: "Attributes"))
    LexiconDescription.struct_class = Types::LexiconDescription

    LexiconDescriptionList.member = Shapes::ShapeRef.new(shape: LexiconDescription)

    LexiconNameList.member = Shapes::ShapeRef.new(shape: LexiconName)

    ListLexiconsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListLexiconsInput.struct_class = Types::ListLexiconsInput

    ListLexiconsOutput.add_member(:lexicons, Shapes::ShapeRef.new(shape: LexiconDescriptionList, location_name: "Lexicons"))
    ListLexiconsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLexiconsOutput.struct_class = Types::ListLexiconsOutput

    PutLexiconInput.add_member(:name, Shapes::ShapeRef.new(shape: LexiconName, required: true, location: "uri", location_name: "LexiconName"))
    PutLexiconInput.add_member(:content, Shapes::ShapeRef.new(shape: LexiconContent, required: true, location_name: "Content"))
    PutLexiconInput.struct_class = Types::PutLexiconInput

    PutLexiconOutput.struct_class = Types::PutLexiconOutput

    SpeechMarkTypeList.member = Shapes::ShapeRef.new(shape: SpeechMarkType)

    SynthesizeSpeechInput.add_member(:lexicon_names, Shapes::ShapeRef.new(shape: LexiconNameList, location_name: "LexiconNames"))
    SynthesizeSpeechInput.add_member(:output_format, Shapes::ShapeRef.new(shape: OutputFormat, required: true, location_name: "OutputFormat"))
    SynthesizeSpeechInput.add_member(:sample_rate, Shapes::ShapeRef.new(shape: SampleRate, location_name: "SampleRate"))
    SynthesizeSpeechInput.add_member(:speech_mark_types, Shapes::ShapeRef.new(shape: SpeechMarkTypeList, location_name: "SpeechMarkTypes"))
    SynthesizeSpeechInput.add_member(:text, Shapes::ShapeRef.new(shape: Text, required: true, location_name: "Text"))
    SynthesizeSpeechInput.add_member(:text_type, Shapes::ShapeRef.new(shape: TextType, location_name: "TextType"))
    SynthesizeSpeechInput.add_member(:voice_id, Shapes::ShapeRef.new(shape: VoiceId, required: true, location_name: "VoiceId"))
    SynthesizeSpeechInput.struct_class = Types::SynthesizeSpeechInput

    SynthesizeSpeechOutput.add_member(:audio_stream, Shapes::ShapeRef.new(shape: AudioStream, location_name: "AudioStream"))
    SynthesizeSpeechOutput.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location: "header", location_name: "Content-Type"))
    SynthesizeSpeechOutput.add_member(:request_characters, Shapes::ShapeRef.new(shape: RequestCharacters, location: "header", location_name: "x-amzn-RequestCharacters"))
    SynthesizeSpeechOutput.struct_class = Types::SynthesizeSpeechOutput
    SynthesizeSpeechOutput[:payload] = :audio_stream
    SynthesizeSpeechOutput[:payload_member] = SynthesizeSpeechOutput.member(:audio_stream)

    Voice.add_member(:gender, Shapes::ShapeRef.new(shape: Gender, location_name: "Gender"))
    Voice.add_member(:id, Shapes::ShapeRef.new(shape: VoiceId, location_name: "Id"))
    Voice.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    Voice.add_member(:language_name, Shapes::ShapeRef.new(shape: LanguageName, location_name: "LanguageName"))
    Voice.add_member(:name, Shapes::ShapeRef.new(shape: VoiceName, location_name: "Name"))
    Voice.struct_class = Types::Voice

    VoiceList.member = Shapes::ShapeRef.new(shape: Voice)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-06-10"

      api.metadata = {
        "endpointPrefix" => "polly",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Polly",
        "signatureVersion" => "v4",
      }

      api.add_operation(:delete_lexicon, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLexicon"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/lexicons/{LexiconName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteLexiconInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteLexiconOutput)
        o.errors << Shapes::ShapeRef.new(shape: LexiconNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_voices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVoices"
        o.http_method = "GET"
        o.http_request_uri = "/v1/voices"
        o.input = Shapes::ShapeRef.new(shape: DescribeVoicesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeVoicesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_lexicon, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLexicon"
        o.http_method = "GET"
        o.http_request_uri = "/v1/lexicons/{LexiconName}"
        o.input = Shapes::ShapeRef.new(shape: GetLexiconInput)
        o.output = Shapes::ShapeRef.new(shape: GetLexiconOutput)
        o.errors << Shapes::ShapeRef.new(shape: LexiconNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_lexicons, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLexicons"
        o.http_method = "GET"
        o.http_request_uri = "/v1/lexicons"
        o.input = Shapes::ShapeRef.new(shape: ListLexiconsInput)
        o.output = Shapes::ShapeRef.new(shape: ListLexiconsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_lexicon, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLexicon"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/lexicons/{LexiconName}"
        o.input = Shapes::ShapeRef.new(shape: PutLexiconInput)
        o.output = Shapes::ShapeRef.new(shape: PutLexiconOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLexiconException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedPlsAlphabetException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedPlsLanguageException)
        o.errors << Shapes::ShapeRef.new(shape: LexiconSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaxLexemeLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaxLexiconsNumberExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:synthesize_speech, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SynthesizeSpeech"
        o.http_method = "POST"
        o.http_request_uri = "/v1/speech"
        o.input = Shapes::ShapeRef.new(shape: SynthesizeSpeechInput)
        o.output = Shapes::ShapeRef.new(shape: SynthesizeSpeechOutput)
        o.errors << Shapes::ShapeRef.new(shape: TextLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSampleRateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSsmlException)
        o.errors << Shapes::ShapeRef.new(shape: LexiconNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: MarksNotSupportedForFormatException)
        o.errors << Shapes::ShapeRef.new(shape: SsmlMarksNotSupportedForTextTypeException)
      end)
    end

  end
end
