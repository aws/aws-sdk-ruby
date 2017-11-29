# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Comprehend
  # @api private
  module ClientApi

    include Seahorse::Model

    AnyLengthString = Shapes::StringShape.new(name: 'AnyLengthString')
    BatchDetectDominantLanguageItemResult = Shapes::StructureShape.new(name: 'BatchDetectDominantLanguageItemResult')
    BatchDetectDominantLanguageRequest = Shapes::StructureShape.new(name: 'BatchDetectDominantLanguageRequest')
    BatchDetectDominantLanguageResponse = Shapes::StructureShape.new(name: 'BatchDetectDominantLanguageResponse')
    BatchDetectEntitiesItemResult = Shapes::StructureShape.new(name: 'BatchDetectEntitiesItemResult')
    BatchDetectEntitiesRequest = Shapes::StructureShape.new(name: 'BatchDetectEntitiesRequest')
    BatchDetectEntitiesResponse = Shapes::StructureShape.new(name: 'BatchDetectEntitiesResponse')
    BatchDetectKeyPhrasesItemResult = Shapes::StructureShape.new(name: 'BatchDetectKeyPhrasesItemResult')
    BatchDetectKeyPhrasesRequest = Shapes::StructureShape.new(name: 'BatchDetectKeyPhrasesRequest')
    BatchDetectKeyPhrasesResponse = Shapes::StructureShape.new(name: 'BatchDetectKeyPhrasesResponse')
    BatchDetectSentimentItemResult = Shapes::StructureShape.new(name: 'BatchDetectSentimentItemResult')
    BatchDetectSentimentRequest = Shapes::StructureShape.new(name: 'BatchDetectSentimentRequest')
    BatchDetectSentimentResponse = Shapes::StructureShape.new(name: 'BatchDetectSentimentResponse')
    BatchItemError = Shapes::StructureShape.new(name: 'BatchItemError')
    BatchItemErrorList = Shapes::ListShape.new(name: 'BatchItemErrorList')
    BatchSizeLimitExceededException = Shapes::StructureShape.new(name: 'BatchSizeLimitExceededException')
    ClientRequestTokenString = Shapes::StringShape.new(name: 'ClientRequestTokenString')
    DescribeTopicsDetectionJobRequest = Shapes::StructureShape.new(name: 'DescribeTopicsDetectionJobRequest')
    DescribeTopicsDetectionJobResponse = Shapes::StructureShape.new(name: 'DescribeTopicsDetectionJobResponse')
    DetectDominantLanguageRequest = Shapes::StructureShape.new(name: 'DetectDominantLanguageRequest')
    DetectDominantLanguageResponse = Shapes::StructureShape.new(name: 'DetectDominantLanguageResponse')
    DetectEntitiesRequest = Shapes::StructureShape.new(name: 'DetectEntitiesRequest')
    DetectEntitiesResponse = Shapes::StructureShape.new(name: 'DetectEntitiesResponse')
    DetectKeyPhrasesRequest = Shapes::StructureShape.new(name: 'DetectKeyPhrasesRequest')
    DetectKeyPhrasesResponse = Shapes::StructureShape.new(name: 'DetectKeyPhrasesResponse')
    DetectSentimentRequest = Shapes::StructureShape.new(name: 'DetectSentimentRequest')
    DetectSentimentResponse = Shapes::StructureShape.new(name: 'DetectSentimentResponse')
    DominantLanguage = Shapes::StructureShape.new(name: 'DominantLanguage')
    Entity = Shapes::StructureShape.new(name: 'Entity')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    Float = Shapes::FloatShape.new(name: 'Float')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    InputDataConfig = Shapes::StructureShape.new(name: 'InputDataConfig')
    InputFormat = Shapes::StringShape.new(name: 'InputFormat')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidFilterException = Shapes::StructureShape.new(name: 'InvalidFilterException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobName = Shapes::StringShape.new(name: 'JobName')
    JobNotFoundException = Shapes::StructureShape.new(name: 'JobNotFoundException')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    KeyPhrase = Shapes::StructureShape.new(name: 'KeyPhrase')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    ListOfDetectDominantLanguageResult = Shapes::ListShape.new(name: 'ListOfDetectDominantLanguageResult')
    ListOfDetectEntitiesResult = Shapes::ListShape.new(name: 'ListOfDetectEntitiesResult')
    ListOfDetectKeyPhrasesResult = Shapes::ListShape.new(name: 'ListOfDetectKeyPhrasesResult')
    ListOfDetectSentimentResult = Shapes::ListShape.new(name: 'ListOfDetectSentimentResult')
    ListOfDominantLanguages = Shapes::ListShape.new(name: 'ListOfDominantLanguages')
    ListOfEntities = Shapes::ListShape.new(name: 'ListOfEntities')
    ListOfKeyPhrases = Shapes::ListShape.new(name: 'ListOfKeyPhrases')
    ListTopicsDetectionJobsRequest = Shapes::StructureShape.new(name: 'ListTopicsDetectionJobsRequest')
    ListTopicsDetectionJobsResponse = Shapes::StructureShape.new(name: 'ListTopicsDetectionJobsResponse')
    MaxResultsInteger = Shapes::IntegerShape.new(name: 'MaxResultsInteger')
    NumberOfTopicsInteger = Shapes::IntegerShape.new(name: 'NumberOfTopicsInteger')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SentimentScore = Shapes::StructureShape.new(name: 'SentimentScore')
    SentimentType = Shapes::StringShape.new(name: 'SentimentType')
    StartTopicsDetectionJobRequest = Shapes::StructureShape.new(name: 'StartTopicsDetectionJobRequest')
    StartTopicsDetectionJobResponse = Shapes::StructureShape.new(name: 'StartTopicsDetectionJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    TextSizeLimitExceededException = Shapes::StructureShape.new(name: 'TextSizeLimitExceededException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TopicsDetectionJobFilter = Shapes::StructureShape.new(name: 'TopicsDetectionJobFilter')
    TopicsDetectionJobProperties = Shapes::StructureShape.new(name: 'TopicsDetectionJobProperties')
    TopicsDetectionJobPropertiesList = Shapes::ListShape.new(name: 'TopicsDetectionJobPropertiesList')
    UnsupportedLanguageException = Shapes::StructureShape.new(name: 'UnsupportedLanguageException')

    BatchDetectDominantLanguageItemResult.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "Index"))
    BatchDetectDominantLanguageItemResult.add_member(:languages, Shapes::ShapeRef.new(shape: ListOfDominantLanguages, location_name: "Languages"))
    BatchDetectDominantLanguageItemResult.struct_class = Types::BatchDetectDominantLanguageItemResult

    BatchDetectDominantLanguageRequest.add_member(:text_list, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "TextList"))
    BatchDetectDominantLanguageRequest.struct_class = Types::BatchDetectDominantLanguageRequest

    BatchDetectDominantLanguageResponse.add_member(:result_list, Shapes::ShapeRef.new(shape: ListOfDetectDominantLanguageResult, required: true, location_name: "ResultList"))
    BatchDetectDominantLanguageResponse.add_member(:error_list, Shapes::ShapeRef.new(shape: BatchItemErrorList, required: true, location_name: "ErrorList"))
    BatchDetectDominantLanguageResponse.struct_class = Types::BatchDetectDominantLanguageResponse

    BatchDetectEntitiesItemResult.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "Index"))
    BatchDetectEntitiesItemResult.add_member(:entities, Shapes::ShapeRef.new(shape: ListOfEntities, location_name: "Entities"))
    BatchDetectEntitiesItemResult.struct_class = Types::BatchDetectEntitiesItemResult

    BatchDetectEntitiesRequest.add_member(:text_list, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "TextList"))
    BatchDetectEntitiesRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LanguageCode"))
    BatchDetectEntitiesRequest.struct_class = Types::BatchDetectEntitiesRequest

    BatchDetectEntitiesResponse.add_member(:result_list, Shapes::ShapeRef.new(shape: ListOfDetectEntitiesResult, required: true, location_name: "ResultList"))
    BatchDetectEntitiesResponse.add_member(:error_list, Shapes::ShapeRef.new(shape: BatchItemErrorList, required: true, location_name: "ErrorList"))
    BatchDetectEntitiesResponse.struct_class = Types::BatchDetectEntitiesResponse

    BatchDetectKeyPhrasesItemResult.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "Index"))
    BatchDetectKeyPhrasesItemResult.add_member(:key_phrases, Shapes::ShapeRef.new(shape: ListOfKeyPhrases, location_name: "KeyPhrases"))
    BatchDetectKeyPhrasesItemResult.struct_class = Types::BatchDetectKeyPhrasesItemResult

    BatchDetectKeyPhrasesRequest.add_member(:text_list, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "TextList"))
    BatchDetectKeyPhrasesRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LanguageCode"))
    BatchDetectKeyPhrasesRequest.struct_class = Types::BatchDetectKeyPhrasesRequest

    BatchDetectKeyPhrasesResponse.add_member(:result_list, Shapes::ShapeRef.new(shape: ListOfDetectKeyPhrasesResult, required: true, location_name: "ResultList"))
    BatchDetectKeyPhrasesResponse.add_member(:error_list, Shapes::ShapeRef.new(shape: BatchItemErrorList, required: true, location_name: "ErrorList"))
    BatchDetectKeyPhrasesResponse.struct_class = Types::BatchDetectKeyPhrasesResponse

    BatchDetectSentimentItemResult.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "Index"))
    BatchDetectSentimentItemResult.add_member(:sentiment, Shapes::ShapeRef.new(shape: SentimentType, location_name: "Sentiment"))
    BatchDetectSentimentItemResult.add_member(:sentiment_score, Shapes::ShapeRef.new(shape: SentimentScore, location_name: "SentimentScore"))
    BatchDetectSentimentItemResult.struct_class = Types::BatchDetectSentimentItemResult

    BatchDetectSentimentRequest.add_member(:text_list, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "TextList"))
    BatchDetectSentimentRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LanguageCode"))
    BatchDetectSentimentRequest.struct_class = Types::BatchDetectSentimentRequest

    BatchDetectSentimentResponse.add_member(:result_list, Shapes::ShapeRef.new(shape: ListOfDetectSentimentResult, required: true, location_name: "ResultList"))
    BatchDetectSentimentResponse.add_member(:error_list, Shapes::ShapeRef.new(shape: BatchItemErrorList, required: true, location_name: "ErrorList"))
    BatchDetectSentimentResponse.struct_class = Types::BatchDetectSentimentResponse

    BatchItemError.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "Index"))
    BatchItemError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    BatchItemError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    BatchItemError.struct_class = Types::BatchItemError

    BatchItemErrorList.member = Shapes::ShapeRef.new(shape: BatchItemError)

    DescribeTopicsDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeTopicsDetectionJobRequest.struct_class = Types::DescribeTopicsDetectionJobRequest

    DescribeTopicsDetectionJobResponse.add_member(:topics_detection_job_properties, Shapes::ShapeRef.new(shape: TopicsDetectionJobProperties, location_name: "TopicsDetectionJobProperties"))
    DescribeTopicsDetectionJobResponse.struct_class = Types::DescribeTopicsDetectionJobResponse

    DetectDominantLanguageRequest.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Text"))
    DetectDominantLanguageRequest.struct_class = Types::DetectDominantLanguageRequest

    DetectDominantLanguageResponse.add_member(:languages, Shapes::ShapeRef.new(shape: ListOfDominantLanguages, location_name: "Languages"))
    DetectDominantLanguageResponse.struct_class = Types::DetectDominantLanguageResponse

    DetectEntitiesRequest.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Text"))
    DetectEntitiesRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    DetectEntitiesRequest.struct_class = Types::DetectEntitiesRequest

    DetectEntitiesResponse.add_member(:entities, Shapes::ShapeRef.new(shape: ListOfEntities, location_name: "Entities"))
    DetectEntitiesResponse.struct_class = Types::DetectEntitiesResponse

    DetectKeyPhrasesRequest.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Text"))
    DetectKeyPhrasesRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    DetectKeyPhrasesRequest.struct_class = Types::DetectKeyPhrasesRequest

    DetectKeyPhrasesResponse.add_member(:key_phrases, Shapes::ShapeRef.new(shape: ListOfKeyPhrases, location_name: "KeyPhrases"))
    DetectKeyPhrasesResponse.struct_class = Types::DetectKeyPhrasesResponse

    DetectSentimentRequest.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Text"))
    DetectSentimentRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    DetectSentimentRequest.struct_class = Types::DetectSentimentRequest

    DetectSentimentResponse.add_member(:sentiment, Shapes::ShapeRef.new(shape: SentimentType, location_name: "Sentiment"))
    DetectSentimentResponse.add_member(:sentiment_score, Shapes::ShapeRef.new(shape: SentimentScore, location_name: "SentimentScore"))
    DetectSentimentResponse.struct_class = Types::DetectSentimentResponse

    DominantLanguage.add_member(:language_code, Shapes::ShapeRef.new(shape: String, location_name: "LanguageCode"))
    DominantLanguage.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    DominantLanguage.struct_class = Types::DominantLanguage

    Entity.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    Entity.add_member(:type, Shapes::ShapeRef.new(shape: EntityType, location_name: "Type"))
    Entity.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    Entity.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    Entity.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    Entity.struct_class = Types::Entity

    InputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    InputDataConfig.add_member(:input_format, Shapes::ShapeRef.new(shape: InputFormat, location_name: "InputFormat"))
    InputDataConfig.struct_class = Types::InputDataConfig

    KeyPhrase.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    KeyPhrase.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    KeyPhrase.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    KeyPhrase.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    KeyPhrase.struct_class = Types::KeyPhrase

    ListOfDetectDominantLanguageResult.member = Shapes::ShapeRef.new(shape: BatchDetectDominantLanguageItemResult)

    ListOfDetectEntitiesResult.member = Shapes::ShapeRef.new(shape: BatchDetectEntitiesItemResult)

    ListOfDetectKeyPhrasesResult.member = Shapes::ShapeRef.new(shape: BatchDetectKeyPhrasesItemResult)

    ListOfDetectSentimentResult.member = Shapes::ShapeRef.new(shape: BatchDetectSentimentItemResult)

    ListOfDominantLanguages.member = Shapes::ShapeRef.new(shape: DominantLanguage)

    ListOfEntities.member = Shapes::ShapeRef.new(shape: Entity)

    ListOfKeyPhrases.member = Shapes::ShapeRef.new(shape: KeyPhrase)

    ListTopicsDetectionJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: TopicsDetectionJobFilter, location_name: "Filter"))
    ListTopicsDetectionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTopicsDetectionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListTopicsDetectionJobsRequest.struct_class = Types::ListTopicsDetectionJobsRequest

    ListTopicsDetectionJobsResponse.add_member(:topics_detection_job_properties_list, Shapes::ShapeRef.new(shape: TopicsDetectionJobPropertiesList, location_name: "TopicsDetectionJobPropertiesList"))
    ListTopicsDetectionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTopicsDetectionJobsResponse.struct_class = Types::ListTopicsDetectionJobsResponse

    OutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    SentimentScore.add_member(:positive, Shapes::ShapeRef.new(shape: Float, location_name: "Positive"))
    SentimentScore.add_member(:negative, Shapes::ShapeRef.new(shape: Float, location_name: "Negative"))
    SentimentScore.add_member(:neutral, Shapes::ShapeRef.new(shape: Float, location_name: "Neutral"))
    SentimentScore.add_member(:mixed, Shapes::ShapeRef.new(shape: Float, location_name: "Mixed"))
    SentimentScore.struct_class = Types::SentimentScore

    StartTopicsDetectionJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartTopicsDetectionJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartTopicsDetectionJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartTopicsDetectionJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartTopicsDetectionJobRequest.add_member(:number_of_topics, Shapes::ShapeRef.new(shape: NumberOfTopicsInteger, location_name: "NumberOfTopics"))
    StartTopicsDetectionJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartTopicsDetectionJobRequest.struct_class = Types::StartTopicsDetectionJobRequest

    StartTopicsDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartTopicsDetectionJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StartTopicsDetectionJobResponse.struct_class = Types::StartTopicsDetectionJobResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    TopicsDetectionJobFilter.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    TopicsDetectionJobFilter.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    TopicsDetectionJobFilter.add_member(:submit_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeBefore"))
    TopicsDetectionJobFilter.add_member(:submit_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeAfter"))
    TopicsDetectionJobFilter.struct_class = Types::TopicsDetectionJobFilter

    TopicsDetectionJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    TopicsDetectionJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    TopicsDetectionJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    TopicsDetectionJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: AnyLengthString, location_name: "Message"))
    TopicsDetectionJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTime"))
    TopicsDetectionJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    TopicsDetectionJobProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    TopicsDetectionJobProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    TopicsDetectionJobProperties.add_member(:number_of_topics, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfTopics"))
    TopicsDetectionJobProperties.struct_class = Types::TopicsDetectionJobProperties

    TopicsDetectionJobPropertiesList.member = Shapes::ShapeRef.new(shape: TopicsDetectionJobProperties)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-11-27"

      api.metadata = {
        "endpointPrefix" => "comprehend",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Comprehend",
        "signatureVersion" => "v4",
        "signingName" => "comprehend",
        "targetPrefix" => "Comprehend_20171127",
      }

      api.add_operation(:batch_detect_dominant_language, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDetectDominantLanguage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDetectDominantLanguageRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDetectDominantLanguageResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BatchSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_detect_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDetectEntities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDetectEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDetectEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        o.errors << Shapes::ShapeRef.new(shape: BatchSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_detect_key_phrases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDetectKeyPhrases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDetectKeyPhrasesRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDetectKeyPhrasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        o.errors << Shapes::ShapeRef.new(shape: BatchSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_detect_sentiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDetectSentiment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDetectSentimentRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDetectSentimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        o.errors << Shapes::ShapeRef.new(shape: BatchSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_topics_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTopicsDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTopicsDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTopicsDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:detect_dominant_language, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectDominantLanguage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectDominantLanguageRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectDominantLanguageResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:detect_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectEntities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:detect_key_phrases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectKeyPhrases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectKeyPhrasesRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectKeyPhrasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:detect_sentiment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectSentiment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectSentimentRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectSentimentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_topics_detection_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTopicsDetectionJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTopicsDetectionJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTopicsDetectionJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_topics_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTopicsDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartTopicsDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTopicsDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
