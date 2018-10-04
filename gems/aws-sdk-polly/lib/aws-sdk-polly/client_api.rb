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
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DeleteLexiconInput = Shapes::StructureShape.new(name: 'DeleteLexiconInput')
    DeleteLexiconOutput = Shapes::StructureShape.new(name: 'DeleteLexiconOutput')
    DescribeVoicesInput = Shapes::StructureShape.new(name: 'DescribeVoicesInput')
    DescribeVoicesOutput = Shapes::StructureShape.new(name: 'DescribeVoicesOutput')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Gender = Shapes::StringShape.new(name: 'Gender')
    GetLexiconInput = Shapes::StructureShape.new(name: 'GetLexiconInput')
    GetLexiconOutput = Shapes::StructureShape.new(name: 'GetLexiconOutput')
    GetSpeechSynthesisTaskInput = Shapes::StructureShape.new(name: 'GetSpeechSynthesisTaskInput')
    GetSpeechSynthesisTaskOutput = Shapes::StructureShape.new(name: 'GetSpeechSynthesisTaskOutput')
    IncludeAdditionalLanguageCodes = Shapes::BooleanShape.new(name: 'IncludeAdditionalLanguageCodes')
    InvalidLexiconException = Shapes::StructureShape.new(name: 'InvalidLexiconException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidS3BucketException = Shapes::StructureShape.new(name: 'InvalidS3BucketException')
    InvalidS3KeyException = Shapes::StructureShape.new(name: 'InvalidS3KeyException')
    InvalidSampleRateException = Shapes::StructureShape.new(name: 'InvalidSampleRateException')
    InvalidSnsTopicArnException = Shapes::StructureShape.new(name: 'InvalidSnsTopicArnException')
    InvalidSsmlException = Shapes::StructureShape.new(name: 'InvalidSsmlException')
    InvalidTaskIdException = Shapes::StructureShape.new(name: 'InvalidTaskIdException')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    LanguageCodeList = Shapes::ListShape.new(name: 'LanguageCodeList')
    LanguageName = Shapes::StringShape.new(name: 'LanguageName')
    LanguageNotSupportedException = Shapes::StructureShape.new(name: 'LanguageNotSupportedException')
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
    ListSpeechSynthesisTasksInput = Shapes::StructureShape.new(name: 'ListSpeechSynthesisTasksInput')
    ListSpeechSynthesisTasksOutput = Shapes::StructureShape.new(name: 'ListSpeechSynthesisTasksOutput')
    MarksNotSupportedForFormatException = Shapes::StructureShape.new(name: 'MarksNotSupportedForFormatException')
    MaxLexemeLengthExceededException = Shapes::StructureShape.new(name: 'MaxLexemeLengthExceededException')
    MaxLexiconsNumberExceededException = Shapes::StructureShape.new(name: 'MaxLexiconsNumberExceededException')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OutputFormat = Shapes::StringShape.new(name: 'OutputFormat')
    OutputS3BucketName = Shapes::StringShape.new(name: 'OutputS3BucketName')
    OutputS3KeyPrefix = Shapes::StringShape.new(name: 'OutputS3KeyPrefix')
    OutputUri = Shapes::StringShape.new(name: 'OutputUri')
    PutLexiconInput = Shapes::StructureShape.new(name: 'PutLexiconInput')
    PutLexiconOutput = Shapes::StructureShape.new(name: 'PutLexiconOutput')
    RequestCharacters = Shapes::IntegerShape.new(name: 'RequestCharacters')
    SampleRate = Shapes::StringShape.new(name: 'SampleRate')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    Size = Shapes::IntegerShape.new(name: 'Size')
    SnsTopicArn = Shapes::StringShape.new(name: 'SnsTopicArn')
    SpeechMarkType = Shapes::StringShape.new(name: 'SpeechMarkType')
    SpeechMarkTypeList = Shapes::ListShape.new(name: 'SpeechMarkTypeList')
    SsmlMarksNotSupportedForTextTypeException = Shapes::StructureShape.new(name: 'SsmlMarksNotSupportedForTextTypeException')
    StartSpeechSynthesisTaskInput = Shapes::StructureShape.new(name: 'StartSpeechSynthesisTaskInput')
    StartSpeechSynthesisTaskOutput = Shapes::StructureShape.new(name: 'StartSpeechSynthesisTaskOutput')
    SynthesisTask = Shapes::StructureShape.new(name: 'SynthesisTask')
    SynthesisTaskNotFoundException = Shapes::StructureShape.new(name: 'SynthesisTaskNotFoundException')
    SynthesisTasks = Shapes::ListShape.new(name: 'SynthesisTasks')
    SynthesizeSpeechInput = Shapes::StructureShape.new(name: 'SynthesizeSpeechInput')
    SynthesizeSpeechOutput = Shapes::StructureShape.new(name: 'SynthesizeSpeechOutput')
    TaskId = Shapes::StringShape.new(name: 'TaskId')
    TaskStatus = Shapes::StringShape.new(name: 'TaskStatus')
    TaskStatusReason = Shapes::StringShape.new(name: 'TaskStatusReason')
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
    DescribeVoicesInput.add_member(:include_additional_language_codes, Shapes::ShapeRef.new(shape: IncludeAdditionalLanguageCodes, location: "querystring", location_name: "IncludeAdditionalLanguageCodes"))
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

    GetSpeechSynthesisTaskInput.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location: "uri", location_name: "TaskId"))
    GetSpeechSynthesisTaskInput.struct_class = Types::GetSpeechSynthesisTaskInput

    GetSpeechSynthesisTaskOutput.add_member(:synthesis_task, Shapes::ShapeRef.new(shape: SynthesisTask, location_name: "SynthesisTask"))
    GetSpeechSynthesisTaskOutput.struct_class = Types::GetSpeechSynthesisTaskOutput

    LanguageCodeList.member = Shapes::ShapeRef.new(shape: LanguageCode)

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

    ListSpeechSynthesisTasksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListSpeechSynthesisTasksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListSpeechSynthesisTasksInput.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatus, location: "querystring", location_name: "Status"))
    ListSpeechSynthesisTasksInput.struct_class = Types::ListSpeechSynthesisTasksInput

    ListSpeechSynthesisTasksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSpeechSynthesisTasksOutput.add_member(:synthesis_tasks, Shapes::ShapeRef.new(shape: SynthesisTasks, location_name: "SynthesisTasks"))
    ListSpeechSynthesisTasksOutput.struct_class = Types::ListSpeechSynthesisTasksOutput

    PutLexiconInput.add_member(:name, Shapes::ShapeRef.new(shape: LexiconName, required: true, location: "uri", location_name: "LexiconName"))
    PutLexiconInput.add_member(:content, Shapes::ShapeRef.new(shape: LexiconContent, required: true, location_name: "Content"))
    PutLexiconInput.struct_class = Types::PutLexiconInput

    PutLexiconOutput.struct_class = Types::PutLexiconOutput

    SpeechMarkTypeList.member = Shapes::ShapeRef.new(shape: SpeechMarkType)

    StartSpeechSynthesisTaskInput.add_member(:lexicon_names, Shapes::ShapeRef.new(shape: LexiconNameList, location_name: "LexiconNames"))
    StartSpeechSynthesisTaskInput.add_member(:output_format, Shapes::ShapeRef.new(shape: OutputFormat, required: true, location_name: "OutputFormat"))
    StartSpeechSynthesisTaskInput.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: OutputS3BucketName, required: true, location_name: "OutputS3BucketName"))
    StartSpeechSynthesisTaskInput.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: OutputS3KeyPrefix, location_name: "OutputS3KeyPrefix"))
    StartSpeechSynthesisTaskInput.add_member(:sample_rate, Shapes::ShapeRef.new(shape: SampleRate, location_name: "SampleRate"))
    StartSpeechSynthesisTaskInput.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: "SnsTopicArn"))
    StartSpeechSynthesisTaskInput.add_member(:speech_mark_types, Shapes::ShapeRef.new(shape: SpeechMarkTypeList, location_name: "SpeechMarkTypes"))
    StartSpeechSynthesisTaskInput.add_member(:text, Shapes::ShapeRef.new(shape: Text, required: true, location_name: "Text"))
    StartSpeechSynthesisTaskInput.add_member(:text_type, Shapes::ShapeRef.new(shape: TextType, location_name: "TextType"))
    StartSpeechSynthesisTaskInput.add_member(:voice_id, Shapes::ShapeRef.new(shape: VoiceId, required: true, location_name: "VoiceId"))
    StartSpeechSynthesisTaskInput.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    StartSpeechSynthesisTaskInput.struct_class = Types::StartSpeechSynthesisTaskInput

    StartSpeechSynthesisTaskOutput.add_member(:synthesis_task, Shapes::ShapeRef.new(shape: SynthesisTask, location_name: "SynthesisTask"))
    StartSpeechSynthesisTaskOutput.struct_class = Types::StartSpeechSynthesisTaskOutput

    SynthesisTask.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, location_name: "TaskId"))
    SynthesisTask.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "TaskStatus"))
    SynthesisTask.add_member(:task_status_reason, Shapes::ShapeRef.new(shape: TaskStatusReason, location_name: "TaskStatusReason"))
    SynthesisTask.add_member(:output_uri, Shapes::ShapeRef.new(shape: OutputUri, location_name: "OutputUri"))
    SynthesisTask.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    SynthesisTask.add_member(:request_characters, Shapes::ShapeRef.new(shape: RequestCharacters, location_name: "RequestCharacters"))
    SynthesisTask.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: "SnsTopicArn"))
    SynthesisTask.add_member(:lexicon_names, Shapes::ShapeRef.new(shape: LexiconNameList, location_name: "LexiconNames"))
    SynthesisTask.add_member(:output_format, Shapes::ShapeRef.new(shape: OutputFormat, location_name: "OutputFormat"))
    SynthesisTask.add_member(:sample_rate, Shapes::ShapeRef.new(shape: SampleRate, location_name: "SampleRate"))
    SynthesisTask.add_member(:speech_mark_types, Shapes::ShapeRef.new(shape: SpeechMarkTypeList, location_name: "SpeechMarkTypes"))
    SynthesisTask.add_member(:text_type, Shapes::ShapeRef.new(shape: TextType, location_name: "TextType"))
    SynthesisTask.add_member(:voice_id, Shapes::ShapeRef.new(shape: VoiceId, location_name: "VoiceId"))
    SynthesisTask.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    SynthesisTask.struct_class = Types::SynthesisTask

    SynthesisTasks.member = Shapes::ShapeRef.new(shape: SynthesisTask)

    SynthesizeSpeechInput.add_member(:lexicon_names, Shapes::ShapeRef.new(shape: LexiconNameList, location_name: "LexiconNames"))
    SynthesizeSpeechInput.add_member(:output_format, Shapes::ShapeRef.new(shape: OutputFormat, required: true, location_name: "OutputFormat"))
    SynthesizeSpeechInput.add_member(:sample_rate, Shapes::ShapeRef.new(shape: SampleRate, location_name: "SampleRate"))
    SynthesizeSpeechInput.add_member(:speech_mark_types, Shapes::ShapeRef.new(shape: SpeechMarkTypeList, location_name: "SpeechMarkTypes"))
    SynthesizeSpeechInput.add_member(:text, Shapes::ShapeRef.new(shape: Text, required: true, location_name: "Text"))
    SynthesizeSpeechInput.add_member(:text_type, Shapes::ShapeRef.new(shape: TextType, location_name: "TextType"))
    SynthesizeSpeechInput.add_member(:voice_id, Shapes::ShapeRef.new(shape: VoiceId, required: true, location_name: "VoiceId"))
    SynthesizeSpeechInput.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
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
    Voice.add_member(:additional_language_codes, Shapes::ShapeRef.new(shape: LanguageCodeList, location_name: "AdditionalLanguageCodes"))
    Voice.struct_class = Types::Voice

    VoiceList.member = Shapes::ShapeRef.new(shape: Voice)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-06-10"

      api.metadata = {
        "apiVersion" => "2016-06-10",
        "endpointPrefix" => "polly",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Polly",
        "serviceId" => "Polly",
        "signatureVersion" => "v4",
        "uid" => "polly-2016-06-10",
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

      api.add_operation(:get_speech_synthesis_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSpeechSynthesisTask"
        o.http_method = "GET"
        o.http_request_uri = "/v1/synthesisTasks/{TaskId}"
        o.input = Shapes::ShapeRef.new(shape: GetSpeechSynthesisTaskInput)
        o.output = Shapes::ShapeRef.new(shape: GetSpeechSynthesisTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTaskIdException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: SynthesisTaskNotFoundException)
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

      api.add_operation(:list_speech_synthesis_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSpeechSynthesisTasks"
        o.http_method = "GET"
        o.http_request_uri = "/v1/synthesisTasks"
        o.input = Shapes::ShapeRef.new(shape: ListSpeechSynthesisTasksInput)
        o.output = Shapes::ShapeRef.new(shape: ListSpeechSynthesisTasksOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:start_speech_synthesis_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSpeechSynthesisTask"
        o.http_method = "POST"
        o.http_request_uri = "/v1/synthesisTasks"
        o.input = Shapes::ShapeRef.new(shape: StartSpeechSynthesisTaskInput)
        o.output = Shapes::ShapeRef.new(shape: StartSpeechSynthesisTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: TextLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3BucketException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3KeyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSampleRateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSnsTopicArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSsmlException)
        o.errors << Shapes::ShapeRef.new(shape: LexiconNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: MarksNotSupportedForFormatException)
        o.errors << Shapes::ShapeRef.new(shape: SsmlMarksNotSupportedForTextTypeException)
        o.errors << Shapes::ShapeRef.new(shape: LanguageNotSupportedException)
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
        o.errors << Shapes::ShapeRef.new(shape: LanguageNotSupportedException)
      end)
    end

  end
end
