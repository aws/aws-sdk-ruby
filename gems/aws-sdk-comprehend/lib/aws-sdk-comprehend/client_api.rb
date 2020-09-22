# frozen_string_literal: true

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
    AttributeNamesList = Shapes::ListShape.new(name: 'AttributeNamesList')
    AttributeNamesListItem = Shapes::StringShape.new(name: 'AttributeNamesListItem')
    AugmentedManifestsListItem = Shapes::StructureShape.new(name: 'AugmentedManifestsListItem')
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
    ClassifierEvaluationMetrics = Shapes::StructureShape.new(name: 'ClassifierEvaluationMetrics')
    ClassifierMetadata = Shapes::StructureShape.new(name: 'ClassifierMetadata')
    ClassifyDocumentRequest = Shapes::StructureShape.new(name: 'ClassifyDocumentRequest')
    ClassifyDocumentResponse = Shapes::StructureShape.new(name: 'ClassifyDocumentResponse')
    ClientRequestTokenString = Shapes::StringShape.new(name: 'ClientRequestTokenString')
    ComprehendArn = Shapes::StringShape.new(name: 'ComprehendArn')
    ComprehendArnName = Shapes::StringShape.new(name: 'ComprehendArnName')
    ComprehendEndpointArn = Shapes::StringShape.new(name: 'ComprehendEndpointArn')
    ComprehendEndpointName = Shapes::StringShape.new(name: 'ComprehendEndpointName')
    ComprehendModelArn = Shapes::StringShape.new(name: 'ComprehendModelArn')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    CreateDocumentClassifierRequest = Shapes::StructureShape.new(name: 'CreateDocumentClassifierRequest')
    CreateDocumentClassifierResponse = Shapes::StructureShape.new(name: 'CreateDocumentClassifierResponse')
    CreateEndpointRequest = Shapes::StructureShape.new(name: 'CreateEndpointRequest')
    CreateEndpointResponse = Shapes::StructureShape.new(name: 'CreateEndpointResponse')
    CreateEntityRecognizerRequest = Shapes::StructureShape.new(name: 'CreateEntityRecognizerRequest')
    CreateEntityRecognizerResponse = Shapes::StructureShape.new(name: 'CreateEntityRecognizerResponse')
    CustomerInputString = Shapes::StringShape.new(name: 'CustomerInputString')
    CustomerInputStringList = Shapes::ListShape.new(name: 'CustomerInputStringList')
    DeleteDocumentClassifierRequest = Shapes::StructureShape.new(name: 'DeleteDocumentClassifierRequest')
    DeleteDocumentClassifierResponse = Shapes::StructureShape.new(name: 'DeleteDocumentClassifierResponse')
    DeleteEndpointRequest = Shapes::StructureShape.new(name: 'DeleteEndpointRequest')
    DeleteEndpointResponse = Shapes::StructureShape.new(name: 'DeleteEndpointResponse')
    DeleteEntityRecognizerRequest = Shapes::StructureShape.new(name: 'DeleteEntityRecognizerRequest')
    DeleteEntityRecognizerResponse = Shapes::StructureShape.new(name: 'DeleteEntityRecognizerResponse')
    DescribeDocumentClassificationJobRequest = Shapes::StructureShape.new(name: 'DescribeDocumentClassificationJobRequest')
    DescribeDocumentClassificationJobResponse = Shapes::StructureShape.new(name: 'DescribeDocumentClassificationJobResponse')
    DescribeDocumentClassifierRequest = Shapes::StructureShape.new(name: 'DescribeDocumentClassifierRequest')
    DescribeDocumentClassifierResponse = Shapes::StructureShape.new(name: 'DescribeDocumentClassifierResponse')
    DescribeDominantLanguageDetectionJobRequest = Shapes::StructureShape.new(name: 'DescribeDominantLanguageDetectionJobRequest')
    DescribeDominantLanguageDetectionJobResponse = Shapes::StructureShape.new(name: 'DescribeDominantLanguageDetectionJobResponse')
    DescribeEndpointRequest = Shapes::StructureShape.new(name: 'DescribeEndpointRequest')
    DescribeEndpointResponse = Shapes::StructureShape.new(name: 'DescribeEndpointResponse')
    DescribeEntitiesDetectionJobRequest = Shapes::StructureShape.new(name: 'DescribeEntitiesDetectionJobRequest')
    DescribeEntitiesDetectionJobResponse = Shapes::StructureShape.new(name: 'DescribeEntitiesDetectionJobResponse')
    DescribeEntityRecognizerRequest = Shapes::StructureShape.new(name: 'DescribeEntityRecognizerRequest')
    DescribeEntityRecognizerResponse = Shapes::StructureShape.new(name: 'DescribeEntityRecognizerResponse')
    DescribeKeyPhrasesDetectionJobRequest = Shapes::StructureShape.new(name: 'DescribeKeyPhrasesDetectionJobRequest')
    DescribeKeyPhrasesDetectionJobResponse = Shapes::StructureShape.new(name: 'DescribeKeyPhrasesDetectionJobResponse')
    DescribePiiEntitiesDetectionJobRequest = Shapes::StructureShape.new(name: 'DescribePiiEntitiesDetectionJobRequest')
    DescribePiiEntitiesDetectionJobResponse = Shapes::StructureShape.new(name: 'DescribePiiEntitiesDetectionJobResponse')
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
    DetectPiiEntitiesRequest = Shapes::StructureShape.new(name: 'DetectPiiEntitiesRequest')
    DetectPiiEntitiesResponse = Shapes::StructureShape.new(name: 'DetectPiiEntitiesResponse')
    DetectSentimentRequest = Shapes::StructureShape.new(name: 'DetectSentimentRequest')
    DetectSentimentResponse = Shapes::StructureShape.new(name: 'DetectSentimentResponse')
    DetectSyntaxRequest = Shapes::StructureShape.new(name: 'DetectSyntaxRequest')
    DetectSyntaxResponse = Shapes::StructureShape.new(name: 'DetectSyntaxResponse')
    DocumentClass = Shapes::StructureShape.new(name: 'DocumentClass')
    DocumentClassificationJobFilter = Shapes::StructureShape.new(name: 'DocumentClassificationJobFilter')
    DocumentClassificationJobProperties = Shapes::StructureShape.new(name: 'DocumentClassificationJobProperties')
    DocumentClassificationJobPropertiesList = Shapes::ListShape.new(name: 'DocumentClassificationJobPropertiesList')
    DocumentClassifierArn = Shapes::StringShape.new(name: 'DocumentClassifierArn')
    DocumentClassifierAugmentedManifestsList = Shapes::ListShape.new(name: 'DocumentClassifierAugmentedManifestsList')
    DocumentClassifierDataFormat = Shapes::StringShape.new(name: 'DocumentClassifierDataFormat')
    DocumentClassifierEndpointArn = Shapes::StringShape.new(name: 'DocumentClassifierEndpointArn')
    DocumentClassifierFilter = Shapes::StructureShape.new(name: 'DocumentClassifierFilter')
    DocumentClassifierInputDataConfig = Shapes::StructureShape.new(name: 'DocumentClassifierInputDataConfig')
    DocumentClassifierMode = Shapes::StringShape.new(name: 'DocumentClassifierMode')
    DocumentClassifierOutputDataConfig = Shapes::StructureShape.new(name: 'DocumentClassifierOutputDataConfig')
    DocumentClassifierProperties = Shapes::StructureShape.new(name: 'DocumentClassifierProperties')
    DocumentClassifierPropertiesList = Shapes::ListShape.new(name: 'DocumentClassifierPropertiesList')
    DocumentLabel = Shapes::StructureShape.new(name: 'DocumentLabel')
    DominantLanguage = Shapes::StructureShape.new(name: 'DominantLanguage')
    DominantLanguageDetectionJobFilter = Shapes::StructureShape.new(name: 'DominantLanguageDetectionJobFilter')
    DominantLanguageDetectionJobProperties = Shapes::StructureShape.new(name: 'DominantLanguageDetectionJobProperties')
    DominantLanguageDetectionJobPropertiesList = Shapes::ListShape.new(name: 'DominantLanguageDetectionJobPropertiesList')
    Double = Shapes::FloatShape.new(name: 'Double')
    EndpointFilter = Shapes::StructureShape.new(name: 'EndpointFilter')
    EndpointProperties = Shapes::StructureShape.new(name: 'EndpointProperties')
    EndpointPropertiesList = Shapes::ListShape.new(name: 'EndpointPropertiesList')
    EndpointStatus = Shapes::StringShape.new(name: 'EndpointStatus')
    EntitiesDetectionJobFilter = Shapes::StructureShape.new(name: 'EntitiesDetectionJobFilter')
    EntitiesDetectionJobProperties = Shapes::StructureShape.new(name: 'EntitiesDetectionJobProperties')
    EntitiesDetectionJobPropertiesList = Shapes::ListShape.new(name: 'EntitiesDetectionJobPropertiesList')
    Entity = Shapes::StructureShape.new(name: 'Entity')
    EntityRecognizerAnnotations = Shapes::StructureShape.new(name: 'EntityRecognizerAnnotations')
    EntityRecognizerArn = Shapes::StringShape.new(name: 'EntityRecognizerArn')
    EntityRecognizerAugmentedManifestsList = Shapes::ListShape.new(name: 'EntityRecognizerAugmentedManifestsList')
    EntityRecognizerDataFormat = Shapes::StringShape.new(name: 'EntityRecognizerDataFormat')
    EntityRecognizerDocuments = Shapes::StructureShape.new(name: 'EntityRecognizerDocuments')
    EntityRecognizerEndpointArn = Shapes::StringShape.new(name: 'EntityRecognizerEndpointArn')
    EntityRecognizerEntityList = Shapes::StructureShape.new(name: 'EntityRecognizerEntityList')
    EntityRecognizerEvaluationMetrics = Shapes::StructureShape.new(name: 'EntityRecognizerEvaluationMetrics')
    EntityRecognizerFilter = Shapes::StructureShape.new(name: 'EntityRecognizerFilter')
    EntityRecognizerInputDataConfig = Shapes::StructureShape.new(name: 'EntityRecognizerInputDataConfig')
    EntityRecognizerMetadata = Shapes::StructureShape.new(name: 'EntityRecognizerMetadata')
    EntityRecognizerMetadataEntityTypesList = Shapes::ListShape.new(name: 'EntityRecognizerMetadataEntityTypesList')
    EntityRecognizerMetadataEntityTypesListItem = Shapes::StructureShape.new(name: 'EntityRecognizerMetadataEntityTypesListItem')
    EntityRecognizerProperties = Shapes::StructureShape.new(name: 'EntityRecognizerProperties')
    EntityRecognizerPropertiesList = Shapes::ListShape.new(name: 'EntityRecognizerPropertiesList')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    EntityTypeName = Shapes::StringShape.new(name: 'EntityTypeName')
    EntityTypesEvaluationMetrics = Shapes::StructureShape.new(name: 'EntityTypesEvaluationMetrics')
    EntityTypesList = Shapes::ListShape.new(name: 'EntityTypesList')
    EntityTypesListItem = Shapes::StructureShape.new(name: 'EntityTypesListItem')
    Float = Shapes::FloatShape.new(name: 'Float')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    InferenceUnitsInteger = Shapes::IntegerShape.new(name: 'InferenceUnitsInteger')
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
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    KmsKeyValidationException = Shapes::StructureShape.new(name: 'KmsKeyValidationException')
    LabelDelimiter = Shapes::StringShape.new(name: 'LabelDelimiter')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    ListDocumentClassificationJobsRequest = Shapes::StructureShape.new(name: 'ListDocumentClassificationJobsRequest')
    ListDocumentClassificationJobsResponse = Shapes::StructureShape.new(name: 'ListDocumentClassificationJobsResponse')
    ListDocumentClassifiersRequest = Shapes::StructureShape.new(name: 'ListDocumentClassifiersRequest')
    ListDocumentClassifiersResponse = Shapes::StructureShape.new(name: 'ListDocumentClassifiersResponse')
    ListDominantLanguageDetectionJobsRequest = Shapes::StructureShape.new(name: 'ListDominantLanguageDetectionJobsRequest')
    ListDominantLanguageDetectionJobsResponse = Shapes::StructureShape.new(name: 'ListDominantLanguageDetectionJobsResponse')
    ListEndpointsRequest = Shapes::StructureShape.new(name: 'ListEndpointsRequest')
    ListEndpointsResponse = Shapes::StructureShape.new(name: 'ListEndpointsResponse')
    ListEntitiesDetectionJobsRequest = Shapes::StructureShape.new(name: 'ListEntitiesDetectionJobsRequest')
    ListEntitiesDetectionJobsResponse = Shapes::StructureShape.new(name: 'ListEntitiesDetectionJobsResponse')
    ListEntityRecognizersRequest = Shapes::StructureShape.new(name: 'ListEntityRecognizersRequest')
    ListEntityRecognizersResponse = Shapes::StructureShape.new(name: 'ListEntityRecognizersResponse')
    ListKeyPhrasesDetectionJobsRequest = Shapes::StructureShape.new(name: 'ListKeyPhrasesDetectionJobsRequest')
    ListKeyPhrasesDetectionJobsResponse = Shapes::StructureShape.new(name: 'ListKeyPhrasesDetectionJobsResponse')
    ListOfClasses = Shapes::ListShape.new(name: 'ListOfClasses')
    ListOfDetectDominantLanguageResult = Shapes::ListShape.new(name: 'ListOfDetectDominantLanguageResult')
    ListOfDetectEntitiesResult = Shapes::ListShape.new(name: 'ListOfDetectEntitiesResult')
    ListOfDetectKeyPhrasesResult = Shapes::ListShape.new(name: 'ListOfDetectKeyPhrasesResult')
    ListOfDetectSentimentResult = Shapes::ListShape.new(name: 'ListOfDetectSentimentResult')
    ListOfDetectSyntaxResult = Shapes::ListShape.new(name: 'ListOfDetectSyntaxResult')
    ListOfDominantLanguages = Shapes::ListShape.new(name: 'ListOfDominantLanguages')
    ListOfEntities = Shapes::ListShape.new(name: 'ListOfEntities')
    ListOfKeyPhrases = Shapes::ListShape.new(name: 'ListOfKeyPhrases')
    ListOfLabels = Shapes::ListShape.new(name: 'ListOfLabels')
    ListOfPiiEntities = Shapes::ListShape.new(name: 'ListOfPiiEntities')
    ListOfPiiEntityTypes = Shapes::ListShape.new(name: 'ListOfPiiEntityTypes')
    ListOfSyntaxTokens = Shapes::ListShape.new(name: 'ListOfSyntaxTokens')
    ListPiiEntitiesDetectionJobsRequest = Shapes::StructureShape.new(name: 'ListPiiEntitiesDetectionJobsRequest')
    ListPiiEntitiesDetectionJobsResponse = Shapes::StructureShape.new(name: 'ListPiiEntitiesDetectionJobsResponse')
    ListSentimentDetectionJobsRequest = Shapes::StructureShape.new(name: 'ListSentimentDetectionJobsRequest')
    ListSentimentDetectionJobsResponse = Shapes::StructureShape.new(name: 'ListSentimentDetectionJobsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTopicsDetectionJobsRequest = Shapes::StructureShape.new(name: 'ListTopicsDetectionJobsRequest')
    ListTopicsDetectionJobsResponse = Shapes::StructureShape.new(name: 'ListTopicsDetectionJobsResponse')
    MaskCharacter = Shapes::StringShape.new(name: 'MaskCharacter')
    MaxResultsInteger = Shapes::IntegerShape.new(name: 'MaxResultsInteger')
    ModelStatus = Shapes::StringShape.new(name: 'ModelStatus')
    NumberOfTopicsInteger = Shapes::IntegerShape.new(name: 'NumberOfTopicsInteger')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    PartOfSpeechTag = Shapes::StructureShape.new(name: 'PartOfSpeechTag')
    PartOfSpeechTagType = Shapes::StringShape.new(name: 'PartOfSpeechTagType')
    PiiEntitiesDetectionJobFilter = Shapes::StructureShape.new(name: 'PiiEntitiesDetectionJobFilter')
    PiiEntitiesDetectionJobProperties = Shapes::StructureShape.new(name: 'PiiEntitiesDetectionJobProperties')
    PiiEntitiesDetectionJobPropertiesList = Shapes::ListShape.new(name: 'PiiEntitiesDetectionJobPropertiesList')
    PiiEntitiesDetectionMaskMode = Shapes::StringShape.new(name: 'PiiEntitiesDetectionMaskMode')
    PiiEntitiesDetectionMode = Shapes::StringShape.new(name: 'PiiEntitiesDetectionMode')
    PiiEntity = Shapes::StructureShape.new(name: 'PiiEntity')
    PiiEntityType = Shapes::StringShape.new(name: 'PiiEntityType')
    PiiOutputDataConfig = Shapes::StructureShape.new(name: 'PiiOutputDataConfig')
    RedactionConfig = Shapes::StructureShape.new(name: 'RedactionConfig')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceUnavailableException = Shapes::StructureShape.new(name: 'ResourceUnavailableException')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SentimentDetectionJobFilter = Shapes::StructureShape.new(name: 'SentimentDetectionJobFilter')
    SentimentDetectionJobProperties = Shapes::StructureShape.new(name: 'SentimentDetectionJobProperties')
    SentimentDetectionJobPropertiesList = Shapes::ListShape.new(name: 'SentimentDetectionJobPropertiesList')
    SentimentScore = Shapes::StructureShape.new(name: 'SentimentScore')
    SentimentType = Shapes::StringShape.new(name: 'SentimentType')
    StartDocumentClassificationJobRequest = Shapes::StructureShape.new(name: 'StartDocumentClassificationJobRequest')
    StartDocumentClassificationJobResponse = Shapes::StructureShape.new(name: 'StartDocumentClassificationJobResponse')
    StartDominantLanguageDetectionJobRequest = Shapes::StructureShape.new(name: 'StartDominantLanguageDetectionJobRequest')
    StartDominantLanguageDetectionJobResponse = Shapes::StructureShape.new(name: 'StartDominantLanguageDetectionJobResponse')
    StartEntitiesDetectionJobRequest = Shapes::StructureShape.new(name: 'StartEntitiesDetectionJobRequest')
    StartEntitiesDetectionJobResponse = Shapes::StructureShape.new(name: 'StartEntitiesDetectionJobResponse')
    StartKeyPhrasesDetectionJobRequest = Shapes::StructureShape.new(name: 'StartKeyPhrasesDetectionJobRequest')
    StartKeyPhrasesDetectionJobResponse = Shapes::StructureShape.new(name: 'StartKeyPhrasesDetectionJobResponse')
    StartPiiEntitiesDetectionJobRequest = Shapes::StructureShape.new(name: 'StartPiiEntitiesDetectionJobRequest')
    StartPiiEntitiesDetectionJobResponse = Shapes::StructureShape.new(name: 'StartPiiEntitiesDetectionJobResponse')
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
    StopPiiEntitiesDetectionJobRequest = Shapes::StructureShape.new(name: 'StopPiiEntitiesDetectionJobRequest')
    StopPiiEntitiesDetectionJobResponse = Shapes::StructureShape.new(name: 'StopPiiEntitiesDetectionJobResponse')
    StopSentimentDetectionJobRequest = Shapes::StructureShape.new(name: 'StopSentimentDetectionJobRequest')
    StopSentimentDetectionJobResponse = Shapes::StructureShape.new(name: 'StopSentimentDetectionJobResponse')
    StopTrainingDocumentClassifierRequest = Shapes::StructureShape.new(name: 'StopTrainingDocumentClassifierRequest')
    StopTrainingDocumentClassifierResponse = Shapes::StructureShape.new(name: 'StopTrainingDocumentClassifierResponse')
    StopTrainingEntityRecognizerRequest = Shapes::StructureShape.new(name: 'StopTrainingEntityRecognizerRequest')
    StopTrainingEntityRecognizerResponse = Shapes::StructureShape.new(name: 'StopTrainingEntityRecognizerResponse')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    Subnets = Shapes::ListShape.new(name: 'Subnets')
    SyntaxLanguageCode = Shapes::StringShape.new(name: 'SyntaxLanguageCode')
    SyntaxToken = Shapes::StructureShape.new(name: 'SyntaxToken')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TextSizeLimitExceededException = Shapes::StructureShape.new(name: 'TextSizeLimitExceededException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TooManyTagKeysException = Shapes::StructureShape.new(name: 'TooManyTagKeysException')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TopicsDetectionJobFilter = Shapes::StructureShape.new(name: 'TopicsDetectionJobFilter')
    TopicsDetectionJobProperties = Shapes::StructureShape.new(name: 'TopicsDetectionJobProperties')
    TopicsDetectionJobPropertiesList = Shapes::ListShape.new(name: 'TopicsDetectionJobPropertiesList')
    UnsupportedLanguageException = Shapes::StructureShape.new(name: 'UnsupportedLanguageException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateEndpointRequest = Shapes::StructureShape.new(name: 'UpdateEndpointRequest')
    UpdateEndpointResponse = Shapes::StructureShape.new(name: 'UpdateEndpointResponse')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')

    AttributeNamesList.member = Shapes::ShapeRef.new(shape: AttributeNamesListItem)

    AugmentedManifestsListItem.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    AugmentedManifestsListItem.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNamesList, required: true, location_name: "AttributeNames"))
    AugmentedManifestsListItem.struct_class = Types::AugmentedManifestsListItem

    BatchDetectDominantLanguageItemResult.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "Index"))
    BatchDetectDominantLanguageItemResult.add_member(:languages, Shapes::ShapeRef.new(shape: ListOfDominantLanguages, location_name: "Languages"))
    BatchDetectDominantLanguageItemResult.struct_class = Types::BatchDetectDominantLanguageItemResult

    BatchDetectDominantLanguageRequest.add_member(:text_list, Shapes::ShapeRef.new(shape: CustomerInputStringList, required: true, location_name: "TextList"))
    BatchDetectDominantLanguageRequest.struct_class = Types::BatchDetectDominantLanguageRequest

    BatchDetectDominantLanguageResponse.add_member(:result_list, Shapes::ShapeRef.new(shape: ListOfDetectDominantLanguageResult, required: true, location_name: "ResultList"))
    BatchDetectDominantLanguageResponse.add_member(:error_list, Shapes::ShapeRef.new(shape: BatchItemErrorList, required: true, location_name: "ErrorList"))
    BatchDetectDominantLanguageResponse.struct_class = Types::BatchDetectDominantLanguageResponse

    BatchDetectEntitiesItemResult.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "Index"))
    BatchDetectEntitiesItemResult.add_member(:entities, Shapes::ShapeRef.new(shape: ListOfEntities, location_name: "Entities"))
    BatchDetectEntitiesItemResult.struct_class = Types::BatchDetectEntitiesItemResult

    BatchDetectEntitiesRequest.add_member(:text_list, Shapes::ShapeRef.new(shape: CustomerInputStringList, required: true, location_name: "TextList"))
    BatchDetectEntitiesRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    BatchDetectEntitiesRequest.struct_class = Types::BatchDetectEntitiesRequest

    BatchDetectEntitiesResponse.add_member(:result_list, Shapes::ShapeRef.new(shape: ListOfDetectEntitiesResult, required: true, location_name: "ResultList"))
    BatchDetectEntitiesResponse.add_member(:error_list, Shapes::ShapeRef.new(shape: BatchItemErrorList, required: true, location_name: "ErrorList"))
    BatchDetectEntitiesResponse.struct_class = Types::BatchDetectEntitiesResponse

    BatchDetectKeyPhrasesItemResult.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "Index"))
    BatchDetectKeyPhrasesItemResult.add_member(:key_phrases, Shapes::ShapeRef.new(shape: ListOfKeyPhrases, location_name: "KeyPhrases"))
    BatchDetectKeyPhrasesItemResult.struct_class = Types::BatchDetectKeyPhrasesItemResult

    BatchDetectKeyPhrasesRequest.add_member(:text_list, Shapes::ShapeRef.new(shape: CustomerInputStringList, required: true, location_name: "TextList"))
    BatchDetectKeyPhrasesRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    BatchDetectKeyPhrasesRequest.struct_class = Types::BatchDetectKeyPhrasesRequest

    BatchDetectKeyPhrasesResponse.add_member(:result_list, Shapes::ShapeRef.new(shape: ListOfDetectKeyPhrasesResult, required: true, location_name: "ResultList"))
    BatchDetectKeyPhrasesResponse.add_member(:error_list, Shapes::ShapeRef.new(shape: BatchItemErrorList, required: true, location_name: "ErrorList"))
    BatchDetectKeyPhrasesResponse.struct_class = Types::BatchDetectKeyPhrasesResponse

    BatchDetectSentimentItemResult.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "Index"))
    BatchDetectSentimentItemResult.add_member(:sentiment, Shapes::ShapeRef.new(shape: SentimentType, location_name: "Sentiment"))
    BatchDetectSentimentItemResult.add_member(:sentiment_score, Shapes::ShapeRef.new(shape: SentimentScore, location_name: "SentimentScore"))
    BatchDetectSentimentItemResult.struct_class = Types::BatchDetectSentimentItemResult

    BatchDetectSentimentRequest.add_member(:text_list, Shapes::ShapeRef.new(shape: CustomerInputStringList, required: true, location_name: "TextList"))
    BatchDetectSentimentRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    BatchDetectSentimentRequest.struct_class = Types::BatchDetectSentimentRequest

    BatchDetectSentimentResponse.add_member(:result_list, Shapes::ShapeRef.new(shape: ListOfDetectSentimentResult, required: true, location_name: "ResultList"))
    BatchDetectSentimentResponse.add_member(:error_list, Shapes::ShapeRef.new(shape: BatchItemErrorList, required: true, location_name: "ErrorList"))
    BatchDetectSentimentResponse.struct_class = Types::BatchDetectSentimentResponse

    BatchDetectSyntaxItemResult.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "Index"))
    BatchDetectSyntaxItemResult.add_member(:syntax_tokens, Shapes::ShapeRef.new(shape: ListOfSyntaxTokens, location_name: "SyntaxTokens"))
    BatchDetectSyntaxItemResult.struct_class = Types::BatchDetectSyntaxItemResult

    BatchDetectSyntaxRequest.add_member(:text_list, Shapes::ShapeRef.new(shape: CustomerInputStringList, required: true, location_name: "TextList"))
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

    BatchSizeLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BatchSizeLimitExceededException.struct_class = Types::BatchSizeLimitExceededException

    ClassifierEvaluationMetrics.add_member(:accuracy, Shapes::ShapeRef.new(shape: Double, location_name: "Accuracy"))
    ClassifierEvaluationMetrics.add_member(:precision, Shapes::ShapeRef.new(shape: Double, location_name: "Precision"))
    ClassifierEvaluationMetrics.add_member(:recall, Shapes::ShapeRef.new(shape: Double, location_name: "Recall"))
    ClassifierEvaluationMetrics.add_member(:f1_score, Shapes::ShapeRef.new(shape: Double, location_name: "F1Score"))
    ClassifierEvaluationMetrics.add_member(:micro_precision, Shapes::ShapeRef.new(shape: Double, location_name: "MicroPrecision"))
    ClassifierEvaluationMetrics.add_member(:micro_recall, Shapes::ShapeRef.new(shape: Double, location_name: "MicroRecall"))
    ClassifierEvaluationMetrics.add_member(:micro_f1_score, Shapes::ShapeRef.new(shape: Double, location_name: "MicroF1Score"))
    ClassifierEvaluationMetrics.add_member(:hamming_loss, Shapes::ShapeRef.new(shape: Double, location_name: "HammingLoss"))
    ClassifierEvaluationMetrics.struct_class = Types::ClassifierEvaluationMetrics

    ClassifierMetadata.add_member(:number_of_labels, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfLabels"))
    ClassifierMetadata.add_member(:number_of_trained_documents, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfTrainedDocuments"))
    ClassifierMetadata.add_member(:number_of_test_documents, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfTestDocuments"))
    ClassifierMetadata.add_member(:evaluation_metrics, Shapes::ShapeRef.new(shape: ClassifierEvaluationMetrics, location_name: "EvaluationMetrics"))
    ClassifierMetadata.struct_class = Types::ClassifierMetadata

    ClassifyDocumentRequest.add_member(:text, Shapes::ShapeRef.new(shape: CustomerInputString, required: true, location_name: "Text"))
    ClassifyDocumentRequest.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: DocumentClassifierEndpointArn, required: true, location_name: "EndpointArn"))
    ClassifyDocumentRequest.struct_class = Types::ClassifyDocumentRequest

    ClassifyDocumentResponse.add_member(:classes, Shapes::ShapeRef.new(shape: ListOfClasses, location_name: "Classes"))
    ClassifyDocumentResponse.add_member(:labels, Shapes::ShapeRef.new(shape: ListOfLabels, location_name: "Labels"))
    ClassifyDocumentResponse.struct_class = Types::ClassifyDocumentResponse

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    CreateDocumentClassifierRequest.add_member(:document_classifier_name, Shapes::ShapeRef.new(shape: ComprehendArnName, required: true, location_name: "DocumentClassifierName"))
    CreateDocumentClassifierRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    CreateDocumentClassifierRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDocumentClassifierRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: DocumentClassifierInputDataConfig, required: true, location_name: "InputDataConfig"))
    CreateDocumentClassifierRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: DocumentClassifierOutputDataConfig, location_name: "OutputDataConfig"))
    CreateDocumentClassifierRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateDocumentClassifierRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    CreateDocumentClassifierRequest.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    CreateDocumentClassifierRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateDocumentClassifierRequest.add_member(:mode, Shapes::ShapeRef.new(shape: DocumentClassifierMode, location_name: "Mode"))
    CreateDocumentClassifierRequest.struct_class = Types::CreateDocumentClassifierRequest

    CreateDocumentClassifierResponse.add_member(:document_classifier_arn, Shapes::ShapeRef.new(shape: DocumentClassifierArn, location_name: "DocumentClassifierArn"))
    CreateDocumentClassifierResponse.struct_class = Types::CreateDocumentClassifierResponse

    CreateEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: ComprehendEndpointName, required: true, location_name: "EndpointName"))
    CreateEndpointRequest.add_member(:model_arn, Shapes::ShapeRef.new(shape: ComprehendModelArn, required: true, location_name: "ModelArn"))
    CreateEndpointRequest.add_member(:desired_inference_units, Shapes::ShapeRef.new(shape: InferenceUnitsInteger, required: true, location_name: "DesiredInferenceUnits"))
    CreateEndpointRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEndpointRequest.struct_class = Types::CreateEndpointRequest

    CreateEndpointResponse.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: ComprehendEndpointArn, location_name: "EndpointArn"))
    CreateEndpointResponse.struct_class = Types::CreateEndpointResponse

    CreateEntityRecognizerRequest.add_member(:recognizer_name, Shapes::ShapeRef.new(shape: ComprehendArnName, required: true, location_name: "RecognizerName"))
    CreateEntityRecognizerRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    CreateEntityRecognizerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEntityRecognizerRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: EntityRecognizerInputDataConfig, required: true, location_name: "InputDataConfig"))
    CreateEntityRecognizerRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateEntityRecognizerRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    CreateEntityRecognizerRequest.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    CreateEntityRecognizerRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateEntityRecognizerRequest.struct_class = Types::CreateEntityRecognizerRequest

    CreateEntityRecognizerResponse.add_member(:entity_recognizer_arn, Shapes::ShapeRef.new(shape: EntityRecognizerArn, location_name: "EntityRecognizerArn"))
    CreateEntityRecognizerResponse.struct_class = Types::CreateEntityRecognizerResponse

    CustomerInputStringList.member = Shapes::ShapeRef.new(shape: CustomerInputString)

    DeleteDocumentClassifierRequest.add_member(:document_classifier_arn, Shapes::ShapeRef.new(shape: DocumentClassifierArn, required: true, location_name: "DocumentClassifierArn"))
    DeleteDocumentClassifierRequest.struct_class = Types::DeleteDocumentClassifierRequest

    DeleteDocumentClassifierResponse.struct_class = Types::DeleteDocumentClassifierResponse

    DeleteEndpointRequest.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: ComprehendEndpointArn, required: true, location_name: "EndpointArn"))
    DeleteEndpointRequest.struct_class = Types::DeleteEndpointRequest

    DeleteEndpointResponse.struct_class = Types::DeleteEndpointResponse

    DeleteEntityRecognizerRequest.add_member(:entity_recognizer_arn, Shapes::ShapeRef.new(shape: EntityRecognizerArn, required: true, location_name: "EntityRecognizerArn"))
    DeleteEntityRecognizerRequest.struct_class = Types::DeleteEntityRecognizerRequest

    DeleteEntityRecognizerResponse.struct_class = Types::DeleteEntityRecognizerResponse

    DescribeDocumentClassificationJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeDocumentClassificationJobRequest.struct_class = Types::DescribeDocumentClassificationJobRequest

    DescribeDocumentClassificationJobResponse.add_member(:document_classification_job_properties, Shapes::ShapeRef.new(shape: DocumentClassificationJobProperties, location_name: "DocumentClassificationJobProperties"))
    DescribeDocumentClassificationJobResponse.struct_class = Types::DescribeDocumentClassificationJobResponse

    DescribeDocumentClassifierRequest.add_member(:document_classifier_arn, Shapes::ShapeRef.new(shape: DocumentClassifierArn, required: true, location_name: "DocumentClassifierArn"))
    DescribeDocumentClassifierRequest.struct_class = Types::DescribeDocumentClassifierRequest

    DescribeDocumentClassifierResponse.add_member(:document_classifier_properties, Shapes::ShapeRef.new(shape: DocumentClassifierProperties, location_name: "DocumentClassifierProperties"))
    DescribeDocumentClassifierResponse.struct_class = Types::DescribeDocumentClassifierResponse

    DescribeDominantLanguageDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeDominantLanguageDetectionJobRequest.struct_class = Types::DescribeDominantLanguageDetectionJobRequest

    DescribeDominantLanguageDetectionJobResponse.add_member(:dominant_language_detection_job_properties, Shapes::ShapeRef.new(shape: DominantLanguageDetectionJobProperties, location_name: "DominantLanguageDetectionJobProperties"))
    DescribeDominantLanguageDetectionJobResponse.struct_class = Types::DescribeDominantLanguageDetectionJobResponse

    DescribeEndpointRequest.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: ComprehendEndpointArn, required: true, location_name: "EndpointArn"))
    DescribeEndpointRequest.struct_class = Types::DescribeEndpointRequest

    DescribeEndpointResponse.add_member(:endpoint_properties, Shapes::ShapeRef.new(shape: EndpointProperties, location_name: "EndpointProperties"))
    DescribeEndpointResponse.struct_class = Types::DescribeEndpointResponse

    DescribeEntitiesDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeEntitiesDetectionJobRequest.struct_class = Types::DescribeEntitiesDetectionJobRequest

    DescribeEntitiesDetectionJobResponse.add_member(:entities_detection_job_properties, Shapes::ShapeRef.new(shape: EntitiesDetectionJobProperties, location_name: "EntitiesDetectionJobProperties"))
    DescribeEntitiesDetectionJobResponse.struct_class = Types::DescribeEntitiesDetectionJobResponse

    DescribeEntityRecognizerRequest.add_member(:entity_recognizer_arn, Shapes::ShapeRef.new(shape: EntityRecognizerArn, required: true, location_name: "EntityRecognizerArn"))
    DescribeEntityRecognizerRequest.struct_class = Types::DescribeEntityRecognizerRequest

    DescribeEntityRecognizerResponse.add_member(:entity_recognizer_properties, Shapes::ShapeRef.new(shape: EntityRecognizerProperties, location_name: "EntityRecognizerProperties"))
    DescribeEntityRecognizerResponse.struct_class = Types::DescribeEntityRecognizerResponse

    DescribeKeyPhrasesDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeKeyPhrasesDetectionJobRequest.struct_class = Types::DescribeKeyPhrasesDetectionJobRequest

    DescribeKeyPhrasesDetectionJobResponse.add_member(:key_phrases_detection_job_properties, Shapes::ShapeRef.new(shape: KeyPhrasesDetectionJobProperties, location_name: "KeyPhrasesDetectionJobProperties"))
    DescribeKeyPhrasesDetectionJobResponse.struct_class = Types::DescribeKeyPhrasesDetectionJobResponse

    DescribePiiEntitiesDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribePiiEntitiesDetectionJobRequest.struct_class = Types::DescribePiiEntitiesDetectionJobRequest

    DescribePiiEntitiesDetectionJobResponse.add_member(:pii_entities_detection_job_properties, Shapes::ShapeRef.new(shape: PiiEntitiesDetectionJobProperties, location_name: "PiiEntitiesDetectionJobProperties"))
    DescribePiiEntitiesDetectionJobResponse.struct_class = Types::DescribePiiEntitiesDetectionJobResponse

    DescribeSentimentDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeSentimentDetectionJobRequest.struct_class = Types::DescribeSentimentDetectionJobRequest

    DescribeSentimentDetectionJobResponse.add_member(:sentiment_detection_job_properties, Shapes::ShapeRef.new(shape: SentimentDetectionJobProperties, location_name: "SentimentDetectionJobProperties"))
    DescribeSentimentDetectionJobResponse.struct_class = Types::DescribeSentimentDetectionJobResponse

    DescribeTopicsDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeTopicsDetectionJobRequest.struct_class = Types::DescribeTopicsDetectionJobRequest

    DescribeTopicsDetectionJobResponse.add_member(:topics_detection_job_properties, Shapes::ShapeRef.new(shape: TopicsDetectionJobProperties, location_name: "TopicsDetectionJobProperties"))
    DescribeTopicsDetectionJobResponse.struct_class = Types::DescribeTopicsDetectionJobResponse

    DetectDominantLanguageRequest.add_member(:text, Shapes::ShapeRef.new(shape: CustomerInputString, required: true, location_name: "Text"))
    DetectDominantLanguageRequest.struct_class = Types::DetectDominantLanguageRequest

    DetectDominantLanguageResponse.add_member(:languages, Shapes::ShapeRef.new(shape: ListOfDominantLanguages, location_name: "Languages"))
    DetectDominantLanguageResponse.struct_class = Types::DetectDominantLanguageResponse

    DetectEntitiesRequest.add_member(:text, Shapes::ShapeRef.new(shape: CustomerInputString, required: true, location_name: "Text"))
    DetectEntitiesRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    DetectEntitiesRequest.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EntityRecognizerEndpointArn, location_name: "EndpointArn"))
    DetectEntitiesRequest.struct_class = Types::DetectEntitiesRequest

    DetectEntitiesResponse.add_member(:entities, Shapes::ShapeRef.new(shape: ListOfEntities, location_name: "Entities"))
    DetectEntitiesResponse.struct_class = Types::DetectEntitiesResponse

    DetectKeyPhrasesRequest.add_member(:text, Shapes::ShapeRef.new(shape: CustomerInputString, required: true, location_name: "Text"))
    DetectKeyPhrasesRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    DetectKeyPhrasesRequest.struct_class = Types::DetectKeyPhrasesRequest

    DetectKeyPhrasesResponse.add_member(:key_phrases, Shapes::ShapeRef.new(shape: ListOfKeyPhrases, location_name: "KeyPhrases"))
    DetectKeyPhrasesResponse.struct_class = Types::DetectKeyPhrasesResponse

    DetectPiiEntitiesRequest.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Text"))
    DetectPiiEntitiesRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    DetectPiiEntitiesRequest.struct_class = Types::DetectPiiEntitiesRequest

    DetectPiiEntitiesResponse.add_member(:entities, Shapes::ShapeRef.new(shape: ListOfPiiEntities, location_name: "Entities"))
    DetectPiiEntitiesResponse.struct_class = Types::DetectPiiEntitiesResponse

    DetectSentimentRequest.add_member(:text, Shapes::ShapeRef.new(shape: CustomerInputString, required: true, location_name: "Text"))
    DetectSentimentRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    DetectSentimentRequest.struct_class = Types::DetectSentimentRequest

    DetectSentimentResponse.add_member(:sentiment, Shapes::ShapeRef.new(shape: SentimentType, location_name: "Sentiment"))
    DetectSentimentResponse.add_member(:sentiment_score, Shapes::ShapeRef.new(shape: SentimentScore, location_name: "SentimentScore"))
    DetectSentimentResponse.struct_class = Types::DetectSentimentResponse

    DetectSyntaxRequest.add_member(:text, Shapes::ShapeRef.new(shape: CustomerInputString, required: true, location_name: "Text"))
    DetectSyntaxRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: SyntaxLanguageCode, required: true, location_name: "LanguageCode"))
    DetectSyntaxRequest.struct_class = Types::DetectSyntaxRequest

    DetectSyntaxResponse.add_member(:syntax_tokens, Shapes::ShapeRef.new(shape: ListOfSyntaxTokens, location_name: "SyntaxTokens"))
    DetectSyntaxResponse.struct_class = Types::DetectSyntaxResponse

    DocumentClass.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    DocumentClass.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    DocumentClass.struct_class = Types::DocumentClass

    DocumentClassificationJobFilter.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    DocumentClassificationJobFilter.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    DocumentClassificationJobFilter.add_member(:submit_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeBefore"))
    DocumentClassificationJobFilter.add_member(:submit_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeAfter"))
    DocumentClassificationJobFilter.struct_class = Types::DocumentClassificationJobFilter

    DocumentClassificationJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    DocumentClassificationJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    DocumentClassificationJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    DocumentClassificationJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: AnyLengthString, location_name: "Message"))
    DocumentClassificationJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTime"))
    DocumentClassificationJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    DocumentClassificationJobProperties.add_member(:document_classifier_arn, Shapes::ShapeRef.new(shape: DocumentClassifierArn, location_name: "DocumentClassifierArn"))
    DocumentClassificationJobProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    DocumentClassificationJobProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    DocumentClassificationJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    DocumentClassificationJobProperties.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    DocumentClassificationJobProperties.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    DocumentClassificationJobProperties.struct_class = Types::DocumentClassificationJobProperties

    DocumentClassificationJobPropertiesList.member = Shapes::ShapeRef.new(shape: DocumentClassificationJobProperties)

    DocumentClassifierAugmentedManifestsList.member = Shapes::ShapeRef.new(shape: AugmentedManifestsListItem)

    DocumentClassifierFilter.add_member(:status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "Status"))
    DocumentClassifierFilter.add_member(:submit_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeBefore"))
    DocumentClassifierFilter.add_member(:submit_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeAfter"))
    DocumentClassifierFilter.struct_class = Types::DocumentClassifierFilter

    DocumentClassifierInputDataConfig.add_member(:data_format, Shapes::ShapeRef.new(shape: DocumentClassifierDataFormat, location_name: "DataFormat"))
    DocumentClassifierInputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri"))
    DocumentClassifierInputDataConfig.add_member(:label_delimiter, Shapes::ShapeRef.new(shape: LabelDelimiter, location_name: "LabelDelimiter"))
    DocumentClassifierInputDataConfig.add_member(:augmented_manifests, Shapes::ShapeRef.new(shape: DocumentClassifierAugmentedManifestsList, location_name: "AugmentedManifests"))
    DocumentClassifierInputDataConfig.struct_class = Types::DocumentClassifierInputDataConfig

    DocumentClassifierOutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri"))
    DocumentClassifierOutputDataConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    DocumentClassifierOutputDataConfig.struct_class = Types::DocumentClassifierOutputDataConfig

    DocumentClassifierProperties.add_member(:document_classifier_arn, Shapes::ShapeRef.new(shape: DocumentClassifierArn, location_name: "DocumentClassifierArn"))
    DocumentClassifierProperties.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    DocumentClassifierProperties.add_member(:status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "Status"))
    DocumentClassifierProperties.add_member(:message, Shapes::ShapeRef.new(shape: AnyLengthString, location_name: "Message"))
    DocumentClassifierProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTime"))
    DocumentClassifierProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    DocumentClassifierProperties.add_member(:training_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingStartTime"))
    DocumentClassifierProperties.add_member(:training_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingEndTime"))
    DocumentClassifierProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: DocumentClassifierInputDataConfig, location_name: "InputDataConfig"))
    DocumentClassifierProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: DocumentClassifierOutputDataConfig, location_name: "OutputDataConfig"))
    DocumentClassifierProperties.add_member(:classifier_metadata, Shapes::ShapeRef.new(shape: ClassifierMetadata, location_name: "ClassifierMetadata"))
    DocumentClassifierProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    DocumentClassifierProperties.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    DocumentClassifierProperties.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    DocumentClassifierProperties.add_member(:mode, Shapes::ShapeRef.new(shape: DocumentClassifierMode, location_name: "Mode"))
    DocumentClassifierProperties.struct_class = Types::DocumentClassifierProperties

    DocumentClassifierPropertiesList.member = Shapes::ShapeRef.new(shape: DocumentClassifierProperties)

    DocumentLabel.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    DocumentLabel.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    DocumentLabel.struct_class = Types::DocumentLabel

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
    DominantLanguageDetectionJobProperties.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    DominantLanguageDetectionJobProperties.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    DominantLanguageDetectionJobProperties.struct_class = Types::DominantLanguageDetectionJobProperties

    DominantLanguageDetectionJobPropertiesList.member = Shapes::ShapeRef.new(shape: DominantLanguageDetectionJobProperties)

    EndpointFilter.add_member(:model_arn, Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: "ModelArn"))
    EndpointFilter.add_member(:status, Shapes::ShapeRef.new(shape: EndpointStatus, location_name: "Status"))
    EndpointFilter.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    EndpointFilter.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    EndpointFilter.struct_class = Types::EndpointFilter

    EndpointProperties.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: ComprehendEndpointArn, location_name: "EndpointArn"))
    EndpointProperties.add_member(:status, Shapes::ShapeRef.new(shape: EndpointStatus, location_name: "Status"))
    EndpointProperties.add_member(:message, Shapes::ShapeRef.new(shape: AnyLengthString, location_name: "Message"))
    EndpointProperties.add_member(:model_arn, Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: "ModelArn"))
    EndpointProperties.add_member(:desired_inference_units, Shapes::ShapeRef.new(shape: InferenceUnitsInteger, location_name: "DesiredInferenceUnits"))
    EndpointProperties.add_member(:current_inference_units, Shapes::ShapeRef.new(shape: InferenceUnitsInteger, location_name: "CurrentInferenceUnits"))
    EndpointProperties.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    EndpointProperties.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    EndpointProperties.struct_class = Types::EndpointProperties

    EndpointPropertiesList.member = Shapes::ShapeRef.new(shape: EndpointProperties)

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
    EntitiesDetectionJobProperties.add_member(:entity_recognizer_arn, Shapes::ShapeRef.new(shape: EntityRecognizerArn, location_name: "EntityRecognizerArn"))
    EntitiesDetectionJobProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    EntitiesDetectionJobProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    EntitiesDetectionJobProperties.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    EntitiesDetectionJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    EntitiesDetectionJobProperties.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    EntitiesDetectionJobProperties.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    EntitiesDetectionJobProperties.struct_class = Types::EntitiesDetectionJobProperties

    EntitiesDetectionJobPropertiesList.member = Shapes::ShapeRef.new(shape: EntitiesDetectionJobProperties)

    Entity.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    Entity.add_member(:type, Shapes::ShapeRef.new(shape: EntityType, location_name: "Type"))
    Entity.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    Entity.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    Entity.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    Entity.struct_class = Types::Entity

    EntityRecognizerAnnotations.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    EntityRecognizerAnnotations.struct_class = Types::EntityRecognizerAnnotations

    EntityRecognizerAugmentedManifestsList.member = Shapes::ShapeRef.new(shape: AugmentedManifestsListItem)

    EntityRecognizerDocuments.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    EntityRecognizerDocuments.struct_class = Types::EntityRecognizerDocuments

    EntityRecognizerEntityList.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    EntityRecognizerEntityList.struct_class = Types::EntityRecognizerEntityList

    EntityRecognizerEvaluationMetrics.add_member(:precision, Shapes::ShapeRef.new(shape: Double, location_name: "Precision"))
    EntityRecognizerEvaluationMetrics.add_member(:recall, Shapes::ShapeRef.new(shape: Double, location_name: "Recall"))
    EntityRecognizerEvaluationMetrics.add_member(:f1_score, Shapes::ShapeRef.new(shape: Double, location_name: "F1Score"))
    EntityRecognizerEvaluationMetrics.struct_class = Types::EntityRecognizerEvaluationMetrics

    EntityRecognizerFilter.add_member(:status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "Status"))
    EntityRecognizerFilter.add_member(:submit_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeBefore"))
    EntityRecognizerFilter.add_member(:submit_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeAfter"))
    EntityRecognizerFilter.struct_class = Types::EntityRecognizerFilter

    EntityRecognizerInputDataConfig.add_member(:data_format, Shapes::ShapeRef.new(shape: EntityRecognizerDataFormat, location_name: "DataFormat"))
    EntityRecognizerInputDataConfig.add_member(:entity_types, Shapes::ShapeRef.new(shape: EntityTypesList, required: true, location_name: "EntityTypes"))
    EntityRecognizerInputDataConfig.add_member(:documents, Shapes::ShapeRef.new(shape: EntityRecognizerDocuments, location_name: "Documents"))
    EntityRecognizerInputDataConfig.add_member(:annotations, Shapes::ShapeRef.new(shape: EntityRecognizerAnnotations, location_name: "Annotations"))
    EntityRecognizerInputDataConfig.add_member(:entity_list, Shapes::ShapeRef.new(shape: EntityRecognizerEntityList, location_name: "EntityList"))
    EntityRecognizerInputDataConfig.add_member(:augmented_manifests, Shapes::ShapeRef.new(shape: EntityRecognizerAugmentedManifestsList, location_name: "AugmentedManifests"))
    EntityRecognizerInputDataConfig.struct_class = Types::EntityRecognizerInputDataConfig

    EntityRecognizerMetadata.add_member(:number_of_trained_documents, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfTrainedDocuments"))
    EntityRecognizerMetadata.add_member(:number_of_test_documents, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfTestDocuments"))
    EntityRecognizerMetadata.add_member(:evaluation_metrics, Shapes::ShapeRef.new(shape: EntityRecognizerEvaluationMetrics, location_name: "EvaluationMetrics"))
    EntityRecognizerMetadata.add_member(:entity_types, Shapes::ShapeRef.new(shape: EntityRecognizerMetadataEntityTypesList, location_name: "EntityTypes"))
    EntityRecognizerMetadata.struct_class = Types::EntityRecognizerMetadata

    EntityRecognizerMetadataEntityTypesList.member = Shapes::ShapeRef.new(shape: EntityRecognizerMetadataEntityTypesListItem)

    EntityRecognizerMetadataEntityTypesListItem.add_member(:type, Shapes::ShapeRef.new(shape: AnyLengthString, location_name: "Type"))
    EntityRecognizerMetadataEntityTypesListItem.add_member(:evaluation_metrics, Shapes::ShapeRef.new(shape: EntityTypesEvaluationMetrics, location_name: "EvaluationMetrics"))
    EntityRecognizerMetadataEntityTypesListItem.add_member(:number_of_train_mentions, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfTrainMentions"))
    EntityRecognizerMetadataEntityTypesListItem.struct_class = Types::EntityRecognizerMetadataEntityTypesListItem

    EntityRecognizerProperties.add_member(:entity_recognizer_arn, Shapes::ShapeRef.new(shape: EntityRecognizerArn, location_name: "EntityRecognizerArn"))
    EntityRecognizerProperties.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    EntityRecognizerProperties.add_member(:status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "Status"))
    EntityRecognizerProperties.add_member(:message, Shapes::ShapeRef.new(shape: AnyLengthString, location_name: "Message"))
    EntityRecognizerProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTime"))
    EntityRecognizerProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    EntityRecognizerProperties.add_member(:training_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingStartTime"))
    EntityRecognizerProperties.add_member(:training_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingEndTime"))
    EntityRecognizerProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: EntityRecognizerInputDataConfig, location_name: "InputDataConfig"))
    EntityRecognizerProperties.add_member(:recognizer_metadata, Shapes::ShapeRef.new(shape: EntityRecognizerMetadata, location_name: "RecognizerMetadata"))
    EntityRecognizerProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    EntityRecognizerProperties.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    EntityRecognizerProperties.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    EntityRecognizerProperties.struct_class = Types::EntityRecognizerProperties

    EntityRecognizerPropertiesList.member = Shapes::ShapeRef.new(shape: EntityRecognizerProperties)

    EntityTypesEvaluationMetrics.add_member(:precision, Shapes::ShapeRef.new(shape: Double, location_name: "Precision"))
    EntityTypesEvaluationMetrics.add_member(:recall, Shapes::ShapeRef.new(shape: Double, location_name: "Recall"))
    EntityTypesEvaluationMetrics.add_member(:f1_score, Shapes::ShapeRef.new(shape: Double, location_name: "F1Score"))
    EntityTypesEvaluationMetrics.struct_class = Types::EntityTypesEvaluationMetrics

    EntityTypesList.member = Shapes::ShapeRef.new(shape: EntityTypesListItem)

    EntityTypesListItem.add_member(:type, Shapes::ShapeRef.new(shape: EntityTypeName, required: true, location_name: "Type"))
    EntityTypesListItem.struct_class = Types::EntityTypesListItem

    InputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    InputDataConfig.add_member(:input_format, Shapes::ShapeRef.new(shape: InputFormat, location_name: "InputFormat"))
    InputDataConfig.struct_class = Types::InputDataConfig

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidFilterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidFilterException.struct_class = Types::InvalidFilterException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    JobNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    JobNotFoundException.struct_class = Types::JobNotFoundException

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
    KeyPhrasesDetectionJobProperties.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    KeyPhrasesDetectionJobProperties.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    KeyPhrasesDetectionJobProperties.struct_class = Types::KeyPhrasesDetectionJobProperties

    KeyPhrasesDetectionJobPropertiesList.member = Shapes::ShapeRef.new(shape: KeyPhrasesDetectionJobProperties)

    KmsKeyValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    KmsKeyValidationException.struct_class = Types::KmsKeyValidationException

    ListDocumentClassificationJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: DocumentClassificationJobFilter, location_name: "Filter"))
    ListDocumentClassificationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDocumentClassificationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListDocumentClassificationJobsRequest.struct_class = Types::ListDocumentClassificationJobsRequest

    ListDocumentClassificationJobsResponse.add_member(:document_classification_job_properties_list, Shapes::ShapeRef.new(shape: DocumentClassificationJobPropertiesList, location_name: "DocumentClassificationJobPropertiesList"))
    ListDocumentClassificationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDocumentClassificationJobsResponse.struct_class = Types::ListDocumentClassificationJobsResponse

    ListDocumentClassifiersRequest.add_member(:filter, Shapes::ShapeRef.new(shape: DocumentClassifierFilter, location_name: "Filter"))
    ListDocumentClassifiersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDocumentClassifiersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListDocumentClassifiersRequest.struct_class = Types::ListDocumentClassifiersRequest

    ListDocumentClassifiersResponse.add_member(:document_classifier_properties_list, Shapes::ShapeRef.new(shape: DocumentClassifierPropertiesList, location_name: "DocumentClassifierPropertiesList"))
    ListDocumentClassifiersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDocumentClassifiersResponse.struct_class = Types::ListDocumentClassifiersResponse

    ListDominantLanguageDetectionJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: DominantLanguageDetectionJobFilter, location_name: "Filter"))
    ListDominantLanguageDetectionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDominantLanguageDetectionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListDominantLanguageDetectionJobsRequest.struct_class = Types::ListDominantLanguageDetectionJobsRequest

    ListDominantLanguageDetectionJobsResponse.add_member(:dominant_language_detection_job_properties_list, Shapes::ShapeRef.new(shape: DominantLanguageDetectionJobPropertiesList, location_name: "DominantLanguageDetectionJobPropertiesList"))
    ListDominantLanguageDetectionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDominantLanguageDetectionJobsResponse.struct_class = Types::ListDominantLanguageDetectionJobsResponse

    ListEndpointsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: EndpointFilter, location_name: "Filter"))
    ListEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListEndpointsRequest.struct_class = Types::ListEndpointsRequest

    ListEndpointsResponse.add_member(:endpoint_properties_list, Shapes::ShapeRef.new(shape: EndpointPropertiesList, location_name: "EndpointPropertiesList"))
    ListEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEndpointsResponse.struct_class = Types::ListEndpointsResponse

    ListEntitiesDetectionJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: EntitiesDetectionJobFilter, location_name: "Filter"))
    ListEntitiesDetectionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEntitiesDetectionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListEntitiesDetectionJobsRequest.struct_class = Types::ListEntitiesDetectionJobsRequest

    ListEntitiesDetectionJobsResponse.add_member(:entities_detection_job_properties_list, Shapes::ShapeRef.new(shape: EntitiesDetectionJobPropertiesList, location_name: "EntitiesDetectionJobPropertiesList"))
    ListEntitiesDetectionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEntitiesDetectionJobsResponse.struct_class = Types::ListEntitiesDetectionJobsResponse

    ListEntityRecognizersRequest.add_member(:filter, Shapes::ShapeRef.new(shape: EntityRecognizerFilter, location_name: "Filter"))
    ListEntityRecognizersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEntityRecognizersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListEntityRecognizersRequest.struct_class = Types::ListEntityRecognizersRequest

    ListEntityRecognizersResponse.add_member(:entity_recognizer_properties_list, Shapes::ShapeRef.new(shape: EntityRecognizerPropertiesList, location_name: "EntityRecognizerPropertiesList"))
    ListEntityRecognizersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEntityRecognizersResponse.struct_class = Types::ListEntityRecognizersResponse

    ListKeyPhrasesDetectionJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: KeyPhrasesDetectionJobFilter, location_name: "Filter"))
    ListKeyPhrasesDetectionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListKeyPhrasesDetectionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListKeyPhrasesDetectionJobsRequest.struct_class = Types::ListKeyPhrasesDetectionJobsRequest

    ListKeyPhrasesDetectionJobsResponse.add_member(:key_phrases_detection_job_properties_list, Shapes::ShapeRef.new(shape: KeyPhrasesDetectionJobPropertiesList, location_name: "KeyPhrasesDetectionJobPropertiesList"))
    ListKeyPhrasesDetectionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListKeyPhrasesDetectionJobsResponse.struct_class = Types::ListKeyPhrasesDetectionJobsResponse

    ListOfClasses.member = Shapes::ShapeRef.new(shape: DocumentClass)

    ListOfDetectDominantLanguageResult.member = Shapes::ShapeRef.new(shape: BatchDetectDominantLanguageItemResult)

    ListOfDetectEntitiesResult.member = Shapes::ShapeRef.new(shape: BatchDetectEntitiesItemResult)

    ListOfDetectKeyPhrasesResult.member = Shapes::ShapeRef.new(shape: BatchDetectKeyPhrasesItemResult)

    ListOfDetectSentimentResult.member = Shapes::ShapeRef.new(shape: BatchDetectSentimentItemResult)

    ListOfDetectSyntaxResult.member = Shapes::ShapeRef.new(shape: BatchDetectSyntaxItemResult)

    ListOfDominantLanguages.member = Shapes::ShapeRef.new(shape: DominantLanguage)

    ListOfEntities.member = Shapes::ShapeRef.new(shape: Entity)

    ListOfKeyPhrases.member = Shapes::ShapeRef.new(shape: KeyPhrase)

    ListOfLabels.member = Shapes::ShapeRef.new(shape: DocumentLabel)

    ListOfPiiEntities.member = Shapes::ShapeRef.new(shape: PiiEntity)

    ListOfPiiEntityTypes.member = Shapes::ShapeRef.new(shape: PiiEntityType)

    ListOfSyntaxTokens.member = Shapes::ShapeRef.new(shape: SyntaxToken)

    ListPiiEntitiesDetectionJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: PiiEntitiesDetectionJobFilter, location_name: "Filter"))
    ListPiiEntitiesDetectionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPiiEntitiesDetectionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListPiiEntitiesDetectionJobsRequest.struct_class = Types::ListPiiEntitiesDetectionJobsRequest

    ListPiiEntitiesDetectionJobsResponse.add_member(:pii_entities_detection_job_properties_list, Shapes::ShapeRef.new(shape: PiiEntitiesDetectionJobPropertiesList, location_name: "PiiEntitiesDetectionJobPropertiesList"))
    ListPiiEntitiesDetectionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPiiEntitiesDetectionJobsResponse.struct_class = Types::ListPiiEntitiesDetectionJobsResponse

    ListSentimentDetectionJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: SentimentDetectionJobFilter, location_name: "Filter"))
    ListSentimentDetectionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSentimentDetectionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListSentimentDetectionJobsRequest.struct_class = Types::ListSentimentDetectionJobsRequest

    ListSentimentDetectionJobsResponse.add_member(:sentiment_detection_job_properties_list, Shapes::ShapeRef.new(shape: SentimentDetectionJobPropertiesList, location_name: "SentimentDetectionJobPropertiesList"))
    ListSentimentDetectionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSentimentDetectionJobsResponse.struct_class = Types::ListSentimentDetectionJobsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ComprehendArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ComprehendArn, location_name: "ResourceArn"))
    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTopicsDetectionJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: TopicsDetectionJobFilter, location_name: "Filter"))
    ListTopicsDetectionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTopicsDetectionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListTopicsDetectionJobsRequest.struct_class = Types::ListTopicsDetectionJobsRequest

    ListTopicsDetectionJobsResponse.add_member(:topics_detection_job_properties_list, Shapes::ShapeRef.new(shape: TopicsDetectionJobPropertiesList, location_name: "TopicsDetectionJobPropertiesList"))
    ListTopicsDetectionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTopicsDetectionJobsResponse.struct_class = Types::ListTopicsDetectionJobsResponse

    OutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    OutputDataConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    PartOfSpeechTag.add_member(:tag, Shapes::ShapeRef.new(shape: PartOfSpeechTagType, location_name: "Tag"))
    PartOfSpeechTag.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    PartOfSpeechTag.struct_class = Types::PartOfSpeechTag

    PiiEntitiesDetectionJobFilter.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    PiiEntitiesDetectionJobFilter.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    PiiEntitiesDetectionJobFilter.add_member(:submit_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeBefore"))
    PiiEntitiesDetectionJobFilter.add_member(:submit_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTimeAfter"))
    PiiEntitiesDetectionJobFilter.struct_class = Types::PiiEntitiesDetectionJobFilter

    PiiEntitiesDetectionJobProperties.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    PiiEntitiesDetectionJobProperties.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    PiiEntitiesDetectionJobProperties.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    PiiEntitiesDetectionJobProperties.add_member(:message, Shapes::ShapeRef.new(shape: AnyLengthString, location_name: "Message"))
    PiiEntitiesDetectionJobProperties.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTime"))
    PiiEntitiesDetectionJobProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    PiiEntitiesDetectionJobProperties.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    PiiEntitiesDetectionJobProperties.add_member(:output_data_config, Shapes::ShapeRef.new(shape: PiiOutputDataConfig, location_name: "OutputDataConfig"))
    PiiEntitiesDetectionJobProperties.add_member(:redaction_config, Shapes::ShapeRef.new(shape: RedactionConfig, location_name: "RedactionConfig"))
    PiiEntitiesDetectionJobProperties.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    PiiEntitiesDetectionJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    PiiEntitiesDetectionJobProperties.add_member(:mode, Shapes::ShapeRef.new(shape: PiiEntitiesDetectionMode, location_name: "Mode"))
    PiiEntitiesDetectionJobProperties.struct_class = Types::PiiEntitiesDetectionJobProperties

    PiiEntitiesDetectionJobPropertiesList.member = Shapes::ShapeRef.new(shape: PiiEntitiesDetectionJobProperties)

    PiiEntity.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    PiiEntity.add_member(:type, Shapes::ShapeRef.new(shape: PiiEntityType, location_name: "Type"))
    PiiEntity.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    PiiEntity.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    PiiEntity.struct_class = Types::PiiEntity

    PiiOutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    PiiOutputDataConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    PiiOutputDataConfig.struct_class = Types::PiiOutputDataConfig

    RedactionConfig.add_member(:pii_entity_types, Shapes::ShapeRef.new(shape: ListOfPiiEntityTypes, location_name: "PiiEntityTypes"))
    RedactionConfig.add_member(:mask_mode, Shapes::ShapeRef.new(shape: PiiEntitiesDetectionMaskMode, location_name: "MaskMode"))
    RedactionConfig.add_member(:mask_character, Shapes::ShapeRef.new(shape: MaskCharacter, location_name: "MaskCharacter"))
    RedactionConfig.struct_class = Types::RedactionConfig

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceUnavailableException.struct_class = Types::ResourceUnavailableException

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

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
    SentimentDetectionJobProperties.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    SentimentDetectionJobProperties.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    SentimentDetectionJobProperties.struct_class = Types::SentimentDetectionJobProperties

    SentimentDetectionJobPropertiesList.member = Shapes::ShapeRef.new(shape: SentimentDetectionJobProperties)

    SentimentScore.add_member(:positive, Shapes::ShapeRef.new(shape: Float, location_name: "Positive"))
    SentimentScore.add_member(:negative, Shapes::ShapeRef.new(shape: Float, location_name: "Negative"))
    SentimentScore.add_member(:neutral, Shapes::ShapeRef.new(shape: Float, location_name: "Neutral"))
    SentimentScore.add_member(:mixed, Shapes::ShapeRef.new(shape: Float, location_name: "Mixed"))
    SentimentScore.struct_class = Types::SentimentScore

    StartDocumentClassificationJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartDocumentClassificationJobRequest.add_member(:document_classifier_arn, Shapes::ShapeRef.new(shape: DocumentClassifierArn, required: true, location_name: "DocumentClassifierArn"))
    StartDocumentClassificationJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartDocumentClassificationJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartDocumentClassificationJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartDocumentClassificationJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartDocumentClassificationJobRequest.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    StartDocumentClassificationJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    StartDocumentClassificationJobRequest.struct_class = Types::StartDocumentClassificationJobRequest

    StartDocumentClassificationJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartDocumentClassificationJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StartDocumentClassificationJobResponse.struct_class = Types::StartDocumentClassificationJobResponse

    StartDominantLanguageDetectionJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartDominantLanguageDetectionJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartDominantLanguageDetectionJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartDominantLanguageDetectionJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartDominantLanguageDetectionJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartDominantLanguageDetectionJobRequest.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    StartDominantLanguageDetectionJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    StartDominantLanguageDetectionJobRequest.struct_class = Types::StartDominantLanguageDetectionJobRequest

    StartDominantLanguageDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartDominantLanguageDetectionJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StartDominantLanguageDetectionJobResponse.struct_class = Types::StartDominantLanguageDetectionJobResponse

    StartEntitiesDetectionJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartEntitiesDetectionJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartEntitiesDetectionJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartEntitiesDetectionJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartEntitiesDetectionJobRequest.add_member(:entity_recognizer_arn, Shapes::ShapeRef.new(shape: EntityRecognizerArn, location_name: "EntityRecognizerArn"))
    StartEntitiesDetectionJobRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    StartEntitiesDetectionJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartEntitiesDetectionJobRequest.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    StartEntitiesDetectionJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
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
    StartKeyPhrasesDetectionJobRequest.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    StartKeyPhrasesDetectionJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    StartKeyPhrasesDetectionJobRequest.struct_class = Types::StartKeyPhrasesDetectionJobRequest

    StartKeyPhrasesDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartKeyPhrasesDetectionJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StartKeyPhrasesDetectionJobResponse.struct_class = Types::StartKeyPhrasesDetectionJobResponse

    StartPiiEntitiesDetectionJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartPiiEntitiesDetectionJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartPiiEntitiesDetectionJobRequest.add_member(:mode, Shapes::ShapeRef.new(shape: PiiEntitiesDetectionMode, required: true, location_name: "Mode"))
    StartPiiEntitiesDetectionJobRequest.add_member(:redaction_config, Shapes::ShapeRef.new(shape: RedactionConfig, location_name: "RedactionConfig"))
    StartPiiEntitiesDetectionJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartPiiEntitiesDetectionJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartPiiEntitiesDetectionJobRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    StartPiiEntitiesDetectionJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartPiiEntitiesDetectionJobRequest.struct_class = Types::StartPiiEntitiesDetectionJobRequest

    StartPiiEntitiesDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartPiiEntitiesDetectionJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StartPiiEntitiesDetectionJobResponse.struct_class = Types::StartPiiEntitiesDetectionJobResponse

    StartSentimentDetectionJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartSentimentDetectionJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartSentimentDetectionJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartSentimentDetectionJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartSentimentDetectionJobRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    StartSentimentDetectionJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartSentimentDetectionJobRequest.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    StartSentimentDetectionJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
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
    StartTopicsDetectionJobRequest.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    StartTopicsDetectionJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
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

    StopPiiEntitiesDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StopPiiEntitiesDetectionJobRequest.struct_class = Types::StopPiiEntitiesDetectionJobRequest

    StopPiiEntitiesDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StopPiiEntitiesDetectionJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StopPiiEntitiesDetectionJobResponse.struct_class = Types::StopPiiEntitiesDetectionJobResponse

    StopSentimentDetectionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StopSentimentDetectionJobRequest.struct_class = Types::StopSentimentDetectionJobRequest

    StopSentimentDetectionJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StopSentimentDetectionJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    StopSentimentDetectionJobResponse.struct_class = Types::StopSentimentDetectionJobResponse

    StopTrainingDocumentClassifierRequest.add_member(:document_classifier_arn, Shapes::ShapeRef.new(shape: DocumentClassifierArn, required: true, location_name: "DocumentClassifierArn"))
    StopTrainingDocumentClassifierRequest.struct_class = Types::StopTrainingDocumentClassifierRequest

    StopTrainingDocumentClassifierResponse.struct_class = Types::StopTrainingDocumentClassifierResponse

    StopTrainingEntityRecognizerRequest.add_member(:entity_recognizer_arn, Shapes::ShapeRef.new(shape: EntityRecognizerArn, required: true, location_name: "EntityRecognizerArn"))
    StopTrainingEntityRecognizerRequest.struct_class = Types::StopTrainingEntityRecognizerRequest

    StopTrainingEntityRecognizerResponse.struct_class = Types::StopTrainingEntityRecognizerResponse

    Subnets.member = Shapes::ShapeRef.new(shape: SubnetId)

    SyntaxToken.add_member(:token_id, Shapes::ShapeRef.new(shape: Integer, location_name: "TokenId"))
    SyntaxToken.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    SyntaxToken.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    SyntaxToken.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    SyntaxToken.add_member(:part_of_speech, Shapes::ShapeRef.new(shape: PartOfSpeechTag, location_name: "PartOfSpeech"))
    SyntaxToken.struct_class = Types::SyntaxToken

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ComprehendArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TextSizeLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TextSizeLimitExceededException.struct_class = Types::TextSizeLimitExceededException

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    TooManyTagKeysException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyTagKeysException.struct_class = Types::TooManyTagKeysException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

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
    TopicsDetectionJobProperties.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    TopicsDetectionJobProperties.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    TopicsDetectionJobProperties.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    TopicsDetectionJobProperties.struct_class = Types::TopicsDetectionJobProperties

    TopicsDetectionJobPropertiesList.member = Shapes::ShapeRef.new(shape: TopicsDetectionJobProperties)

    UnsupportedLanguageException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedLanguageException.struct_class = Types::UnsupportedLanguageException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ComprehendArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateEndpointRequest.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: ComprehendEndpointArn, required: true, location_name: "EndpointArn"))
    UpdateEndpointRequest.add_member(:desired_inference_units, Shapes::ShapeRef.new(shape: InferenceUnitsInteger, required: true, location_name: "DesiredInferenceUnits"))
    UpdateEndpointRequest.struct_class = Types::UpdateEndpointRequest

    UpdateEndpointResponse.struct_class = Types::UpdateEndpointResponse

    VpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, required: true, location_name: "SecurityGroupIds"))
    VpcConfig.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "Subnets"))
    VpcConfig.struct_class = Types::VpcConfig


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

      api.add_operation(:classify_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ClassifyDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ClassifyDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: ClassifyDocumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_document_classifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDocumentClassifier"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDocumentClassifierRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDocumentClassifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_entity_recognizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEntityRecognizer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEntityRecognizerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEntityRecognizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_document_classifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDocumentClassifier"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDocumentClassifierRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDocumentClassifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_entity_recognizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEntityRecognizer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEntityRecognizerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEntityRecognizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_document_classification_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDocumentClassificationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDocumentClassificationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDocumentClassificationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: JobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_document_classifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDocumentClassifier"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDocumentClassifierRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDocumentClassifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:describe_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:describe_entity_recognizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEntityRecognizer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEntityRecognizerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEntityRecognizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:describe_pii_entities_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePiiEntitiesDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePiiEntitiesDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePiiEntitiesDetectionJobResponse)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
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

      api.add_operation(:detect_pii_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectPiiEntities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectPiiEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectPiiEntitiesResponse)
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

      api.add_operation(:list_document_classification_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDocumentClassificationJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDocumentClassificationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDocumentClassificationJobsResponse)
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

      api.add_operation(:list_document_classifiers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDocumentClassifiers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDocumentClassifiersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDocumentClassifiersResponse)
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

      api.add_operation(:list_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:list_entity_recognizers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEntityRecognizers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEntityRecognizersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEntityRecognizersResponse)
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

      api.add_operation(:list_pii_entities_detection_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPiiEntitiesDetectionJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPiiEntitiesDetectionJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPiiEntitiesDetectionJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:start_document_classification_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDocumentClassificationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDocumentClassificationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDocumentClassificationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_dominant_language_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDominantLanguageDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDominantLanguageDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDominantLanguageDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_pii_entities_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPiiEntitiesDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartPiiEntitiesDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartPiiEntitiesDetectionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyValidationException)
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

      api.add_operation(:stop_pii_entities_detection_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopPiiEntitiesDetectionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopPiiEntitiesDetectionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopPiiEntitiesDetectionJobResponse)
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

      api.add_operation(:stop_training_document_classifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTrainingDocumentClassifier"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopTrainingDocumentClassifierRequest)
        o.output = Shapes::ShapeRef.new(shape: StopTrainingDocumentClassifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_training_entity_recognizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTrainingEntityRecognizer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopTrainingEntityRecognizerRequest)
        o.output = Shapes::ShapeRef.new(shape: StopTrainingEntityRecognizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
