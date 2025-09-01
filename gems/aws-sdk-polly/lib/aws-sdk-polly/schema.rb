# frozen_string_literal: true

# This is generated code!

module Aws::Polly
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Alphabet = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#Alphabet', name: 'Alphabet')
    AudioStream = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.polly#AudioStream', name: 'AudioStream', traits: {"smithy.api#streaming" => {}})
    ContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#ContentType', name: 'ContentType')
    DateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.polly#DateTime', name: 'DateTime')
    DeleteLexiconInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#DeleteLexiconInput', name: 'DeleteLexiconInput')
    DeleteLexiconOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#DeleteLexiconOutput', name: 'DeleteLexiconOutput')
    DescribeVoicesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#DescribeVoicesInput', name: 'DescribeVoicesInput')
    DescribeVoicesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#DescribeVoicesOutput', name: 'DescribeVoicesOutput')
    Engine = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.polly#Engine', name: 'Engine')
    EngineList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.polly#EngineList', name: 'EngineList')
    EngineNotSupportedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#EngineNotSupportedException', name: 'EngineNotSupportedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#ErrorMessage', name: 'ErrorMessage')
    Gender = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.polly#Gender', name: 'Gender')
    GetLexiconInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#GetLexiconInput', name: 'GetLexiconInput')
    GetLexiconOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#GetLexiconOutput', name: 'GetLexiconOutput')
    GetSpeechSynthesisTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#GetSpeechSynthesisTaskInput', name: 'GetSpeechSynthesisTaskInput')
    GetSpeechSynthesisTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#GetSpeechSynthesisTaskOutput', name: 'GetSpeechSynthesisTaskOutput')
    IncludeAdditionalLanguageCodes = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.polly#IncludeAdditionalLanguageCodes', name: 'IncludeAdditionalLanguageCodes', traits: {"smithy.api#default" => false})
    InvalidLexiconException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#InvalidLexiconException', name: 'InvalidLexiconException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3BucketException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#InvalidS3BucketException', name: 'InvalidS3BucketException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3KeyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#InvalidS3KeyException', name: 'InvalidS3KeyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSampleRateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#InvalidSampleRateException', name: 'InvalidSampleRateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSnsTopicArnException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#InvalidSnsTopicArnException', name: 'InvalidSnsTopicArnException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSsmlException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#InvalidSsmlException', name: 'InvalidSsmlException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTaskIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#InvalidTaskIdException', name: 'InvalidTaskIdException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LanguageCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.polly#LanguageCode', name: 'LanguageCode')
    LanguageCodeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.polly#LanguageCodeList', name: 'LanguageCodeList')
    LanguageName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#LanguageName', name: 'LanguageName')
    LanguageNotSupportedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#LanguageNotSupportedException', name: 'LanguageNotSupportedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LastModified = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.polly#LastModified', name: 'LastModified')
    LexemesCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.polly#LexemesCount', name: 'LexemesCount', traits: {"smithy.api#default" => 0})
    Lexicon = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#Lexicon', name: 'Lexicon')
    LexiconArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#LexiconArn', name: 'LexiconArn')
    LexiconAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#LexiconAttributes', name: 'LexiconAttributes')
    LexiconContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#LexiconContent', name: 'LexiconContent', traits: {"smithy.api#sensitive" => {}})
    LexiconDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#LexiconDescription', name: 'LexiconDescription')
    LexiconDescriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.polly#LexiconDescriptionList', name: 'LexiconDescriptionList')
    LexiconName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#LexiconName', name: 'LexiconName', traits: {"smithy.api#pattern" => "^[0-9A-Za-z]{1,20}$"})
    LexiconNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.polly#LexiconNameList', name: 'LexiconNameList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    LexiconNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#LexiconNotFoundException', name: 'LexiconNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    LexiconSizeExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#LexiconSizeExceededException', name: 'LexiconSizeExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListLexiconsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#ListLexiconsInput', name: 'ListLexiconsInput')
    ListLexiconsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#ListLexiconsOutput', name: 'ListLexiconsOutput')
    ListSpeechSynthesisTasksInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#ListSpeechSynthesisTasksInput', name: 'ListSpeechSynthesisTasksInput')
    ListSpeechSynthesisTasksOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#ListSpeechSynthesisTasksOutput', name: 'ListSpeechSynthesisTasksOutput')
    MarksNotSupportedForFormatException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#MarksNotSupportedForFormatException', name: 'MarksNotSupportedForFormatException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MaxLexemeLengthExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#MaxLexemeLengthExceededException', name: 'MaxLexemeLengthExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MaxLexiconsNumberExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#MaxLexiconsNumberExceededException', name: 'MaxLexiconsNumberExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.polly#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    OutputFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.polly#OutputFormat', name: 'OutputFormat')
    OutputS3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#OutputS3BucketName', name: 'OutputS3BucketName', traits: {"smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    OutputS3KeyPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#OutputS3KeyPrefix', name: 'OutputS3KeyPrefix', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z\\/\\!\\-_\\.\\*\\'\\(\\):;\\$@=+\\,\\?&]{0,800}$"})
    OutputUri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#OutputUri', name: 'OutputUri')
    PutLexiconInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#PutLexiconInput', name: 'PutLexiconInput')
    PutLexiconOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#PutLexiconOutput', name: 'PutLexiconOutput')
    RequestCharacters = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.polly#RequestCharacters', name: 'RequestCharacters', traits: {"smithy.api#default" => 0})
    SampleRate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#SampleRate', name: 'SampleRate')
    ServiceFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#ServiceFailureException', name: 'ServiceFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Size = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.polly#Size', name: 'Size', traits: {"smithy.api#default" => 0})
    SnsTopicArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#SnsTopicArn', name: 'SnsTopicArn', traits: {"smithy.api#pattern" => "^arn:aws(-(cn|iso(-b)?|us-gov))?:sns:[a-z0-9_-]{1,50}:\\d{12}:[a-zA-Z0-9_-]{1,251}([a-zA-Z0-9_-]{0,5}|\\.fifo)$"})
    SpeechMarkType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.polly#SpeechMarkType', name: 'SpeechMarkType')
    SpeechMarkTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.polly#SpeechMarkTypeList', name: 'SpeechMarkTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    SsmlMarksNotSupportedForTextTypeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#SsmlMarksNotSupportedForTextTypeException', name: 'SsmlMarksNotSupportedForTextTypeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StartSpeechSynthesisTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#StartSpeechSynthesisTaskInput', name: 'StartSpeechSynthesisTaskInput')
    StartSpeechSynthesisTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#StartSpeechSynthesisTaskOutput', name: 'StartSpeechSynthesisTaskOutput')
    SynthesisTask = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#SynthesisTask', name: 'SynthesisTask')
    SynthesisTaskNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#SynthesisTaskNotFoundException', name: 'SynthesisTaskNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SynthesisTasks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.polly#SynthesisTasks', name: 'SynthesisTasks')
    SynthesizeSpeechInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#SynthesizeSpeechInput', name: 'SynthesizeSpeechInput')
    SynthesizeSpeechOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#SynthesizeSpeechOutput', name: 'SynthesizeSpeechOutput')
    TaskId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#TaskId', name: 'TaskId', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_-]{1,100}$"})
    TaskStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.polly#TaskStatus', name: 'TaskStatus')
    TaskStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#TaskStatusReason', name: 'TaskStatusReason')
    Text = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#Text', name: 'Text')
    TextLengthExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#TextLengthExceededException', name: 'TextLengthExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TextType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.polly#TextType', name: 'TextType')
    UnsupportedPlsAlphabetException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#UnsupportedPlsAlphabetException', name: 'UnsupportedPlsAlphabetException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedPlsLanguageException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#UnsupportedPlsLanguageException', name: 'UnsupportedPlsLanguageException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Voice = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.polly#Voice', name: 'Voice')
    VoiceId = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.polly#VoiceId', name: 'VoiceId')
    VoiceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.polly#VoiceList', name: 'VoiceList')
    VoiceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.polly#VoiceName', name: 'VoiceName')

    DeleteLexiconInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the lexicon to delete. Must be an existing lexicon in\n      the region.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLexiconInput.type = Types::DeleteLexiconInput
    DeleteLexiconOutput.type = Types::DeleteLexiconOutput
    DescribeVoicesInput.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: Engine, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>Specifies the engine (<code>standard</code>, <code>neural</code>,\n      <code>long-form</code> or <code>generative</code>) used by Amazon Polly when\n      processing input text for speech synthesis. </p>", "smithy.api#httpQuery" => "Engine"}))
    DescribeVoicesInput.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p> The language identification tag (ISO 639 code for the language\n      name-ISO 3166 country code) for filtering the list of voices returned. If\n      you don't specify this optional parameter, all available voices are\n      returned. </p>", "smithy.api#httpQuery" => "LanguageCode"}))
    DescribeVoicesInput.add_member(:include_additional_language_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeAdditionalLanguageCodes, location_name: 'IncludeAdditionalLanguageCodes', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Boolean value indicating whether to return any bilingual voices that\n      use the specified language as an additional language. For instance, if you\n      request all languages that use US English (es-US), and there is an Italian\n      voice that speaks both Italian (it-IT) and US English, that voice will be\n      included if you specify <code>yes</code> but not if you specify\n        <code>no</code>.</p>", "smithy.api#httpQuery" => "IncludeAdditionalLanguageCodes"}))
    DescribeVoicesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An opaque pagination token returned from the previous\n        <code>DescribeVoices</code> operation. If present, this indicates where\n      to continue the listing.</p>", "smithy.api#httpQuery" => "NextToken"}))
    DescribeVoicesInput.type = Types::DescribeVoicesInput
    DescribeVoicesOutput.add_member(:voices, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceList, location_name: 'Voices', traits: {"smithy.api#documentation" => "<p>A list of voices with their properties.</p>"}))
    DescribeVoicesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use in the next request to continue the\n      listing of voices. <code>NextToken</code> is returned only if the response\n      is truncated.</p>"}))
    DescribeVoicesOutput.type = Types::DescribeVoicesOutput
    Engine.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "standard"}))
    Engine.add_member(:neural, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEURAL', traits: {"smithy.api#enumValue" => "neural"}))
    Engine.add_member(:long_form, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LONG_FORM', traits: {"smithy.api#enumValue" => "long-form"}))
    Engine.add_member(:generative, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERATIVE', traits: {"smithy.api#enumValue" => "generative"}))
    EngineList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Engine)
    EngineNotSupportedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    EngineNotSupportedException.type = Types::EngineNotSupportedException
    Gender.add_member(:female, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Female', traits: {"smithy.api#enumValue" => "Female"}))
    Gender.add_member(:male, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Male', traits: {"smithy.api#enumValue" => "Male"}))
    GetLexiconInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the lexicon.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLexiconInput.type = Types::GetLexiconInput
    GetLexiconOutput.add_member(:lexicon, Smithy::Schema::Shapes::ShapeRef.new(shape: Lexicon, location_name: 'Lexicon', traits: {"smithy.api#documentation" => "<p>Lexicon object that provides name and the string content of the\n      lexicon. </p>"}))
    GetLexiconOutput.add_member(:lexicon_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconAttributes, location_name: 'LexiconAttributes', traits: {"smithy.api#documentation" => "<p>Metadata of the lexicon, including phonetic alphabetic used,\n      language code, lexicon ARN, number of lexemes defined in the lexicon, and\n      size of lexicon in bytes.</p>"}))
    GetLexiconOutput.type = Types::GetLexiconOutput
    GetSpeechSynthesisTaskInput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'TaskId', traits: {"smithy.api#documentation" => "<p>The Amazon Polly generated identifier for a speech synthesis task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpeechSynthesisTaskInput.type = Types::GetSpeechSynthesisTaskInput
    GetSpeechSynthesisTaskOutput.add_member(:synthesis_task, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesisTask, location_name: 'SynthesisTask', traits: {"smithy.api#documentation" => "<p>SynthesisTask object that provides information from the requested\n      task, including output format, creation time, task status, and so\n      on.</p>"}))
    GetSpeechSynthesisTaskOutput.type = Types::GetSpeechSynthesisTaskOutput
    InvalidLexiconException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidLexiconException.type = Types::InvalidLexiconException
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidS3BucketException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidS3BucketException.type = Types::InvalidS3BucketException
    InvalidS3KeyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidS3KeyException.type = Types::InvalidS3KeyException
    InvalidSampleRateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidSampleRateException.type = Types::InvalidSampleRateException
    InvalidSnsTopicArnException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidSnsTopicArnException.type = Types::InvalidSnsTopicArnException
    InvalidSsmlException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidSsmlException.type = Types::InvalidSsmlException
    InvalidTaskIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidTaskIdException.type = Types::InvalidTaskIdException
    LanguageCode.add_member(:arb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'arb', traits: {"smithy.api#enumValue" => "arb"}))
    LanguageCode.add_member(:cmn_cn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cmn_CN', traits: {"smithy.api#enumValue" => "cmn-CN"}))
    LanguageCode.add_member(:cy_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cy_GB', traits: {"smithy.api#enumValue" => "cy-GB"}))
    LanguageCode.add_member(:da_dk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'da_DK', traits: {"smithy.api#enumValue" => "da-DK"}))
    LanguageCode.add_member(:de_de, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'de_DE', traits: {"smithy.api#enumValue" => "de-DE"}))
    LanguageCode.add_member(:en_au, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'en_AU', traits: {"smithy.api#enumValue" => "en-AU"}))
    LanguageCode.add_member(:en_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'en_GB', traits: {"smithy.api#enumValue" => "en-GB"}))
    LanguageCode.add_member(:en_gb_wls, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'en_GB_WLS', traits: {"smithy.api#enumValue" => "en-GB-WLS"}))
    LanguageCode.add_member(:en_in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'en_IN', traits: {"smithy.api#enumValue" => "en-IN"}))
    LanguageCode.add_member(:en_us, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'en_US', traits: {"smithy.api#enumValue" => "en-US"}))
    LanguageCode.add_member(:es_es, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'es_ES', traits: {"smithy.api#enumValue" => "es-ES"}))
    LanguageCode.add_member(:es_mx, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'es_MX', traits: {"smithy.api#enumValue" => "es-MX"}))
    LanguageCode.add_member(:es_us, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'es_US', traits: {"smithy.api#enumValue" => "es-US"}))
    LanguageCode.add_member(:fr_ca, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'fr_CA', traits: {"smithy.api#enumValue" => "fr-CA"}))
    LanguageCode.add_member(:fr_fr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'fr_FR', traits: {"smithy.api#enumValue" => "fr-FR"}))
    LanguageCode.add_member(:is_is, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'is_IS', traits: {"smithy.api#enumValue" => "is-IS"}))
    LanguageCode.add_member(:it_it, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'it_IT', traits: {"smithy.api#enumValue" => "it-IT"}))
    LanguageCode.add_member(:ja_jp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ja_JP', traits: {"smithy.api#enumValue" => "ja-JP"}))
    LanguageCode.add_member(:hi_in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'hi_IN', traits: {"smithy.api#enumValue" => "hi-IN"}))
    LanguageCode.add_member(:ko_kr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ko_KR', traits: {"smithy.api#enumValue" => "ko-KR"}))
    LanguageCode.add_member(:nb_no, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'nb_NO', traits: {"smithy.api#enumValue" => "nb-NO"}))
    LanguageCode.add_member(:nl_nl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'nl_NL', traits: {"smithy.api#enumValue" => "nl-NL"}))
    LanguageCode.add_member(:pl_pl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pl_PL', traits: {"smithy.api#enumValue" => "pl-PL"}))
    LanguageCode.add_member(:pt_br, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pt_BR', traits: {"smithy.api#enumValue" => "pt-BR"}))
    LanguageCode.add_member(:pt_pt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pt_PT', traits: {"smithy.api#enumValue" => "pt-PT"}))
    LanguageCode.add_member(:ro_ro, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ro_RO', traits: {"smithy.api#enumValue" => "ro-RO"}))
    LanguageCode.add_member(:ru_ru, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ru_RU', traits: {"smithy.api#enumValue" => "ru-RU"}))
    LanguageCode.add_member(:sv_se, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'sv_SE', traits: {"smithy.api#enumValue" => "sv-SE"}))
    LanguageCode.add_member(:tr_tr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'tr_TR', traits: {"smithy.api#enumValue" => "tr-TR"}))
    LanguageCode.add_member(:en_nz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'en_NZ', traits: {"smithy.api#enumValue" => "en-NZ"}))
    LanguageCode.add_member(:en_za, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'en_ZA', traits: {"smithy.api#enumValue" => "en-ZA"}))
    LanguageCode.add_member(:ca_es, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ca_ES', traits: {"smithy.api#enumValue" => "ca-ES"}))
    LanguageCode.add_member(:de_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'de_AT', traits: {"smithy.api#enumValue" => "de-AT"}))
    LanguageCode.add_member(:yue_cn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'yue_CN', traits: {"smithy.api#enumValue" => "yue-CN"}))
    LanguageCode.add_member(:ar_ae, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ar_AE', traits: {"smithy.api#enumValue" => "ar-AE"}))
    LanguageCode.add_member(:fi_fi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'fi_FI', traits: {"smithy.api#enumValue" => "fi-FI"}))
    LanguageCode.add_member(:en_ie, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'en_IE', traits: {"smithy.api#enumValue" => "en-IE"}))
    LanguageCode.add_member(:nl_be, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'nl_BE', traits: {"smithy.api#enumValue" => "nl-BE"}))
    LanguageCode.add_member(:fr_be, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'fr_BE', traits: {"smithy.api#enumValue" => "fr-BE"}))
    LanguageCode.add_member(:cs_cz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cs_CZ', traits: {"smithy.api#enumValue" => "cs-CZ"}))
    LanguageCode.add_member(:de_ch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'de_CH', traits: {"smithy.api#enumValue" => "de-CH"}))
    LanguageCode.add_member(:en_sg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'en_SG', traits: {"smithy.api#enumValue" => "en-SG"}))
    LanguageCodeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode)
    LanguageNotSupportedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LanguageNotSupportedException.type = Types::LanguageNotSupportedException
    Lexicon.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>Lexicon content in string format. The content of a lexicon must be\n      in PLS format.</p>"}))
    Lexicon.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the lexicon.</p>"}))
    Lexicon.type = Types::Lexicon
    LexiconAttributes.add_member(:alphabet, Smithy::Schema::Shapes::ShapeRef.new(shape: Alphabet, location_name: 'Alphabet', traits: {"smithy.api#documentation" => "<p>Phonetic alphabet used in the lexicon. Valid values are\n        <code>ipa</code> and <code>x-sampa</code>.</p>"}))
    LexiconAttributes.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>Language code that the lexicon applies to. A lexicon with a\n      language code such as \"en\" would be applied to all English languages\n      (en-GB, en-US, en-AUS, en-WLS, and so on.</p>"}))
    LexiconAttributes.add_member(:last_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModified, location_name: 'LastModified', traits: {"smithy.api#documentation" => "<p>Date lexicon was last modified (a timestamp value).</p>"}))
    LexiconAttributes.add_member(:lexicon_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconArn, location_name: 'LexiconArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the lexicon.</p>"}))
    LexiconAttributes.add_member(:lexemes_count, Smithy::Schema::Shapes::ShapeRef.new(shape: LexemesCount, location_name: 'LexemesCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of lexemes in the lexicon.</p>"}))
    LexiconAttributes.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: Size, location_name: 'Size', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total size of the lexicon, in characters.</p>"}))
    LexiconAttributes.type = Types::LexiconAttributes
    LexiconDescription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the lexicon.</p>"}))
    LexiconDescription.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>Provides lexicon metadata.</p>"}))
    LexiconDescription.type = Types::LexiconDescription
    LexiconDescriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconDescription)
    LexiconNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconName)
    LexiconNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LexiconNotFoundException.type = Types::LexiconNotFoundException
    LexiconSizeExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LexiconSizeExceededException.type = Types::LexiconSizeExceededException
    ListLexiconsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An opaque pagination token returned from previous\n        <code>ListLexicons</code> operation. If present, indicates where to\n      continue the list of lexicons.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListLexiconsInput.type = Types::ListLexiconsInput
    ListLexiconsOutput.add_member(:lexicons, Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconDescriptionList, location_name: 'Lexicons', traits: {"smithy.api#documentation" => "<p>A list of lexicon names and attributes.</p>"}))
    ListLexiconsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use in the next request to continue the\n      listing of lexicons. <code>NextToken</code> is returned only if the\n      response is truncated.</p>"}))
    ListLexiconsOutput.type = Types::ListLexiconsOutput
    ListSpeechSynthesisTasksInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of speech synthesis tasks returned in a List\n      operation.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListSpeechSynthesisTasksInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use in the next request to continue the\n      listing of speech synthesis tasks. </p>", "smithy.api#httpQuery" => "NextToken"}))
    ListSpeechSynthesisTasksInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the speech synthesis tasks returned in a List\n      operation</p>", "smithy.api#httpQuery" => "Status"}))
    ListSpeechSynthesisTasksInput.type = Types::ListSpeechSynthesisTasksInput
    ListSpeechSynthesisTasksOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An opaque pagination token returned from the previous List operation\n      in this request. If present, this indicates where to continue the\n      listing.</p>"}))
    ListSpeechSynthesisTasksOutput.add_member(:synthesis_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesisTasks, location_name: 'SynthesisTasks', traits: {"smithy.api#documentation" => "<p>List of SynthesisTask objects that provides information from the\n      specified task in the list request, including output format, creation\n      time, task status, and so on.</p>"}))
    ListSpeechSynthesisTasksOutput.type = Types::ListSpeechSynthesisTasksOutput
    MarksNotSupportedForFormatException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    MarksNotSupportedForFormatException.type = Types::MarksNotSupportedForFormatException
    MaxLexemeLengthExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    MaxLexemeLengthExceededException.type = Types::MaxLexemeLengthExceededException
    MaxLexiconsNumberExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    MaxLexiconsNumberExceededException.type = Types::MaxLexiconsNumberExceededException
    OutputFormat.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "json"}))
    OutputFormat.add_member(:mp3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MP3', traits: {"smithy.api#enumValue" => "mp3"}))
    OutputFormat.add_member(:ogg_vorbis, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OGG_VORBIS', traits: {"smithy.api#enumValue" => "ogg_vorbis"}))
    OutputFormat.add_member(:pcm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PCM', traits: {"smithy.api#enumValue" => "pcm"}))
    PutLexiconInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the lexicon. The name must follow the regular express\n      format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive\n      alphanumeric string up to 20 characters long. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutLexiconInput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>Content of the PLS lexicon as string data.</p>", "smithy.api#required" => {}}))
    PutLexiconInput.type = Types::PutLexiconInput
    PutLexiconOutput.type = Types::PutLexiconOutput
    ServiceFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceFailureException.type = Types::ServiceFailureException
    SpeechMarkType.add_member(:sentence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENTENCE', traits: {"smithy.api#enumValue" => "sentence"}))
    SpeechMarkType.add_member(:ssml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSML', traits: {"smithy.api#enumValue" => "ssml"}))
    SpeechMarkType.add_member(:viseme, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VISEME', traits: {"smithy.api#enumValue" => "viseme"}))
    SpeechMarkType.add_member(:word, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORD', traits: {"smithy.api#enumValue" => "word"}))
    SpeechMarkTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SpeechMarkType)
    SsmlMarksNotSupportedForTextTypeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    SsmlMarksNotSupportedForTextTypeException.type = Types::SsmlMarksNotSupportedForTextTypeException
    StartSpeechSynthesisTaskInput.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: Engine, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>Specifies the engine (<code>standard</code>, <code>neural</code>,\n      <code>long-form</code> or <code>generative</code>) for Amazon Polly to use\n      when processing input text for speech synthesis. Using a voice that\n      is not supported for the engine selected will result in an error.</p>"}))
    StartSpeechSynthesisTaskInput.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>Optional language code for the Speech Synthesis request. This is only\n      necessary if using a bilingual voice, such as Aditi, which can be used for\n      either Indian English (en-IN) or Hindi (hi-IN). </p>\n         <p>If a bilingual voice is used and no language code is specified, Amazon Polly\n      uses the default language of the bilingual voice. The default language for\n      any voice is the one returned by the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html\">DescribeVoices</a> operation for the <code>LanguageCode</code>\n      parameter. For example, if no language code is specified, Aditi will use\n      Indian English rather than Hindi.</p>"}))
    StartSpeechSynthesisTaskInput.add_member(:lexicon_names, Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconNameList, location_name: 'LexiconNames', traits: {"smithy.api#documentation" => "<p>List of one or more pronunciation lexicon names you want the service\n      to apply during synthesis. Lexicons are applied only if the language of\n      the lexicon is the same as the language of the voice. </p>"}))
    StartSpeechSynthesisTaskInput.add_member(:output_format, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: 'OutputFormat', traits: {"smithy.api#documentation" => "<p>The format in which the returned output will be encoded. For audio\n      stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will\n      be json. </p>", "smithy.api#required" => {}}))
    StartSpeechSynthesisTaskInput.add_member(:output_s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputS3BucketName, location_name: 'OutputS3BucketName', traits: {"smithy.api#documentation" => "<p>Amazon S3 bucket name to which the output file will be saved.</p>", "smithy.api#required" => {}}))
    StartSpeechSynthesisTaskInput.add_member(:output_s3_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputS3KeyPrefix, location_name: 'OutputS3KeyPrefix', traits: {"smithy.api#documentation" => "<p>The Amazon S3 key prefix for the output speech file.</p>"}))
    StartSpeechSynthesisTaskInput.add_member(:sample_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleRate, location_name: 'SampleRate', traits: {"smithy.api#documentation" => "<p>The audio frequency specified in Hz.</p>\n         <p>The valid values for mp3 and ogg_vorbis are \"8000\", \"16000\", \"22050\",\n      and \"24000\". The default value for standard voices is \"22050\". The default\n      value for neural voices is \"24000\". The default value for long-form voices\n      is \"24000\". The default value for generative voices is \"24000\".</p>\n         <p>Valid values for pcm are \"8000\" and \"16000\" The default value is\n      \"16000\". </p>"}))
    StartSpeechSynthesisTaskInput.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: 'SnsTopicArn', traits: {"smithy.api#documentation" => "<p>ARN for the SNS topic optionally used for providing status\n      notification for a speech synthesis task.</p>"}))
    StartSpeechSynthesisTaskInput.add_member(:speech_mark_types, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeechMarkTypeList, location_name: 'SpeechMarkTypes', traits: {"smithy.api#documentation" => "<p>The type of speech marks returned for the input text.</p>"}))
    StartSpeechSynthesisTaskInput.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The input text to synthesize. If you specify ssml as the TextType,\n      follow the SSML format for the input text. </p>", "smithy.api#required" => {}}))
    StartSpeechSynthesisTaskInput.add_member(:text_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TextType, location_name: 'TextType', traits: {"smithy.api#documentation" => "<p>Specifies whether the input text is plain text or SSML. The default\n      value is plain text. </p>"}))
    StartSpeechSynthesisTaskInput.add_member(:voice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceId, location_name: 'VoiceId', traits: {"smithy.api#documentation" => "<p>Voice ID to use for the synthesis. </p>", "smithy.api#required" => {}}))
    StartSpeechSynthesisTaskInput.type = Types::StartSpeechSynthesisTaskInput
    StartSpeechSynthesisTaskOutput.add_member(:synthesis_task, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesisTask, location_name: 'SynthesisTask', traits: {"smithy.api#documentation" => "<p>SynthesisTask object that provides information and attributes about a\n      newly submitted speech synthesis task.</p>"}))
    StartSpeechSynthesisTaskOutput.type = Types::StartSpeechSynthesisTaskOutput
    SynthesisTask.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: Engine, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>Specifies the engine (<code>standard</code>, <code>neural</code>,\n      <code>long-form</code> or <code>generative</code>) for Amazon Polly to use\n      when processing input text for speech synthesis. Using a voice that\n      is not supported for the engine selected will result in an error.</p>"}))
    SynthesisTask.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'TaskId', traits: {"smithy.api#documentation" => "<p>The Amazon Polly generated identifier for a speech synthesis task.</p>"}))
    SynthesisTask.add_member(:task_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskStatus, location_name: 'TaskStatus', traits: {"smithy.api#documentation" => "<p>Current status of the individual speech synthesis task.</p>"}))
    SynthesisTask.add_member(:task_status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskStatusReason, location_name: 'TaskStatusReason', traits: {"smithy.api#documentation" => "<p>Reason for the current status of a specific speech synthesis task,\n      including errors if the task has failed.</p>"}))
    SynthesisTask.add_member(:output_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputUri, location_name: 'OutputUri', traits: {"smithy.api#documentation" => "<p>Pathway for the output speech file.</p>"}))
    SynthesisTask.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Timestamp for the time the synthesis task was started.</p>"}))
    SynthesisTask.add_member(:request_characters, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestCharacters, location_name: 'RequestCharacters', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of billable characters synthesized.</p>"}))
    SynthesisTask.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: 'SnsTopicArn', traits: {"smithy.api#documentation" => "<p>ARN for the SNS topic optionally used for providing status\n      notification for a speech synthesis task.</p>"}))
    SynthesisTask.add_member(:lexicon_names, Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconNameList, location_name: 'LexiconNames', traits: {"smithy.api#documentation" => "<p>List of one or more pronunciation lexicon names you want the service\n      to apply during synthesis. Lexicons are applied only if the language of\n      the lexicon is the same as the language of the voice. </p>"}))
    SynthesisTask.add_member(:output_format, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: 'OutputFormat', traits: {"smithy.api#documentation" => "<p>The format in which the returned output will be encoded. For audio\n      stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will\n      be json. </p>"}))
    SynthesisTask.add_member(:sample_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleRate, location_name: 'SampleRate', traits: {"smithy.api#documentation" => "<p>The audio frequency specified in Hz.</p>\n         <p>The valid values for mp3 and ogg_vorbis are \"8000\", \"16000\", \"22050\",\n      and \"24000\". The default value for standard voices is \"22050\". The default\n      value for neural voices is \"24000\". The default value for long-form voices\n      is \"24000\". The default value for generative voices is \"24000\".</p>\n         <p>Valid values for pcm are \"8000\" and \"16000\" The default value is\n      \"16000\". </p>"}))
    SynthesisTask.add_member(:speech_mark_types, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeechMarkTypeList, location_name: 'SpeechMarkTypes', traits: {"smithy.api#documentation" => "<p>The type of speech marks returned for the input text.</p>"}))
    SynthesisTask.add_member(:text_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TextType, location_name: 'TextType', traits: {"smithy.api#documentation" => "<p>Specifies whether the input text is plain text or SSML. The default\n      value is plain text. </p>"}))
    SynthesisTask.add_member(:voice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceId, location_name: 'VoiceId', traits: {"smithy.api#documentation" => "<p>Voice ID to use for the synthesis. </p>"}))
    SynthesisTask.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>Optional language code for a synthesis task. This is only necessary if\n      using a bilingual voice, such as Aditi, which can be used for either\n      Indian English (en-IN) or Hindi (hi-IN). </p>\n         <p>If a bilingual voice is used and no language code is specified, Amazon Polly\n      uses the default language of the bilingual voice. The default language for\n      any voice is the one returned by the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html\">DescribeVoices</a> operation for the <code>LanguageCode</code>\n      parameter. For example, if no language code is specified, Aditi will use\n      Indian English rather than Hindi.</p>"}))
    SynthesisTask.type = Types::SynthesisTask
    SynthesisTaskNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    SynthesisTaskNotFoundException.type = Types::SynthesisTaskNotFoundException
    SynthesisTasks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesisTask)
    SynthesizeSpeechInput.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: Engine, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>Specifies the engine (<code>standard</code>, <code>neural</code>,\n      <code>long-form</code>, or <code>generative</code>) for Amazon Polly\n      to use when processing input text for speech synthesis. Provide an engine\n      that is supported by the voice you select. If you don't provide an engine,\n      the standard engine is selected by default. If a chosen voice isn't supported\n      by the standard engine, this will result in an error. For information on\n      Amazon Polly voices and which voices are available for each engine, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/voicelist.html\">Available Voices</a>.</p>\n         <p>Type: String</p>\n         <p>Valid Values: <code>standard</code> | <code>neural</code> |\n      <code>long-form</code> | <code>generative</code>\n         </p>\n         <p>Required: Yes</p>"}))
    SynthesizeSpeechInput.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>Optional language code for the Synthesize Speech request. This is only\n      necessary if using a bilingual voice, such as Aditi, which can be used for\n      either Indian English (en-IN) or Hindi (hi-IN). </p>\n         <p>If a bilingual voice is used and no language code is specified, Amazon Polly\n      uses the default language of the bilingual voice. The default language for\n      any voice is the one returned by the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html\">DescribeVoices</a> operation for the <code>LanguageCode</code>\n      parameter. For example, if no language code is specified, Aditi will use\n      Indian English rather than Hindi.</p>"}))
    SynthesizeSpeechInput.add_member(:lexicon_names, Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconNameList, location_name: 'LexiconNames', traits: {"smithy.api#documentation" => "<p>List of one or more pronunciation lexicon names you want the\n      service to apply during synthesis. Lexicons are applied only if the\n      language of the lexicon is the same as the language of the voice. For\n      information about storing lexicons, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html\">PutLexicon</a>.</p>"}))
    SynthesizeSpeechInput.add_member(:output_format, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: 'OutputFormat', traits: {"smithy.api#documentation" => "<p> The format in which the returned output will be encoded. For audio\n      stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will\n      be json. </p>\n         <p>When pcm is used, the content returned is audio/pcm in a signed\n      16-bit, 1 channel (mono), little-endian format. </p>", "smithy.api#required" => {}}))
    SynthesizeSpeechInput.add_member(:sample_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleRate, location_name: 'SampleRate', traits: {"smithy.api#documentation" => "<p>The audio frequency specified in Hz.</p>\n         <p>The valid values for mp3 and ogg_vorbis are \"8000\", \"16000\", \"22050\",\n      and \"24000\". The default value for standard voices is \"22050\". The default\n      value for neural voices is \"24000\". The default value for long-form voices\n      is \"24000\". The default value for generative voices is \"24000\".</p>\n         <p>Valid values for pcm are \"8000\" and \"16000\" The default value is\n      \"16000\". </p>"}))
    SynthesizeSpeechInput.add_member(:speech_mark_types, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeechMarkTypeList, location_name: 'SpeechMarkTypes', traits: {"smithy.api#documentation" => "<p>The type of speech marks returned for the input text.</p>"}))
    SynthesizeSpeechInput.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'Text', traits: {"smithy.api#documentation" => "<p> Input text to synthesize. If you specify <code>ssml</code> as the\n        <code>TextType</code>, follow the SSML format for the input text.\n    </p>", "smithy.api#required" => {}}))
    SynthesizeSpeechInput.add_member(:text_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TextType, location_name: 'TextType', traits: {"smithy.api#documentation" => "<p> Specifies whether the input text is plain text or SSML. The\n      default value is plain text. For more information, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/ssml.html\">Using\n        SSML</a>.</p>"}))
    SynthesizeSpeechInput.add_member(:voice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceId, location_name: 'VoiceId', traits: {"smithy.api#documentation" => "<p> Voice ID to use for the synthesis. You can get a list of available\n      voice IDs by calling the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html\">DescribeVoices</a> operation. </p>", "smithy.api#required" => {}}))
    SynthesizeSpeechInput.type = Types::SynthesizeSpeechInput
    SynthesizeSpeechOutput.add_member(:audio_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioStream, location_name: 'AudioStream', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p> Stream containing the synthesized speech. </p>", "smithy.api#httpPayload" => {}}))
    SynthesizeSpeechOutput.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p> Specifies the type audio stream. This should reflect the\n        <code>OutputFormat</code> parameter in your request. </p>\n         <ul>\n            <li>\n               <p> If you request <code>mp3</code> as the\n            <code>OutputFormat</code>, the <code>ContentType</code> returned is\n          audio/mpeg. </p>\n            </li>\n            <li>\n               <p> If you request <code>ogg_vorbis</code> as the\n            <code>OutputFormat</code>, the <code>ContentType</code> returned is\n          audio/ogg. </p>\n            </li>\n            <li>\n               <p> If you request <code>pcm</code> as the\n            <code>OutputFormat</code>, the <code>ContentType</code> returned is\n          audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format.\n        </p>\n            </li>\n            <li>\n               <p>If you request <code>json</code> as the\n            <code>OutputFormat</code>, the <code>ContentType</code> returned is\n          application/x-json-stream.</p>\n            </li>\n         </ul>\n         <p> </p>", "smithy.api#httpHeader" => "Content-Type"}))
    SynthesizeSpeechOutput.add_member(:request_characters, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestCharacters, location_name: 'RequestCharacters', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of characters synthesized.</p>", "smithy.api#httpHeader" => "x-amzn-RequestCharacters"}))
    SynthesizeSpeechOutput[:http_payload] = :audio_stream
    SynthesizeSpeechOutput[:http_payload_member] = SynthesizeSpeechOutput.member(:audio_stream)
    SynthesizeSpeechOutput.type = Types::SynthesizeSpeechOutput
    TaskStatus.add_member(:scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "scheduled"}))
    TaskStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "inProgress"}))
    TaskStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "completed"}))
    TaskStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "failed"}))
    TextLengthExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TextLengthExceededException.type = Types::TextLengthExceededException
    TextType.add_member(:ssml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSML', traits: {"smithy.api#enumValue" => "ssml"}))
    TextType.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXT', traits: {"smithy.api#enumValue" => "text"}))
    UnsupportedPlsAlphabetException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    UnsupportedPlsAlphabetException.type = Types::UnsupportedPlsAlphabetException
    UnsupportedPlsLanguageException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    UnsupportedPlsLanguageException.type = Types::UnsupportedPlsLanguageException
    Voice.add_member(:gender, Smithy::Schema::Shapes::ShapeRef.new(shape: Gender, location_name: 'Gender', traits: {"smithy.api#documentation" => "<p>Gender of the voice.</p>"}))
    Voice.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Amazon Polly assigned voice ID. This is the ID that you specify when\n      calling the <code>SynthesizeSpeech</code> operation.</p>"}))
    Voice.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>Language code of the voice.</p>"}))
    Voice.add_member(:language_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageName, location_name: 'LanguageName', traits: {"smithy.api#documentation" => "<p>Human readable name of the language in English.</p>"}))
    Voice.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the voice (for example, Salli, Kendra, etc.). This provides\n      a human readable voice name that you might display in your\n      application.</p>"}))
    Voice.add_member(:additional_language_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeList, location_name: 'AdditionalLanguageCodes', traits: {"smithy.api#documentation" => "<p>Additional codes for languages available for the specified voice in\n      addition to its default language. </p>\n         <p>For example, the default language for Aditi is Indian English (en-IN)\n      because it was first used for that language. Since Aditi is bilingual and\n      fluent in both Indian English and Hindi, this parameter would show the\n      code <code>hi-IN</code>.</p>"}))
    Voice.add_member(:supported_engines, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineList, location_name: 'SupportedEngines', traits: {"smithy.api#documentation" => "<p>Specifies which engines (<code>standard</code>, <code>neural</code>,\n      <code>long-form</code> or <code>generative</code>) are supported by a given voice.</p>"}))
    Voice.type = Types::Voice
    VoiceId.add_member(:aditi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Aditi', traits: {"smithy.api#enumValue" => "Aditi"}))
    VoiceId.add_member(:amy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Amy', traits: {"smithy.api#enumValue" => "Amy"}))
    VoiceId.add_member(:astrid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Astrid', traits: {"smithy.api#enumValue" => "Astrid"}))
    VoiceId.add_member(:bianca, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Bianca', traits: {"smithy.api#enumValue" => "Bianca"}))
    VoiceId.add_member(:brian, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Brian', traits: {"smithy.api#enumValue" => "Brian"}))
    VoiceId.add_member(:camila, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Camila', traits: {"smithy.api#enumValue" => "Camila"}))
    VoiceId.add_member(:carla, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Carla', traits: {"smithy.api#enumValue" => "Carla"}))
    VoiceId.add_member(:carmen, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Carmen', traits: {"smithy.api#enumValue" => "Carmen"}))
    VoiceId.add_member(:celine, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Celine', traits: {"smithy.api#enumValue" => "Celine"}))
    VoiceId.add_member(:chantal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Chantal', traits: {"smithy.api#enumValue" => "Chantal"}))
    VoiceId.add_member(:conchita, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Conchita', traits: {"smithy.api#enumValue" => "Conchita"}))
    VoiceId.add_member(:cristiano, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Cristiano', traits: {"smithy.api#enumValue" => "Cristiano"}))
    VoiceId.add_member(:dora, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Dora', traits: {"smithy.api#enumValue" => "Dora"}))
    VoiceId.add_member(:emma, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Emma', traits: {"smithy.api#enumValue" => "Emma"}))
    VoiceId.add_member(:enrique, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enrique', traits: {"smithy.api#enumValue" => "Enrique"}))
    VoiceId.add_member(:ewa, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ewa', traits: {"smithy.api#enumValue" => "Ewa"}))
    VoiceId.add_member(:filiz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Filiz', traits: {"smithy.api#enumValue" => "Filiz"}))
    VoiceId.add_member(:gabrielle, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Gabrielle', traits: {"smithy.api#enumValue" => "Gabrielle"}))
    VoiceId.add_member(:geraint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Geraint', traits: {"smithy.api#enumValue" => "Geraint"}))
    VoiceId.add_member(:giorgio, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Giorgio', traits: {"smithy.api#enumValue" => "Giorgio"}))
    VoiceId.add_member(:gwyneth, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Gwyneth', traits: {"smithy.api#enumValue" => "Gwyneth"}))
    VoiceId.add_member(:hans, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Hans', traits: {"smithy.api#enumValue" => "Hans"}))
    VoiceId.add_member(:ines, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ines', traits: {"smithy.api#enumValue" => "Ines"}))
    VoiceId.add_member(:ivy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ivy', traits: {"smithy.api#enumValue" => "Ivy"}))
    VoiceId.add_member(:jacek, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Jacek', traits: {"smithy.api#enumValue" => "Jacek"}))
    VoiceId.add_member(:jan, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Jan', traits: {"smithy.api#enumValue" => "Jan"}))
    VoiceId.add_member(:joanna, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Joanna', traits: {"smithy.api#enumValue" => "Joanna"}))
    VoiceId.add_member(:joey, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Joey', traits: {"smithy.api#enumValue" => "Joey"}))
    VoiceId.add_member(:justin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Justin', traits: {"smithy.api#enumValue" => "Justin"}))
    VoiceId.add_member(:karl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Karl', traits: {"smithy.api#enumValue" => "Karl"}))
    VoiceId.add_member(:kendra, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Kendra', traits: {"smithy.api#enumValue" => "Kendra"}))
    VoiceId.add_member(:kevin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Kevin', traits: {"smithy.api#enumValue" => "Kevin"}))
    VoiceId.add_member(:kimberly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Kimberly', traits: {"smithy.api#enumValue" => "Kimberly"}))
    VoiceId.add_member(:lea, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Lea', traits: {"smithy.api#enumValue" => "Lea"}))
    VoiceId.add_member(:liv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Liv', traits: {"smithy.api#enumValue" => "Liv"}))
    VoiceId.add_member(:lotte, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Lotte', traits: {"smithy.api#enumValue" => "Lotte"}))
    VoiceId.add_member(:lucia, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Lucia', traits: {"smithy.api#enumValue" => "Lucia"}))
    VoiceId.add_member(:lupe, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Lupe', traits: {"smithy.api#enumValue" => "Lupe"}))
    VoiceId.add_member(:mads, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Mads', traits: {"smithy.api#enumValue" => "Mads"}))
    VoiceId.add_member(:maja, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Maja', traits: {"smithy.api#enumValue" => "Maja"}))
    VoiceId.add_member(:marlene, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Marlene', traits: {"smithy.api#enumValue" => "Marlene"}))
    VoiceId.add_member(:mathieu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Mathieu', traits: {"smithy.api#enumValue" => "Mathieu"}))
    VoiceId.add_member(:matthew, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Matthew', traits: {"smithy.api#enumValue" => "Matthew"}))
    VoiceId.add_member(:maxim, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Maxim', traits: {"smithy.api#enumValue" => "Maxim"}))
    VoiceId.add_member(:mia, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Mia', traits: {"smithy.api#enumValue" => "Mia"}))
    VoiceId.add_member(:miguel, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Miguel', traits: {"smithy.api#enumValue" => "Miguel"}))
    VoiceId.add_member(:mizuki, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Mizuki', traits: {"smithy.api#enumValue" => "Mizuki"}))
    VoiceId.add_member(:naja, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Naja', traits: {"smithy.api#enumValue" => "Naja"}))
    VoiceId.add_member(:nicole, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Nicole', traits: {"smithy.api#enumValue" => "Nicole"}))
    VoiceId.add_member(:olivia, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Olivia', traits: {"smithy.api#enumValue" => "Olivia"}))
    VoiceId.add_member(:penelope, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Penelope', traits: {"smithy.api#enumValue" => "Penelope"}))
    VoiceId.add_member(:raveena, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Raveena', traits: {"smithy.api#enumValue" => "Raveena"}))
    VoiceId.add_member(:ricardo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ricardo', traits: {"smithy.api#enumValue" => "Ricardo"}))
    VoiceId.add_member(:ruben, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ruben', traits: {"smithy.api#enumValue" => "Ruben"}))
    VoiceId.add_member(:russell, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Russell', traits: {"smithy.api#enumValue" => "Russell"}))
    VoiceId.add_member(:salli, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Salli', traits: {"smithy.api#enumValue" => "Salli"}))
    VoiceId.add_member(:seoyeon, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Seoyeon', traits: {"smithy.api#enumValue" => "Seoyeon"}))
    VoiceId.add_member(:takumi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Takumi', traits: {"smithy.api#enumValue" => "Takumi"}))
    VoiceId.add_member(:tatyana, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Tatyana', traits: {"smithy.api#enumValue" => "Tatyana"}))
    VoiceId.add_member(:vicki, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Vicki', traits: {"smithy.api#enumValue" => "Vicki"}))
    VoiceId.add_member(:vitoria, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Vitoria', traits: {"smithy.api#enumValue" => "Vitoria"}))
    VoiceId.add_member(:zeina, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Zeina', traits: {"smithy.api#enumValue" => "Zeina"}))
    VoiceId.add_member(:zhiyu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Zhiyu', traits: {"smithy.api#enumValue" => "Zhiyu"}))
    VoiceId.add_member(:aria, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Aria', traits: {"smithy.api#enumValue" => "Aria"}))
    VoiceId.add_member(:ayanda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ayanda', traits: {"smithy.api#enumValue" => "Ayanda"}))
    VoiceId.add_member(:arlet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Arlet', traits: {"smithy.api#enumValue" => "Arlet"}))
    VoiceId.add_member(:hannah, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Hannah', traits: {"smithy.api#enumValue" => "Hannah"}))
    VoiceId.add_member(:arthur, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Arthur', traits: {"smithy.api#enumValue" => "Arthur"}))
    VoiceId.add_member(:daniel, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Daniel', traits: {"smithy.api#enumValue" => "Daniel"}))
    VoiceId.add_member(:liam, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Liam', traits: {"smithy.api#enumValue" => "Liam"}))
    VoiceId.add_member(:pedro, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pedro', traits: {"smithy.api#enumValue" => "Pedro"}))
    VoiceId.add_member(:kajal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Kajal', traits: {"smithy.api#enumValue" => "Kajal"}))
    VoiceId.add_member(:hiujin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Hiujin', traits: {"smithy.api#enumValue" => "Hiujin"}))
    VoiceId.add_member(:laura, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Laura', traits: {"smithy.api#enumValue" => "Laura"}))
    VoiceId.add_member(:elin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Elin', traits: {"smithy.api#enumValue" => "Elin"}))
    VoiceId.add_member(:ida, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ida', traits: {"smithy.api#enumValue" => "Ida"}))
    VoiceId.add_member(:suvi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Suvi', traits: {"smithy.api#enumValue" => "Suvi"}))
    VoiceId.add_member(:ola, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ola', traits: {"smithy.api#enumValue" => "Ola"}))
    VoiceId.add_member(:hala, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Hala', traits: {"smithy.api#enumValue" => "Hala"}))
    VoiceId.add_member(:andres, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Andres', traits: {"smithy.api#enumValue" => "Andres"}))
    VoiceId.add_member(:sergio, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Sergio', traits: {"smithy.api#enumValue" => "Sergio"}))
    VoiceId.add_member(:remi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Remi', traits: {"smithy.api#enumValue" => "Remi"}))
    VoiceId.add_member(:adriano, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Adriano', traits: {"smithy.api#enumValue" => "Adriano"}))
    VoiceId.add_member(:thiago, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Thiago', traits: {"smithy.api#enumValue" => "Thiago"}))
    VoiceId.add_member(:ruth, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ruth', traits: {"smithy.api#enumValue" => "Ruth"}))
    VoiceId.add_member(:stephen, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stephen', traits: {"smithy.api#enumValue" => "Stephen"}))
    VoiceId.add_member(:kazuha, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Kazuha', traits: {"smithy.api#enumValue" => "Kazuha"}))
    VoiceId.add_member(:tomoko, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Tomoko', traits: {"smithy.api#enumValue" => "Tomoko"}))
    VoiceId.add_member(:niamh, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Niamh', traits: {"smithy.api#enumValue" => "Niamh"}))
    VoiceId.add_member(:sofie, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Sofie', traits: {"smithy.api#enumValue" => "Sofie"}))
    VoiceId.add_member(:lisa, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Lisa', traits: {"smithy.api#enumValue" => "Lisa"}))
    VoiceId.add_member(:isabelle, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Isabelle', traits: {"smithy.api#enumValue" => "Isabelle"}))
    VoiceId.add_member(:zayd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Zayd', traits: {"smithy.api#enumValue" => "Zayd"}))
    VoiceId.add_member(:danielle, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Danielle', traits: {"smithy.api#enumValue" => "Danielle"}))
    VoiceId.add_member(:gregory, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Gregory', traits: {"smithy.api#enumValue" => "Gregory"}))
    VoiceId.add_member(:burcu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Burcu', traits: {"smithy.api#enumValue" => "Burcu"}))
    VoiceId.add_member(:jitka, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Jitka', traits: {"smithy.api#enumValue" => "Jitka"}))
    VoiceId.add_member(:sabrina, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Sabrina', traits: {"smithy.api#enumValue" => "Sabrina"}))
    VoiceId.add_member(:jasmine, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Jasmine', traits: {"smithy.api#enumValue" => "Jasmine"}))
    VoiceId.add_member(:jihye, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Jihye', traits: {"smithy.api#enumValue" => "Jihye"}))
    VoiceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Voice)

    ParrotV1 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.polly#Parrot_v1"
      service.name = "ParrotV1"
      service.version = "2016-06-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Polly", "arnNamespace" => "polly", "cloudFormationName" => "Polly", "cloudTrailEventSource" => "polly.amazonaws.com", "endpointPrefix" => "polly"}, "aws.auth#sigv4" => {"name" => "polly"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Polly", "smithy.api#xmlNamespace" => {"uri" => "http://polly.amazonaws.com/doc/v1"}}
      service.add_operation(:delete_lexicon, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#DeleteLexicon"
        operation.name = "DeleteLexicon"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLexiconInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLexiconOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/lexicons/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_voices, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#DescribeVoices"
        operation.name = "DescribeVoices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVoicesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVoicesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/voices", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "DescribeVoicesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:get_lexicon, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#GetLexicon"
        operation.name = "GetLexicon"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLexiconInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLexiconOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/lexicons/{Name}", "code" => 200}}
      end)
      service.add_operation(:get_speech_synthesis_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#GetSpeechSynthesisTask"
        operation.name = "GetSpeechSynthesisTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSpeechSynthesisTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSpeechSynthesisTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTaskIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesisTaskNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/synthesisTasks/{TaskId}", "code" => 200}}
      end)
      service.add_operation(:list_lexicons, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#ListLexicons"
        operation.name = "ListLexicons"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLexiconsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLexiconsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/lexicons", "code" => 200}}
      end)
      service.add_operation(:list_speech_synthesis_tasks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#ListSpeechSynthesisTasks"
        operation.name = "ListSpeechSynthesisTasks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpeechSynthesisTasksInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpeechSynthesisTasksOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/synthesisTasks", "code" => 200}}
        operation[:paginator] = Paginators::ListSpeechSynthesisTasks.new
      end)
      service.add_operation(:put_lexicon, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#PutLexicon"
        operation.name = "PutLexicon"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLexiconInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLexiconOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLexiconException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconSizeExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLexemeLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLexiconsNumberExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedPlsAlphabetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedPlsLanguageException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/lexicons/{Name}", "code" => 200}}
      end)
      service.add_operation(:start_speech_synthesis_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#StartSpeechSynthesisTask"
        operation.name = "StartSpeechSynthesisTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSpeechSynthesisTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSpeechSynthesisTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EngineNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3BucketException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3KeyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSampleRateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSnsTopicArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSsmlException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MarksNotSupportedForFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SsmlMarksNotSupportedForTextTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextLengthExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/synthesisTasks", "code" => 200}}
      end)
      service.add_operation(:synthesize_speech, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#SynthesizeSpeech"
        operation.name = "SynthesizeSpeech"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizeSpeechInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizeSpeechOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EngineNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSampleRateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSsmlException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LexiconNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MarksNotSupportedForFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SsmlMarksNotSupportedForTextTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextLengthExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/speech", "code" => 200}}
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
