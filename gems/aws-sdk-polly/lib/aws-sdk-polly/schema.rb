# frozen_string_literal: true

# This is generated code!

module Aws::Polly
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Alphabet = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#Alphabet", name: "Alphabet")
    AudioChunk = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.polly#AudioChunk", name: "AudioChunk")
    AudioEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#AudioEvent", name: "AudioEvent")
    AudioStream = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.polly#AudioStream", name: "AudioStream", traits: {"smithy.api#streaming" => {}})
    AvailabilityErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#AvailabilityErrorMessage", name: "AvailabilityErrorMessage")
    CloseStreamEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#CloseStreamEvent", name: "CloseStreamEvent")
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#ContentType", name: "ContentType")
    CoralAvailabilityThrottledResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#CoralAvailabilityThrottledResource", name: "CoralAvailabilityThrottledResource")
    CoralAvailabilityThrottlingReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#CoralAvailabilityThrottlingReason", name: "CoralAvailabilityThrottlingReason")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.polly#DateTime", name: "DateTime")
    DeleteLexiconInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#DeleteLexiconInput", name: "DeleteLexiconInput")
    DeleteLexiconOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#DeleteLexiconOutput", name: "DeleteLexiconOutput")
    DescribeVoicesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#DescribeVoicesInput", name: "DescribeVoicesInput")
    DescribeVoicesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#DescribeVoicesOutput", name: "DescribeVoicesOutput")
    Engine = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.polly#Engine", name: "Engine")
    EngineList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.polly#EngineList", name: "EngineList")
    EngineNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#EngineNotSupportedException", name: "EngineNotSupportedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#ErrorMessage", name: "ErrorMessage")
    FlushStreamConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#FlushStreamConfiguration", name: "FlushStreamConfiguration")
    Force = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.polly#Force", name: "Force", traits: {"smithy.api#default" => false})
    Gender = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.polly#Gender", name: "Gender")
    GetLexiconInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#GetLexiconInput", name: "GetLexiconInput")
    GetLexiconOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#GetLexiconOutput", name: "GetLexiconOutput")
    GetSpeechSynthesisTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#GetSpeechSynthesisTaskInput", name: "GetSpeechSynthesisTaskInput")
    GetSpeechSynthesisTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#GetSpeechSynthesisTaskOutput", name: "GetSpeechSynthesisTaskOutput")
    IncludeAdditionalLanguageCodes = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.polly#IncludeAdditionalLanguageCodes", name: "IncludeAdditionalLanguageCodes", traits: {"smithy.api#default" => false})
    InvalidLexiconException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#InvalidLexiconException", name: "InvalidLexiconException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3BucketException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#InvalidS3BucketException", name: "InvalidS3BucketException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3KeyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#InvalidS3KeyException", name: "InvalidS3KeyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSampleRateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#InvalidSampleRateException", name: "InvalidSampleRateException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSnsTopicArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#InvalidSnsTopicArnException", name: "InvalidSnsTopicArnException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSsmlException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#InvalidSsmlException", name: "InvalidSsmlException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTaskIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#InvalidTaskIdException", name: "InvalidTaskIdException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.polly#LanguageCode", name: "LanguageCode")
    LanguageCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.polly#LanguageCodeList", name: "LanguageCodeList")
    LanguageName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#LanguageName", name: "LanguageName")
    LanguageNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#LanguageNotSupportedException", name: "LanguageNotSupportedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LastModified = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.polly#LastModified", name: "LastModified")
    LexemesCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.polly#LexemesCount", name: "LexemesCount", traits: {"smithy.api#default" => 0})
    Lexicon = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#Lexicon", name: "Lexicon")
    LexiconArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#LexiconArn", name: "LexiconArn")
    LexiconAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#LexiconAttributes", name: "LexiconAttributes")
    LexiconContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#LexiconContent", name: "LexiconContent", traits: {"smithy.api#sensitive" => {}})
    LexiconDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#LexiconDescription", name: "LexiconDescription")
    LexiconDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.polly#LexiconDescriptionList", name: "LexiconDescriptionList")
    LexiconName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#LexiconName", name: "LexiconName", traits: {"smithy.api#pattern" => "^[0-9A-Za-z]{1,20}$"})
    LexiconNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.polly#LexiconNameList", name: "LexiconNameList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    LexiconNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#LexiconNotFoundException", name: "LexiconNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    LexiconSizeExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#LexiconSizeExceededException", name: "LexiconSizeExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListLexiconsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#ListLexiconsInput", name: "ListLexiconsInput")
    ListLexiconsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#ListLexiconsOutput", name: "ListLexiconsOutput")
    ListSpeechSynthesisTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#ListSpeechSynthesisTasksInput", name: "ListSpeechSynthesisTasksInput")
    ListSpeechSynthesisTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#ListSpeechSynthesisTasksOutput", name: "ListSpeechSynthesisTasksOutput")
    MarksNotSupportedForFormatException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#MarksNotSupportedForFormatException", name: "MarksNotSupportedForFormatException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MaxLexemeLengthExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#MaxLexemeLengthExceededException", name: "MaxLexemeLengthExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MaxLexiconsNumberExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#MaxLexiconsNumberExceededException", name: "MaxLexiconsNumberExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.polly#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    OutputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.polly#OutputFormat", name: "OutputFormat")
    OutputS3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#OutputS3BucketName", name: "OutputS3BucketName", traits: {"smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    OutputS3KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#OutputS3KeyPrefix", name: "OutputS3KeyPrefix", traits: {"smithy.api#pattern" => "^[0-9a-zA-Z\\/\\!\\-_\\.\\*\\'\\(\\):;\\$@=+\\,\\?&]{0,800}$"})
    OutputUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#OutputUri", name: "OutputUri")
    PutLexiconInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#PutLexiconInput", name: "PutLexiconInput")
    PutLexiconOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#PutLexiconOutput", name: "PutLexiconOutput")
    QuotaCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.polly#QuotaCode", name: "QuotaCode")
    RequestCharacters = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.polly#RequestCharacters", name: "RequestCharacters", traits: {"smithy.api#default" => 0})
    SampleRate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#SampleRate", name: "SampleRate")
    ServiceCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.polly#ServiceCode", name: "ServiceCode")
    ServiceFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#ServiceFailureException", name: "ServiceFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Size = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.polly#Size", name: "Size", traits: {"smithy.api#default" => 0})
    SnsTopicArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#SnsTopicArn", name: "SnsTopicArn", traits: {"smithy.api#pattern" => "^arn:aws(-(cn|iso(-b)?|us-gov))?:sns:[a-z0-9_-]{1,50}:\\d{12}:[a-zA-Z0-9_-]{1,251}([a-zA-Z0-9_-]{0,5}|\\.fifo)$"})
    SpeechMarkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.polly#SpeechMarkType", name: "SpeechMarkType")
    SpeechMarkTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.polly#SpeechMarkTypeList", name: "SpeechMarkTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    SsmlMarksNotSupportedForTextTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#SsmlMarksNotSupportedForTextTypeException", name: "SsmlMarksNotSupportedForTextTypeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StartSpeechSynthesisStreamActionStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.polly#StartSpeechSynthesisStreamActionStream", name: "StartSpeechSynthesisStreamActionStream", traits: {"smithy.api#streaming" => {}})
    StartSpeechSynthesisStreamEventStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.polly#StartSpeechSynthesisStreamEventStream", name: "StartSpeechSynthesisStreamEventStream", traits: {"smithy.api#streaming" => {}})
    StartSpeechSynthesisStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#StartSpeechSynthesisStreamInput", name: "StartSpeechSynthesisStreamInput")
    StartSpeechSynthesisStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#StartSpeechSynthesisStreamOutput", name: "StartSpeechSynthesisStreamOutput")
    StartSpeechSynthesisTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#StartSpeechSynthesisTaskInput", name: "StartSpeechSynthesisTaskInput")
    StartSpeechSynthesisTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#StartSpeechSynthesisTaskOutput", name: "StartSpeechSynthesisTaskOutput")
    StreamClosedEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#StreamClosedEvent", name: "StreamClosedEvent")
    SynthesisTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#SynthesisTask", name: "SynthesisTask")
    SynthesisTaskNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#SynthesisTaskNotFoundException", name: "SynthesisTaskNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SynthesisTasks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.polly#SynthesisTasks", name: "SynthesisTasks")
    SynthesizeSpeechInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#SynthesizeSpeechInput", name: "SynthesizeSpeechInput")
    SynthesizeSpeechOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#SynthesizeSpeechOutput", name: "SynthesizeSpeechOutput")
    TaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#TaskId", name: "TaskId", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_-]{1,100}$"})
    TaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.polly#TaskStatus", name: "TaskStatus")
    TaskStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#TaskStatusReason", name: "TaskStatusReason")
    Text = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#Text", name: "Text")
    TextEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#TextEvent", name: "TextEvent")
    TextLengthExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#TextLengthExceededException", name: "TextLengthExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TextType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.polly#TextType", name: "TextType")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#ThrottlingException", name: "ThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "Throttling", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ThrottlingReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#ThrottlingReason", name: "ThrottlingReason")
    ThrottlingReasonList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.polly#ThrottlingReasonList", name: "ThrottlingReasonList")
    UnsupportedPlsAlphabetException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#UnsupportedPlsAlphabetException", name: "UnsupportedPlsAlphabetException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedPlsLanguageException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#UnsupportedPlsLanguageException", name: "UnsupportedPlsLanguageException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.polly#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionFieldMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#ValidationExceptionFieldMessage", name: "ValidationExceptionFieldMessage")
    ValidationExceptionFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#ValidationExceptionFieldName", name: "ValidationExceptionFieldName")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.polly#ValidationExceptionReason", name: "ValidationExceptionReason")
    Voice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.polly#Voice", name: "Voice")
    VoiceId = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.polly#VoiceId", name: "VoiceId")
    VoiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.polly#VoiceList", name: "VoiceList")
    VoiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.polly#VoiceName", name: "VoiceName")

    AudioEvent.add_member(:audio_chunk, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioChunk, name: "AudioChunk", traits: {"smithy.api#eventPayload" => {}}))
    AudioEvent.type = Types::AudioEvent
    CloseStreamEvent.type = Types::CloseStreamEvent
    DeleteLexiconInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLexiconInput.type = Types::DeleteLexiconInput
    DeleteLexiconOutput.type = Types::DeleteLexiconOutput
    DescribeVoicesInput.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: Engine, name: "Engine", traits: {"smithy.api#httpQuery" => "Engine"}))
    DescribeVoicesInput.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#httpQuery" => "LanguageCode"}))
    DescribeVoicesInput.add_member(:include_additional_language_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeAdditionalLanguageCodes, name: "IncludeAdditionalLanguageCodes", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "IncludeAdditionalLanguageCodes"}))
    DescribeVoicesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    DescribeVoicesInput.type = Types::DescribeVoicesInput
    DescribeVoicesOutput.add_member(:voices, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceList, name: "Voices"))
    DescribeVoicesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeVoicesOutput.type = Types::DescribeVoicesOutput
    Engine.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "standard"}))
    Engine.add_member(:neural, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEURAL", traits: {"smithy.api#enumValue" => "neural"}))
    Engine.add_member(:long_form, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LONG_FORM", traits: {"smithy.api#enumValue" => "long-form"}))
    Engine.add_member(:generative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GENERATIVE", traits: {"smithy.api#enumValue" => "generative"}))
    EngineList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Engine, name: "member"))
    EngineNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    EngineNotSupportedException.type = Types::EngineNotSupportedException
    FlushStreamConfiguration.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Force, name: "Force", traits: {"smithy.api#default" => false}))
    FlushStreamConfiguration.type = Types::FlushStreamConfiguration
    Gender.add_member(:female, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Female", traits: {"smithy.api#enumValue" => "Female"}))
    Gender.add_member(:male, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Male", traits: {"smithy.api#enumValue" => "Male"}))
    GetLexiconInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLexiconInput.type = Types::GetLexiconInput
    GetLexiconOutput.add_member(:lexicon, ::Smithy::Schema::Shapes::MemberShape.new(target: Lexicon, name: "Lexicon"))
    GetLexiconOutput.add_member(:lexicon_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconAttributes, name: "LexiconAttributes"))
    GetLexiconOutput.type = Types::GetLexiconOutput
    GetSpeechSynthesisTaskInput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "TaskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpeechSynthesisTaskInput.type = Types::GetSpeechSynthesisTaskInput
    GetSpeechSynthesisTaskOutput.add_member(:synthesis_task, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesisTask, name: "SynthesisTask"))
    GetSpeechSynthesisTaskOutput.type = Types::GetSpeechSynthesisTaskOutput
    InvalidLexiconException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidLexiconException.type = Types::InvalidLexiconException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidS3BucketException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidS3BucketException.type = Types::InvalidS3BucketException
    InvalidS3KeyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidS3KeyException.type = Types::InvalidS3KeyException
    InvalidSampleRateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidSampleRateException.type = Types::InvalidSampleRateException
    InvalidSnsTopicArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidSnsTopicArnException.type = Types::InvalidSnsTopicArnException
    InvalidSsmlException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidSsmlException.type = Types::InvalidSsmlException
    InvalidTaskIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidTaskIdException.type = Types::InvalidTaskIdException
    LanguageCode.add_member(:arb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "arb", traits: {"smithy.api#enumValue" => "arb"}))
    LanguageCode.add_member(:cmn_cn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cmn_CN", traits: {"smithy.api#enumValue" => "cmn-CN"}))
    LanguageCode.add_member(:cy_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cy_GB", traits: {"smithy.api#enumValue" => "cy-GB"}))
    LanguageCode.add_member(:da_dk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "da_DK", traits: {"smithy.api#enumValue" => "da-DK"}))
    LanguageCode.add_member(:de_de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "de_DE", traits: {"smithy.api#enumValue" => "de-DE"}))
    LanguageCode.add_member(:en_au, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "en_AU", traits: {"smithy.api#enumValue" => "en-AU"}))
    LanguageCode.add_member(:en_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "en_GB", traits: {"smithy.api#enumValue" => "en-GB"}))
    LanguageCode.add_member(:en_gb_wls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "en_GB_WLS", traits: {"smithy.api#enumValue" => "en-GB-WLS"}))
    LanguageCode.add_member(:en_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "en_IN", traits: {"smithy.api#enumValue" => "en-IN"}))
    LanguageCode.add_member(:en_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "en_US", traits: {"smithy.api#enumValue" => "en-US"}))
    LanguageCode.add_member(:es_es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "es_ES", traits: {"smithy.api#enumValue" => "es-ES"}))
    LanguageCode.add_member(:es_mx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "es_MX", traits: {"smithy.api#enumValue" => "es-MX"}))
    LanguageCode.add_member(:es_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "es_US", traits: {"smithy.api#enumValue" => "es-US"}))
    LanguageCode.add_member(:fr_ca, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "fr_CA", traits: {"smithy.api#enumValue" => "fr-CA"}))
    LanguageCode.add_member(:fr_fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "fr_FR", traits: {"smithy.api#enumValue" => "fr-FR"}))
    LanguageCode.add_member(:is_is, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "is_IS", traits: {"smithy.api#enumValue" => "is-IS"}))
    LanguageCode.add_member(:it_it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "it_IT", traits: {"smithy.api#enumValue" => "it-IT"}))
    LanguageCode.add_member(:ja_jp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ja_JP", traits: {"smithy.api#enumValue" => "ja-JP"}))
    LanguageCode.add_member(:hi_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "hi_IN", traits: {"smithy.api#enumValue" => "hi-IN"}))
    LanguageCode.add_member(:ko_kr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ko_KR", traits: {"smithy.api#enumValue" => "ko-KR"}))
    LanguageCode.add_member(:nb_no, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nb_NO", traits: {"smithy.api#enumValue" => "nb-NO"}))
    LanguageCode.add_member(:nl_nl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nl_NL", traits: {"smithy.api#enumValue" => "nl-NL"}))
    LanguageCode.add_member(:pl_pl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pl_PL", traits: {"smithy.api#enumValue" => "pl-PL"}))
    LanguageCode.add_member(:pt_br, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pt_BR", traits: {"smithy.api#enumValue" => "pt-BR"}))
    LanguageCode.add_member(:pt_pt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pt_PT", traits: {"smithy.api#enumValue" => "pt-PT"}))
    LanguageCode.add_member(:ro_ro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ro_RO", traits: {"smithy.api#enumValue" => "ro-RO"}))
    LanguageCode.add_member(:ru_ru, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ru_RU", traits: {"smithy.api#enumValue" => "ru-RU"}))
    LanguageCode.add_member(:sv_se, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "sv_SE", traits: {"smithy.api#enumValue" => "sv-SE"}))
    LanguageCode.add_member(:tr_tr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "tr_TR", traits: {"smithy.api#enumValue" => "tr-TR"}))
    LanguageCode.add_member(:en_nz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "en_NZ", traits: {"smithy.api#enumValue" => "en-NZ"}))
    LanguageCode.add_member(:en_za, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "en_ZA", traits: {"smithy.api#enumValue" => "en-ZA"}))
    LanguageCode.add_member(:ca_es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ca_ES", traits: {"smithy.api#enumValue" => "ca-ES"}))
    LanguageCode.add_member(:de_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "de_AT", traits: {"smithy.api#enumValue" => "de-AT"}))
    LanguageCode.add_member(:yue_cn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "yue_CN", traits: {"smithy.api#enumValue" => "yue-CN"}))
    LanguageCode.add_member(:ar_ae, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ar_AE", traits: {"smithy.api#enumValue" => "ar-AE"}))
    LanguageCode.add_member(:fi_fi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "fi_FI", traits: {"smithy.api#enumValue" => "fi-FI"}))
    LanguageCode.add_member(:en_ie, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "en_IE", traits: {"smithy.api#enumValue" => "en-IE"}))
    LanguageCode.add_member(:nl_be, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nl_BE", traits: {"smithy.api#enumValue" => "nl-BE"}))
    LanguageCode.add_member(:fr_be, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "fr_BE", traits: {"smithy.api#enumValue" => "fr-BE"}))
    LanguageCode.add_member(:cs_cz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cs_CZ", traits: {"smithy.api#enumValue" => "cs-CZ"}))
    LanguageCode.add_member(:de_ch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "de_CH", traits: {"smithy.api#enumValue" => "de-CH"}))
    LanguageCode.add_member(:en_sg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "en_SG", traits: {"smithy.api#enumValue" => "en-SG"}))
    LanguageCodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "member"))
    LanguageNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LanguageNotSupportedException.type = Types::LanguageNotSupportedException
    Lexicon.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconContent, name: "Content"))
    Lexicon.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconName, name: "Name"))
    Lexicon.type = Types::Lexicon
    LexiconAttributes.add_member(:alphabet, ::Smithy::Schema::Shapes::MemberShape.new(target: Alphabet, name: "Alphabet"))
    LexiconAttributes.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    LexiconAttributes.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModified, name: "LastModified"))
    LexiconAttributes.add_member(:lexicon_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconArn, name: "LexiconArn"))
    LexiconAttributes.add_member(:lexemes_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LexemesCount, name: "LexemesCount", traits: {"smithy.api#default" => 0}))
    LexiconAttributes.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "Size", traits: {"smithy.api#default" => 0}))
    LexiconAttributes.type = Types::LexiconAttributes
    LexiconDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconName, name: "Name"))
    LexiconDescription.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconAttributes, name: "Attributes"))
    LexiconDescription.type = Types::LexiconDescription
    LexiconDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconDescription, name: "member"))
    LexiconNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconName, name: "member"))
    LexiconNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LexiconNotFoundException.type = Types::LexiconNotFoundException
    LexiconSizeExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LexiconSizeExceededException.type = Types::LexiconSizeExceededException
    ListLexiconsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListLexiconsInput.type = Types::ListLexiconsInput
    ListLexiconsOutput.add_member(:lexicons, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconDescriptionList, name: "Lexicons"))
    ListLexiconsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListLexiconsOutput.type = Types::ListLexiconsOutput
    ListSpeechSynthesisTasksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListSpeechSynthesisTasksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListSpeechSynthesisTasksInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "Status", traits: {"smithy.api#httpQuery" => "Status"}))
    ListSpeechSynthesisTasksInput.type = Types::ListSpeechSynthesisTasksInput
    ListSpeechSynthesisTasksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSpeechSynthesisTasksOutput.add_member(:synthesis_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesisTasks, name: "SynthesisTasks"))
    ListSpeechSynthesisTasksOutput.type = Types::ListSpeechSynthesisTasksOutput
    MarksNotSupportedForFormatException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MarksNotSupportedForFormatException.type = Types::MarksNotSupportedForFormatException
    MaxLexemeLengthExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MaxLexemeLengthExceededException.type = Types::MaxLexemeLengthExceededException
    MaxLexiconsNumberExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MaxLexiconsNumberExceededException.type = Types::MaxLexiconsNumberExceededException
    OutputFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "json"}))
    OutputFormat.add_member(:mp3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MP3", traits: {"smithy.api#enumValue" => "mp3"}))
    OutputFormat.add_member(:ogg_opus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OGG_OPUS", traits: {"smithy.api#enumValue" => "ogg_opus"}))
    OutputFormat.add_member(:ogg_vorbis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OGG_VORBIS", traits: {"smithy.api#enumValue" => "ogg_vorbis"}))
    OutputFormat.add_member(:pcm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PCM", traits: {"smithy.api#enumValue" => "pcm"}))
    OutputFormat.add_member(:mulaw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULAW", traits: {"smithy.api#enumValue" => "mulaw"}))
    OutputFormat.add_member(:alaw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALAW", traits: {"smithy.api#enumValue" => "alaw"}))
    PutLexiconInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutLexiconInput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconContent, name: "Content", traits: {"smithy.api#required" => {}}))
    PutLexiconInput.type = Types::PutLexiconInput
    PutLexiconOutput.type = Types::PutLexiconOutput
    QuotaCode.add_member(:input_stream_inbound_event_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPUT_STREAM_INBOUND_EVENT_TIMEOUT", traits: {"smithy.api#enumValue" => "input-stream-inbound-event-timeout"}))
    QuotaCode.add_member(:input_stream_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPUT_STREAM_TIMEOUT", traits: {"smithy.api#enumValue" => "input-stream-timeout"}))
    ServiceCode.add_member(:polly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLLY", traits: {"smithy.api#enumValue" => "polly"}))
    ServiceFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ServiceFailureException.type = Types::ServiceFailureException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaCode, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SpeechMarkType.add_member(:sentence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SENTENCE", traits: {"smithy.api#enumValue" => "sentence"}))
    SpeechMarkType.add_member(:ssml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSML", traits: {"smithy.api#enumValue" => "ssml"}))
    SpeechMarkType.add_member(:viseme, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VISEME", traits: {"smithy.api#enumValue" => "viseme"}))
    SpeechMarkType.add_member(:word, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORD", traits: {"smithy.api#enumValue" => "word"}))
    SpeechMarkTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SpeechMarkType, name: "member"))
    SsmlMarksNotSupportedForTextTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    SsmlMarksNotSupportedForTextTypeException.type = Types::SsmlMarksNotSupportedForTextTypeException
    StartSpeechSynthesisStreamActionStream.add_member(:text_event, Types::StartSpeechSynthesisStreamActionStream::TextEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: TextEvent, name: "TextEvent"))
    StartSpeechSynthesisStreamActionStream.add_member(:close_stream_event, Types::StartSpeechSynthesisStreamActionStream::CloseStreamEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: CloseStreamEvent, name: "CloseStreamEvent"))
    StartSpeechSynthesisStreamActionStream.add_member(:unknown, Types::StartSpeechSynthesisStreamActionStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    StartSpeechSynthesisStreamActionStream.type = Types::StartSpeechSynthesisStreamActionStream
    StartSpeechSynthesisStreamEventStream.add_member(:audio_event, Types::StartSpeechSynthesisStreamEventStream::AudioEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioEvent, name: "AudioEvent"))
    StartSpeechSynthesisStreamEventStream.add_member(:stream_closed_event, Types::StartSpeechSynthesisStreamEventStream::StreamClosedEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamClosedEvent, name: "StreamClosedEvent"))
    StartSpeechSynthesisStreamEventStream.add_member(:validation_exception, Types::StartSpeechSynthesisStreamEventStream::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, name: "ValidationException"))
    StartSpeechSynthesisStreamEventStream.add_member(:service_quota_exceeded_exception, Types::StartSpeechSynthesisStreamEventStream::ServiceQuotaExceededException, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceQuotaExceededException, name: "ServiceQuotaExceededException"))
    StartSpeechSynthesisStreamEventStream.add_member(:service_failure_exception, Types::StartSpeechSynthesisStreamEventStream::ServiceFailureException, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFailureException, name: "ServiceFailureException"))
    StartSpeechSynthesisStreamEventStream.add_member(:throttling_exception, Types::StartSpeechSynthesisStreamEventStream::ThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingException, name: "ThrottlingException"))
    StartSpeechSynthesisStreamEventStream.add_member(:unknown, Types::StartSpeechSynthesisStreamEventStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    StartSpeechSynthesisStreamEventStream.type = Types::StartSpeechSynthesisStreamEventStream
    StartSpeechSynthesisStreamInput.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: Engine, name: "Engine", traits: {"smithy.api#httpHeader" => "x-amzn-Engine", "smithy.api#required" => {}}))
    StartSpeechSynthesisStreamInput.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#httpHeader" => "x-amzn-LanguageCode"}))
    StartSpeechSynthesisStreamInput.add_member(:lexicon_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconNameList, name: "LexiconNames", traits: {"smithy.api#httpHeader" => "x-amzn-LexiconNames"}))
    StartSpeechSynthesisStreamInput.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, name: "OutputFormat", traits: {"smithy.api#httpHeader" => "x-amzn-OutputFormat", "smithy.api#required" => {}}))
    StartSpeechSynthesisStreamInput.add_member(:sample_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleRate, name: "SampleRate", traits: {"smithy.api#httpHeader" => "x-amzn-SampleRate"}))
    StartSpeechSynthesisStreamInput.add_member(:voice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceId, name: "VoiceId", traits: {"smithy.api#httpHeader" => "x-amzn-VoiceId", "smithy.api#required" => {}}))
    StartSpeechSynthesisStreamInput.add_member(:action_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: StartSpeechSynthesisStreamActionStream, name: "ActionStream", traits: {"smithy.api#httpPayload" => {}}))
    StartSpeechSynthesisStreamInput[:http_payload] = :action_stream
    StartSpeechSynthesisStreamInput[:http_payload_member] = StartSpeechSynthesisStreamInput.member(:action_stream)
    StartSpeechSynthesisStreamInput.type = Types::StartSpeechSynthesisStreamInput
    StartSpeechSynthesisStreamOutput.add_member(:event_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: StartSpeechSynthesisStreamEventStream, name: "EventStream", traits: {"smithy.api#httpPayload" => {}}))
    StartSpeechSynthesisStreamOutput[:http_payload] = :event_stream
    StartSpeechSynthesisStreamOutput[:http_payload_member] = StartSpeechSynthesisStreamOutput.member(:event_stream)
    StartSpeechSynthesisStreamOutput.type = Types::StartSpeechSynthesisStreamOutput
    StartSpeechSynthesisTaskInput.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: Engine, name: "Engine"))
    StartSpeechSynthesisTaskInput.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    StartSpeechSynthesisTaskInput.add_member(:lexicon_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconNameList, name: "LexiconNames"))
    StartSpeechSynthesisTaskInput.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, name: "OutputFormat", traits: {"smithy.api#required" => {}}))
    StartSpeechSynthesisTaskInput.add_member(:output_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputS3BucketName, name: "OutputS3BucketName", traits: {"smithy.api#required" => {}}))
    StartSpeechSynthesisTaskInput.add_member(:output_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputS3KeyPrefix, name: "OutputS3KeyPrefix"))
    StartSpeechSynthesisTaskInput.add_member(:sample_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleRate, name: "SampleRate"))
    StartSpeechSynthesisTaskInput.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicArn, name: "SnsTopicArn"))
    StartSpeechSynthesisTaskInput.add_member(:speech_mark_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SpeechMarkTypeList, name: "SpeechMarkTypes"))
    StartSpeechSynthesisTaskInput.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "Text", traits: {"smithy.api#required" => {}}))
    StartSpeechSynthesisTaskInput.add_member(:text_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TextType, name: "TextType"))
    StartSpeechSynthesisTaskInput.add_member(:voice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceId, name: "VoiceId", traits: {"smithy.api#required" => {}}))
    StartSpeechSynthesisTaskInput.type = Types::StartSpeechSynthesisTaskInput
    StartSpeechSynthesisTaskOutput.add_member(:synthesis_task, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesisTask, name: "SynthesisTask"))
    StartSpeechSynthesisTaskOutput.type = Types::StartSpeechSynthesisTaskOutput
    StreamClosedEvent.add_member(:request_characters, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharacters, name: "RequestCharacters", traits: {"smithy.api#default" => 0}))
    StreamClosedEvent.type = Types::StreamClosedEvent
    SynthesisTask.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: Engine, name: "Engine"))
    SynthesisTask.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "TaskId"))
    SynthesisTask.add_member(:task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "TaskStatus"))
    SynthesisTask.add_member(:task_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatusReason, name: "TaskStatusReason"))
    SynthesisTask.add_member(:output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputUri, name: "OutputUri"))
    SynthesisTask.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationTime"))
    SynthesisTask.add_member(:request_characters, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharacters, name: "RequestCharacters", traits: {"smithy.api#default" => 0}))
    SynthesisTask.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicArn, name: "SnsTopicArn"))
    SynthesisTask.add_member(:lexicon_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconNameList, name: "LexiconNames"))
    SynthesisTask.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, name: "OutputFormat"))
    SynthesisTask.add_member(:sample_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleRate, name: "SampleRate"))
    SynthesisTask.add_member(:speech_mark_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SpeechMarkTypeList, name: "SpeechMarkTypes"))
    SynthesisTask.add_member(:text_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TextType, name: "TextType"))
    SynthesisTask.add_member(:voice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceId, name: "VoiceId"))
    SynthesisTask.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    SynthesisTask.type = Types::SynthesisTask
    SynthesisTaskNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    SynthesisTaskNotFoundException.type = Types::SynthesisTaskNotFoundException
    SynthesisTasks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesisTask, name: "member"))
    SynthesizeSpeechInput.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: Engine, name: "Engine"))
    SynthesizeSpeechInput.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    SynthesizeSpeechInput.add_member(:lexicon_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LexiconNameList, name: "LexiconNames"))
    SynthesizeSpeechInput.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, name: "OutputFormat", traits: {"smithy.api#required" => {}}))
    SynthesizeSpeechInput.add_member(:sample_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleRate, name: "SampleRate"))
    SynthesizeSpeechInput.add_member(:speech_mark_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SpeechMarkTypeList, name: "SpeechMarkTypes"))
    SynthesizeSpeechInput.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "Text", traits: {"smithy.api#required" => {}}))
    SynthesizeSpeechInput.add_member(:text_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TextType, name: "TextType"))
    SynthesizeSpeechInput.add_member(:voice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceId, name: "VoiceId", traits: {"smithy.api#required" => {}}))
    SynthesizeSpeechInput.type = Types::SynthesizeSpeechInput
    SynthesizeSpeechOutput.add_member(:audio_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioStream, name: "AudioStream", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    SynthesizeSpeechOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    SynthesizeSpeechOutput.add_member(:request_characters, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharacters, name: "RequestCharacters", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "x-amzn-RequestCharacters"}))
    SynthesizeSpeechOutput[:http_payload] = :audio_stream
    SynthesizeSpeechOutput[:http_payload_member] = SynthesizeSpeechOutput.member(:audio_stream)
    SynthesizeSpeechOutput.type = Types::SynthesizeSpeechOutput
    TaskStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "scheduled"}))
    TaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "inProgress"}))
    TaskStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "completed"}))
    TaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    TextEvent.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "Text", traits: {"smithy.api#required" => {}}))
    TextEvent.add_member(:text_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TextType, name: "TextType"))
    TextEvent.add_member(:flush_stream_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FlushStreamConfiguration, name: "FlushStreamConfiguration"))
    TextEvent.type = Types::TextEvent
    TextLengthExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TextLengthExceededException.type = Types::TextLengthExceededException
    TextType.add_member(:ssml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSML", traits: {"smithy.api#enumValue" => "ssml"}))
    TextType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "text"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityErrorMessage, name: "message"))
    ThrottlingException.add_member(:throttling_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingReasonList, name: "throttlingReasons"))
    ThrottlingException.type = Types::ThrottlingException
    ThrottlingReason.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CoralAvailabilityThrottlingReason, name: "reason"))
    ThrottlingReason.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: CoralAvailabilityThrottledResource, name: "resource"))
    ThrottlingReason.type = Types::ThrottlingReason
    ThrottlingReasonList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingReason, name: "member"))
    UnsupportedPlsAlphabetException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    UnsupportedPlsAlphabetException.type = Types::UnsupportedPlsAlphabetException
    UnsupportedPlsLanguageException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    UnsupportedPlsLanguageException.type = Types::UnsupportedPlsLanguageException
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldName, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unsupported_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_OPERATION", traits: {"smithy.api#enumValue" => "unsupportedOperation"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))
    ValidationExceptionReason.add_member(:invalid_inbound_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_INBOUND_EVENT", traits: {"smithy.api#enumValue" => "invalidInboundEvent"}))
    Voice.add_member(:gender, ::Smithy::Schema::Shapes::MemberShape.new(target: Gender, name: "Gender"))
    Voice.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceId, name: "Id"))
    Voice.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    Voice.add_member(:language_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageName, name: "LanguageName"))
    Voice.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceName, name: "Name"))
    Voice.add_member(:additional_language_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCodeList, name: "AdditionalLanguageCodes"))
    Voice.add_member(:supported_engines, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineList, name: "SupportedEngines"))
    Voice.type = Types::Voice
    VoiceId.add_member(:aditi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Aditi", traits: {"smithy.api#enumValue" => "Aditi"}))
    VoiceId.add_member(:amy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Amy", traits: {"smithy.api#enumValue" => "Amy"}))
    VoiceId.add_member(:astrid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Astrid", traits: {"smithy.api#enumValue" => "Astrid"}))
    VoiceId.add_member(:bianca, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bianca", traits: {"smithy.api#enumValue" => "Bianca"}))
    VoiceId.add_member(:brian, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Brian", traits: {"smithy.api#enumValue" => "Brian"}))
    VoiceId.add_member(:camila, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Camila", traits: {"smithy.api#enumValue" => "Camila"}))
    VoiceId.add_member(:carla, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Carla", traits: {"smithy.api#enumValue" => "Carla"}))
    VoiceId.add_member(:carmen, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Carmen", traits: {"smithy.api#enumValue" => "Carmen"}))
    VoiceId.add_member(:celine, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Celine", traits: {"smithy.api#enumValue" => "Celine"}))
    VoiceId.add_member(:chantal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Chantal", traits: {"smithy.api#enumValue" => "Chantal"}))
    VoiceId.add_member(:conchita, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Conchita", traits: {"smithy.api#enumValue" => "Conchita"}))
    VoiceId.add_member(:cristiano, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cristiano", traits: {"smithy.api#enumValue" => "Cristiano"}))
    VoiceId.add_member(:dora, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Dora", traits: {"smithy.api#enumValue" => "Dora"}))
    VoiceId.add_member(:emma, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Emma", traits: {"smithy.api#enumValue" => "Emma"}))
    VoiceId.add_member(:enrique, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enrique", traits: {"smithy.api#enumValue" => "Enrique"}))
    VoiceId.add_member(:ewa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ewa", traits: {"smithy.api#enumValue" => "Ewa"}))
    VoiceId.add_member(:filiz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Filiz", traits: {"smithy.api#enumValue" => "Filiz"}))
    VoiceId.add_member(:gabrielle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Gabrielle", traits: {"smithy.api#enumValue" => "Gabrielle"}))
    VoiceId.add_member(:geraint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Geraint", traits: {"smithy.api#enumValue" => "Geraint"}))
    VoiceId.add_member(:giorgio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Giorgio", traits: {"smithy.api#enumValue" => "Giorgio"}))
    VoiceId.add_member(:gwyneth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Gwyneth", traits: {"smithy.api#enumValue" => "Gwyneth"}))
    VoiceId.add_member(:hans, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Hans", traits: {"smithy.api#enumValue" => "Hans"}))
    VoiceId.add_member(:ines, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ines", traits: {"smithy.api#enumValue" => "Ines"}))
    VoiceId.add_member(:ivy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ivy", traits: {"smithy.api#enumValue" => "Ivy"}))
    VoiceId.add_member(:jacek, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Jacek", traits: {"smithy.api#enumValue" => "Jacek"}))
    VoiceId.add_member(:jan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Jan", traits: {"smithy.api#enumValue" => "Jan"}))
    VoiceId.add_member(:joanna, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Joanna", traits: {"smithy.api#enumValue" => "Joanna"}))
    VoiceId.add_member(:joey, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Joey", traits: {"smithy.api#enumValue" => "Joey"}))
    VoiceId.add_member(:justin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Justin", traits: {"smithy.api#enumValue" => "Justin"}))
    VoiceId.add_member(:karl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Karl", traits: {"smithy.api#enumValue" => "Karl"}))
    VoiceId.add_member(:kendra, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Kendra", traits: {"smithy.api#enumValue" => "Kendra"}))
    VoiceId.add_member(:kevin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Kevin", traits: {"smithy.api#enumValue" => "Kevin"}))
    VoiceId.add_member(:kimberly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Kimberly", traits: {"smithy.api#enumValue" => "Kimberly"}))
    VoiceId.add_member(:lea, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Lea", traits: {"smithy.api#enumValue" => "Lea"}))
    VoiceId.add_member(:liv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Liv", traits: {"smithy.api#enumValue" => "Liv"}))
    VoiceId.add_member(:lotte, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Lotte", traits: {"smithy.api#enumValue" => "Lotte"}))
    VoiceId.add_member(:lucia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Lucia", traits: {"smithy.api#enumValue" => "Lucia"}))
    VoiceId.add_member(:lupe, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Lupe", traits: {"smithy.api#enumValue" => "Lupe"}))
    VoiceId.add_member(:mads, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Mads", traits: {"smithy.api#enumValue" => "Mads"}))
    VoiceId.add_member(:maja, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Maja", traits: {"smithy.api#enumValue" => "Maja"}))
    VoiceId.add_member(:marlene, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Marlene", traits: {"smithy.api#enumValue" => "Marlene"}))
    VoiceId.add_member(:mathieu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Mathieu", traits: {"smithy.api#enumValue" => "Mathieu"}))
    VoiceId.add_member(:matthew, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Matthew", traits: {"smithy.api#enumValue" => "Matthew"}))
    VoiceId.add_member(:maxim, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Maxim", traits: {"smithy.api#enumValue" => "Maxim"}))
    VoiceId.add_member(:mia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Mia", traits: {"smithy.api#enumValue" => "Mia"}))
    VoiceId.add_member(:miguel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Miguel", traits: {"smithy.api#enumValue" => "Miguel"}))
    VoiceId.add_member(:mizuki, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Mizuki", traits: {"smithy.api#enumValue" => "Mizuki"}))
    VoiceId.add_member(:naja, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Naja", traits: {"smithy.api#enumValue" => "Naja"}))
    VoiceId.add_member(:nicole, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Nicole", traits: {"smithy.api#enumValue" => "Nicole"}))
    VoiceId.add_member(:olivia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Olivia", traits: {"smithy.api#enumValue" => "Olivia"}))
    VoiceId.add_member(:penelope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Penelope", traits: {"smithy.api#enumValue" => "Penelope"}))
    VoiceId.add_member(:raveena, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Raveena", traits: {"smithy.api#enumValue" => "Raveena"}))
    VoiceId.add_member(:ricardo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ricardo", traits: {"smithy.api#enumValue" => "Ricardo"}))
    VoiceId.add_member(:ruben, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ruben", traits: {"smithy.api#enumValue" => "Ruben"}))
    VoiceId.add_member(:russell, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Russell", traits: {"smithy.api#enumValue" => "Russell"}))
    VoiceId.add_member(:salli, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Salli", traits: {"smithy.api#enumValue" => "Salli"}))
    VoiceId.add_member(:seoyeon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Seoyeon", traits: {"smithy.api#enumValue" => "Seoyeon"}))
    VoiceId.add_member(:takumi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Takumi", traits: {"smithy.api#enumValue" => "Takumi"}))
    VoiceId.add_member(:tatyana, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Tatyana", traits: {"smithy.api#enumValue" => "Tatyana"}))
    VoiceId.add_member(:vicki, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Vicki", traits: {"smithy.api#enumValue" => "Vicki"}))
    VoiceId.add_member(:vitoria, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Vitoria", traits: {"smithy.api#enumValue" => "Vitoria"}))
    VoiceId.add_member(:zeina, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Zeina", traits: {"smithy.api#enumValue" => "Zeina"}))
    VoiceId.add_member(:zhiyu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Zhiyu", traits: {"smithy.api#enumValue" => "Zhiyu"}))
    VoiceId.add_member(:aria, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Aria", traits: {"smithy.api#enumValue" => "Aria"}))
    VoiceId.add_member(:ayanda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ayanda", traits: {"smithy.api#enumValue" => "Ayanda"}))
    VoiceId.add_member(:arlet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Arlet", traits: {"smithy.api#enumValue" => "Arlet"}))
    VoiceId.add_member(:hannah, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Hannah", traits: {"smithy.api#enumValue" => "Hannah"}))
    VoiceId.add_member(:arthur, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Arthur", traits: {"smithy.api#enumValue" => "Arthur"}))
    VoiceId.add_member(:daniel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Daniel", traits: {"smithy.api#enumValue" => "Daniel"}))
    VoiceId.add_member(:liam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Liam", traits: {"smithy.api#enumValue" => "Liam"}))
    VoiceId.add_member(:pedro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pedro", traits: {"smithy.api#enumValue" => "Pedro"}))
    VoiceId.add_member(:kajal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Kajal", traits: {"smithy.api#enumValue" => "Kajal"}))
    VoiceId.add_member(:hiujin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Hiujin", traits: {"smithy.api#enumValue" => "Hiujin"}))
    VoiceId.add_member(:laura, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Laura", traits: {"smithy.api#enumValue" => "Laura"}))
    VoiceId.add_member(:elin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Elin", traits: {"smithy.api#enumValue" => "Elin"}))
    VoiceId.add_member(:ida, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ida", traits: {"smithy.api#enumValue" => "Ida"}))
    VoiceId.add_member(:suvi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Suvi", traits: {"smithy.api#enumValue" => "Suvi"}))
    VoiceId.add_member(:ola, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ola", traits: {"smithy.api#enumValue" => "Ola"}))
    VoiceId.add_member(:hala, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Hala", traits: {"smithy.api#enumValue" => "Hala"}))
    VoiceId.add_member(:andres, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Andres", traits: {"smithy.api#enumValue" => "Andres"}))
    VoiceId.add_member(:sergio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sergio", traits: {"smithy.api#enumValue" => "Sergio"}))
    VoiceId.add_member(:remi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Remi", traits: {"smithy.api#enumValue" => "Remi"}))
    VoiceId.add_member(:adriano, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Adriano", traits: {"smithy.api#enumValue" => "Adriano"}))
    VoiceId.add_member(:thiago, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Thiago", traits: {"smithy.api#enumValue" => "Thiago"}))
    VoiceId.add_member(:ruth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ruth", traits: {"smithy.api#enumValue" => "Ruth"}))
    VoiceId.add_member(:stephen, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stephen", traits: {"smithy.api#enumValue" => "Stephen"}))
    VoiceId.add_member(:kazuha, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Kazuha", traits: {"smithy.api#enumValue" => "Kazuha"}))
    VoiceId.add_member(:tomoko, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Tomoko", traits: {"smithy.api#enumValue" => "Tomoko"}))
    VoiceId.add_member(:niamh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Niamh", traits: {"smithy.api#enumValue" => "Niamh"}))
    VoiceId.add_member(:sofie, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sofie", traits: {"smithy.api#enumValue" => "Sofie"}))
    VoiceId.add_member(:lisa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Lisa", traits: {"smithy.api#enumValue" => "Lisa"}))
    VoiceId.add_member(:isabelle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Isabelle", traits: {"smithy.api#enumValue" => "Isabelle"}))
    VoiceId.add_member(:zayd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Zayd", traits: {"smithy.api#enumValue" => "Zayd"}))
    VoiceId.add_member(:danielle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Danielle", traits: {"smithy.api#enumValue" => "Danielle"}))
    VoiceId.add_member(:gregory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Gregory", traits: {"smithy.api#enumValue" => "Gregory"}))
    VoiceId.add_member(:burcu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Burcu", traits: {"smithy.api#enumValue" => "Burcu"}))
    VoiceId.add_member(:jitka, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Jitka", traits: {"smithy.api#enumValue" => "Jitka"}))
    VoiceId.add_member(:sabrina, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sabrina", traits: {"smithy.api#enumValue" => "Sabrina"}))
    VoiceId.add_member(:jasmine, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Jasmine", traits: {"smithy.api#enumValue" => "Jasmine"}))
    VoiceId.add_member(:jihye, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Jihye", traits: {"smithy.api#enumValue" => "Jihye"}))
    VoiceId.add_member(:ambre, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ambre", traits: {"smithy.api#enumValue" => "Ambre"}))
    VoiceId.add_member(:beatrice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Beatrice", traits: {"smithy.api#enumValue" => "Beatrice"}))
    VoiceId.add_member(:florian, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Florian", traits: {"smithy.api#enumValue" => "Florian"}))
    VoiceId.add_member(:lennart, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Lennart", traits: {"smithy.api#enumValue" => "Lennart"}))
    VoiceId.add_member(:lorenzo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Lorenzo", traits: {"smithy.api#enumValue" => "Lorenzo"}))
    VoiceId.add_member(:tiffany, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Tiffany", traits: {"smithy.api#enumValue" => "Tiffany"}))
    VoiceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Voice, name: "member"))

    ParrotV1 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.polly#Parrot_v1"
      service.name = "ParrotV1"
      service.version = "2016-06-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Polly", "arnNamespace" => "polly", "cloudFormationName" => "Polly", "cloudTrailEventSource" => "polly.amazonaws.com", "endpointPrefix" => "polly"}, "aws.auth#sigv4" => {"name" => "polly"}, "aws.protocols#restJson1" => {"http" => ["http/1.1", "h2"], "eventStreamHttp" => ["h2"]}, "smithy.api#title" => "Amazon Polly", "smithy.api#xmlNamespace" => {"uri" => "http://polly.amazonaws.com/doc/v1"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://polly-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://polly-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://polly.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://polly.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:delete_lexicon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#DeleteLexicon"
        operation.name = "DeleteLexicon"
        operation.input = DeleteLexiconInput
        operation.output = DeleteLexiconOutput
        operation.errors << LexiconNotFoundException
        operation.errors << ServiceFailureException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/lexicons/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_voices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#DescribeVoices"
        operation.name = "DescribeVoices"
        operation.input = DescribeVoicesInput
        operation.output = DescribeVoicesOutput
        operation.errors << InvalidNextTokenException
        operation.errors << ServiceFailureException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/voices", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "DescribeVoicesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:get_lexicon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#GetLexicon"
        operation.name = "GetLexicon"
        operation.input = GetLexiconInput
        operation.output = GetLexiconOutput
        operation.errors << LexiconNotFoundException
        operation.errors << ServiceFailureException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/lexicons/{Name}", "code" => 200}}
      end)
      service.add_operation(:get_speech_synthesis_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#GetSpeechSynthesisTask"
        operation.name = "GetSpeechSynthesisTask"
        operation.input = GetSpeechSynthesisTaskInput
        operation.output = GetSpeechSynthesisTaskOutput
        operation.errors << InvalidTaskIdException
        operation.errors << ServiceFailureException
        operation.errors << SynthesisTaskNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/synthesisTasks/{TaskId}", "code" => 200}}
      end)
      service.add_operation(:list_lexicons, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#ListLexicons"
        operation.name = "ListLexicons"
        operation.input = ListLexiconsInput
        operation.output = ListLexiconsOutput
        operation.errors << InvalidNextTokenException
        operation.errors << ServiceFailureException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/lexicons", "code" => 200}}
      end)
      service.add_operation(:list_speech_synthesis_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#ListSpeechSynthesisTasks"
        operation.name = "ListSpeechSynthesisTasks"
        operation.input = ListSpeechSynthesisTasksInput
        operation.output = ListSpeechSynthesisTasksOutput
        operation.errors << InvalidNextTokenException
        operation.errors << ServiceFailureException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/synthesisTasks", "code" => 200}}
        operation[:paginator] = Paginators::ListSpeechSynthesisTasks.new
      end)
      service.add_operation(:put_lexicon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#PutLexicon"
        operation.name = "PutLexicon"
        operation.input = PutLexiconInput
        operation.output = PutLexiconOutput
        operation.errors << InvalidLexiconException
        operation.errors << LexiconSizeExceededException
        operation.errors << MaxLexemeLengthExceededException
        operation.errors << MaxLexiconsNumberExceededException
        operation.errors << ServiceFailureException
        operation.errors << UnsupportedPlsAlphabetException
        operation.errors << UnsupportedPlsLanguageException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/lexicons/{Name}", "code" => 200}}
      end)
      service.add_operation(:start_speech_synthesis_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#StartSpeechSynthesisStream"
        operation.name = "StartSpeechSynthesisStream"
        operation.input = StartSpeechSynthesisStreamInput
        operation.output = StartSpeechSynthesisStreamOutput
        operation.errors << ServiceFailureException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/synthesisStream", "code" => 200}}
      end)
      service.add_operation(:start_speech_synthesis_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#StartSpeechSynthesisTask"
        operation.name = "StartSpeechSynthesisTask"
        operation.input = StartSpeechSynthesisTaskInput
        operation.output = StartSpeechSynthesisTaskOutput
        operation.errors << EngineNotSupportedException
        operation.errors << InvalidS3BucketException
        operation.errors << InvalidS3KeyException
        operation.errors << InvalidSampleRateException
        operation.errors << InvalidSnsTopicArnException
        operation.errors << InvalidSsmlException
        operation.errors << LanguageNotSupportedException
        operation.errors << LexiconNotFoundException
        operation.errors << MarksNotSupportedForFormatException
        operation.errors << ServiceFailureException
        operation.errors << SsmlMarksNotSupportedForTextTypeException
        operation.errors << TextLengthExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/synthesisTasks", "code" => 200}}
      end)
      service.add_operation(:synthesize_speech, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.polly#SynthesizeSpeech"
        operation.name = "SynthesizeSpeech"
        operation.input = SynthesizeSpeechInput
        operation.output = SynthesizeSpeechOutput
        operation.errors << EngineNotSupportedException
        operation.errors << InvalidSampleRateException
        operation.errors << InvalidSsmlException
        operation.errors << LanguageNotSupportedException
        operation.errors << LexiconNotFoundException
        operation.errors << MarksNotSupportedForFormatException
        operation.errors << ServiceFailureException
        operation.errors << SsmlMarksNotSupportedForTextTypeException
        operation.errors << TextLengthExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/speech", "code" => 200}}
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
