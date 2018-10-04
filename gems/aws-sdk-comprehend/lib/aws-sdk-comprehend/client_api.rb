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
    BatchDetectSyntaxItemResult = Shapes::StructureShape.new(name: 'BatchDetectSyntaxItemResult')
    BatchDetectSyntaxRequest = Shapes::StructureShape.new(name: 'BatchDetectSyntaxRequest')
    BatchDetectSyntaxResponse = Shapes::StructureShape.new(name: 'BatchDetectSyntaxResponse')
    BatchItemError = Shapes::StructureShape.new(name: 'BatchItemError')
    BatchItemErrorList = Shapes::ListShape.new(name: 'BatchItemErrorList')
    BatchSizeLimitExceededException = Shapes::StructureShape.new(name: 'BatchSizeLimitExceededException')
    ClientRequestTokenString = Shapes::StringShape.new(name: 'ClientRequestTokenString')
    DescribeDominantLanguageDetectionJobRequest = Shapes::StructureShape.new(name: 'DescribeDominantLanguageDetectionJobRequest')
    DescribeDominantLanguageDetectionJobResponse = Shapes::StructureShape.new(name: 'DescribeDominantLanguageDetectionJobResponse')
    DescribeEntitiesDetectionJobRequest = Shapes::StructureShape.new(name: 'DescribeEntitiesDetectionJobRequest')
    DescribeEntitiesDetectionJobResponse = Shapes::StructureShape.new(name: 'DescribeEntitiesDetectionJobResponse')
    DescribeKeyPhrasesDetectionJobRequest = Shapes::StructureShape.new(name: 'DescribeKeyPhrasesDetectionJobRequest')
    DescribeKeyPhrasesDetectionJobResponse = Shapes::StructureShape.new(name: 'DescribeKeyPhrasesDetectionJobResponse')
    DescribeSentimentDetectionJobRequest = Shapes::StructureShape.new(name: 'DescribeSentimentDetectionJobRequest')
    DescribeSentimentDetectionJobResponse = Shapes::StructureShape.new(name: 'DescribeSentimentDetectionJobResponse')
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
    DetectSyntaxRequest = Shapes::StructureShape.new(name: 'DetectSyntaxRequest')
    DetectSyntaxResponse = Shapes::StructureShape.new(name: 'DetectSyntaxResponse')
    DominantLanguage = Shapes::StructureShape.new(name: 'DominantLanguage')
    DominantLanguageDetectionJobFilter = Shapes::StructureShape.new(name: 'DominantLanguageDetectionJobFilter')
    DominantLanguageDetectionJobProperties = Shapes::StructureShape.new(name: 'DominantLanguageDetectionJobProperties')
    DominantLanguageDetectionJobPropertiesList = Shapes::ListShape.new(name: 'DominantLanguageDetectionJobPropertiesList')
    EntitiesDetectionJobFilter = Shapes::StructureShape.new(name: 'EntitiesDetectionJobFilter')
    EntitiesDetectionJobProperties = Shapes::StructureShape.new(name: 'EntitiesDetectionJobProperties')
    EntitiesDetectionJobPropertiesList = Shapes::ListShape.new(name: 'EntitiesDetectionJobPropertiesList')
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
    KeyPhrasesDetectionJobFilter = Shapes::StructureShape.new(name: 'KeyPhrasesDetectionJobFilter')
    KeyPhrasesDetectionJobProperties = Shapes::StructureShape.new(name: 'KeyPhrasesDetectionJobProperties')
    KeyPhrasesDetectionJobPropertiesList = Shapes::ListShape.new(name: 'KeyPhrasesDetectionJobPropertiesList')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    ListDominantLanguageDetectionJobsRequest = Shapes::StructureShape.new(name: 'ListDominantLanguageDetectionJobsRequest')
    ListDominantLanguageDetectionJobsResponse = Shapes::StructureShape.new(name: 'ListDominantLanguageDetectionJobsResponse')
    ListEntitiesDetectionJobsRequest = Shapes::StructureShape.new(name: 'ListEntitiesDetectionJobsRequest')
    ListEntitiesDetectionJobsResponse = Shapes::StructureShape.new(name: 'ListEntitiesDetectionJobsResponse')
    ListKeyPhrasesDetectionJobsRequest = Shapes::StructureShape.new(name: 'ListKeyPhrasesDetectionJobsRequest')
    ListKeyPhrasesDetectionJobsResponse = Shapes::StructureShape.new(name: 'ListKeyPhrasesDetectionJobsResponse')
    ListOfDetectDominantLanguageResult = Shapes::ListShape.new(name: 'ListOfDetectDominantLanguageResult')
    ListOfDetectEntitiesResult = Shapes::ListShape.new(name: 'ListOfDetectEntitiesResult')
    ListOfDetectKeyPhrasesResult = Shapes::ListShape.new(name: 'ListOfDetectKeyPhrasesResult')
    ListOfDetectSentimentResult = Shapes::ListShape.new(name: 'ListOfDetectSentimentResult')
    ListOfDetectSyntaxResult = Shapes::ListShape.new(name: 'ListOfDetectSyntaxResult')
    ListOfDominantLanguages = Shapes::ListShape.new(name: 'ListOfDominantLanguages')
    ListOfEntities = Shapes::ListShape.new(name: 'ListOfEntities')
    ListOfKeyPhrases = Shapes::ListShape.new(name: 'ListOfKeyPhrases')
    ListOfSyntaxTokens = Shapes::ListShape.new(name: 'ListOfSyntaxTokens')
    ListSentimentDetectionJobsRequest = Shapes::StructureShape.new(name: 'ListSentimentDetectionJobsRequest')
    ListSentimentDetectionJobsResponse = Shapes::StructureShape.new(name: 'ListSentimentDetectionJobsResponse')
    ListTopicsDetectionJobsRequest = Shapes::StructureShape.new(name: 'ListTopicsDetectionJobsRequest')
    ListTopicsDetectionJobsResponse = Shapes::StructureShape.new(name: 'ListTopicsDetectionJobsResponse')
    MaxResultsInteger = Shapes::IntegerShape.new(name: 'MaxResultsInteger')
    NumberOfTopicsInteger = Shapes::IntegerShape.new(name: 'NumberOfTopicsInteger')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    PartOfSpeechTag = Shapes::StructureShape.new(name: 'PartOfSpeechTag')
    PartOfSpeechTagType = Shapes::StringShape.new(name: 'PartOfSpeechTagType')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SentimentDetectionJobFilter = Shapes::StructureShape.new(name: 'SentimentDetectionJobFilter')
    SentimentDetectionJobProperties = Shapes::StructureShape.new(name: 'SentimentDetectionJobProperties')
    SentimentDetectionJobPropertiesList = Shapes::ListShape.new(name: 'SentimentDetectionJobPropertiesList')
    SentimentScore = Shapes::StructureShape.new(name: 'SentimentScore')
    SentimentType = Shapes::StringShape.new(name: 'SentimentType')
    StartDominantLanguageDetectionJobRequest = Shapes::StructureShape.new(name: 'StartDominantLanguageDetectionJobRequest')
    StartDominantLanguageDetectionJobResponse = Shapes::StructureShape.new(name: 'StartDominantLanguageDetectionJobResponse')
    StartEntitiesDetectionJobRequest = Shapes::StructureShape.new(name: 'StartEntitiesDetectionJobRequest')
    StartEntitiesDetectionJobResponse = Shapes::StructureShape.new(name: 'StartEntitiesDetectionJobResponse')
    StartKeyPhrasesDetectionJobRequest = Shapes::StructureShape.new(name: 'StartKeyPhrasesDetectionJobRequest')
    StartKeyPhrasesDetectionJobResponse = Shapes::StructureShape.new(name: 'StartKeyPhrasesDetectionJobResponse')
    StartSentimentDetectionJobRequest = Shapes::StructureShape.new(name: 'StartSentimentDetectionJobRequest')
    StartSentimentDetectionJobResponse = Shapes::StructureShape.new(name: 'StartSentimentDetectionJobResponse')
    StartTopicsDetectionJobRequest = Shapes::StructureShape.new(name: 'StartTopicsDetectionJobRequest')
    StartTopicsDetectionJobResponse = Shapes::StructureShape.new(name: 'StartTopicsDetectionJobResponse')
    StopDominantLanguageDetectionJobRequest = Shapes::StructureShape.new(name: 'StopDominantLanguageDetectionJobRequest')
    StopDominantLanguageDetectionJobResponse = Shapes::StructureShape.new(name: 'StopDominantLanguageDetectionJobResponse')
    StopEntitiesDetectionJobRequest = Shapes::StructureShape.new(name: 'StopEntitiesDetectionJobRequest')
    StopEntitiesDetectionJobResponse = Shapes::StructureShape.new(name: 'StopEntitiesDetectionJobResponse')
    StopKeyPhrasesDetectionJobRequest = Shapes::StructureShape.new(name: 'StopKeyPhrasesDetectionJobRequest')
    StopKeyPhrasesDetectionJobResponse = Shapes::StructureShape.new(name: 'StopKeyPhrasesDetectionJobResponse')
    StopSentimentDetectionJobRequest = Shapes::StructureShape.new(name: 'StopSentimentDetectionJobRequest')
    StopSentimentDetectionJobResponse = Shapes::StructureShape.new(name: 'StopSentimentDetectionJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SyntaxLanguageCode = Shapes::StringShape.new(name: 'SyntaxLanguageCode')
    SyntaxToken = Shapes::StructureShape.new(name: 'SyntaxToken')
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
    BatchDetectEntitiesRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    BatchDetectEntitiesRequest.struct_class = Types::BatchDetectEntitiesRequest

    BatchDetectEntitiesResponse.add_member(:result_list, Shapes::ShapeRef.new(shape: ListOfDetectEntitiesResult, required: true, location_name: "ResultList"))
    BatchDetectEntitiesResponse.add_member(:error_list, Shapes::ShapeRef.new(shape: BatchItemErrorList, required: true, location_name: "ErrorList"))
    BatchDetectEntitiesResponse.struct_class = Types::BatchDetectEntitiesResponse

    BatchDetectKeyPhrasesItemResult.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "Index"))
    BatchDetectKeyPhrasesItemResult.add_member(:key_phrases, Shapes::ShapeRef.new(shape: ListOfKeyPhrases, location_name: "KeyPhrases"))
    BatchDetectKeyPhrasesItemResult.struct_class = Types::BatchDetectKeyPhrasesItemResult

    BatchDetectKeyPhrasesRequest.add_member(:text_list, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "TextList"))
    BatchDetectKeyPhrasesRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    BatchDetectKeyPhrasesRequest.struct_class = Types::BatchDetectKeyPhrasesRequest

    BatchDetectKeyPhrasesResponse.add_member(:result_list, Shapes::ShapeRef.new(shape: ListOfDetectKeyPhrasesResult, required: true, location_name: "ResultList"))
    BatchDetectKeyPhrasesResponse.add_member(:error_list, Shapes::ShapeRef.new(shape: BatchItemErrorList, required: true, location_name: "ErrorList"))
    BatchDetectKeyPhrasesResponse.struct_class = Types::BatchDetectKeyPhrasesResponse

    BatchDetectSentimentItemResult.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "Index"))
    BatchDetectSentimentItemResult.add_member(:sentiment, Shapes::ShapeRef.new(shape: SentimentType, location_name: "Sentiment"))
    BatchDetectSentimentItemResult.add_member(:sentiment_score, Shapes::ShapeRef.new(shape: SentimentScore, location_name: "SentimentScore"))
    BatchDetectSentimentItemResult.struct_class = Types::BatchDetectSentimentItemResult

    BatchDetectSentimentRequest.add_member(:text_list, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "TextList"))
    BatchDetectSentimentRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    BatchDetectSentimentRequest.struct_class = Types::BatchDetectSentimentRequest

    BatchDetectSentimentResponse.add_member(:result_list, Shapes::ShapeRef.new(shape: ListOfDetectSentimentResult, required: true, location_name: "ResultList"))
    BatchDetectSentimentResponse.add_member(:error_list, Shapes::ShapeRef.new(shape: BatchItemErrorList, required: true, location_name: "ErrorList"))
    BatchDetectSentimentResponse.struct_class = Types::BatchDetectSentimentResponse

    BatchDetectSyntaxItemResult.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "Index"))
    BatchDetectSyntaxItemResult.add_member(:syntax_tokens, Shapes::ShapeRef.new(shape: ListOfSyntaxTokens, location_name: "SyntaxTokens"))
    BatchDetectSyntaxItemResult.struct_class = Types::BatchDetectSyntaxItemResult

    BatchDetectSyntaxRequest.add_member(:text_list, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "TextList"))
    BatchDetectSyntaxRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: SyntaxLanguageCode, required: true, location_name: "LanguageCode"))
    BatchDetectSyntaxRequest.struct_class = Types::BatchDetectSyntaxRequest

    BatchDetectSyntaxResponse.add_member(:result_list, Shapes::ShapeRef.new(shape: ListOfDetectSyntaxResult, required: true, location_name: "ResultList"))
    BatchDetectSyntaxResponse.add_member(:error_list, Shapes::ShapeRef.new(shape: BatchItemErrorList, required: true, location_name: "ErrorList"))
    BatchDetectSyntaxResponse.struct_class = Types::BatchDetectSyntaxResponse

    BatchItemError.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "Index"))
    BatchItemError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    BatchItemError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    BatchItemError.struct_class = Types::BatchItemError

    BatchItemErrorList.member = Shapes::ShapeRef.new(shape: BatchItemError)

    DescribeDominantLanguageDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeDominantLanguageDetectionJobRequest.struct_class = Types::DescribeDominantLanguageDetectionJobRequest

    DescribeDominantLanguageDetectionJobResponse.add_member(:dominant_language_detection_job_properties, Shapes::ShapeRef.new(shape: DominantLanguageDetectionJobProperties, location_name: "DominantLanguageDetectionJobProperties"))
    DescribeDominantLanguageDetectionJobResponse.struct_class = Types::DescribeDominantLanguageDetectionJobResponse

    DescribeEntitiesDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeEntitiesDetectionJobRequest.struct_class = Types::DescribeEntitiesDetectionJobRequest

    DescribeEntitiesDetectionJobResponse.add_member(:entities_detection_job_properties, Shapes::ShapeRef.new(shape: EntitiesDetectionJobProperties, location_name: "EntitiesDetectionJobProperties"))
    DescribeEntitiesDetectionJobResponse.struct_class = Types::DescribeEntitiesDetectionJobResponse

    DescribeKeyPhrasesDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeKeyPhrasesDetectionJobRequest.struct_class = Types::DescribeKeyPhrasesDetectionJobRequest

    DescribeKeyPhrasesDetectionJobResponse.add_member(:key_phrases_detection_job_properties, Shapes::ShapeRef.new(shape: KeyPhrasesDetectionJobProperties, location_name: "KeyPhrasesDetectionJobProperties"))
    DescribeKeyPhrasesDetectionJobResponse.struct_class = Types::DescribeKeyPhrasesDetectionJobResponse

    DescribeSentimentDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeSentimentDetectionJobRequest.struct_class = Types::DescribeSentimentDetectionJobRequest

    DescribeSentimentDetectionJobResponse.add_member(:sentiment_detection_job_properties, Shapes::ShapeRef.new(shape: SentimentDetectionJobProperties, location_name: "SentimentDetectionJobProperties"))
    DescribeSentimentDetectionJobResponse.struct_class = Types::DescribeSentimentDetectionJobResponse

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

    DetectSyntaxRequest.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Text"))
    DetectSyntaxRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: SyntaxLanguageCode, required: true, location_name: "LanguageCode"))
    DetectSyntaxRequest.struct_class = Types::DetectSyntaxRequest

    DetectSyntaxResponse.add_member(:syntax_tokens, Shapes::ShapeRef.new(shape: ListOfSyntaxTokens, location_name: "SyntaxTokens"))
    DetectSyntaxResponse.struct_class = Types::DetectSyntaxResponse

    DominantLanguage.add_member(:language_code, Shapes::ShapeRef.new(shape: String, location_name: "LanguageCode"))
    DominantLanguage.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    DominantLanguage.struct_class = Types::DominantLanguage

    DominantLanguageDetectionJobFilter.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    DominantLanguageDetectionJobFilter.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    DominantLanguageDetectionJobFilter.add_member(:submit_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeBefore"))
    DominantLanguageDetectionJobFilter.add_member(:submit_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeAfter"))
    DominantLanguageDetectionJobFilter.struct_class = Types::DominantLanguageDetectionJobFilter

    DominantLanguageDetectionJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    DominantLanguageDetectionJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    DominantLanguageDetectionJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    DominantLanguageDetectionJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: AnyLengthString, location_name: "Message"))
    DominantLanguageDetectionJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTime"))
    DominantLanguageDetectionJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    DominantLanguageDetectionJobProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    DominantLanguageDetectionJobProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    DominantLanguageDetectionJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    DominantLanguageDetectionJobProperties.struct_class = Types::DominantLanguageDetectionJobProperties

    DominantLanguageDetectionJobPropertiesList.member = Shapes::ShapeRef.new(shape: DominantLanguageDetectionJobProperties)

    EntitiesDetectionJobFilter.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    EntitiesDetectionJobFilter.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    EntitiesDetectionJobFilter.add_member(:submit_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeBefore"))
    EntitiesDetectionJobFilter.add_member(:submit_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeAfter"))
    EntitiesDetectionJobFilter.struct_class = Types::EntitiesDetectionJobFilter

    EntitiesDetectionJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    EntitiesDetectionJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    EntitiesDetectionJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    EntitiesDetectionJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: AnyLengthString, location_name: "Message"))
    EntitiesDetectionJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTime"))
    EntitiesDetectionJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    EntitiesDetectionJobProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    EntitiesDetectionJobProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    EntitiesDetectionJobProperties.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    EntitiesDetectionJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    EntitiesDetectionJobProperties.struct_class = Types::EntitiesDetectionJobProperties

    EntitiesDetectionJobPropertiesList.member = Shapes::ShapeRef.new(shape: EntitiesDetectionJobProperties)

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

    KeyPhrasesDetectionJobFilter.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    KeyPhrasesDetectionJobFilter.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    KeyPhrasesDetectionJobFilter.add_member(:submit_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeBefore"))
    KeyPhrasesDetectionJobFilter.add_member(:submit_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeAfter"))
    KeyPhrasesDetectionJobFilter.struct_class = Types::KeyPhrasesDetectionJobFilter

    KeyPhrasesDetectionJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    KeyPhrasesDetectionJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    KeyPhrasesDetectionJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    KeyPhrasesDetectionJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: AnyLengthString, location_name: "Message"))
    KeyPhrasesDetectionJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTime"))
    KeyPhrasesDetectionJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    KeyPhrasesDetectionJobProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    KeyPhrasesDetectionJobProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    KeyPhrasesDetectionJobProperties.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    KeyPhrasesDetectionJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    KeyPhrasesDetectionJobProperties.struct_class = Types::KeyPhrasesDetectionJobProperties

    KeyPhrasesDetectionJobPropertiesList.member = Shapes::ShapeRef.new(shape: KeyPhrasesDetectionJobProperties)

    ListDominantLanguageDetectionJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: DominantLanguageDetectionJobFilter, location_name: "Filter"))
    ListDominantLanguageDetectionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDominantLanguageDetectionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListDominantLanguageDetectionJobsRequest.struct_class = Types::ListDominantLanguageDetectionJobsRequest

    ListDominantLanguageDetectionJobsResponse.add_member(:dominant_language_detection_job_properties_list, Shapes::ShapeRef.new(shape: DominantLanguageDetectionJobPropertiesList, location_name: "DominantLanguageDetectionJobPropertiesList"))
    ListDominantLanguageDetectionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDominantLanguageDetectionJobsResponse.struct_class = Types::ListDominantLanguageDetectionJobsResponse

    ListEntitiesDetectionJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: EntitiesDetectionJobFilter, location_name: "Filter"))
    ListEntitiesDetectionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEntitiesDetectionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListEntitiesDetectionJobsRequest.struct_class = Types::ListEntitiesDetectionJobsRequest

    ListEntitiesDetectionJobsResponse.add_member(:entities_detection_job_properties_list, Shapes::ShapeRef.new(shape: EntitiesDetectionJobPropertiesList, location_name: "EntitiesDetectionJobPropertiesList"))
    ListEntitiesDetectionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEntitiesDetectionJobsResponse.struct_class = Types::ListEntitiesDetectionJobsResponse

    ListKeyPhrasesDetectionJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: KeyPhrasesDetectionJobFilter, location_name: "Filter"))
    ListKeyPhrasesDetectionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListKeyPhrasesDetectionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListKeyPhrasesDetectionJobsRequest.struct_class = Types::ListKeyPhrasesDetectionJobsRequest

    ListKeyPhrasesDetectionJobsResponse.add_member(:key_phrases_detection_job_properties_list, Shapes::ShapeRef.new(shape: KeyPhrasesDetectionJobPropertiesList, location_name: "KeyPhrasesDetectionJobPropertiesList"))
    ListKeyPhrasesDetectionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListKeyPhrasesDetectionJobsResponse.struct_class = Types::ListKeyPhrasesDetectionJobsResponse

    ListOfDetectDominantLanguageResult.member = Shapes::ShapeRef.new(shape: BatchDetectDominantLanguageItemResult)

    ListOfDetectEntitiesResult.member = Shapes::ShapeRef.new(shape: BatchDetectEntitiesItemResult)

    ListOfDetectKeyPhrasesResult.member = Shapes::ShapeRef.new(shape: BatchDetectKeyPhrasesItemResult)

    ListOfDetectSentimentResult.member = Shapes::ShapeRef.new(shape: BatchDetectSentimentItemResult)

    ListOfDetectSyntaxResult.member = Shapes::ShapeRef.new(shape: BatchDetectSyntaxItemResult)

    ListOfDominantLanguages.member = Shapes::ShapeRef.new(shape: DominantLanguage)

    ListOfEntities.member = Shapes::ShapeRef.new(shape: Entity)

    ListOfKeyPhrases.member = Shapes::ShapeRef.new(shape: KeyPhrase)

    ListOfSyntaxTokens.member = Shapes::ShapeRef.new(shape: SyntaxToken)

    ListSentimentDetectionJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: SentimentDetectionJobFilter, location_name: "Filter"))
    ListSentimentDetectionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSentimentDetectionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListSentimentDetectionJobsRequest.struct_class = Types::ListSentimentDetectionJobsRequest

    ListSentimentDetectionJobsResponse.add_member(:sentiment_detection_job_properties_list, Shapes::ShapeRef.new(shape: SentimentDetectionJobPropertiesList, location_name: "SentimentDetectionJobPropertiesList"))
    ListSentimentDetectionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSentimentDetectionJobsResponse.struct_class = Types::ListSentimentDetectionJobsResponse

    ListTopicsDetectionJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: TopicsDetectionJobFilter, location_name: "Filter"))
    ListTopicsDetectionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTopicsDetectionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListTopicsDetectionJobsRequest.struct_class = Types::ListTopicsDetectionJobsRequest

    ListTopicsDetectionJobsResponse.add_member(:topics_detection_job_properties_list, Shapes::ShapeRef.new(shape: TopicsDetectionJobPropertiesList, location_name: "TopicsDetectionJobPropertiesList"))
    ListTopicsDetectionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTopicsDetectionJobsResponse.struct_class = Types::ListTopicsDetectionJobsResponse

    OutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    PartOfSpeechTag.add_member(:tag, Shapes::ShapeRef.new(shape: PartOfSpeechTagType, location_name: "Tag"))
    PartOfSpeechTag.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    PartOfSpeechTag.struct_class = Types::PartOfSpeechTag

    SentimentDetectionJobFilter.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    SentimentDetectionJobFilter.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    SentimentDetectionJobFilter.add_member(:submit_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeBefore"))
    SentimentDetectionJobFilter.add_member(:submit_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeAfter"))
    SentimentDetectionJobFilter.struct_class = Types::SentimentDetectionJobFilter

    SentimentDetectionJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    SentimentDetectionJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    SentimentDetectionJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    SentimentDetectionJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: AnyLengthString, location_name: "Message"))
    SentimentDetectionJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTime"))
    SentimentDetectionJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    SentimentDetectionJobProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    SentimentDetectionJobProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    SentimentDetectionJobProperties.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    SentimentDetectionJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    SentimentDetectionJobProperties.struct_class = Types::SentimentDetectionJobProperties

    SentimentDetectionJobPropertiesList.member = Shapes::ShapeRef.new(shape: SentimentDetectionJobProperties)

    SentimentScore.add_member(:positive, Shapes::ShapeRef.new(shape: Float, location_name: "Positive"))
    SentimentScore.add_member(:negative, Shapes::ShapeRef.new(shape: Float, location_name: "Negative"))
    SentimentScore.add_member(:neutral, Shapes::ShapeRef.new(shape: Float, location_name: "Neutral"))
    SentimentScore.add_member(:mixed, Shapes::ShapeRef.new(shape: Float, location_name: "Mixed"))
    SentimentScore.struct_class = Types::SentimentScore

    StartDominantLanguageDetectionJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartDominantLanguageDetectionJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartDominantLanguageDetectionJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartDominantLanguageDetectionJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartDominantLanguageDetectionJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartDominantLanguageDetectionJobRequest.struct_class = Types::StartDominantLanguageDetectionJobRequest

    StartDominantLanguageDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartDominantLanguageDetectionJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StartDominantLanguageDetectionJobResponse.struct_class = Types::StartDominantLanguageDetectionJobResponse

    StartEntitiesDetectionJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartEntitiesDetectionJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartEntitiesDetectionJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartEntitiesDetectionJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartEntitiesDetectionJobRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    StartEntitiesDetectionJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartEntitiesDetectionJobRequest.struct_class = Types::StartEntitiesDetectionJobRequest

    StartEntitiesDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartEntitiesDetectionJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StartEntitiesDetectionJobResponse.struct_class = Types::StartEntitiesDetectionJobResponse

    StartKeyPhrasesDetectionJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartKeyPhrasesDetectionJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartKeyPhrasesDetectionJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartKeyPhrasesDetectionJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartKeyPhrasesDetectionJobRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    StartKeyPhrasesDetectionJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartKeyPhrasesDetectionJobRequest.struct_class = Types::StartKeyPhrasesDetectionJobRequest

    StartKeyPhrasesDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartKeyPhrasesDetectionJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StartKeyPhrasesDetectionJobResponse.struct_class = Types::StartKeyPhrasesDetectionJobResponse

    StartSentimentDetectionJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartSentimentDetectionJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartSentimentDetectionJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartSentimentDetectionJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartSentimentDetectionJobRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    StartSentimentDetectionJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartSentimentDetectionJobRequest.struct_class = Types::StartSentimentDetectionJobRequest

    StartSentimentDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartSentimentDetectionJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StartSentimentDetectionJobResponse.struct_class = Types::StartSentimentDetectionJobResponse

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

    StopDominantLanguageDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StopDominantLanguageDetectionJobRequest.struct_class = Types::StopDominantLanguageDetectionJobRequest

    StopDominantLanguageDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StopDominantLanguageDetectionJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StopDominantLanguageDetectionJobResponse.struct_class = Types::StopDominantLanguageDetectionJobResponse

    StopEntitiesDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StopEntitiesDetectionJobRequest.struct_class = Types::StopEntitiesDetectionJobRequest

    StopEntitiesDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StopEntitiesDetectionJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StopEntitiesDetectionJobResponse.struct_class = Types::StopEntitiesDetectionJobResponse

    StopKeyPhrasesDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StopKeyPhrasesDetectionJobRequest.struct_class = Types::StopKeyPhrasesDetectionJobRequest

    StopKeyPhrasesDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StopKeyPhrasesDetectionJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StopKeyPhrasesDetectionJobResponse.struct_class = Types::StopKeyPhrasesDetectionJobResponse

    StopSentimentDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StopSentimentDetectionJobRequest.struct_class = Types::StopSentimentDetectionJobRequest

    StopSentimentDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StopSentimentDetectionJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StopSentimentDetectionJobResponse.struct_class = Types::StopSentimentDetectionJobResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SyntaxToken.add_member(:token_id, Shapes::ShapeRef.new(shape: Integer, location_name: "TokenId"))
    SyntaxToken.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    SyntaxToken.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    SyntaxToken.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    SyntaxToken.add_member(:part_of_speech, Shapes::ShapeRef.new(shape: PartOfSpeechTag, location_name: "PartOfSpeech"))
    SyntaxToken.struct_class = Types::SyntaxToken

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
        "apiVersion" => "2017-11-27",
        "endpointPrefix" => "comprehend",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Comprehend",
        "serviceId" => "Comprehend",
        "signatureVersion" => "v4",
        "signingName" => "comprehend",
        "targetPrefix" => "Comprehend_20171127",
        "uid" => "comprehend-2017-11-27",
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

      api.add_operation(:batch_detect_syntax, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDetectSyntax"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDetectSyntaxRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDetectSyntaxResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        o.errors << Shapes::ShapeRef.new(shape: BatchSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_dominant_language_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDominantLanguageDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDominantLanguageDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDominantLanguageDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_entities_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEntitiesDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEntitiesDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEntitiesDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_key_phrases_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeKeyPhrasesDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeKeyPhrasesDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeKeyPhrasesDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_sentiment_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSentimentDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSentimentDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSentimentDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
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

      api.add_operation(:detect_syntax, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectSyntax"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectSyntaxRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectSyntaxResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_dominant_language_detection_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDominantLanguageDetectionJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDominantLanguageDetectionJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDominantLanguageDetectionJobsResponse)
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

      api.add_operation(:list_entities_detection_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEntitiesDetectionJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEntitiesDetectionJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEntitiesDetectionJobsResponse)
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

      api.add_operation(:list_key_phrases_detection_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKeyPhrasesDetectionJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListKeyPhrasesDetectionJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKeyPhrasesDetectionJobsResponse)
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

      api.add_operation(:list_sentiment_detection_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSentimentDetectionJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSentimentDetectionJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSentimentDetectionJobsResponse)
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

      api.add_operation(:start_dominant_language_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDominantLanguageDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDominantLanguageDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDominantLanguageDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_entities_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartEntitiesDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartEntitiesDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartEntitiesDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_key_phrases_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartKeyPhrasesDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartKeyPhrasesDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartKeyPhrasesDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_sentiment_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSentimentDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartSentimentDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSentimentDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:stop_dominant_language_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDominantLanguageDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopDominantLanguageDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopDominantLanguageDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_entities_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopEntitiesDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopEntitiesDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopEntitiesDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_key_phrases_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopKeyPhrasesDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopKeyPhrasesDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopKeyPhrasesDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_sentiment_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopSentimentDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopSentimentDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopSentimentDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
