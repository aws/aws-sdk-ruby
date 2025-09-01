# frozen_string_literal: true

# This is generated code!

module Aws::Comprehend
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AnyLengthString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#AnyLengthString', name: 'AnyLengthString')
    AttributeNamesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#AttributeNamesList', name: 'AttributeNamesList')
    AttributeNamesListItem = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#AttributeNamesListItem', name: 'AttributeNamesListItem', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    AugmentedManifestsDocumentTypeFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#AugmentedManifestsDocumentTypeFormat', name: 'AugmentedManifestsDocumentTypeFormat')
    AugmentedManifestsListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#AugmentedManifestsListItem', name: 'AugmentedManifestsListItem')
    BatchDetectDominantLanguageItemResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectDominantLanguageItemResult', name: 'BatchDetectDominantLanguageItemResult')
    BatchDetectDominantLanguageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectDominantLanguageRequest', name: 'BatchDetectDominantLanguageRequest')
    BatchDetectDominantLanguageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectDominantLanguageResponse', name: 'BatchDetectDominantLanguageResponse', traits: {"smithy.api#sensitive" => {}})
    BatchDetectEntitiesItemResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectEntitiesItemResult', name: 'BatchDetectEntitiesItemResult')
    BatchDetectEntitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectEntitiesRequest', name: 'BatchDetectEntitiesRequest')
    BatchDetectEntitiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectEntitiesResponse', name: 'BatchDetectEntitiesResponse', traits: {"smithy.api#sensitive" => {}})
    BatchDetectKeyPhrasesItemResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectKeyPhrasesItemResult', name: 'BatchDetectKeyPhrasesItemResult')
    BatchDetectKeyPhrasesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectKeyPhrasesRequest', name: 'BatchDetectKeyPhrasesRequest')
    BatchDetectKeyPhrasesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectKeyPhrasesResponse', name: 'BatchDetectKeyPhrasesResponse', traits: {"smithy.api#sensitive" => {}})
    BatchDetectSentimentItemResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectSentimentItemResult', name: 'BatchDetectSentimentItemResult')
    BatchDetectSentimentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectSentimentRequest', name: 'BatchDetectSentimentRequest')
    BatchDetectSentimentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectSentimentResponse', name: 'BatchDetectSentimentResponse', traits: {"smithy.api#sensitive" => {}})
    BatchDetectSyntaxItemResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectSyntaxItemResult', name: 'BatchDetectSyntaxItemResult')
    BatchDetectSyntaxRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectSyntaxRequest', name: 'BatchDetectSyntaxRequest')
    BatchDetectSyntaxResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectSyntaxResponse', name: 'BatchDetectSyntaxResponse', traits: {"smithy.api#sensitive" => {}})
    BatchDetectTargetedSentimentItemResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectTargetedSentimentItemResult', name: 'BatchDetectTargetedSentimentItemResult')
    BatchDetectTargetedSentimentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectTargetedSentimentRequest', name: 'BatchDetectTargetedSentimentRequest')
    BatchDetectTargetedSentimentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchDetectTargetedSentimentResponse', name: 'BatchDetectTargetedSentimentResponse', traits: {"smithy.api#sensitive" => {}})
    BatchItemError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchItemError', name: 'BatchItemError')
    BatchItemErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#BatchItemErrorList', name: 'BatchItemErrorList')
    BatchSizeLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BatchSizeLimitExceededException', name: 'BatchSizeLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Block = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#Block', name: 'Block')
    BlockReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BlockReference', name: 'BlockReference')
    BlockType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#BlockType', name: 'BlockType')
    BoundingBox = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#BoundingBox', name: 'BoundingBox')
    ChildBlock = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ChildBlock', name: 'ChildBlock')
    ClassifierEvaluationMetrics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ClassifierEvaluationMetrics', name: 'ClassifierEvaluationMetrics')
    ClassifierMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ClassifierMetadata', name: 'ClassifierMetadata', traits: {"smithy.api#sensitive" => {}})
    ClassifyDocumentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ClassifyDocumentRequest', name: 'ClassifyDocumentRequest')
    ClassifyDocumentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ClassifyDocumentResponse', name: 'ClassifyDocumentResponse', traits: {"smithy.api#sensitive" => {}})
    ClientRequestTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#ClientRequestTokenString', name: 'ClientRequestTokenString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ComprehendArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#ComprehendArn', name: 'ComprehendArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:[a-zA-Z0-9-]{1,64}/[a-zA-Z0-9](-*[a-zA-Z0-9])*((/dataset/[a-zA-Z0-9](-*[a-zA-Z0-9])*)|(/version/[a-zA-Z0-9](-*[a-zA-Z0-9])*))?$"})
    ComprehendArnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#ComprehendArnName', name: 'ComprehendArnName', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ComprehendDatasetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#ComprehendDatasetArn', name: 'ComprehendDatasetArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:flywheel/[a-zA-Z0-9](-*[a-zA-Z0-9])*/dataset/[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ComprehendEndpointArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#ComprehendEndpointArn', name: 'ComprehendEndpointArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:(document-classifier-endpoint|entity-recognizer-endpoint)/[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ComprehendEndpointName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#ComprehendEndpointName', name: 'ComprehendEndpointName', traits: {"smithy.api#length" => {"min" => 0, "max" => 40}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ComprehendFlywheelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#ComprehendFlywheelArn', name: 'ComprehendFlywheelArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:flywheel/[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ComprehendModelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#ComprehendModelArn', name: 'ComprehendModelArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:(document-classifier|entity-recognizer)/[a-zA-Z0-9](-*[a-zA-Z0-9])*(/version/[a-zA-Z0-9](-*[a-zA-Z0-9])*)?$"})
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ContainsPiiEntitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ContainsPiiEntitiesRequest', name: 'ContainsPiiEntitiesRequest')
    ContainsPiiEntitiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ContainsPiiEntitiesResponse', name: 'ContainsPiiEntitiesResponse')
    CreateDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#CreateDatasetRequest', name: 'CreateDatasetRequest')
    CreateDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#CreateDatasetResponse', name: 'CreateDatasetResponse')
    CreateDocumentClassifierRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#CreateDocumentClassifierRequest', name: 'CreateDocumentClassifierRequest')
    CreateDocumentClassifierResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#CreateDocumentClassifierResponse', name: 'CreateDocumentClassifierResponse')
    CreateEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#CreateEndpointRequest', name: 'CreateEndpointRequest')
    CreateEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#CreateEndpointResponse', name: 'CreateEndpointResponse')
    CreateEntityRecognizerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#CreateEntityRecognizerRequest', name: 'CreateEntityRecognizerRequest')
    CreateEntityRecognizerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#CreateEntityRecognizerResponse', name: 'CreateEntityRecognizerResponse')
    CreateFlywheelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#CreateFlywheelRequest', name: 'CreateFlywheelRequest')
    CreateFlywheelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#CreateFlywheelResponse', name: 'CreateFlywheelResponse')
    CustomerInputString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#CustomerInputString', name: 'CustomerInputString', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    CustomerInputStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#CustomerInputStringList', name: 'CustomerInputStringList', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    DataSecurityConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DataSecurityConfig', name: 'DataSecurityConfig')
    DatasetAugmentedManifestsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#DatasetAugmentedManifestsList', name: 'DatasetAugmentedManifestsList')
    DatasetAugmentedManifestsListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DatasetAugmentedManifestsListItem', name: 'DatasetAugmentedManifestsListItem')
    DatasetDataFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#DatasetDataFormat', name: 'DatasetDataFormat')
    DatasetDocumentClassifierInputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DatasetDocumentClassifierInputDataConfig', name: 'DatasetDocumentClassifierInputDataConfig')
    DatasetEntityRecognizerAnnotations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DatasetEntityRecognizerAnnotations', name: 'DatasetEntityRecognizerAnnotations')
    DatasetEntityRecognizerDocuments = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DatasetEntityRecognizerDocuments', name: 'DatasetEntityRecognizerDocuments')
    DatasetEntityRecognizerEntityList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DatasetEntityRecognizerEntityList', name: 'DatasetEntityRecognizerEntityList')
    DatasetEntityRecognizerInputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DatasetEntityRecognizerInputDataConfig', name: 'DatasetEntityRecognizerInputDataConfig')
    DatasetFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DatasetFilter', name: 'DatasetFilter')
    DatasetInputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DatasetInputDataConfig', name: 'DatasetInputDataConfig')
    DatasetProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DatasetProperties', name: 'DatasetProperties')
    DatasetPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#DatasetPropertiesList', name: 'DatasetPropertiesList')
    DatasetStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#DatasetStatus', name: 'DatasetStatus')
    DatasetType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#DatasetType', name: 'DatasetType')
    DeleteDocumentClassifierRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DeleteDocumentClassifierRequest', name: 'DeleteDocumentClassifierRequest')
    DeleteDocumentClassifierResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DeleteDocumentClassifierResponse', name: 'DeleteDocumentClassifierResponse')
    DeleteEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DeleteEndpointRequest', name: 'DeleteEndpointRequest')
    DeleteEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DeleteEndpointResponse', name: 'DeleteEndpointResponse')
    DeleteEntityRecognizerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DeleteEntityRecognizerRequest', name: 'DeleteEntityRecognizerRequest')
    DeleteEntityRecognizerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DeleteEntityRecognizerResponse', name: 'DeleteEntityRecognizerResponse')
    DeleteFlywheelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DeleteFlywheelRequest', name: 'DeleteFlywheelRequest')
    DeleteFlywheelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DeleteFlywheelResponse', name: 'DeleteFlywheelResponse')
    DeleteResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DeleteResourcePolicyRequest', name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DeleteResourcePolicyResponse', name: 'DeleteResourcePolicyResponse')
    DescribeDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeDatasetRequest', name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeDatasetResponse', name: 'DescribeDatasetResponse')
    DescribeDocumentClassificationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeDocumentClassificationJobRequest', name: 'DescribeDocumentClassificationJobRequest')
    DescribeDocumentClassificationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeDocumentClassificationJobResponse', name: 'DescribeDocumentClassificationJobResponse')
    DescribeDocumentClassifierRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeDocumentClassifierRequest', name: 'DescribeDocumentClassifierRequest')
    DescribeDocumentClassifierResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeDocumentClassifierResponse', name: 'DescribeDocumentClassifierResponse')
    DescribeDominantLanguageDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeDominantLanguageDetectionJobRequest', name: 'DescribeDominantLanguageDetectionJobRequest')
    DescribeDominantLanguageDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeDominantLanguageDetectionJobResponse', name: 'DescribeDominantLanguageDetectionJobResponse')
    DescribeEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeEndpointRequest', name: 'DescribeEndpointRequest')
    DescribeEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeEndpointResponse', name: 'DescribeEndpointResponse')
    DescribeEntitiesDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeEntitiesDetectionJobRequest', name: 'DescribeEntitiesDetectionJobRequest')
    DescribeEntitiesDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeEntitiesDetectionJobResponse', name: 'DescribeEntitiesDetectionJobResponse')
    DescribeEntityRecognizerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeEntityRecognizerRequest', name: 'DescribeEntityRecognizerRequest')
    DescribeEntityRecognizerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeEntityRecognizerResponse', name: 'DescribeEntityRecognizerResponse')
    DescribeEventsDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeEventsDetectionJobRequest', name: 'DescribeEventsDetectionJobRequest')
    DescribeEventsDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeEventsDetectionJobResponse', name: 'DescribeEventsDetectionJobResponse')
    DescribeFlywheelIterationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeFlywheelIterationRequest', name: 'DescribeFlywheelIterationRequest')
    DescribeFlywheelIterationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeFlywheelIterationResponse', name: 'DescribeFlywheelIterationResponse')
    DescribeFlywheelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeFlywheelRequest', name: 'DescribeFlywheelRequest')
    DescribeFlywheelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeFlywheelResponse', name: 'DescribeFlywheelResponse')
    DescribeKeyPhrasesDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeKeyPhrasesDetectionJobRequest', name: 'DescribeKeyPhrasesDetectionJobRequest')
    DescribeKeyPhrasesDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeKeyPhrasesDetectionJobResponse', name: 'DescribeKeyPhrasesDetectionJobResponse')
    DescribePiiEntitiesDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribePiiEntitiesDetectionJobRequest', name: 'DescribePiiEntitiesDetectionJobRequest')
    DescribePiiEntitiesDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribePiiEntitiesDetectionJobResponse', name: 'DescribePiiEntitiesDetectionJobResponse')
    DescribeResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeResourcePolicyRequest', name: 'DescribeResourcePolicyRequest')
    DescribeResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeResourcePolicyResponse', name: 'DescribeResourcePolicyResponse')
    DescribeSentimentDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeSentimentDetectionJobRequest', name: 'DescribeSentimentDetectionJobRequest')
    DescribeSentimentDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeSentimentDetectionJobResponse', name: 'DescribeSentimentDetectionJobResponse')
    DescribeTargetedSentimentDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeTargetedSentimentDetectionJobRequest', name: 'DescribeTargetedSentimentDetectionJobRequest')
    DescribeTargetedSentimentDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeTargetedSentimentDetectionJobResponse', name: 'DescribeTargetedSentimentDetectionJobResponse')
    DescribeTopicsDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeTopicsDetectionJobRequest', name: 'DescribeTopicsDetectionJobRequest')
    DescribeTopicsDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DescribeTopicsDetectionJobResponse', name: 'DescribeTopicsDetectionJobResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"})
    DetectDominantLanguageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectDominantLanguageRequest', name: 'DetectDominantLanguageRequest')
    DetectDominantLanguageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectDominantLanguageResponse', name: 'DetectDominantLanguageResponse', traits: {"smithy.api#sensitive" => {}})
    DetectEntitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectEntitiesRequest', name: 'DetectEntitiesRequest')
    DetectEntitiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectEntitiesResponse', name: 'DetectEntitiesResponse', traits: {"smithy.api#sensitive" => {}})
    DetectKeyPhrasesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectKeyPhrasesRequest', name: 'DetectKeyPhrasesRequest')
    DetectKeyPhrasesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectKeyPhrasesResponse', name: 'DetectKeyPhrasesResponse', traits: {"smithy.api#sensitive" => {}})
    DetectPiiEntitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectPiiEntitiesRequest', name: 'DetectPiiEntitiesRequest')
    DetectPiiEntitiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectPiiEntitiesResponse', name: 'DetectPiiEntitiesResponse')
    DetectSentimentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectSentimentRequest', name: 'DetectSentimentRequest')
    DetectSentimentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectSentimentResponse', name: 'DetectSentimentResponse', traits: {"smithy.api#sensitive" => {}})
    DetectSyntaxRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectSyntaxRequest', name: 'DetectSyntaxRequest')
    DetectSyntaxResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectSyntaxResponse', name: 'DetectSyntaxResponse', traits: {"smithy.api#sensitive" => {}})
    DetectTargetedSentimentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectTargetedSentimentRequest', name: 'DetectTargetedSentimentRequest')
    DetectTargetedSentimentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectTargetedSentimentResponse', name: 'DetectTargetedSentimentResponse', traits: {"smithy.api#sensitive" => {}})
    DetectToxicContentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectToxicContentRequest', name: 'DetectToxicContentRequest')
    DetectToxicContentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DetectToxicContentResponse', name: 'DetectToxicContentResponse')
    DocumentClass = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DocumentClass', name: 'DocumentClass')
    DocumentClassificationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DocumentClassificationConfig', name: 'DocumentClassificationConfig')
    DocumentClassificationJobFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DocumentClassificationJobFilter', name: 'DocumentClassificationJobFilter')
    DocumentClassificationJobProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DocumentClassificationJobProperties', name: 'DocumentClassificationJobProperties')
    DocumentClassificationJobPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#DocumentClassificationJobPropertiesList', name: 'DocumentClassificationJobPropertiesList')
    DocumentClassifierArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#DocumentClassifierArn', name: 'DocumentClassifierArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:document-classifier/[a-zA-Z0-9](-*[a-zA-Z0-9])*(/version/[a-zA-Z0-9](-*[a-zA-Z0-9])*)?$"})
    DocumentClassifierAugmentedManifestsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#DocumentClassifierAugmentedManifestsList', name: 'DocumentClassifierAugmentedManifestsList')
    DocumentClassifierDataFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#DocumentClassifierDataFormat', name: 'DocumentClassifierDataFormat')
    DocumentClassifierDocumentTypeFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#DocumentClassifierDocumentTypeFormat', name: 'DocumentClassifierDocumentTypeFormat')
    DocumentClassifierDocuments = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DocumentClassifierDocuments', name: 'DocumentClassifierDocuments')
    DocumentClassifierEndpointArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#DocumentClassifierEndpointArn', name: 'DocumentClassifierEndpointArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:([0-9]{12}|aws):document-classifier-endpoint/[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    DocumentClassifierFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DocumentClassifierFilter', name: 'DocumentClassifierFilter')
    DocumentClassifierInputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DocumentClassifierInputDataConfig', name: 'DocumentClassifierInputDataConfig')
    DocumentClassifierMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#DocumentClassifierMode', name: 'DocumentClassifierMode')
    DocumentClassifierOutputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DocumentClassifierOutputDataConfig', name: 'DocumentClassifierOutputDataConfig')
    DocumentClassifierProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DocumentClassifierProperties', name: 'DocumentClassifierProperties')
    DocumentClassifierPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#DocumentClassifierPropertiesList', name: 'DocumentClassifierPropertiesList')
    DocumentClassifierSummariesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#DocumentClassifierSummariesList', name: 'DocumentClassifierSummariesList')
    DocumentClassifierSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DocumentClassifierSummary', name: 'DocumentClassifierSummary')
    DocumentLabel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DocumentLabel', name: 'DocumentLabel')
    DocumentMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DocumentMetadata', name: 'DocumentMetadata')
    DocumentReadAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#DocumentReadAction', name: 'DocumentReadAction')
    DocumentReadFeatureTypes = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#DocumentReadFeatureTypes', name: 'DocumentReadFeatureTypes')
    DocumentReadMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#DocumentReadMode', name: 'DocumentReadMode')
    DocumentReaderConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DocumentReaderConfig', name: 'DocumentReaderConfig')
    DocumentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#DocumentType', name: 'DocumentType')
    DocumentTypeListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DocumentTypeListItem', name: 'DocumentTypeListItem')
    DominantLanguage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DominantLanguage', name: 'DominantLanguage')
    DominantLanguageDetectionJobFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DominantLanguageDetectionJobFilter', name: 'DominantLanguageDetectionJobFilter')
    DominantLanguageDetectionJobProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#DominantLanguageDetectionJobProperties', name: 'DominantLanguageDetectionJobProperties')
    DominantLanguageDetectionJobPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#DominantLanguageDetectionJobPropertiesList', name: 'DominantLanguageDetectionJobPropertiesList')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.comprehend#Double', name: 'Double')
    EndpointFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EndpointFilter', name: 'EndpointFilter')
    EndpointProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EndpointProperties', name: 'EndpointProperties')
    EndpointPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#EndpointPropertiesList', name: 'EndpointPropertiesList')
    EndpointStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#EndpointStatus', name: 'EndpointStatus')
    EntitiesDetectionJobFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntitiesDetectionJobFilter', name: 'EntitiesDetectionJobFilter')
    EntitiesDetectionJobProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntitiesDetectionJobProperties', name: 'EntitiesDetectionJobProperties')
    EntitiesDetectionJobPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#EntitiesDetectionJobPropertiesList', name: 'EntitiesDetectionJobPropertiesList')
    Entity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#Entity', name: 'Entity')
    EntityLabel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityLabel', name: 'EntityLabel')
    EntityRecognitionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityRecognitionConfig', name: 'EntityRecognitionConfig')
    EntityRecognizerAnnotations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerAnnotations', name: 'EntityRecognizerAnnotations')
    EntityRecognizerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerArn', name: 'EntityRecognizerArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:entity-recognizer/[a-zA-Z0-9](-*[a-zA-Z0-9])*(/version/[a-zA-Z0-9](-*[a-zA-Z0-9])*)?$"})
    EntityRecognizerAugmentedManifestsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerAugmentedManifestsList', name: 'EntityRecognizerAugmentedManifestsList')
    EntityRecognizerDataFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerDataFormat', name: 'EntityRecognizerDataFormat')
    EntityRecognizerDocuments = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerDocuments', name: 'EntityRecognizerDocuments')
    EntityRecognizerEndpointArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerEndpointArn', name: 'EntityRecognizerEndpointArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:entity-recognizer-endpoint/[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    EntityRecognizerEntityList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerEntityList', name: 'EntityRecognizerEntityList')
    EntityRecognizerEvaluationMetrics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerEvaluationMetrics', name: 'EntityRecognizerEvaluationMetrics')
    EntityRecognizerFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerFilter', name: 'EntityRecognizerFilter')
    EntityRecognizerInputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerInputDataConfig', name: 'EntityRecognizerInputDataConfig')
    EntityRecognizerMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerMetadata', name: 'EntityRecognizerMetadata', traits: {"smithy.api#sensitive" => {}})
    EntityRecognizerMetadataEntityTypesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerMetadataEntityTypesList', name: 'EntityRecognizerMetadataEntityTypesList')
    EntityRecognizerMetadataEntityTypesListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerMetadataEntityTypesListItem', name: 'EntityRecognizerMetadataEntityTypesListItem')
    EntityRecognizerOutputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerOutputDataConfig', name: 'EntityRecognizerOutputDataConfig')
    EntityRecognizerProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerProperties', name: 'EntityRecognizerProperties')
    EntityRecognizerPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerPropertiesList', name: 'EntityRecognizerPropertiesList')
    EntityRecognizerSummariesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerSummariesList', name: 'EntityRecognizerSummariesList')
    EntityRecognizerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityRecognizerSummary', name: 'EntityRecognizerSummary')
    EntityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#EntityType', name: 'EntityType')
    EntityTypeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#EntityTypeName', name: 'EntityTypeName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^(?![^\\n\\r\\t,]*\\\\n|\\\\r|\\\\t)[^\\n\\r\\t,]+$"})
    EntityTypesEvaluationMetrics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityTypesEvaluationMetrics', name: 'EntityTypesEvaluationMetrics')
    EntityTypesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#EntityTypesList', name: 'EntityTypesList')
    EntityTypesListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EntityTypesListItem', name: 'EntityTypesListItem')
    ErrorsListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ErrorsListItem', name: 'ErrorsListItem')
    EventTypeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#EventTypeString', name: 'EventTypeString', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[A-Z_]*$"})
    EventsDetectionJobFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EventsDetectionJobFilter', name: 'EventsDetectionJobFilter')
    EventsDetectionJobProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#EventsDetectionJobProperties', name: 'EventsDetectionJobProperties')
    EventsDetectionJobPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#EventsDetectionJobPropertiesList', name: 'EventsDetectionJobPropertiesList')
    ExtractedCharactersListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ExtractedCharactersListItem', name: 'ExtractedCharactersListItem')
    Float = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.comprehend#Float', name: 'Float')
    FlywheelFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#FlywheelFilter', name: 'FlywheelFilter')
    FlywheelIterationFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#FlywheelIterationFilter', name: 'FlywheelIterationFilter')
    FlywheelIterationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#FlywheelIterationId', name: 'FlywheelIterationId', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[0-9]{8}T[0-9]{6}Z$"})
    FlywheelIterationProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#FlywheelIterationProperties', name: 'FlywheelIterationProperties')
    FlywheelIterationPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#FlywheelIterationPropertiesList', name: 'FlywheelIterationPropertiesList')
    FlywheelIterationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#FlywheelIterationStatus', name: 'FlywheelIterationStatus')
    FlywheelModelEvaluationMetrics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#FlywheelModelEvaluationMetrics', name: 'FlywheelModelEvaluationMetrics')
    FlywheelProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#FlywheelProperties', name: 'FlywheelProperties')
    FlywheelS3Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#FlywheelS3Uri', name: 'FlywheelS3Uri', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    FlywheelStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#FlywheelStatus', name: 'FlywheelStatus')
    FlywheelSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#FlywheelSummary', name: 'FlywheelSummary')
    FlywheelSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#FlywheelSummaryList', name: 'FlywheelSummaryList')
    Geometry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#Geometry', name: 'Geometry')
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    ImportModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ImportModelRequest', name: 'ImportModelRequest')
    ImportModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ImportModelResponse', name: 'ImportModelResponse')
    InferenceUnitsInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.comprehend#InferenceUnitsInteger', name: 'InferenceUnitsInteger', traits: {"smithy.api#range" => {"min" => 1}})
    InputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#InputDataConfig', name: 'InputDataConfig')
    InputFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#InputFormat', name: 'InputFormat')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.comprehend#Integer', name: 'Integer')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidFilterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#InvalidFilterException', name: 'InvalidFilterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#InvalidRequestDetail', name: 'InvalidRequestDetail')
    InvalidRequestDetailReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#InvalidRequestDetailReason', name: 'InvalidRequestDetailReason')
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#InvalidRequestReason', name: 'InvalidRequestReason')
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    JobName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#JobName', name: 'JobName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    JobNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#JobNotFoundException', name: 'JobNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    JobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#JobStatus', name: 'JobStatus')
    KeyPhrase = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#KeyPhrase', name: 'KeyPhrase')
    KeyPhrasesDetectionJobFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#KeyPhrasesDetectionJobFilter', name: 'KeyPhrasesDetectionJobFilter')
    KeyPhrasesDetectionJobProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#KeyPhrasesDetectionJobProperties', name: 'KeyPhrasesDetectionJobProperties')
    KeyPhrasesDetectionJobPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#KeyPhrasesDetectionJobPropertiesList', name: 'KeyPhrasesDetectionJobPropertiesList')
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^\\p{ASCII}+$"})
    KmsKeyValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#KmsKeyValidationException', name: 'KmsKeyValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LabelDelimiter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#LabelDelimiter', name: 'LabelDelimiter', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#pattern" => "^[ ~!@\#$%^*\\-_+=|\\\\:;\\t>?/]$"})
    LabelListItem = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#LabelListItem', name: 'LabelListItem', traits: {"smithy.api#length" => {"min" => 0, "max" => 5000}, "smithy.api#pattern" => "^\\P{C}*$"})
    LabelsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#LabelsList', name: 'LabelsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    LanguageCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#LanguageCode', name: 'LanguageCode')
    ListDatasetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListDatasetsRequest', name: 'ListDatasetsRequest')
    ListDatasetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListDatasetsResponse', name: 'ListDatasetsResponse')
    ListDocumentClassificationJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListDocumentClassificationJobsRequest', name: 'ListDocumentClassificationJobsRequest')
    ListDocumentClassificationJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListDocumentClassificationJobsResponse', name: 'ListDocumentClassificationJobsResponse')
    ListDocumentClassifierSummariesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListDocumentClassifierSummariesRequest', name: 'ListDocumentClassifierSummariesRequest')
    ListDocumentClassifierSummariesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListDocumentClassifierSummariesResponse', name: 'ListDocumentClassifierSummariesResponse')
    ListDocumentClassifiersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListDocumentClassifiersRequest', name: 'ListDocumentClassifiersRequest')
    ListDocumentClassifiersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListDocumentClassifiersResponse', name: 'ListDocumentClassifiersResponse')
    ListDominantLanguageDetectionJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListDominantLanguageDetectionJobsRequest', name: 'ListDominantLanguageDetectionJobsRequest')
    ListDominantLanguageDetectionJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListDominantLanguageDetectionJobsResponse', name: 'ListDominantLanguageDetectionJobsResponse')
    ListEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListEndpointsRequest', name: 'ListEndpointsRequest')
    ListEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListEndpointsResponse', name: 'ListEndpointsResponse')
    ListEntitiesDetectionJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListEntitiesDetectionJobsRequest', name: 'ListEntitiesDetectionJobsRequest')
    ListEntitiesDetectionJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListEntitiesDetectionJobsResponse', name: 'ListEntitiesDetectionJobsResponse')
    ListEntityRecognizerSummariesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListEntityRecognizerSummariesRequest', name: 'ListEntityRecognizerSummariesRequest')
    ListEntityRecognizerSummariesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListEntityRecognizerSummariesResponse', name: 'ListEntityRecognizerSummariesResponse')
    ListEntityRecognizersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListEntityRecognizersRequest', name: 'ListEntityRecognizersRequest')
    ListEntityRecognizersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListEntityRecognizersResponse', name: 'ListEntityRecognizersResponse')
    ListEventsDetectionJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListEventsDetectionJobsRequest', name: 'ListEventsDetectionJobsRequest')
    ListEventsDetectionJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListEventsDetectionJobsResponse', name: 'ListEventsDetectionJobsResponse')
    ListFlywheelIterationHistoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListFlywheelIterationHistoryRequest', name: 'ListFlywheelIterationHistoryRequest')
    ListFlywheelIterationHistoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListFlywheelIterationHistoryResponse', name: 'ListFlywheelIterationHistoryResponse')
    ListFlywheelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListFlywheelsRequest', name: 'ListFlywheelsRequest')
    ListFlywheelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListFlywheelsResponse', name: 'ListFlywheelsResponse')
    ListKeyPhrasesDetectionJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListKeyPhrasesDetectionJobsRequest', name: 'ListKeyPhrasesDetectionJobsRequest')
    ListKeyPhrasesDetectionJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListKeyPhrasesDetectionJobsResponse', name: 'ListKeyPhrasesDetectionJobsResponse')
    ListOfBlockReferences = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfBlockReferences', name: 'ListOfBlockReferences')
    ListOfBlocks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfBlocks', name: 'ListOfBlocks')
    ListOfChildBlocks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfChildBlocks', name: 'ListOfChildBlocks')
    ListOfClasses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfClasses', name: 'ListOfClasses')
    ListOfDescriptiveMentionIndices = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfDescriptiveMentionIndices', name: 'ListOfDescriptiveMentionIndices')
    ListOfDetectDominantLanguageResult = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfDetectDominantLanguageResult', name: 'ListOfDetectDominantLanguageResult')
    ListOfDetectEntitiesResult = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfDetectEntitiesResult', name: 'ListOfDetectEntitiesResult')
    ListOfDetectKeyPhrasesResult = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfDetectKeyPhrasesResult', name: 'ListOfDetectKeyPhrasesResult')
    ListOfDetectSentimentResult = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfDetectSentimentResult', name: 'ListOfDetectSentimentResult')
    ListOfDetectSyntaxResult = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfDetectSyntaxResult', name: 'ListOfDetectSyntaxResult')
    ListOfDetectTargetedSentimentResult = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfDetectTargetedSentimentResult', name: 'ListOfDetectTargetedSentimentResult')
    ListOfDocumentReadFeatureTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfDocumentReadFeatureTypes', name: 'ListOfDocumentReadFeatureTypes', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    ListOfDocumentType = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfDocumentType', name: 'ListOfDocumentType')
    ListOfDominantLanguages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfDominantLanguages', name: 'ListOfDominantLanguages')
    ListOfEntities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfEntities', name: 'ListOfEntities')
    ListOfEntityLabels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfEntityLabels', name: 'ListOfEntityLabels')
    ListOfErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfErrors', name: 'ListOfErrors')
    ListOfExtractedCharacters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfExtractedCharacters', name: 'ListOfExtractedCharacters')
    ListOfKeyPhrases = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfKeyPhrases', name: 'ListOfKeyPhrases')
    ListOfLabels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfLabels', name: 'ListOfLabels')
    ListOfMentions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfMentions', name: 'ListOfMentions')
    ListOfPiiEntities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfPiiEntities', name: 'ListOfPiiEntities')
    ListOfPiiEntityTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfPiiEntityTypes', name: 'ListOfPiiEntityTypes')
    ListOfRelationships = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfRelationships', name: 'ListOfRelationships')
    ListOfSyntaxTokens = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfSyntaxTokens', name: 'ListOfSyntaxTokens')
    ListOfTargetedSentimentEntities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfTargetedSentimentEntities', name: 'ListOfTargetedSentimentEntities')
    ListOfTextSegments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfTextSegments', name: 'ListOfTextSegments', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    ListOfToxicContent = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfToxicContent', name: 'ListOfToxicContent')
    ListOfToxicLabels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfToxicLabels', name: 'ListOfToxicLabels')
    ListOfWarnings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#ListOfWarnings', name: 'ListOfWarnings')
    ListPiiEntitiesDetectionJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListPiiEntitiesDetectionJobsRequest', name: 'ListPiiEntitiesDetectionJobsRequest')
    ListPiiEntitiesDetectionJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListPiiEntitiesDetectionJobsResponse', name: 'ListPiiEntitiesDetectionJobsResponse')
    ListSentimentDetectionJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListSentimentDetectionJobsRequest', name: 'ListSentimentDetectionJobsRequest')
    ListSentimentDetectionJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListSentimentDetectionJobsResponse', name: 'ListSentimentDetectionJobsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTargetedSentimentDetectionJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListTargetedSentimentDetectionJobsRequest', name: 'ListTargetedSentimentDetectionJobsRequest')
    ListTargetedSentimentDetectionJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListTargetedSentimentDetectionJobsResponse', name: 'ListTargetedSentimentDetectionJobsResponse')
    ListTopicsDetectionJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListTopicsDetectionJobsRequest', name: 'ListTopicsDetectionJobsRequest')
    ListTopicsDetectionJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ListTopicsDetectionJobsResponse', name: 'ListTopicsDetectionJobsResponse')
    MaskCharacter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#MaskCharacter', name: 'MaskCharacter', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#pattern" => "^[!@\#$%&*]$"})
    MaxResultsInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.comprehend#MaxResultsInteger', name: 'MaxResultsInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    MentionSentiment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#MentionSentiment', name: 'MentionSentiment')
    ModelStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#ModelStatus', name: 'ModelStatus')
    ModelType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#ModelType', name: 'ModelType')
    NumberOfDocuments = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.comprehend#NumberOfDocuments', name: 'NumberOfDocuments')
    NumberOfTopicsInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.comprehend#NumberOfTopicsInteger', name: 'NumberOfTopicsInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    OutputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#OutputDataConfig', name: 'OutputDataConfig')
    PageBasedErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#PageBasedErrorCode', name: 'PageBasedErrorCode')
    PageBasedWarningCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#PageBasedWarningCode', name: 'PageBasedWarningCode')
    PartOfSpeechTag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#PartOfSpeechTag', name: 'PartOfSpeechTag')
    PartOfSpeechTagType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#PartOfSpeechTagType', name: 'PartOfSpeechTagType')
    PiiEntitiesDetectionJobFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#PiiEntitiesDetectionJobFilter', name: 'PiiEntitiesDetectionJobFilter')
    PiiEntitiesDetectionJobProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#PiiEntitiesDetectionJobProperties', name: 'PiiEntitiesDetectionJobProperties')
    PiiEntitiesDetectionJobPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#PiiEntitiesDetectionJobPropertiesList', name: 'PiiEntitiesDetectionJobPropertiesList')
    PiiEntitiesDetectionMaskMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#PiiEntitiesDetectionMaskMode', name: 'PiiEntitiesDetectionMaskMode')
    PiiEntitiesDetectionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#PiiEntitiesDetectionMode', name: 'PiiEntitiesDetectionMode')
    PiiEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#PiiEntity', name: 'PiiEntity')
    PiiEntityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#PiiEntityType', name: 'PiiEntityType')
    PiiOutputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#PiiOutputDataConfig', name: 'PiiOutputDataConfig')
    Point = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#Point', name: 'Point')
    Policy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#Policy', name: 'Policy', traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    PolicyRevisionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#PolicyRevisionId', name: 'PolicyRevisionId', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Fa-f]+$"})
    Polygon = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#Polygon', name: 'Polygon')
    PutResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#PutResourcePolicyResponse', name: 'PutResourcePolicyResponse')
    RedactionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#RedactionConfig', name: 'RedactionConfig')
    RelationshipType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#RelationshipType', name: 'RelationshipType')
    RelationshipsListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#RelationshipsListItem', name: 'RelationshipsListItem')
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ResourceLimitExceededException', name: 'ResourceLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ResourceUnavailableException', name: 'ResourceUnavailableException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#S3Uri', name: 'S3Uri', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+$"})
    SecurityGroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SemiStructuredDocumentBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.comprehend#SemiStructuredDocumentBlob', name: 'SemiStructuredDocumentBlob', traits: {"smithy.api#length" => {"min" => 1}})
    SentimentDetectionJobFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#SentimentDetectionJobFilter', name: 'SentimentDetectionJobFilter')
    SentimentDetectionJobProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#SentimentDetectionJobProperties', name: 'SentimentDetectionJobProperties')
    SentimentDetectionJobPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#SentimentDetectionJobPropertiesList', name: 'SentimentDetectionJobPropertiesList')
    SentimentScore = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#SentimentScore', name: 'SentimentScore')
    SentimentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#SentimentType', name: 'SentimentType')
    Split = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#Split', name: 'Split')
    StartDocumentClassificationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartDocumentClassificationJobRequest', name: 'StartDocumentClassificationJobRequest')
    StartDocumentClassificationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartDocumentClassificationJobResponse', name: 'StartDocumentClassificationJobResponse')
    StartDominantLanguageDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartDominantLanguageDetectionJobRequest', name: 'StartDominantLanguageDetectionJobRequest')
    StartDominantLanguageDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartDominantLanguageDetectionJobResponse', name: 'StartDominantLanguageDetectionJobResponse')
    StartEntitiesDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartEntitiesDetectionJobRequest', name: 'StartEntitiesDetectionJobRequest')
    StartEntitiesDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartEntitiesDetectionJobResponse', name: 'StartEntitiesDetectionJobResponse')
    StartEventsDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartEventsDetectionJobRequest', name: 'StartEventsDetectionJobRequest')
    StartEventsDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartEventsDetectionJobResponse', name: 'StartEventsDetectionJobResponse')
    StartFlywheelIterationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartFlywheelIterationRequest', name: 'StartFlywheelIterationRequest')
    StartFlywheelIterationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartFlywheelIterationResponse', name: 'StartFlywheelIterationResponse')
    StartKeyPhrasesDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartKeyPhrasesDetectionJobRequest', name: 'StartKeyPhrasesDetectionJobRequest')
    StartKeyPhrasesDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartKeyPhrasesDetectionJobResponse', name: 'StartKeyPhrasesDetectionJobResponse')
    StartPiiEntitiesDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartPiiEntitiesDetectionJobRequest', name: 'StartPiiEntitiesDetectionJobRequest')
    StartPiiEntitiesDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartPiiEntitiesDetectionJobResponse', name: 'StartPiiEntitiesDetectionJobResponse')
    StartSentimentDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartSentimentDetectionJobRequest', name: 'StartSentimentDetectionJobRequest')
    StartSentimentDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartSentimentDetectionJobResponse', name: 'StartSentimentDetectionJobResponse')
    StartTargetedSentimentDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartTargetedSentimentDetectionJobRequest', name: 'StartTargetedSentimentDetectionJobRequest')
    StartTargetedSentimentDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartTargetedSentimentDetectionJobResponse', name: 'StartTargetedSentimentDetectionJobResponse')
    StartTopicsDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartTopicsDetectionJobRequest', name: 'StartTopicsDetectionJobRequest')
    StartTopicsDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StartTopicsDetectionJobResponse', name: 'StartTopicsDetectionJobResponse')
    StopDominantLanguageDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopDominantLanguageDetectionJobRequest', name: 'StopDominantLanguageDetectionJobRequest')
    StopDominantLanguageDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopDominantLanguageDetectionJobResponse', name: 'StopDominantLanguageDetectionJobResponse')
    StopEntitiesDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopEntitiesDetectionJobRequest', name: 'StopEntitiesDetectionJobRequest')
    StopEntitiesDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopEntitiesDetectionJobResponse', name: 'StopEntitiesDetectionJobResponse')
    StopEventsDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopEventsDetectionJobRequest', name: 'StopEventsDetectionJobRequest')
    StopEventsDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopEventsDetectionJobResponse', name: 'StopEventsDetectionJobResponse')
    StopKeyPhrasesDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopKeyPhrasesDetectionJobRequest', name: 'StopKeyPhrasesDetectionJobRequest')
    StopKeyPhrasesDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopKeyPhrasesDetectionJobResponse', name: 'StopKeyPhrasesDetectionJobResponse')
    StopPiiEntitiesDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopPiiEntitiesDetectionJobRequest', name: 'StopPiiEntitiesDetectionJobRequest')
    StopPiiEntitiesDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopPiiEntitiesDetectionJobResponse', name: 'StopPiiEntitiesDetectionJobResponse')
    StopSentimentDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopSentimentDetectionJobRequest', name: 'StopSentimentDetectionJobRequest')
    StopSentimentDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopSentimentDetectionJobResponse', name: 'StopSentimentDetectionJobResponse')
    StopTargetedSentimentDetectionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopTargetedSentimentDetectionJobRequest', name: 'StopTargetedSentimentDetectionJobRequest')
    StopTargetedSentimentDetectionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopTargetedSentimentDetectionJobResponse', name: 'StopTargetedSentimentDetectionJobResponse')
    StopTrainingDocumentClassifierRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopTrainingDocumentClassifierRequest', name: 'StopTrainingDocumentClassifierRequest')
    StopTrainingDocumentClassifierResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopTrainingDocumentClassifierResponse', name: 'StopTrainingDocumentClassifierResponse')
    StopTrainingEntityRecognizerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopTrainingEntityRecognizerRequest', name: 'StopTrainingEntityRecognizerRequest')
    StopTrainingEntityRecognizerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#StopTrainingEntityRecognizerResponse', name: 'StopTrainingEntityRecognizerResponse')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#String', name: 'String', traits: {"smithy.api#length" => {"min" => 1}})
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#StringList', name: 'StringList')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+$"})
    Subnets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#Subnets', name: 'Subnets', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    SyntaxLanguageCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#SyntaxLanguageCode', name: 'SyntaxLanguageCode')
    SyntaxToken = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#SyntaxToken', name: 'SyntaxToken')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#TagList', name: 'TagList')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetEventTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#TargetEventTypes', name: 'TargetEventTypes', traits: {"smithy.api#length" => {"min" => 1}})
    TargetedSentimentDetectionJobFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#TargetedSentimentDetectionJobFilter', name: 'TargetedSentimentDetectionJobFilter')
    TargetedSentimentDetectionJobProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#TargetedSentimentDetectionJobProperties', name: 'TargetedSentimentDetectionJobProperties')
    TargetedSentimentDetectionJobPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#TargetedSentimentDetectionJobPropertiesList', name: 'TargetedSentimentDetectionJobPropertiesList')
    TargetedSentimentEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#TargetedSentimentEntity', name: 'TargetedSentimentEntity')
    TargetedSentimentEntityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#TargetedSentimentEntityType', name: 'TargetedSentimentEntityType')
    TargetedSentimentMention = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#TargetedSentimentMention', name: 'TargetedSentimentMention')
    TaskConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#TaskConfig', name: 'TaskConfig')
    TextSegment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#TextSegment', name: 'TextSegment')
    TextSizeLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#TextSizeLimitExceededException', name: 'TextSizeLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.comprehend#Timestamp', name: 'Timestamp')
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TooManyTagKeysException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#TooManyTagKeysException', name: 'TooManyTagKeysException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TopicsDetectionJobFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#TopicsDetectionJobFilter', name: 'TopicsDetectionJobFilter')
    TopicsDetectionJobProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#TopicsDetectionJobProperties', name: 'TopicsDetectionJobProperties')
    TopicsDetectionJobPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.comprehend#TopicsDetectionJobPropertiesList', name: 'TopicsDetectionJobPropertiesList')
    ToxicContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ToxicContent', name: 'ToxicContent')
    ToxicContentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.comprehend#ToxicContentType', name: 'ToxicContentType')
    ToxicLabels = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#ToxicLabels', name: 'ToxicLabels')
    UnsupportedLanguageException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#UnsupportedLanguageException', name: 'UnsupportedLanguageException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateDataSecurityConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#UpdateDataSecurityConfig', name: 'UpdateDataSecurityConfig')
    UpdateEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#UpdateEndpointRequest', name: 'UpdateEndpointRequest')
    UpdateEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#UpdateEndpointResponse', name: 'UpdateEndpointResponse')
    UpdateFlywheelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#UpdateFlywheelRequest', name: 'UpdateFlywheelRequest')
    UpdateFlywheelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#UpdateFlywheelResponse', name: 'UpdateFlywheelResponse')
    VersionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.comprehend#VersionName', name: 'VersionName', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    VpcConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#VpcConfig', name: 'VpcConfig')
    WarningsListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.comprehend#WarningsListItem', name: 'WarningsListItem')

    AttributeNamesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNamesListItem)
    AugmentedManifestsDocumentTypeFormat.add_member(:plain_text_document, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAIN_TEXT_DOCUMENT', traits: {"smithy.api#enumValue" => "PLAIN_TEXT_DOCUMENT"}))
    AugmentedManifestsDocumentTypeFormat.add_member(:semi_structured_document, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEMI_STRUCTURED_DOCUMENT', traits: {"smithy.api#enumValue" => "SEMI_STRUCTURED_DOCUMENT"}))
    AugmentedManifestsListItem.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of the augmented manifest file.</p>", "smithy.api#required" => {}}))
    AugmentedManifestsListItem.add_member(:split, Smithy::Schema::Shapes::ShapeRef.new(shape: Split, location_name: 'Split', traits: {"smithy.api#documentation" => "<p>The purpose of the data you've provided in the augmented manifest. You can either train or\n      test this data. If you don't specify, the default is train.</p>\n         <p>TRAIN - all of the documents in the manifest will be used for training. If no test\n      documents are provided, Amazon Comprehend will automatically reserve a portion of the training\n      documents for testing.</p>\n         <p> TEST - all of the documents in the manifest will be used for testing.</p>"}))
    AugmentedManifestsListItem.add_member(:attribute_names, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNamesList, location_name: 'AttributeNames', traits: {"smithy.api#documentation" => "<p>The JSON attribute that contains the annotations for your training documents. The number\n      of attribute names that you specify depends on whether your augmented manifest file is the\n      output of a single labeling job or a chained labeling job.</p>\n         <p>If your file is the output of a single labeling job, specify the LabelAttributeName key\n      that was used when the job was created in Ground Truth.</p>\n         <p>If your file is the output of a chained labeling job, specify the LabelAttributeName key\n      for one or more jobs in the chain. Each LabelAttributeName key provides the annotations from\n      an individual job.</p>", "smithy.api#required" => {}}))
    AugmentedManifestsListItem.add_member(:annotation_data_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'AnnotationDataS3Uri', traits: {"smithy.api#documentation" => "<p>The S3 prefix to the annotation files that are referred in the augmented manifest\n      file.</p>"}))
    AugmentedManifestsListItem.add_member(:source_documents_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'SourceDocumentsS3Uri', traits: {"smithy.api#documentation" => "<p>The S3 prefix to the source files (PDFs) that are referred to in the augmented manifest\n      file.</p>"}))
    AugmentedManifestsListItem.add_member(:document_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AugmentedManifestsDocumentTypeFormat, location_name: 'DocumentType', traits: {"smithy.api#documentation" => "<p>The type of augmented manifest. PlainTextDocument or SemiStructuredDocument. If you don't\n      specify, the default is PlainTextDocument. </p>\n         <ul>\n            <li>\n               <p>\n                  <code>PLAIN_TEXT_DOCUMENT</code> A document type that represents any unicode text that\n          is encoded in UTF-8.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SEMI_STRUCTURED_DOCUMENT</code> A document type with positional and structural\n          context, like a PDF. For training with Amazon Comprehend, only PDFs are supported. For\n          inference, Amazon Comprehend support PDFs, DOCX and TXT.</p>\n            </li>\n         </ul>"}))
    AugmentedManifestsListItem.type = Types::AugmentedManifestsListItem
    BatchDetectDominantLanguageItemResult.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Index', traits: {"smithy.api#documentation" => "<p>The zero-based index of the document in the input list.</p>"}))
    BatchDetectDominantLanguageItemResult.add_member(:languages, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDominantLanguages, location_name: 'Languages', traits: {"smithy.api#documentation" => "<p>One or more <a>DominantLanguage</a> objects describing the dominant\n      languages in the document.</p>"}))
    BatchDetectDominantLanguageItemResult.type = Types::BatchDetectDominantLanguageItemResult
    BatchDetectDominantLanguageRequest.add_member(:text_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputStringList, location_name: 'TextList', traits: {"smithy.api#documentation" => "<p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25\n      documents. Each document should contain at least 20 characters. The maximum size of each document is 5 KB.</p>", "smithy.api#required" => {}}))
    BatchDetectDominantLanguageRequest.type = Types::BatchDetectDominantLanguageRequest
    BatchDetectDominantLanguageResponse.add_member(:result_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDetectDominantLanguageResult, location_name: 'ResultList', traits: {"smithy.api#documentation" => "<p>A list of  objects\n      containing the results of the operation. The results are sorted in ascending order by the\n        <code>Index</code> field and match the order of the documents in the input list. If all of\n      the documents contain an error, the <code>ResultList</code> is empty.</p>", "smithy.api#required" => {}}))
    BatchDetectDominantLanguageResponse.add_member(:error_list, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchItemErrorList, location_name: 'ErrorList', traits: {"smithy.api#documentation" => "<p>A list containing one  object for each document\n      that contained an error. The results are sorted in ascending order by the <code>Index</code>\n      field and match the order of the documents in the input list. If there are no errors in the\n      batch, the <code>ErrorList</code> is empty.</p>", "smithy.api#required" => {}}))
    BatchDetectDominantLanguageResponse.type = Types::BatchDetectDominantLanguageResponse
    BatchDetectEntitiesItemResult.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Index', traits: {"smithy.api#documentation" => "<p>The zero-based index of the document in the input list.</p>"}))
    BatchDetectEntitiesItemResult.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEntities, location_name: 'Entities', traits: {"smithy.api#documentation" => "<p>One or more <a>Entity</a> objects, one for each entity detected in the\n      document.</p>"}))
    BatchDetectEntitiesItemResult.type = Types::BatchDetectEntitiesItemResult
    BatchDetectEntitiesRequest.add_member(:text_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputStringList, location_name: 'TextList', traits: {"smithy.api#documentation" => "<p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25\n      documents. The maximum size of each document is 5 KB.</p>", "smithy.api#required" => {}}))
    BatchDetectEntitiesRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. You can specify any of the primary languages\n      supported by Amazon Comprehend. All documents must be in the same language.</p>", "smithy.api#required" => {}}))
    BatchDetectEntitiesRequest.type = Types::BatchDetectEntitiesRequest
    BatchDetectEntitiesResponse.add_member(:result_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDetectEntitiesResult, location_name: 'ResultList', traits: {"smithy.api#documentation" => "<p>A list of  objects containing the\n      results of the operation. The results are sorted in ascending order by the <code>Index</code>\n      field and match the order of the documents in the input list. If all of the documents contain\n      an error, the <code>ResultList</code> is empty.</p>", "smithy.api#required" => {}}))
    BatchDetectEntitiesResponse.add_member(:error_list, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchItemErrorList, location_name: 'ErrorList', traits: {"smithy.api#documentation" => "<p>A list containing one  object for each document\n      that contained an error. The results are sorted in ascending order by the <code>Index</code>\n      field and match the order of the documents in the input list. If there are no errors in the\n      batch, the <code>ErrorList</code> is empty.</p>", "smithy.api#required" => {}}))
    BatchDetectEntitiesResponse.type = Types::BatchDetectEntitiesResponse
    BatchDetectKeyPhrasesItemResult.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Index', traits: {"smithy.api#documentation" => "<p>The zero-based index of the document in the input list.</p>"}))
    BatchDetectKeyPhrasesItemResult.add_member(:key_phrases, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfKeyPhrases, location_name: 'KeyPhrases', traits: {"smithy.api#documentation" => "<p>One or more <a>KeyPhrase</a> objects, one for each key phrase detected in\n      the document.</p>"}))
    BatchDetectKeyPhrasesItemResult.type = Types::BatchDetectKeyPhrasesItemResult
    BatchDetectKeyPhrasesRequest.add_member(:text_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputStringList, location_name: 'TextList', traits: {"smithy.api#documentation" => "<p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25\n      documents. The maximum size of each document is 5 KB.</p>", "smithy.api#required" => {}}))
    BatchDetectKeyPhrasesRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. You can specify any of the primary languages\n      supported by Amazon Comprehend. All documents must be in the same language.</p>", "smithy.api#required" => {}}))
    BatchDetectKeyPhrasesRequest.type = Types::BatchDetectKeyPhrasesRequest
    BatchDetectKeyPhrasesResponse.add_member(:result_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDetectKeyPhrasesResult, location_name: 'ResultList', traits: {"smithy.api#documentation" => "<p>A list of  objects containing the\n      results of the operation. The results are sorted in ascending order by the <code>Index</code>\n      field and match the order of the documents in the input list. If all of the documents contain\n      an error, the <code>ResultList</code> is empty.</p>", "smithy.api#required" => {}}))
    BatchDetectKeyPhrasesResponse.add_member(:error_list, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchItemErrorList, location_name: 'ErrorList', traits: {"smithy.api#documentation" => "<p>A list containing one  object for each document\n      that contained an error. The results are sorted in ascending order by the <code>Index</code>\n      field and match the order of the documents in the input list. If there are no errors in the\n      batch, the <code>ErrorList</code> is empty.</p>", "smithy.api#required" => {}}))
    BatchDetectKeyPhrasesResponse.type = Types::BatchDetectKeyPhrasesResponse
    BatchDetectSentimentItemResult.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Index', traits: {"smithy.api#documentation" => "<p>The zero-based index of the document in the input list.</p>"}))
    BatchDetectSentimentItemResult.add_member(:sentiment, Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentType, location_name: 'Sentiment', traits: {"smithy.api#documentation" => "<p>The sentiment detected in the document.</p>"}))
    BatchDetectSentimentItemResult.add_member(:sentiment_score, Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentScore, location_name: 'SentimentScore', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend has in the accuracy of its sentiment\n      detection.</p>"}))
    BatchDetectSentimentItemResult.type = Types::BatchDetectSentimentItemResult
    BatchDetectSentimentRequest.add_member(:text_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputStringList, location_name: 'TextList', traits: {"smithy.api#documentation" => "<p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25\n      documents. The maximum size of each document is 5 KB. </p>", "smithy.api#required" => {}}))
    BatchDetectSentimentRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. You can specify any of the primary languages\n      supported by Amazon Comprehend. All documents must be in the same language.</p>", "smithy.api#required" => {}}))
    BatchDetectSentimentRequest.type = Types::BatchDetectSentimentRequest
    BatchDetectSentimentResponse.add_member(:result_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDetectSentimentResult, location_name: 'ResultList', traits: {"smithy.api#documentation" => "<p>A list of  objects containing the\n      results of the operation. The results are sorted in ascending order by the <code>Index</code>\n      field and match the order of the documents in the input list. If all of the documents contain\n      an error, the <code>ResultList</code> is empty.</p>", "smithy.api#required" => {}}))
    BatchDetectSentimentResponse.add_member(:error_list, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchItemErrorList, location_name: 'ErrorList', traits: {"smithy.api#documentation" => "<p>A list containing one  object for each document\n      that contained an error. The results are sorted in ascending order by the <code>Index</code>\n      field and match the order of the documents in the input list. If there are no errors in the\n      batch, the <code>ErrorList</code> is empty.</p>", "smithy.api#required" => {}}))
    BatchDetectSentimentResponse.type = Types::BatchDetectSentimentResponse
    BatchDetectSyntaxItemResult.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Index', traits: {"smithy.api#documentation" => "<p>The zero-based index of the document in the input list.</p>"}))
    BatchDetectSyntaxItemResult.add_member(:syntax_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSyntaxTokens, location_name: 'SyntaxTokens', traits: {"smithy.api#documentation" => "<p>The syntax tokens for the words in the document, one token for each word.</p>"}))
    BatchDetectSyntaxItemResult.type = Types::BatchDetectSyntaxItemResult
    BatchDetectSyntaxRequest.add_member(:text_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputStringList, location_name: 'TextList', traits: {"smithy.api#documentation" => "<p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25\n      documents. The maximum size for each document is 5 KB.</p>", "smithy.api#required" => {}}))
    BatchDetectSyntaxRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SyntaxLanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. You can specify any of the following languages\n      supported by Amazon Comprehend: German (\"de\"), English (\"en\"), Spanish (\"es\"), French (\"fr\"),\n      Italian (\"it\"), or Portuguese (\"pt\"). All documents must be in the same language.</p>", "smithy.api#required" => {}}))
    BatchDetectSyntaxRequest.type = Types::BatchDetectSyntaxRequest
    BatchDetectSyntaxResponse.add_member(:result_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDetectSyntaxResult, location_name: 'ResultList', traits: {"smithy.api#documentation" => "<p>A list of  objects containing the\n      results of the operation. The results are sorted in ascending order by the <code>Index</code>\n      field and match the order of the documents in the input list. If all of the documents contain\n      an error, the <code>ResultList</code> is empty.</p>", "smithy.api#required" => {}}))
    BatchDetectSyntaxResponse.add_member(:error_list, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchItemErrorList, location_name: 'ErrorList', traits: {"smithy.api#documentation" => "<p>A list containing one  object for each document that\n      contained an error. The results are sorted in ascending order by the <code>Index</code> field\n      and match the order of the documents in the input list. If there are no errors in the batch,\n      the <code>ErrorList</code> is empty.</p>", "smithy.api#required" => {}}))
    BatchDetectSyntaxResponse.type = Types::BatchDetectSyntaxResponse
    BatchDetectTargetedSentimentItemResult.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Index', traits: {"smithy.api#documentation" => "<p>The zero-based index of this result in the input list.</p>"}))
    BatchDetectTargetedSentimentItemResult.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTargetedSentimentEntities, location_name: 'Entities', traits: {"smithy.api#documentation" => "<p>An array of targeted sentiment entities.</p>"}))
    BatchDetectTargetedSentimentItemResult.type = Types::BatchDetectTargetedSentimentItemResult
    BatchDetectTargetedSentimentRequest.add_member(:text_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputStringList, location_name: 'TextList', traits: {"smithy.api#documentation" => "<p>A list containing the UTF-8 encoded text of the input documents.\n      The list can contain a maximum of 25 documents. The maximum size of each document is 5 KB.</p>", "smithy.api#required" => {}}))
    BatchDetectTargetedSentimentRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. Currently, English is the only supported language.</p>", "smithy.api#required" => {}}))
    BatchDetectTargetedSentimentRequest.type = Types::BatchDetectTargetedSentimentRequest
    BatchDetectTargetedSentimentResponse.add_member(:result_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDetectTargetedSentimentResult, location_name: 'ResultList', traits: {"smithy.api#documentation" => "<p>A list of objects containing the results of the operation.\n      The results are sorted in ascending order by the <code>Index</code> field and match the order of the documents in the input list.\n      If all of the documents contain an error, the <code>ResultList</code> is empty.</p>", "smithy.api#required" => {}}))
    BatchDetectTargetedSentimentResponse.add_member(:error_list, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchItemErrorList, location_name: 'ErrorList', traits: {"smithy.api#documentation" => "<p>List of errors that the operation can return.</p>", "smithy.api#required" => {}}))
    BatchDetectTargetedSentimentResponse.type = Types::BatchDetectTargetedSentimentResponse
    BatchItemError.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Index', traits: {"smithy.api#documentation" => "<p>The zero-based index of the document in the input list.</p>"}))
    BatchItemError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The numeric error code of the error.</p>"}))
    BatchItemError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>A text description of the error.</p>"}))
    BatchItemError.type = Types::BatchItemError
    BatchItemErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchItemError)
    BatchSizeLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    BatchSizeLimitExceededException.type = Types::BatchSizeLimitExceededException
    Block.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Unique identifier for the block.</p>"}))
    Block.add_member(:block_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockType, location_name: 'BlockType', traits: {"smithy.api#documentation" => "<p>The block represents a line of text or one word of text.</p>\n         <ul>\n            <li>\n               <p>WORD - A word that's detected on a document page.\n        A word is one or more ISO basic Latin script characters that aren't separated by spaces.</p>\n            </li>\n            <li>\n               <p>LINE - A string of tab-delimited, contiguous words\n        that are detected on a document page</p>\n            </li>\n         </ul>"}))
    Block.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The word or line of text extracted from the block.</p>"}))
    Block.add_member(:page, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Page', traits: {"smithy.api#documentation" => "<p>Page number where the block appears.</p>"}))
    Block.add_member(:geometry, Smithy::Schema::Shapes::ShapeRef.new(shape: Geometry, location_name: 'Geometry', traits: {"smithy.api#documentation" => "<p>Co-ordinates of the rectangle or polygon that contains the text.</p>"}))
    Block.add_member(:relationships, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRelationships, location_name: 'Relationships', traits: {"smithy.api#documentation" => "<p>A list of child blocks of the current block.\n      For example, a LINE object has child blocks for each WORD block that's part of the line of text. </p>"}))
    Block.type = Types::Block
    BlockReference.add_member(:block_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BlockId', traits: {"smithy.api#documentation" => "<p>Unique identifier for the block.</p>"}))
    BlockReference.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p>Offset of the start of the block within its parent block.</p>"}))
    BlockReference.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p>Offset of the end of the block within its parent block.</p>"}))
    BlockReference.add_member(:child_blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfChildBlocks, location_name: 'ChildBlocks', traits: {"smithy.api#documentation" => "<p>List of child blocks within this block.</p>"}))
    BlockReference.type = Types::BlockReference
    BlockType.add_member(:line, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINE', traits: {"smithy.api#enumValue" => "LINE"}))
    BlockType.add_member(:word, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORD', traits: {"smithy.api#enumValue" => "WORD"}))
    BoundingBox.add_member(:height, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Height', traits: {"smithy.api#documentation" => "<p>The height of the bounding box as a ratio of the overall document page height.</p>"}))
    BoundingBox.add_member(:left, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Left', traits: {"smithy.api#documentation" => "<p>The left coordinate of the bounding box as a ratio of overall document page width.</p>"}))
    BoundingBox.add_member(:top, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Top', traits: {"smithy.api#documentation" => "<p>The top coordinate of the bounding box as a ratio of overall document page height.</p>"}))
    BoundingBox.add_member(:width, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Width', traits: {"smithy.api#documentation" => "<p>The width of the bounding box as a ratio of the overall document page width.</p>"}))
    BoundingBox.type = Types::BoundingBox
    ChildBlock.add_member(:child_block_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChildBlockId', traits: {"smithy.api#documentation" => "<p>Unique identifier for the child block.</p>"}))
    ChildBlock.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p>Offset of the start of the child block within its parent block.</p>"}))
    ChildBlock.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p>Offset of the end of the child block within its parent block.</p>"}))
    ChildBlock.type = Types::ChildBlock
    ClassifierEvaluationMetrics.add_member(:accuracy, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Accuracy', traits: {"smithy.api#documentation" => "<p>The fraction of the labels that were correct recognized. It is computed by dividing the\n      number of labels in the test documents that were correctly recognized by the total number of\n      labels in the test documents.</p>"}))
    ClassifierEvaluationMetrics.add_member(:precision, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Precision', traits: {"smithy.api#documentation" => "<p>A measure of the usefulness of the classifier results in the test data. High precision\n      means that the classifier returned substantially more relevant results than irrelevant\n      ones.</p>"}))
    ClassifierEvaluationMetrics.add_member(:recall, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Recall', traits: {"smithy.api#documentation" => "<p>A measure of how complete the classifier results are for the test data. High recall means\n      that the classifier returned most of the relevant results. </p>"}))
    ClassifierEvaluationMetrics.add_member(:f1_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'F1Score', traits: {"smithy.api#documentation" => "<p>A measure of how accurate the classifier results are for the test data. It is derived from\n      the <code>Precision</code> and <code>Recall</code> values. The <code>F1Score</code> is the\n      harmonic average of the two scores. The highest score is 1, and the worst score is 0. </p>"}))
    ClassifierEvaluationMetrics.add_member(:micro_precision, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'MicroPrecision', traits: {"smithy.api#documentation" => "<p>A measure of the usefulness of the recognizer results in the test data. High precision\n      means that the recognizer returned substantially more relevant results than irrelevant ones.\n      Unlike the Precision metric which comes from averaging the precision of all available labels,\n      this is based on the overall score of all precision scores added together.</p>"}))
    ClassifierEvaluationMetrics.add_member(:micro_recall, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'MicroRecall', traits: {"smithy.api#documentation" => "<p>A measure of how complete the classifier results are for the test data. High recall means\n      that the classifier returned most of the relevant results. Specifically, this indicates how\n      many of the correct categories in the text that the model can predict. It is a percentage of\n      correct categories in the text that can found. Instead of averaging the recall scores of all\n      labels (as with Recall), micro Recall is based on the overall score of all recall scores added\n      together.</p>"}))
    ClassifierEvaluationMetrics.add_member(:micro_f1_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'MicroF1Score', traits: {"smithy.api#documentation" => "<p>A measure of how accurate the classifier results are for the test data. It is a\n      combination of the <code>Micro Precision</code> and <code>Micro Recall</code> values. The\n        <code>Micro F1Score</code> is the harmonic mean of the two scores. The highest score is 1,\n      and the worst score is 0.</p>"}))
    ClassifierEvaluationMetrics.add_member(:hamming_loss, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'HammingLoss', traits: {"smithy.api#documentation" => "<p>Indicates the fraction of labels that are incorrectly predicted. Also seen as the fraction\n      of wrong labels compared to the total number of labels. Scores closer to zero are\n      better.</p>"}))
    ClassifierEvaluationMetrics.type = Types::ClassifierEvaluationMetrics
    ClassifierMetadata.add_member(:number_of_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfLabels', traits: {"smithy.api#documentation" => "<p>The number of labels in the input data. </p>"}))
    ClassifierMetadata.add_member(:number_of_trained_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfTrainedDocuments', traits: {"smithy.api#documentation" => "<p>The number of documents in the input data that were used to train the classifier.\n      Typically this is 80 to 90 percent of the input documents.</p>"}))
    ClassifierMetadata.add_member(:number_of_test_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfTestDocuments', traits: {"smithy.api#documentation" => "<p>The number of documents in the input data that were used to test the classifier. Typically\n      this is 10 to 20 percent of the input documents, up to 10,000 documents.</p>"}))
    ClassifierMetadata.add_member(:evaluation_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: ClassifierEvaluationMetrics, location_name: 'EvaluationMetrics', traits: {"smithy.api#documentation" => "<p> Describes the result metrics for the test data associated with an documentation\n      classifier.</p>"}))
    ClassifierMetadata.type = Types::ClassifierMetadata
    ClassifyDocumentRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The document text to be analyzed. If you enter text using this parameter,\n      do not use the <code>Bytes</code> parameter.</p>"}))
    ClassifyDocumentRequest.add_member(:endpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierEndpointArn, location_name: 'EndpointArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the endpoint. </p>\n         <p>For prompt safety classification, Amazon Comprehend provides the endpoint ARN. For more information about prompt safety classifiers, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/trust-safety.html#prompt-classification\">Prompt safety classification</a> in the <i>Amazon Comprehend Developer Guide</i>\n         </p>\n         <p>For custom classification, you create an endpoint for your custom model. For more information, \n      see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/using-endpoints.html\">Using Amazon Comprehend endpoints</a>.</p>", "smithy.api#required" => {}}))
    ClassifyDocumentRequest.add_member(:bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: SemiStructuredDocumentBlob, location_name: 'Bytes', traits: {"smithy.api#documentation" => "<p>Use the <code>Bytes</code> parameter to input a text, PDF, Word or image file.</p>\n         <p>When you classify a document using a custom model, you can also use the <code>Bytes</code> parameter to input an Amazon Textract <code>DetectDocumentText</code>\n        or <code>AnalyzeDocument</code> output file.</p>\n         <p>To classify a document using the prompt safety classifier, use the <code>Text</code> parameter for input.</p>\n         <p>Provide the input document as a sequence of base64-encoded bytes.\n      If your code uses an Amazon Web Services SDK to classify documents, the SDK may encode\n      the document file bytes for you. </p>\n         <p>The maximum length of this field depends on the input document type. For details, see\n      <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync.html\">\n        Inputs for real-time custom analysis</a> in the Comprehend Developer Guide. </p>\n         <p>If you use the <code>Bytes</code> parameter, do not use the <code>Text</code> parameter.</p>"}))
    ClassifyDocumentRequest.add_member(:document_reader_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentReaderConfig, location_name: 'DocumentReaderConfig', traits: {"smithy.api#documentation" => "<p>Provides configuration parameters to override the default actions for extracting text\n      from PDF documents and image files.</p>"}))
    ClassifyDocumentRequest.type = Types::ClassifyDocumentRequest
    ClassifyDocumentResponse.add_member(:classes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfClasses, location_name: 'Classes', traits: {"smithy.api#documentation" => "<p>The classes used by the document being analyzed. These are used for models trained in multi-class mode.\n      Individual classes are mutually exclusive and each document is expected to have only a\n      single class assigned to it. For example, an animal can be a dog or a cat, but not both at the\n      same time. </p>\n         <p>For prompt safety classification, the response includes only two classes (SAFE_PROMPT and UNSAFE_PROMPT), \n      along with a confidence score for each class. The value range of the score is zero to one, where one is the highest confidence.</p>"}))
    ClassifyDocumentResponse.add_member(:labels, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfLabels, location_name: 'Labels', traits: {"smithy.api#documentation" => "<p>The labels used in the document being analyzed. These are used for multi-label trained\n      models. Individual labels represent different categories that are related in some manner and\n      are not mutually exclusive. For example, a movie can be just an action movie, or it can be an\n      action movie, a science fiction movie, and a comedy, all at the same time. </p>"}))
    ClassifyDocumentResponse.add_member(:document_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'DocumentMetadata', traits: {"smithy.api#documentation" => "<p>Extraction information about the document. This field is present\n      in the response only if your request includes the <code>Byte</code> parameter. </p>"}))
    ClassifyDocumentResponse.add_member(:document_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDocumentType, location_name: 'DocumentType', traits: {"smithy.api#documentation" => "<p>The document type for each page in the input document. This field is present\n      in the response only if your request includes the <code>Byte</code> parameter. </p>"}))
    ClassifyDocumentResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfErrors, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>Page-level errors that the system detected while processing the input document.\n      The field is empty if the system encountered no errors.</p>"}))
    ClassifyDocumentResponse.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfWarnings, location_name: 'Warnings', traits: {"smithy.api#documentation" => "<p>Warnings detected while processing the input document.\n      The response includes a warning if there is a mismatch between the input document type \n      and the model type associated with the endpoint that you specified. The response can also include\n       warnings for individual pages that have a mismatch. </p>\n         <p>The field is empty if the system generated no warnings.</p>"}))
    ClassifyDocumentResponse.type = Types::ClassifyDocumentResponse
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ContainsPiiEntitiesRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>A UTF-8 text string. The maximum string size is 100 KB.</p>", "smithy.api#required" => {}}))
    ContainsPiiEntitiesRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents.</p>", "smithy.api#required" => {}}))
    ContainsPiiEntitiesRequest.type = Types::ContainsPiiEntitiesRequest
    ContainsPiiEntitiesResponse.add_member(:labels, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEntityLabels, location_name: 'Labels', traits: {"smithy.api#documentation" => "<p>The labels used in the document being analyzed. Individual labels represent personally\n      identifiable information (PII) entity types.</p>"}))
    ContainsPiiEntitiesResponse.type = Types::ContainsPiiEntitiesResponse
    CreateDatasetRequest.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel of the flywheel to receive the data.</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArnName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>Name of the dataset.</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'DatasetType', traits: {"smithy.api#documentation" => "<p>The dataset type. You can specify that the data in a dataset is for training\n      the model or for testing the model.</p>"}))
    CreateDatasetRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description of the dataset.</p>"}))
    CreateDatasetRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetInputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>Information about the input data configuration. The type of input data varies based\n      on the format of the input and whether the data is for a classifier model or an entity recognition model.</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you don't set the client request token, Amazon\n      Comprehend generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateDatasetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags for the dataset.</p>"}))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendDatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset.</p>"}))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateDocumentClassifierRequest.add_member(:document_classifier_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArnName, location_name: 'DocumentClassifierName', traits: {"smithy.api#documentation" => "<p>The name of the document classifier.</p>", "smithy.api#required" => {}}))
    CreateDocumentClassifierRequest.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'VersionName', traits: {"smithy.api#documentation" => "<p>The version name given to the newly created classifier. Version names can have a maximum\n      of 256 characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The\n      version name must be unique among all models with the same classifier name in the Amazon Web Services account/Amazon Web Services Region.</p>"}))
    CreateDocumentClassifierRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>", "smithy.api#required" => {}}))
    CreateDocumentClassifierRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the document classifier. A tag is a key-value\n      pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with\n      \"Sales\" as the key might be added to a resource to indicate its use by the sales department.\n    </p>"}))
    CreateDocumentClassifierRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierInputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and location of the input data for the job.</p>", "smithy.api#required" => {}}))
    CreateDocumentClassifierRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierOutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the location for the output files from a custom classifier job.\n      This parameter is required for a request that creates a native document model.</p>"}))
    CreateDocumentClassifierRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you don't set the client request token, Amazon\n      Comprehend generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateDocumentClassifierRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. You can specify any of the languages\n      supported by Amazon Comprehend. All documents must be in the same language.</p>", "smithy.api#required" => {}}))
    CreateDocumentClassifierRequest.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    CreateDocumentClassifierRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing\n      the resources you are using for your custom classifier. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    CreateDocumentClassifierRequest.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierMode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>Indicates the mode in which the classifier will be trained. The classifier can be trained\n      in multi-class (single-label) mode or multi-label mode. \n      Multi-class mode identifies a single class label for each document and\n      multi-label mode identifies one or more class labels for each document. Multiple\n      labels for an individual document are separated by a delimiter. The default delimiter between\n      labels is a pipe (|).</p>"}))
    CreateDocumentClassifierRequest.add_member(:model_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'ModelKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the KMS key that Amazon Comprehend uses to encrypt\n      trained custom models. The ModelKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    CreateDocumentClassifierRequest.add_member(:model_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'ModelPolicy', traits: {"smithy.api#documentation" => "<p>The resource-based policy to attach to your custom document classifier model. You can use\n      this policy to allow another Amazon Web Services account to import your custom model.</p>\n         <p>Provide your policy as a JSON body that you enter as a UTF-8 encoded string without line\n      breaks. To provide valid JSON, enclose the attribute names and values in double quotes. If the\n      JSON body is also enclosed in double quotes, then you must escape the double quotes that are\n      inside the policy:</p>\n         <p>\n            <code>\"{\\\"attribute\\\": \\\"value\\\", \\\"attribute\\\": [\\\"value\\\"]}\"</code>\n         </p>\n         <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double\n      quotes to enclose the JSON names and values:</p>\n         <p>\n            <code>'{\"attribute\": \"value\", \"attribute\": [\"value\"]}'</code>\n         </p>"}))
    CreateDocumentClassifierRequest.type = Types::CreateDocumentClassifierRequest
    CreateDocumentClassifierResponse.add_member(:document_classifier_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierArn, location_name: 'DocumentClassifierArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the document classifier.</p>"}))
    CreateDocumentClassifierResponse.type = Types::CreateDocumentClassifierResponse
    CreateEndpointRequest.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendEndpointName, location_name: 'EndpointName', traits: {"smithy.api#documentation" => "<p>This is the descriptive suffix that becomes part of the <code>EndpointArn</code> used for\n      all subsequent requests to this resource. </p>", "smithy.api#required" => {}}))
    CreateEndpointRequest.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the model to which the endpoint will be\n      attached.</p>"}))
    CreateEndpointRequest.add_member(:desired_inference_units, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnitsInteger, location_name: 'DesiredInferenceUnits', traits: {"smithy.api#documentation" => "<p> The desired number of inference units to be used by the model using this endpoint.\n      \n      Each inference unit represents of a throughput of 100 characters per second.</p>", "smithy.api#required" => {}}))
    CreateEndpointRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>An idempotency token provided by the customer. If this token matches a previous endpoint\n      creation request, Amazon Comprehend will not return a <code>ResourceInUseException</code>.\n    </p>", "smithy.api#idempotencyToken" => {}}))
    CreateEndpointRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the endpoint. A tag is a key-value pair that adds\n      metadata to the endpoint. For example, a tag with \"Sales\" as the key might be added to an\n      endpoint to indicate its use by the sales department. </p>"}))
    CreateEndpointRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to trained custom models encrypted with a customer\n      managed key (ModelKmsKeyId).</p>"}))
    CreateEndpointRequest.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel to which the endpoint will be\n      attached.</p>"}))
    CreateEndpointRequest.type = Types::CreateEndpointRequest
    CreateEndpointResponse.add_member(:endpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendEndpointArn, location_name: 'EndpointArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the endpoint being created.</p>"}))
    CreateEndpointResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the model to which the endpoint is\n      attached.</p>"}))
    CreateEndpointResponse.type = Types::CreateEndpointResponse
    CreateEntityRecognizerRequest.add_member(:recognizer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArnName, location_name: 'RecognizerName', traits: {"smithy.api#documentation" => "<p>The name given to the newly created recognizer. Recognizer names can be a maximum of 256\n      characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The name\n      must be unique in the account/Region.</p>", "smithy.api#required" => {}}))
    CreateEntityRecognizerRequest.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'VersionName', traits: {"smithy.api#documentation" => "<p>The version name given to the newly created recognizer. Version names can be a maximum of\n      256 characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The\n      version name must be unique among all models with the same recognizer name in the account/Region.</p>"}))
    CreateEntityRecognizerRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>", "smithy.api#required" => {}}))
    CreateEntityRecognizerRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the entity recognizer. A tag is a key-value pair\n      that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with\n      \"Sales\" as the key might be added to a resource to indicate its use by the sales department.\n    </p>"}))
    CreateEntityRecognizerRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerInputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and location of the input data. The S3 bucket containing the input\n      data must be located in the same Region as the entity recognizer being created. </p>", "smithy.api#required" => {}}))
    CreateEntityRecognizerRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p> A unique identifier for the request. If you don't set the client request token, Amazon\n      Comprehend generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateEntityRecognizerRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p> You can specify any of the following languages: English\n      (\"en\"), Spanish (\"es\"), French (\"fr\"), Italian (\"it\"), German (\"de\"), or Portuguese (\"pt\").\n      If you plan to use this entity recognizer with PDF, Word, or image input files, you must\n      specify English as the language.\n      All training documents must be in the same language.</p>", "smithy.api#required" => {}}))
    CreateEntityRecognizerRequest.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    CreateEntityRecognizerRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing\n      the resources you are using for your custom entity recognizer. For more information, see\n      <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    CreateEntityRecognizerRequest.add_member(:model_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'ModelKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the KMS key that Amazon Comprehend uses to encrypt\n      trained custom models. The ModelKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    CreateEntityRecognizerRequest.add_member(:model_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'ModelPolicy', traits: {"smithy.api#documentation" => "<p>The JSON resource-based policy to attach to your custom entity recognizer model. You can\n      use this policy to allow another Amazon Web Services account to import your custom model.</p>\n         <p>Provide your JSON as a UTF-8 encoded string without line breaks. To provide valid JSON for\n      your policy, enclose the attribute names and values in double quotes. If the JSON body is also\n      enclosed in double quotes, then you must escape the double quotes that are inside the\n      policy:</p>\n         <p>\n            <code>\"{\\\"attribute\\\": \\\"value\\\", \\\"attribute\\\": [\\\"value\\\"]}\"</code>\n         </p>\n         <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double\n      quotes to enclose the JSON names and values:</p>\n         <p>\n            <code>'{\"attribute\": \"value\", \"attribute\": [\"value\"]}'</code>\n         </p>"}))
    CreateEntityRecognizerRequest.type = Types::CreateEntityRecognizerRequest
    CreateEntityRecognizerResponse.add_member(:entity_recognizer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerArn, location_name: 'EntityRecognizerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>"}))
    CreateEntityRecognizerResponse.type = Types::CreateEntityRecognizerResponse
    CreateFlywheelRequest.add_member(:flywheel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArnName, location_name: 'FlywheelName', traits: {"smithy.api#documentation" => "<p>Name for the flywheel.</p>", "smithy.api#required" => {}}))
    CreateFlywheelRequest.add_member(:active_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'ActiveModelArn', traits: {"smithy.api#documentation" => "<p>To associate an existing model with the flywheel, specify the Amazon Resource Number (ARN) of the model version.\n      Do not set <code>TaskConfig</code> or <code>ModelType</code> if you specify an <code>ActiveModelArn</code>.</p>"}))
    CreateFlywheelRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend the permissions required to access the flywheel data in the data lake.</p>", "smithy.api#required" => {}}))
    CreateFlywheelRequest.add_member(:task_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskConfig, location_name: 'TaskConfig', traits: {"smithy.api#documentation" => "<p>Configuration about the model associated with the flywheel.\n      You need to set <code>TaskConfig</code> if you are creating a flywheel for a new model.</p>"}))
    CreateFlywheelRequest.add_member(:model_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelType, location_name: 'ModelType', traits: {"smithy.api#documentation" => "<p>The model type. You need to set <code>ModelType</code> if you are creating a flywheel for a new model.</p>"}))
    CreateFlywheelRequest.add_member(:data_lake_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelS3Uri, location_name: 'DataLakeS3Uri', traits: {"smithy.api#documentation" => "<p>Enter the S3 location for the data lake. You can specify a new S3 bucket or a new folder of an\n    existing S3 bucket. The flywheel creates the data lake at this location.</p>", "smithy.api#required" => {}}))
    CreateFlywheelRequest.add_member(:data_security_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSecurityConfig, location_name: 'DataSecurityConfig', traits: {"smithy.api#documentation" => "<p>Data security configurations.</p>"}))
    CreateFlywheelRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you don't set the client request token, Amazon\n      Comprehend generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateFlywheelRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to associate with this flywheel.</p>"}))
    CreateFlywheelRequest.type = Types::CreateFlywheelRequest
    CreateFlywheelResponse.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel.</p>"}))
    CreateFlywheelResponse.add_member(:active_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'ActiveModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the active model version.</p>"}))
    CreateFlywheelResponse.type = Types::CreateFlywheelResponse
    CustomerInputStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputString)
    DataSecurityConfig.add_member(:model_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'ModelKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the KMS key that Amazon Comprehend uses to encrypt\n      trained custom models. The ModelKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    DataSecurityConfig.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the KMS key that Amazon Comprehend uses to encrypt the volume.</p>"}))
    DataSecurityConfig.add_member(:data_lake_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'DataLakeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the KMS key that Amazon Comprehend uses to encrypt the data in the data lake.</p>"}))
    DataSecurityConfig.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig'))
    DataSecurityConfig.type = Types::DataSecurityConfig
    DatasetAugmentedManifestsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetAugmentedManifestsListItem)
    DatasetAugmentedManifestsListItem.add_member(:attribute_names, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNamesList, location_name: 'AttributeNames', traits: {"smithy.api#documentation" => "<p>The JSON attribute that contains the annotations for your training documents. The number\n      of attribute names that you specify depends on whether your augmented manifest file is the\n      output of a single labeling job or a chained labeling job.</p>\n         <p>If your file is the output of a single labeling job, specify the LabelAttributeName key\n      that was used when the job was created in Ground Truth.</p>\n         <p>If your file is the output of a chained labeling job, specify the LabelAttributeName key\n      for one or more jobs in the chain. Each LabelAttributeName key provides the annotations from\n      an individual job.</p>", "smithy.api#required" => {}}))
    DatasetAugmentedManifestsListItem.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of the augmented manifest file.</p>", "smithy.api#required" => {}}))
    DatasetAugmentedManifestsListItem.add_member(:annotation_data_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'AnnotationDataS3Uri', traits: {"smithy.api#documentation" => "<p>The S3 prefix to the annotation files that are referred in the augmented manifest\n      file.</p>"}))
    DatasetAugmentedManifestsListItem.add_member(:source_documents_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'SourceDocumentsS3Uri', traits: {"smithy.api#documentation" => "<p>The S3 prefix to the source files (PDFs) that are referred to in the augmented manifest\n      file.</p>"}))
    DatasetAugmentedManifestsListItem.add_member(:document_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AugmentedManifestsDocumentTypeFormat, location_name: 'DocumentType', traits: {"smithy.api#documentation" => "<p>The type of augmented manifest. If you don't specify, the default is PlainTextDocument. </p>\n         <p>\n            <code>PLAIN_TEXT_DOCUMENT</code> A document type that represents any unicode text that\n      is encoded in UTF-8.</p>"}))
    DatasetAugmentedManifestsListItem.type = Types::DatasetAugmentedManifestsListItem
    DatasetDataFormat.add_member(:comprehend_csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPREHEND_CSV', traits: {"smithy.api#enumValue" => "COMPREHEND_CSV"}))
    DatasetDataFormat.add_member(:augmented_manifest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUGMENTED_MANIFEST', traits: {"smithy.api#enumValue" => "AUGMENTED_MANIFEST"}))
    DatasetDocumentClassifierInputDataConfig.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>The Amazon S3 URI for the input data. The S3 bucket must be in the same Region as the API\n      endpoint that you are calling. The URI can point to a single input file or it can provide the\n      prefix for a collection of input files.</p>\n         <p>For example, if you use the URI <code>S3://bucketName/prefix</code>, if the prefix is a\n      single file, Amazon Comprehend uses that file as input. If more than one file begins with the\n      prefix, Amazon Comprehend uses all of them as input.</p>\n         <p>This parameter is required if you set <code>DataFormat</code> to\n      <code>COMPREHEND_CSV</code>.</p>", "smithy.api#required" => {}}))
    DatasetDocumentClassifierInputDataConfig.add_member(:label_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDelimiter, location_name: 'LabelDelimiter', traits: {"smithy.api#documentation" => "<p>Indicates the delimiter used to separate each label for training a multi-label classifier.\n      The default delimiter between labels is a pipe (|). You can use a different character as a\n      delimiter (if it's an allowed character) by specifying it under Delimiter for labels. If the\n      training documents use a delimiter other than the default or the delimiter you specify, the\n      labels on that line will be combined to make a single unique label, such as\n      LABELLABELLABEL.</p>"}))
    DatasetDocumentClassifierInputDataConfig.type = Types::DatasetDocumentClassifierInputDataConfig
    DatasetEntityRecognizerAnnotations.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p> Specifies the Amazon S3 location where the training documents for an entity recognizer\n      are located. The URI must be in the same Region as the API endpoint that you are\n      calling.</p>", "smithy.api#required" => {}}))
    DatasetEntityRecognizerAnnotations.type = Types::DatasetEntityRecognizerAnnotations
    DatasetEntityRecognizerDocuments.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p> Specifies the Amazon S3 location where the documents for the dataset\n      are located.  </p>", "smithy.api#required" => {}}))
    DatasetEntityRecognizerDocuments.add_member(:input_format, Smithy::Schema::Shapes::ShapeRef.new(shape: InputFormat, location_name: 'InputFormat', traits: {"smithy.api#documentation" => "<p> Specifies how the text in an input file should be processed. This is optional, and the\n      default is ONE_DOC_PER_LINE. ONE_DOC_PER_FILE - Each file is considered a separate document.\n      Use this option when you are processing large documents, such as newspaper articles or\n      scientific papers. ONE_DOC_PER_LINE - Each line in a file is considered a separate document.\n      Use this option when you are processing many short documents, such as text messages.</p>"}))
    DatasetEntityRecognizerDocuments.type = Types::DatasetEntityRecognizerDocuments
    DatasetEntityRecognizerEntityList.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon S3 location where the entity list is located.</p>", "smithy.api#required" => {}}))
    DatasetEntityRecognizerEntityList.type = Types::DatasetEntityRecognizerEntityList
    DatasetEntityRecognizerInputDataConfig.add_member(:annotations, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetEntityRecognizerAnnotations, location_name: 'Annotations', traits: {"smithy.api#documentation" => "<p>The S3 location of the annotation documents for your custom entity recognizer.</p>"}))
    DatasetEntityRecognizerInputDataConfig.add_member(:documents, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetEntityRecognizerDocuments, location_name: 'Documents', traits: {"smithy.api#documentation" => "<p>The format and location of the training documents for your custom entity\n      recognizer.</p>", "smithy.api#required" => {}}))
    DatasetEntityRecognizerInputDataConfig.add_member(:entity_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetEntityRecognizerEntityList, location_name: 'EntityList', traits: {"smithy.api#documentation" => "<p>The S3 location of the entity list for your custom entity recognizer.</p>"}))
    DatasetEntityRecognizerInputDataConfig.type = Types::DatasetEntityRecognizerInputDataConfig
    DatasetFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Filter the datasets based on the dataset status.</p>"}))
    DatasetFilter.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'DatasetType', traits: {"smithy.api#documentation" => "<p>Filter the datasets based on the dataset type.</p>"}))
    DatasetFilter.add_member(:creation_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTimeAfter', traits: {"smithy.api#documentation" => "<p>Filter the datasets to include datasets created after the specified time.</p>"}))
    DatasetFilter.add_member(:creation_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTimeBefore', traits: {"smithy.api#documentation" => "<p>Filter the datasets to include datasets created before the specified time.</p>"}))
    DatasetFilter.type = Types::DatasetFilter
    DatasetInputDataConfig.add_member(:augmented_manifests, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetAugmentedManifestsList, location_name: 'AugmentedManifests', traits: {"smithy.api#documentation" => "<p>A list of augmented manifest files that provide training data for your custom model. An\n      augmented manifest file is a labeled dataset that is produced by Amazon SageMaker Ground\n      Truth. </p>"}))
    DatasetInputDataConfig.add_member(:data_format, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetDataFormat, location_name: 'DataFormat', traits: {"smithy.api#documentation" => "<p>\n            <code>COMPREHEND_CSV</code>: The data format is a two-column CSV file, where the\n      first column contains labels and the second column contains documents.</p>\n         <p>\n            <code>AUGMENTED_MANIFEST</code>: The data format  </p>"}))
    DatasetInputDataConfig.add_member(:document_classifier_input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetDocumentClassifierInputDataConfig, location_name: 'DocumentClassifierInputDataConfig', traits: {"smithy.api#documentation" => "<p>The input properties for training a document classifier model. </p>\n         <p>For more information on how the input file is formatted, see  <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/prep-classifier-data.html\">Preparing training data</a>\n      in the Comprehend Developer Guide. </p>"}))
    DatasetInputDataConfig.add_member(:entity_recognizer_input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetEntityRecognizerInputDataConfig, location_name: 'EntityRecognizerInputDataConfig', traits: {"smithy.api#documentation" => "<p>The input properties for training an entity recognizer model.</p>"}))
    DatasetInputDataConfig.type = Types::DatasetInputDataConfig
    DatasetProperties.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendDatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset.</p>"}))
    DatasetProperties.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArnName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>"}))
    DatasetProperties.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'DatasetType', traits: {"smithy.api#documentation" => "<p>The dataset type (training data or test data).</p>"}))
    DatasetProperties.add_member(:dataset_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'DatasetS3Uri', traits: {"smithy.api#documentation" => "<p>The S3 URI where the dataset is stored.</p>"}))
    DatasetProperties.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description of the dataset.</p>"}))
    DatasetProperties.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The dataset status. While the system creates the dataset, the status is <code>CREATING</code>.\n      When the dataset is ready to use, the status changes to <code>COMPLETED</code>. </p>"}))
    DatasetProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description of the status of the dataset.</p>"}))
    DatasetProperties.add_member(:number_of_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfDocuments, location_name: 'NumberOfDocuments', traits: {"smithy.api#documentation" => "<p>The number of documents in the dataset.</p>"}))
    DatasetProperties.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Creation time of the dataset.</p>"}))
    DatasetProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>Time when the data from the dataset becomes available in the data lake.</p>"}))
    DatasetProperties.type = Types::DatasetProperties
    DatasetPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetProperties)
    DatasetStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    DatasetStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DatasetStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DatasetType.add_member(:train, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAIN', traits: {"smithy.api#enumValue" => "TRAIN"}))
    DatasetType.add_member(:test, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST', traits: {"smithy.api#enumValue" => "TEST"}))
    DeleteDocumentClassifierRequest.add_member(:document_classifier_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierArn, location_name: 'DocumentClassifierArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the document classifier. </p>", "smithy.api#required" => {}}))
    DeleteDocumentClassifierRequest.type = Types::DeleteDocumentClassifierRequest
    DeleteDocumentClassifierResponse.type = Types::DeleteDocumentClassifierResponse
    DeleteEndpointRequest.add_member(:endpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendEndpointArn, location_name: 'EndpointArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the endpoint being deleted.</p>", "smithy.api#required" => {}}))
    DeleteEndpointRequest.type = Types::DeleteEndpointRequest
    DeleteEndpointResponse.type = Types::DeleteEndpointResponse
    DeleteEntityRecognizerRequest.add_member(:entity_recognizer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerArn, location_name: 'EntityRecognizerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>", "smithy.api#required" => {}}))
    DeleteEntityRecognizerRequest.type = Types::DeleteEntityRecognizerRequest
    DeleteEntityRecognizerResponse.type = Types::DeleteEntityRecognizerResponse
    DeleteFlywheelRequest.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel to delete.</p>", "smithy.api#required" => {}}))
    DeleteFlywheelRequest.type = Types::DeleteFlywheelRequest
    DeleteFlywheelResponse.type = Types::DeleteFlywheelResponse
    DeleteResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom model version that has the policy to delete.</p>", "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>The revision ID of the policy to delete.</p>"}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DescribeDatasetRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendDatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset.</p>", "smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetProperties, location_name: 'DatasetProperties', traits: {"smithy.api#documentation" => "<p>The dataset properties.</p>"}))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeDocumentClassificationJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier that Amazon Comprehend generated for the job. The  \n      <code>StartDocumentClassificationJob</code> operation returns this identifier in its response.</p>", "smithy.api#required" => {}}))
    DescribeDocumentClassificationJobRequest.type = Types::DescribeDocumentClassificationJobRequest
    DescribeDocumentClassificationJobResponse.add_member(:document_classification_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassificationJobProperties, location_name: 'DocumentClassificationJobProperties', traits: {"smithy.api#documentation" => "<p>An object that describes the properties associated with the document classification\n      job.</p>"}))
    DescribeDocumentClassificationJobResponse.type = Types::DescribeDocumentClassificationJobResponse
    DescribeDocumentClassifierRequest.add_member(:document_classifier_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierArn, location_name: 'DocumentClassifierArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the document classifier. The  \n      <code>CreateDocumentClassifier</code> operation returns this identifier in its response.</p>", "smithy.api#required" => {}}))
    DescribeDocumentClassifierRequest.type = Types::DescribeDocumentClassifierRequest
    DescribeDocumentClassifierResponse.add_member(:document_classifier_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierProperties, location_name: 'DocumentClassifierProperties', traits: {"smithy.api#documentation" => "<p>An object that contains the properties associated with a document classifier.</p>"}))
    DescribeDocumentClassifierResponse.type = Types::DescribeDocumentClassifierResponse
    DescribeDominantLanguageDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier that Amazon Comprehend generated for the job. The  \n      <code>StartDominantLanguageDetectionJob</code> operation returns this identifier in its response.</p>", "smithy.api#required" => {}}))
    DescribeDominantLanguageDetectionJobRequest.type = Types::DescribeDominantLanguageDetectionJobRequest
    DescribeDominantLanguageDetectionJobResponse.add_member(:dominant_language_detection_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: DominantLanguageDetectionJobProperties, location_name: 'DominantLanguageDetectionJobProperties', traits: {"smithy.api#documentation" => "<p>An object that contains the properties associated with a dominant language detection\n      job.</p>"}))
    DescribeDominantLanguageDetectionJobResponse.type = Types::DescribeDominantLanguageDetectionJobResponse
    DescribeEndpointRequest.add_member(:endpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendEndpointArn, location_name: 'EndpointArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the endpoint being described.</p>", "smithy.api#required" => {}}))
    DescribeEndpointRequest.type = Types::DescribeEndpointRequest
    DescribeEndpointResponse.add_member(:endpoint_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointProperties, location_name: 'EndpointProperties', traits: {"smithy.api#documentation" => "<p>Describes information associated with the specific endpoint.</p>"}))
    DescribeEndpointResponse.type = Types::DescribeEndpointResponse
    DescribeEntitiesDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier that Amazon Comprehend generated for the job. The \n        <code>StartEntitiesDetectionJob</code> operation returns this identifier in its response.</p>", "smithy.api#required" => {}}))
    DescribeEntitiesDetectionJobRequest.type = Types::DescribeEntitiesDetectionJobRequest
    DescribeEntitiesDetectionJobResponse.add_member(:entities_detection_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitiesDetectionJobProperties, location_name: 'EntitiesDetectionJobProperties', traits: {"smithy.api#documentation" => "<p>An object that contains the properties associated with an entities detection job.</p>"}))
    DescribeEntitiesDetectionJobResponse.type = Types::DescribeEntitiesDetectionJobResponse
    DescribeEntityRecognizerRequest.add_member(:entity_recognizer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerArn, location_name: 'EntityRecognizerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>", "smithy.api#required" => {}}))
    DescribeEntityRecognizerRequest.type = Types::DescribeEntityRecognizerRequest
    DescribeEntityRecognizerResponse.add_member(:entity_recognizer_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerProperties, location_name: 'EntityRecognizerProperties', traits: {"smithy.api#documentation" => "<p>Describes information associated with an entity recognizer.</p>"}))
    DescribeEntityRecognizerResponse.type = Types::DescribeEntityRecognizerResponse
    DescribeEventsDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the events detection job.</p>", "smithy.api#required" => {}}))
    DescribeEventsDetectionJobRequest.type = Types::DescribeEventsDetectionJobRequest
    DescribeEventsDetectionJobResponse.add_member(:events_detection_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: EventsDetectionJobProperties, location_name: 'EventsDetectionJobProperties', traits: {"smithy.api#documentation" => "<p>An object that contains the properties associated with an event detection job.</p>"}))
    DescribeEventsDetectionJobResponse.type = Types::DescribeEventsDetectionJobResponse
    DescribeFlywheelIterationRequest.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    DescribeFlywheelIterationRequest.add_member(:flywheel_iteration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelIterationId, location_name: 'FlywheelIterationId', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    DescribeFlywheelIterationRequest.type = Types::DescribeFlywheelIterationRequest
    DescribeFlywheelIterationResponse.add_member(:flywheel_iteration_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelIterationProperties, location_name: 'FlywheelIterationProperties', traits: {"smithy.api#documentation" => "<p>The configuration properties of a flywheel iteration.</p>"}))
    DescribeFlywheelIterationResponse.type = Types::DescribeFlywheelIterationResponse
    DescribeFlywheelRequest.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel.</p>", "smithy.api#required" => {}}))
    DescribeFlywheelRequest.type = Types::DescribeFlywheelRequest
    DescribeFlywheelResponse.add_member(:flywheel_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelProperties, location_name: 'FlywheelProperties', traits: {"smithy.api#documentation" => "<p>The flywheel properties.</p>"}))
    DescribeFlywheelResponse.type = Types::DescribeFlywheelResponse
    DescribeKeyPhrasesDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier that Amazon Comprehend generated for the job. The \n        <code>StartKeyPhrasesDetectionJob</code> operation returns this identifier in its\n      response.</p>", "smithy.api#required" => {}}))
    DescribeKeyPhrasesDetectionJobRequest.type = Types::DescribeKeyPhrasesDetectionJobRequest
    DescribeKeyPhrasesDetectionJobResponse.add_member(:key_phrases_detection_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPhrasesDetectionJobProperties, location_name: 'KeyPhrasesDetectionJobProperties', traits: {"smithy.api#documentation" => "<p>An object that contains the properties associated with a key phrases detection job.\n    </p>"}))
    DescribeKeyPhrasesDetectionJobResponse.type = Types::DescribeKeyPhrasesDetectionJobResponse
    DescribePiiEntitiesDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its\n      response.</p>", "smithy.api#required" => {}}))
    DescribePiiEntitiesDetectionJobRequest.type = Types::DescribePiiEntitiesDetectionJobRequest
    DescribePiiEntitiesDetectionJobResponse.add_member(:pii_entities_detection_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntitiesDetectionJobProperties, location_name: 'PiiEntitiesDetectionJobProperties'))
    DescribePiiEntitiesDetectionJobResponse.type = Types::DescribePiiEntitiesDetectionJobResponse
    DescribeResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom model version that has the resource policy.</p>", "smithy.api#required" => {}}))
    DescribeResourcePolicyRequest.type = Types::DescribeResourcePolicyRequest
    DescribeResourcePolicyResponse.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'ResourcePolicy', traits: {"smithy.api#documentation" => "<p>The JSON body of the resource-based policy.</p>"}))
    DescribeResourcePolicyResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time at which the policy was created.</p>"}))
    DescribeResourcePolicyResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The time at which the policy was last modified.</p>"}))
    DescribeResourcePolicyResponse.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>The revision ID of the policy. Each time you modify a policy, Amazon Comprehend assigns a\n      new revision ID, and it deletes the prior version of the policy.</p>"}))
    DescribeResourcePolicyResponse.type = Types::DescribeResourcePolicyResponse
    DescribeSentimentDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its\n      response.</p>", "smithy.api#required" => {}}))
    DescribeSentimentDetectionJobRequest.type = Types::DescribeSentimentDetectionJobRequest
    DescribeSentimentDetectionJobResponse.add_member(:sentiment_detection_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentDetectionJobProperties, location_name: 'SentimentDetectionJobProperties', traits: {"smithy.api#documentation" => "<p>An object that contains the properties associated with a sentiment detection job.</p>"}))
    DescribeSentimentDetectionJobResponse.type = Types::DescribeSentimentDetectionJobResponse
    DescribeTargetedSentimentDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier that Amazon Comprehend generated for the job. The  \n      <code>StartTargetedSentimentDetectionJob</code> operation returns this identifier in its\n      response.</p>", "smithy.api#required" => {}}))
    DescribeTargetedSentimentDetectionJobRequest.type = Types::DescribeTargetedSentimentDetectionJobRequest
    DescribeTargetedSentimentDetectionJobResponse.add_member(:targeted_sentiment_detection_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetedSentimentDetectionJobProperties, location_name: 'TargetedSentimentDetectionJobProperties', traits: {"smithy.api#documentation" => "<p>An object that contains the properties associated with a targeted sentiment detection job.</p>"}))
    DescribeTargetedSentimentDetectionJobResponse.type = Types::DescribeTargetedSentimentDetectionJobResponse
    DescribeTopicsDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier assigned by the user to the detection job.</p>", "smithy.api#required" => {}}))
    DescribeTopicsDetectionJobRequest.type = Types::DescribeTopicsDetectionJobRequest
    DescribeTopicsDetectionJobResponse.add_member(:topics_detection_job_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicsDetectionJobProperties, location_name: 'TopicsDetectionJobProperties', traits: {"smithy.api#documentation" => "<p>The list of properties for the requested job.</p>"}))
    DescribeTopicsDetectionJobResponse.type = Types::DescribeTopicsDetectionJobResponse
    DetectDominantLanguageRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>A UTF-8 text string. The string must contain at least 20 characters. The maximum string size is 100 KB.</p>", "smithy.api#required" => {}}))
    DetectDominantLanguageRequest.type = Types::DetectDominantLanguageRequest
    DetectDominantLanguageResponse.add_member(:languages, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDominantLanguages, location_name: 'Languages', traits: {"smithy.api#documentation" => "<p>Array of languages that Amazon Comprehend detected in the input text. \n      The array is sorted in descending order of the score \n      (the dominant language is always the first element in the array).</p>\n         <p>For each language, the\n      response returns the RFC 5646 language code and the level of confidence that Amazon Comprehend\n      has in the accuracy of its inference. For more information about RFC 5646, see <a href=\"https://tools.ietf.org/html/rfc5646\">Tags for Identifying Languages</a> on the\n        <i>IETF Tools</i> web site.</p>"}))
    DetectDominantLanguageResponse.type = Types::DetectDominantLanguageResponse
    DetectEntitiesRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>A UTF-8 text string. The maximum string size is 100 KB. If you enter text using this parameter,\n    do not use the <code>Bytes</code> parameter.</p>"}))
    DetectEntitiesRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. You can specify any of the primary languages\n      supported by Amazon Comprehend. If your request includes the endpoint for a custom entity recognition model, Amazon\n      Comprehend uses the language of your custom model, and it ignores any language code that you\n      specify here.</p>\n         <p>All input documents must be in the same language.</p>"}))
    DetectEntitiesRequest.add_member(:endpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerEndpointArn, location_name: 'EndpointArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of an endpoint that is associated with a custom entity\n      recognition model. Provide an endpoint if you want to detect entities by using your own custom\n      model instead of the default model that is used by Amazon Comprehend.</p>\n         <p>If you specify an endpoint, Amazon Comprehend uses the language of your custom model, and\n      it ignores any language code that you provide in your request.</p>\n         <p>For information about endpoints, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html\">Managing endpoints</a>.</p>"}))
    DetectEntitiesRequest.add_member(:bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: SemiStructuredDocumentBlob, location_name: 'Bytes', traits: {"smithy.api#documentation" => "<p>This field applies only when you use a custom entity recognition model that\n      was trained with PDF annotations. For other cases,\n      enter your text input in the <code>Text</code> field.</p>\n         <p>\n      Use the <code>Bytes</code> parameter to input a text, PDF, Word or image file.\n      Using a plain-text file in the <code>Bytes</code> parameter is equivelent to using the\n      <code>Text</code> parameter (the <code>Entities</code> field in the response is identical).</p>\n         <p>You can also use the <code>Bytes</code> parameter to input an Amazon Textract <code>DetectDocumentText</code>\n      or <code>AnalyzeDocument</code> output file.</p>\n         <p>Provide the input document as a sequence of base64-encoded bytes.\n      If your code uses an Amazon Web Services SDK to detect entities, the SDK may encode\n      the document file bytes for you. </p>\n         <p>The maximum length of this field depends on the input document type. For details, see\n      <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync.html\">\n        Inputs for real-time custom analysis</a> in the Comprehend Developer Guide. </p>\n         <p>If you use the <code>Bytes</code> parameter, do not use the <code>Text</code> parameter.</p>"}))
    DetectEntitiesRequest.add_member(:document_reader_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentReaderConfig, location_name: 'DocumentReaderConfig', traits: {"smithy.api#documentation" => "<p>Provides configuration parameters to override the default actions for extracting text\n      from PDF documents and image files.</p>"}))
    DetectEntitiesRequest.type = Types::DetectEntitiesRequest
    DetectEntitiesResponse.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEntities, location_name: 'Entities', traits: {"smithy.api#documentation" => "<p>A collection of entities identified in the input text. For each entity, the response\n      provides the entity text, entity type, where the entity text begins and ends, and the level of\n      confidence that Amazon Comprehend has in the detection. </p>\n         <p>If your request uses a custom entity recognition model, Amazon Comprehend detects the\n      entities that the model is trained to recognize. Otherwise, it detects the default entity\n      types. For a list of default entity types, see\n      <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html\">Entities</a> in the Comprehend Developer Guide.\n    </p>"}))
    DetectEntitiesResponse.add_member(:document_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'DocumentMetadata', traits: {"smithy.api#documentation" => "<p>Information about the document, discovered during text extraction. This field is present\n      in the response only if your request used the <code>Byte</code> parameter. </p>"}))
    DetectEntitiesResponse.add_member(:document_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDocumentType, location_name: 'DocumentType', traits: {"smithy.api#documentation" => "<p>The document type for each page in the input document. This field is present\n      in the response only if your request used the <code>Byte</code> parameter. </p>"}))
    DetectEntitiesResponse.add_member(:blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfBlocks, location_name: 'Blocks', traits: {"smithy.api#documentation" => "<p>Information about each block of text in the input document.\n      Blocks are nested. A page block contains a block for each line of text,\n      which contains a block for each word. </p>\n         <p>The <code>Block</code> content for a Word input document does not include a <code>Geometry</code> field.</p>\n         <p>The <code>Block</code> field is not present in the response for plain-text inputs.</p>"}))
    DetectEntitiesResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfErrors, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>Page-level errors that the system detected while processing the input document.\n      The field is empty if the system encountered no errors.</p>"}))
    DetectEntitiesResponse.type = Types::DetectEntitiesResponse
    DetectKeyPhrasesRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>A UTF-8 text string. The string must contain less than 100 KB of UTF-8 encoded\n      characters.</p>", "smithy.api#required" => {}}))
    DetectKeyPhrasesRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. You can specify any of the primary languages\n      supported by Amazon Comprehend. All documents must be in the same language.</p>", "smithy.api#required" => {}}))
    DetectKeyPhrasesRequest.type = Types::DetectKeyPhrasesRequest
    DetectKeyPhrasesResponse.add_member(:key_phrases, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfKeyPhrases, location_name: 'KeyPhrases', traits: {"smithy.api#documentation" => "<p>A collection of key phrases that Amazon Comprehend identified in the input text. For\n      each key phrase, the response provides the text of the key phrase, where the key phrase begins\n      and ends, and the level of confidence that Amazon Comprehend has in the accuracy of the\n      detection. </p>"}))
    DetectKeyPhrasesResponse.type = Types::DetectKeyPhrasesResponse
    DetectPiiEntitiesRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>A UTF-8 text string. The maximum string size is 100 KB.</p>", "smithy.api#required" => {}}))
    DetectPiiEntitiesRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input text.   \n      Enter the language code for English (en) or Spanish (es).</p>", "smithy.api#required" => {}}))
    DetectPiiEntitiesRequest.type = Types::DetectPiiEntitiesRequest
    DetectPiiEntitiesResponse.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPiiEntities, location_name: 'Entities', traits: {"smithy.api#documentation" => "<p>A collection of PII entities identified in the input text. For each entity, the response\n      provides the entity type, where the entity text begins and ends, and the level of confidence\n      that Amazon Comprehend has in the detection.</p>"}))
    DetectPiiEntitiesResponse.type = Types::DetectPiiEntitiesResponse
    DetectSentimentRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>A UTF-8 text string. The maximum string size is 5 KB.</p>", "smithy.api#required" => {}}))
    DetectSentimentRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. You can specify any of the primary languages\n      supported by Amazon Comprehend. All documents must be in the same language.</p>", "smithy.api#required" => {}}))
    DetectSentimentRequest.type = Types::DetectSentimentRequest
    DetectSentimentResponse.add_member(:sentiment, Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentType, location_name: 'Sentiment', traits: {"smithy.api#documentation" => "<p>The inferred sentiment that Amazon Comprehend has the highest level of confidence\n      in.</p>"}))
    DetectSentimentResponse.add_member(:sentiment_score, Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentScore, location_name: 'SentimentScore', traits: {"smithy.api#documentation" => "<p>An object that lists the sentiments, and their corresponding confidence\n      levels.</p>"}))
    DetectSentimentResponse.type = Types::DetectSentimentResponse
    DetectSyntaxRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>A UTF-8 string. The maximum string size is 5 KB.</p>", "smithy.api#required" => {}}))
    DetectSyntaxRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SyntaxLanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code of the input documents. You can specify any of the following languages\n      supported by Amazon Comprehend: German (\"de\"), English (\"en\"), Spanish (\"es\"), French (\"fr\"),\n      Italian (\"it\"), or Portuguese (\"pt\").</p>", "smithy.api#required" => {}}))
    DetectSyntaxRequest.type = Types::DetectSyntaxRequest
    DetectSyntaxResponse.add_member(:syntax_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSyntaxTokens, location_name: 'SyntaxTokens', traits: {"smithy.api#documentation" => "<p>A collection of syntax tokens describing the text. For each token, the response provides\n      the text, the token type, where the text begins and ends, and the level of confidence that\n      Amazon Comprehend has that the token is correct. For a list of token types, see\n      <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html\">Syntax</a> in the Comprehend Developer Guide.\n    </p>"}))
    DetectSyntaxResponse.type = Types::DetectSyntaxResponse
    DetectTargetedSentimentRequest.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>A UTF-8 text string. The maximum string length is 5 KB.</p>", "smithy.api#required" => {}}))
    DetectTargetedSentimentRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. Currently, English is the only supported language.</p>", "smithy.api#required" => {}}))
    DetectTargetedSentimentRequest.type = Types::DetectTargetedSentimentRequest
    DetectTargetedSentimentResponse.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTargetedSentimentEntities, location_name: 'Entities', traits: {"smithy.api#documentation" => "<p>Targeted sentiment analysis for each of the entities identified in the input text.</p>"}))
    DetectTargetedSentimentResponse.type = Types::DetectTargetedSentimentResponse
    DetectToxicContentRequest.add_member(:text_segments, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTextSegments, location_name: 'TextSegments', traits: {"smithy.api#documentation" => "<p>A list of up to 10 text strings. Each string has a maximum size of 1 KB, and\n      the maximum size of the list is 10 KB.</p>", "smithy.api#required" => {}}))
    DetectToxicContentRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input text. Currently, English is the only supported language.</p>", "smithy.api#required" => {}}))
    DetectToxicContentRequest.type = Types::DetectToxicContentRequest
    DetectToxicContentResponse.add_member(:result_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfToxicLabels, location_name: 'ResultList', traits: {"smithy.api#documentation" => "<p>Results of the content moderation analysis.\n      Each entry in the results list contains a list of toxic content types identified in \n      the text, along with a confidence score for each content type. \n      The results list also includes a toxicity score for each entry in the results list.\n    </p>"}))
    DetectToxicContentResponse.type = Types::DetectToxicContentResponse
    DocumentClass.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the class.</p>"}))
    DocumentClass.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The confidence score that Amazon Comprehend has this class correctly attributed.</p>"}))
    DocumentClass.add_member(:page, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Page', traits: {"smithy.api#documentation" => "<p>Page number in the input document. This field is present\n      in the response only if your request includes the <code>Byte</code> parameter. </p>"}))
    DocumentClass.type = Types::DocumentClass
    DocumentClassificationConfig.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierMode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>Classification mode indicates whether the documents are <code>MULTI_CLASS</code> or <code>MULTI_LABEL</code>.</p>", "smithy.api#required" => {}}))
    DocumentClassificationConfig.add_member(:labels, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelsList, location_name: 'Labels', traits: {"smithy.api#documentation" => "<p>One or more labels to associate with the custom classifier.</p>"}))
    DocumentClassificationConfig.type = Types::DocumentClassificationConfig
    DocumentClassificationJobFilter.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>Filters on the name of the job.</p>"}))
    DocumentClassificationJobFilter.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Filters the list based on job status. Returns only jobs with the specified status.</p>"}))
    DocumentClassificationJobFilter.add_member(:submit_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeBefore', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,\n      oldest to newest.</p>"}))
    DocumentClassificationJobFilter.add_member(:submit_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeAfter', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted after the specified time. Jobs are returned in descending order,\n      newest to oldest.</p>"}))
    DocumentClassificationJobFilter.type = Types::DocumentClassificationJobFilter
    DocumentClassificationJobProperties.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier assigned to the document classification job.</p>"}))
    DocumentClassificationJobProperties.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the document classification job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:document-classification-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    DocumentClassificationJobProperties.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name that you assigned to the document classification job.</p>"}))
    DocumentClassificationJobProperties.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the document classification job. If the status is\n        <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>"}))
    DocumentClassificationJobProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description of the status of the job.</p>"}))
    DocumentClassificationJobProperties.add_member(:submit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime', traits: {"smithy.api#documentation" => "<p>The time that the document classification job was submitted for processing.</p>"}))
    DocumentClassificationJobProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time that the document classification job completed.</p>"}))
    DocumentClassificationJobProperties.add_member(:document_classifier_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierArn, location_name: 'DocumentClassifierArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the document classifier. </p>"}))
    DocumentClassificationJobProperties.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input data configuration that you supplied when you created the document\n      classification job.</p>"}))
    DocumentClassificationJobProperties.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output data configuration that you supplied when you created the document\n      classification job.</p>"}))
    DocumentClassificationJobProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>"}))
    DocumentClassificationJobProperties.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    DocumentClassificationJobProperties.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the\n      resources you are using for your document classification job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    DocumentClassificationJobProperties.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel</p>"}))
    DocumentClassificationJobProperties.type = Types::DocumentClassificationJobProperties
    DocumentClassificationJobPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassificationJobProperties)
    DocumentClassifierAugmentedManifestsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AugmentedManifestsListItem)
    DocumentClassifierDataFormat.add_member(:comprehend_csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPREHEND_CSV', traits: {"smithy.api#enumValue" => "COMPREHEND_CSV"}))
    DocumentClassifierDataFormat.add_member(:augmented_manifest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUGMENTED_MANIFEST', traits: {"smithy.api#enumValue" => "AUGMENTED_MANIFEST"}))
    DocumentClassifierDocumentTypeFormat.add_member(:plain_text_document, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAIN_TEXT_DOCUMENT', traits: {"smithy.api#enumValue" => "PLAIN_TEXT_DOCUMENT"}))
    DocumentClassifierDocumentTypeFormat.add_member(:semi_structured_document, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEMI_STRUCTURED_DOCUMENT', traits: {"smithy.api#enumValue" => "SEMI_STRUCTURED_DOCUMENT"}))
    DocumentClassifierDocuments.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>The S3 URI location of the training documents specified in the S3Uri CSV file.</p>", "smithy.api#required" => {}}))
    DocumentClassifierDocuments.add_member(:test_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'TestS3Uri', traits: {"smithy.api#documentation" => "<p>The S3 URI location of the test documents included in the TestS3Uri CSV file.\n      This field is not required if you do not specify a test CSV file.</p>"}))
    DocumentClassifierDocuments.type = Types::DocumentClassifierDocuments
    DocumentClassifierFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Filters the list of classifiers based on status.</p>"}))
    DocumentClassifierFilter.add_member(:document_classifier_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArnName, location_name: 'DocumentClassifierName', traits: {"smithy.api#documentation" => "<p>The name that you assigned to the document classifier</p>"}))
    DocumentClassifierFilter.add_member(:submit_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeBefore', traits: {"smithy.api#documentation" => "<p>Filters the list of classifiers based on the time that the classifier was submitted for\n      processing. Returns only classifiers submitted before the specified time. Classifiers are\n      returned in ascending order, oldest to newest.</p>"}))
    DocumentClassifierFilter.add_member(:submit_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeAfter', traits: {"smithy.api#documentation" => "<p>Filters the list of classifiers based on the time that the classifier was submitted for\n      processing. Returns only classifiers submitted after the specified time. Classifiers are\n      returned in descending order, newest to oldest.</p>"}))
    DocumentClassifierFilter.type = Types::DocumentClassifierFilter
    DocumentClassifierInputDataConfig.add_member(:data_format, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierDataFormat, location_name: 'DataFormat', traits: {"smithy.api#documentation" => "<p>The format of your training data:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>COMPREHEND_CSV</code>: A two-column CSV file, where labels are provided in the\n          first column, and documents are provided in the second. If you use this value, you must\n          provide the <code>S3Uri</code> parameter in your request.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AUGMENTED_MANIFEST</code>: A labeled dataset that is produced by Amazon\n          SageMaker Ground Truth. This file is in JSON lines format. Each line is a complete JSON\n          object that contains a training document and its associated labels. </p>\n               <p>If you use this value, you must provide the <code>AugmentedManifests</code> parameter\n          in your request.</p>\n            </li>\n         </ul>\n         <p>If you don't specify a value, Amazon Comprehend uses <code>COMPREHEND_CSV</code> as the\n      default.</p>"}))
    DocumentClassifierInputDataConfig.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>The Amazon S3 URI for the input data. The S3 bucket must be in the same Region as the API\n      endpoint that you are calling. The URI can point to a single input file or it can provide the\n      prefix for a collection of input files.</p>\n         <p>For example, if you use the URI <code>S3://bucketName/prefix</code>, if the prefix is a\n      single file, Amazon Comprehend uses that file as input. If more than one file begins with the\n      prefix, Amazon Comprehend uses all of them as input.</p>\n         <p>This parameter is required if you set <code>DataFormat</code> to\n        <code>COMPREHEND_CSV</code>.</p>"}))
    DocumentClassifierInputDataConfig.add_member(:test_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'TestS3Uri', traits: {"smithy.api#documentation" => "<p>This specifies the Amazon S3 location that contains the test annotations for the document classifier. \n      The URI must be in the same Amazon Web Services Region as the API endpoint that you are calling. </p>"}))
    DocumentClassifierInputDataConfig.add_member(:label_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDelimiter, location_name: 'LabelDelimiter', traits: {"smithy.api#documentation" => "<p>Indicates the delimiter used to separate each label for training a multi-label classifier.\n      The default delimiter between labels is a pipe (|). You can use a different character as a\n      delimiter (if it's an allowed character) by specifying it under Delimiter for labels. If the\n      training documents use a delimiter other than the default or the delimiter you specify, the\n      labels on that line will be combined to make a single unique label, such as\n      LABELLABELLABEL.</p>"}))
    DocumentClassifierInputDataConfig.add_member(:augmented_manifests, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierAugmentedManifestsList, location_name: 'AugmentedManifests', traits: {"smithy.api#documentation" => "<p>A list of augmented manifest files that provide training data for your custom model. An\n      augmented manifest file is a labeled dataset that is produced by Amazon SageMaker Ground\n      Truth.</p>\n         <p>This parameter is required if you set <code>DataFormat</code> to\n        <code>AUGMENTED_MANIFEST</code>.</p>"}))
    DocumentClassifierInputDataConfig.add_member(:document_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierDocumentTypeFormat, location_name: 'DocumentType', traits: {"smithy.api#documentation" => "<p>The type of input documents for training the model. Provide plain-text documents to create a plain-text model, and\n    provide semi-structured documents to create a native document model.</p>"}))
    DocumentClassifierInputDataConfig.add_member(:documents, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierDocuments, location_name: 'Documents', traits: {"smithy.api#documentation" => "<p>The S3 location of the training documents.  \n      This parameter is required in a request to create a native document model.</p>"}))
    DocumentClassifierInputDataConfig.add_member(:document_reader_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentReaderConfig, location_name: 'DocumentReaderConfig'))
    DocumentClassifierInputDataConfig.type = Types::DocumentClassifierInputDataConfig
    DocumentClassifierMode.add_member(:multi_class, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTI_CLASS', traits: {"smithy.api#enumValue" => "MULTI_CLASS"}))
    DocumentClassifierMode.add_member(:multi_label, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTI_LABEL', traits: {"smithy.api#enumValue" => "MULTI_LABEL"}))
    DocumentClassifierOutputDataConfig.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>When you use the <code>OutputDataConfig</code> object while creating a custom\n      classifier, you specify the Amazon S3 location where you want to write the confusion matrix\n      and other output files.\n      The URI must be in the same Region as the API endpoint that you are calling. The location is\n      used as the prefix for the actual location of this output file.</p>\n         <p>When the custom classifier job is finished, the service creates the output file in a\n      directory specific to the job. The <code>S3Uri</code> field contains the location of the\n      output file, called <code>output.tar.gz</code>. It is a compressed archive that contains the\n      confusion matrix.</p>"}))
    DocumentClassifierOutputDataConfig.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the\n      output results from an analysis job. The KmsKeyId can be one of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>KMS Key Alias: <code>\"alias/ExampleAlias\"</code>\n               </p>\n            </li>\n            <li>\n               <p>ARN of a KMS Key Alias:\n            <code>\"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias\"</code>\n               </p>\n            </li>\n         </ul>"}))
    DocumentClassifierOutputDataConfig.add_member(:flywheel_stats_s3_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'FlywheelStatsS3Prefix', traits: {"smithy.api#documentation" => "<p>The Amazon S3 prefix for the data lake location of the flywheel statistics.</p>"}))
    DocumentClassifierOutputDataConfig.type = Types::DocumentClassifierOutputDataConfig
    DocumentClassifierProperties.add_member(:document_classifier_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierArn, location_name: 'DocumentClassifierArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the document classifier.</p>"}))
    DocumentClassifierProperties.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code for the language of the documents that the classifier was trained\n      on.</p>"}))
    DocumentClassifierProperties.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the document classifier. If the status is <code>TRAINED</code> the\n      classifier is ready to use. If the status is <code>TRAINED_WITH_WARNINGS</code> the\n      classifier training succeeded, but you should review the warnings returned in the \n      <code>CreateDocumentClassifier</code> response.</p>\n         <p>  If the status is <code>FAILED</code> you can see additional\n      information about why the classifier wasn't trained in the <code>Message</code> field.</p>"}))
    DocumentClassifierProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Additional information about the status of the classifier.</p>"}))
    DocumentClassifierProperties.add_member(:submit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime', traits: {"smithy.api#documentation" => "<p>The time that the document classifier was submitted for training.</p>"}))
    DocumentClassifierProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time that training the document classifier completed.</p>"}))
    DocumentClassifierProperties.add_member(:training_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TrainingStartTime', traits: {"smithy.api#documentation" => "<p>Indicates the time when the training starts on documentation classifiers. You are billed\n      for the time interval between this time and the value of TrainingEndTime. </p>"}))
    DocumentClassifierProperties.add_member(:training_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TrainingEndTime', traits: {"smithy.api#documentation" => "<p>The time that training of the document classifier was completed. Indicates the time when\n      the training completes on documentation classifiers. You are billed for the time interval\n      between this time and the value of TrainingStartTime.</p>"}))
    DocumentClassifierProperties.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierInputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input data configuration that you supplied when you created the document classifier\n      for training.</p>"}))
    DocumentClassifierProperties.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierOutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p> Provides output results configuration parameters for custom classifier jobs.</p>"}))
    DocumentClassifierProperties.add_member(:classifier_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ClassifierMetadata, location_name: 'ClassifierMetadata', traits: {"smithy.api#documentation" => "<p>Information about the document classifier, including the number of documents used for\n      training the classifier, the number of documents used for test the classifier, and an accuracy\n      rating.</p>"}))
    DocumentClassifierProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>"}))
    DocumentClassifierProperties.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    DocumentClassifierProperties.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the\n      resources you are using for your custom classifier. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    DocumentClassifierProperties.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierMode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>Indicates the mode in which the specific classifier was trained. This also indicates the\n      format of input documents and the format of the confusion matrix. Each classifier can only be\n      trained in one mode and this cannot be changed once the classifier is trained.</p>"}))
    DocumentClassifierProperties.add_member(:model_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'ModelKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the KMS key that Amazon Comprehend uses to encrypt\n      trained custom models. The ModelKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    DocumentClassifierProperties.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'VersionName', traits: {"smithy.api#documentation" => "<p>The version name that you assigned to the document classifier.</p>"}))
    DocumentClassifierProperties.add_member(:source_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierArn, location_name: 'SourceModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the source model. This model was imported from a\n      different Amazon Web Services account to create the document classifier model in your Amazon Web Services account.</p>"}))
    DocumentClassifierProperties.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel</p>"}))
    DocumentClassifierProperties.type = Types::DocumentClassifierProperties
    DocumentClassifierPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierProperties)
    DocumentClassifierSummariesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierSummary)
    DocumentClassifierSummary.add_member(:document_classifier_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArnName, location_name: 'DocumentClassifierName', traits: {"smithy.api#documentation" => "<p>The name that you assigned the document classifier.</p>"}))
    DocumentClassifierSummary.add_member(:number_of_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfVersions', traits: {"smithy.api#documentation" => "<p>The number of versions you created.</p>"}))
    DocumentClassifierSummary.add_member(:latest_version_created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LatestVersionCreatedAt', traits: {"smithy.api#documentation" => "<p>The time that the latest document classifier version was submitted for processing.</p>"}))
    DocumentClassifierSummary.add_member(:latest_version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'LatestVersionName', traits: {"smithy.api#documentation" => "<p>The version name you assigned to the latest document classifier version.</p>"}))
    DocumentClassifierSummary.add_member(:latest_version_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'LatestVersionStatus', traits: {"smithy.api#documentation" => "<p>Provides the status of the latest document classifier version.</p>"}))
    DocumentClassifierSummary.type = Types::DocumentClassifierSummary
    DocumentLabel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the label.</p>"}))
    DocumentLabel.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The confidence score that Amazon Comprehend has this label correctly attributed.</p>"}))
    DocumentLabel.add_member(:page, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Page', traits: {"smithy.api#documentation" => "<p>Page number where the label occurs. This field is present\n      in the response only if your request includes the <code>Byte</code> parameter. </p>"}))
    DocumentLabel.type = Types::DocumentLabel
    DocumentMetadata.add_member(:pages, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Pages', traits: {"smithy.api#documentation" => "<p>Number of pages in the document.</p>"}))
    DocumentMetadata.add_member(:extracted_characters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfExtractedCharacters, location_name: 'ExtractedCharacters', traits: {"smithy.api#documentation" => "<p>List of pages in the document, with the number of characters extracted from each page.</p>"}))
    DocumentMetadata.type = Types::DocumentMetadata
    DocumentReadAction.add_member(:textract_detect_document_text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXTRACT_DETECT_DOCUMENT_TEXT', traits: {"smithy.api#enumValue" => "TEXTRACT_DETECT_DOCUMENT_TEXT"}))
    DocumentReadAction.add_member(:textract_analyze_document, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXTRACT_ANALYZE_DOCUMENT', traits: {"smithy.api#enumValue" => "TEXTRACT_ANALYZE_DOCUMENT"}))
    DocumentReadFeatureTypes.add_member(:tables, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLES', traits: {"smithy.api#enumValue" => "TABLES"}))
    DocumentReadFeatureTypes.add_member(:forms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORMS', traits: {"smithy.api#enumValue" => "FORMS"}))
    DocumentReadMode.add_member(:service_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_DEFAULT', traits: {"smithy.api#enumValue" => "SERVICE_DEFAULT"}))
    DocumentReadMode.add_member(:force_document_read_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORCE_DOCUMENT_READ_ACTION', traits: {"smithy.api#enumValue" => "FORCE_DOCUMENT_READ_ACTION"}))
    DocumentReaderConfig.add_member(:document_read_action, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentReadAction, location_name: 'DocumentReadAction', traits: {"smithy.api#documentation" => "<p>This field defines the Amazon Textract API operation that Amazon Comprehend uses to extract text from PDF files and image files.\n      Enter one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>TEXTRACT_DETECT_DOCUMENT_TEXT</code> - The Amazon Comprehend service uses the <code>DetectDocumentText</code>\n           API operation. </p>\n            </li>\n            <li>\n               <p>\n                  <code>TEXTRACT_ANALYZE_DOCUMENT</code> - The Amazon Comprehend service uses the <code>AnalyzeDocument</code>\n          API operation. </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DocumentReaderConfig.add_member(:document_read_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentReadMode, location_name: 'DocumentReadMode', traits: {"smithy.api#documentation" => "<p>Determines the text extraction actions for PDF files. Enter one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SERVICE_DEFAULT</code> - use the Amazon Comprehend service defaults for PDF files.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FORCE_DOCUMENT_READ_ACTION</code> - Amazon Comprehend uses the Textract API specified by\n          DocumentReadAction for all PDF files, including digital PDF files. </p>\n            </li>\n         </ul>"}))
    DocumentReaderConfig.add_member(:feature_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDocumentReadFeatureTypes, location_name: 'FeatureTypes', traits: {"smithy.api#documentation" => "<p>Specifies the type of Amazon Textract features to apply. If you chose <code>TEXTRACT_ANALYZE_DOCUMENT</code>\n      as the read action, you must specify one or both of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>TABLES</code> - Returns additional information about any tables that are detected in the input document. </p>\n            </li>\n            <li>\n               <p>\n                  <code>FORMS</code> - Returns additional information about any forms that are detected in the input document. </p>\n            </li>\n         </ul>"}))
    DocumentReaderConfig.type = Types::DocumentReaderConfig
    DocumentType.add_member(:native_pdf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NATIVE_PDF', traits: {"smithy.api#enumValue" => "NATIVE_PDF"}))
    DocumentType.add_member(:scanned_pdf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCANNED_PDF', traits: {"smithy.api#enumValue" => "SCANNED_PDF"}))
    DocumentType.add_member(:ms_word, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MS_WORD', traits: {"smithy.api#enumValue" => "MS_WORD"}))
    DocumentType.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMAGE', traits: {"smithy.api#enumValue" => "IMAGE"}))
    DocumentType.add_member(:plain_text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAIN_TEXT', traits: {"smithy.api#enumValue" => "PLAIN_TEXT"}))
    DocumentType.add_member(:textract_detect_document_text_json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXTRACT_DETECT_DOCUMENT_TEXT_JSON', traits: {"smithy.api#enumValue" => "TEXTRACT_DETECT_DOCUMENT_TEXT_JSON"}))
    DocumentType.add_member(:textract_analyze_document_json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXTRACT_ANALYZE_DOCUMENT_JSON', traits: {"smithy.api#enumValue" => "TEXTRACT_ANALYZE_DOCUMENT_JSON"}))
    DocumentTypeListItem.add_member(:page, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Page', traits: {"smithy.api#documentation" => "<p>Page number.</p>"}))
    DocumentTypeListItem.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Document type.</p>"}))
    DocumentTypeListItem.type = Types::DocumentTypeListItem
    DominantLanguage.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The RFC 5646 language code for the dominant language. For more information about RFC\n      5646, see <a href=\"https://tools.ietf.org/html/rfc5646\">Tags for Identifying\n        Languages</a> on the <i>IETF Tools</i> web site.</p>"}))
    DominantLanguage.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend has in the accuracy of the\n      detection.</p>"}))
    DominantLanguage.type = Types::DominantLanguage
    DominantLanguageDetectionJobFilter.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>Filters on the name of the job.</p>"}))
    DominantLanguageDetectionJobFilter.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on job status. Returns only jobs with the specified\n      status.</p>"}))
    DominantLanguageDetectionJobFilter.add_member(:submit_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeBefore', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,\n      oldest to newest.</p>"}))
    DominantLanguageDetectionJobFilter.add_member(:submit_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeAfter', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted after the specified time. Jobs are returned in descending order,\n      newest to oldest.</p>"}))
    DominantLanguageDetectionJobFilter.type = Types::DominantLanguageDetectionJobFilter
    DominantLanguageDetectionJobProperties.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier assigned to the dominant language detection job.</p>"}))
    DominantLanguageDetectionJobProperties.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dominant language detection job. It is a unique,\n      fully qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID.\n      The format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:dominant-language-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:dominant-language-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    DominantLanguageDetectionJobProperties.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name that you assigned to the dominant language detection job.</p>"}))
    DominantLanguageDetectionJobProperties.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the dominant language detection job. If the status is\n        <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>"}))
    DominantLanguageDetectionJobProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description for the status of a job.</p>"}))
    DominantLanguageDetectionJobProperties.add_member(:submit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime', traits: {"smithy.api#documentation" => "<p>The time that the dominant language detection job was submitted for processing.</p>"}))
    DominantLanguageDetectionJobProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time that the dominant language detection job completed.</p>"}))
    DominantLanguageDetectionJobProperties.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input data configuration that you supplied when you created the dominant language\n      detection job.</p>"}))
    DominantLanguageDetectionJobProperties.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output data configuration that you supplied when you created the dominant language\n      detection job.</p>"}))
    DominantLanguageDetectionJobProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>"}))
    DominantLanguageDetectionJobProperties.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    DominantLanguageDetectionJobProperties.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the\n      resources you are using for your dominant language detection job. For more information, see\n      <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    DominantLanguageDetectionJobProperties.type = Types::DominantLanguageDetectionJobProperties
    DominantLanguageDetectionJobPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DominantLanguageDetectionJobProperties)
    EndpointFilter.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the model to which the endpoint is attached.</p>"}))
    EndpointFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Specifies the status of the endpoint being returned. Possible values are: Creating, Ready,\n      Updating, Deleting, Failed.</p>"}))
    EndpointFilter.add_member(:creation_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTimeBefore', traits: {"smithy.api#documentation" => "<p>Specifies a date before which the returned endpoint or endpoints were created.</p>"}))
    EndpointFilter.add_member(:creation_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTimeAfter', traits: {"smithy.api#documentation" => "<p>Specifies a date after which the returned endpoint or endpoints were created.</p>"}))
    EndpointFilter.type = Types::EndpointFilter
    EndpointProperties.add_member(:endpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendEndpointArn, location_name: 'EndpointArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the endpoint.</p>"}))
    EndpointProperties.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Specifies the status of the endpoint. Because the endpoint updates and creation are\n      asynchronous, so customers will need to wait for the endpoint to be <code>Ready</code> status\n      before making inference requests.</p>"}))
    EndpointProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Specifies a reason for failure in cases of <code>Failed</code> status.</p>"}))
    EndpointProperties.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the model to which the endpoint is attached.</p>"}))
    EndpointProperties.add_member(:desired_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'DesiredModelArn', traits: {"smithy.api#documentation" => "<p>ARN of the new model to use for updating an existing endpoint. This ARN is going to be\n      different from the model ARN when the update is in progress</p>"}))
    EndpointProperties.add_member(:desired_inference_units, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnitsInteger, location_name: 'DesiredInferenceUnits', traits: {"smithy.api#documentation" => "<p>The desired number of inference units to be used by the model using this endpoint.\n      \n      Each inference unit represents of a throughput of 100 characters per second.</p>"}))
    EndpointProperties.add_member(:current_inference_units, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnitsInteger, location_name: 'CurrentInferenceUnits', traits: {"smithy.api#documentation" => "<p>The number of inference units currently used by the model using this endpoint.</p>"}))
    EndpointProperties.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The creation date and time of the endpoint.</p>"}))
    EndpointProperties.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the endpoint was last modified.</p>"}))
    EndpointProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to trained custom models encrypted with a customer\n      managed key (ModelKmsKeyId).</p>"}))
    EndpointProperties.add_member(:desired_data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DesiredDataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>Data access role ARN to use in case the new model is encrypted with a customer KMS\n      key.</p>"}))
    EndpointProperties.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel</p>"}))
    EndpointProperties.type = Types::EndpointProperties
    EndpointPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointProperties)
    EndpointStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    EndpointStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    EndpointStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    EndpointStatus.add_member(:in_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_SERVICE', traits: {"smithy.api#enumValue" => "IN_SERVICE"}))
    EndpointStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    EntitiesDetectionJobFilter.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>Filters on the name of the job.</p>"}))
    EntitiesDetectionJobFilter.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on job status. Returns only jobs with the specified\n      status.</p>"}))
    EntitiesDetectionJobFilter.add_member(:submit_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeBefore', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,\n      oldest to newest.</p>"}))
    EntitiesDetectionJobFilter.add_member(:submit_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeAfter', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted after the specified time. Jobs are returned in descending order,\n      newest to oldest.</p>"}))
    EntitiesDetectionJobFilter.type = Types::EntitiesDetectionJobFilter
    EntitiesDetectionJobProperties.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier assigned to the entities detection job.</p>"}))
    EntitiesDetectionJobProperties.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the entities detection job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:entities-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    EntitiesDetectionJobProperties.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name that you assigned the entities detection job.</p>"}))
    EntitiesDetectionJobProperties.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the entities detection job. If the status is <code>FAILED</code>,\n      the <code>Message</code> field shows the reason for the failure.</p>"}))
    EntitiesDetectionJobProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description of the status of a job.</p>"}))
    EntitiesDetectionJobProperties.add_member(:submit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime', traits: {"smithy.api#documentation" => "<p>The time that the entities detection job was submitted for processing.</p>"}))
    EntitiesDetectionJobProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time that the entities detection job completed</p>"}))
    EntitiesDetectionJobProperties.add_member(:entity_recognizer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerArn, location_name: 'EntityRecognizerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>"}))
    EntitiesDetectionJobProperties.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input data configuration that you supplied when you created the entities detection\n      job.</p>"}))
    EntitiesDetectionJobProperties.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output data configuration that you supplied when you created the entities detection\n      job. </p>"}))
    EntitiesDetectionJobProperties.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code of the input documents.</p>"}))
    EntitiesDetectionJobProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>"}))
    EntitiesDetectionJobProperties.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    EntitiesDetectionJobProperties.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the\n      resources you are using for your entity detection job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    EntitiesDetectionJobProperties.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the flywheel associated with this job.</p>"}))
    EntitiesDetectionJobProperties.type = Types::EntitiesDetectionJobProperties
    EntitiesDetectionJobPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EntitiesDetectionJobProperties)
    Entity.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend has in the accuracy of the\n      detection.</p>"}))
    Entity.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The entity type. For entity detection using the built-in model, this field contains one of the\n      standard entity types listed below.</p>\n         <p>For custom entity detection, this field contains one of the\n      entity types that you specified when you trained your custom model.</p>"}))
    Entity.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The text of the entity.</p>"}))
    Entity.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p>The zero-based offset from the beginning of the source text to the first character in the\n      entity.</p>\n         <p>This field is empty for non-text input.</p>"}))
    Entity.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p>The zero-based offset from the beginning of the source text to the last character in the\n      entity.</p>\n         <p>This field is empty for non-text input.</p>"}))
    Entity.add_member(:block_references, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfBlockReferences, location_name: 'BlockReferences', traits: {"smithy.api#documentation" => "<p>A reference to each block for this entity. This field is empty for plain-text input.</p>"}))
    Entity.type = Types::Entity
    EntityLabel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntityType, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the label.</p>"}))
    EntityLabel.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend has in the accuracy of the\n      detection.</p>"}))
    EntityLabel.type = Types::EntityLabel
    EntityRecognitionConfig.add_member(:entity_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityTypesList, location_name: 'EntityTypes', traits: {"smithy.api#documentation" => "<p>Up to 25 entity types that the model is trained to recognize.</p>", "smithy.api#required" => {}}))
    EntityRecognitionConfig.type = Types::EntityRecognitionConfig
    EntityRecognizerAnnotations.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p> Specifies the Amazon S3 location where the annotations for an entity recognizer are\n      located. The URI must be in the same Region as the API endpoint that you are calling.</p>", "smithy.api#required" => {}}))
    EntityRecognizerAnnotations.add_member(:test_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'TestS3Uri', traits: {"smithy.api#documentation" => "<p> Specifies the Amazon S3 location where the test annotations for an entity recognizer are\n      located. The URI must be in the same Region as the API endpoint that you are calling.</p>"}))
    EntityRecognizerAnnotations.type = Types::EntityRecognizerAnnotations
    EntityRecognizerAugmentedManifestsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AugmentedManifestsListItem)
    EntityRecognizerDataFormat.add_member(:comprehend_csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPREHEND_CSV', traits: {"smithy.api#enumValue" => "COMPREHEND_CSV"}))
    EntityRecognizerDataFormat.add_member(:augmented_manifest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUGMENTED_MANIFEST', traits: {"smithy.api#enumValue" => "AUGMENTED_MANIFEST"}))
    EntityRecognizerDocuments.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p> Specifies the Amazon S3 location where the training documents for an entity recognizer\n      are located. The URI must be in the same Region as the API endpoint that you are\n      calling.</p>", "smithy.api#required" => {}}))
    EntityRecognizerDocuments.add_member(:test_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'TestS3Uri', traits: {"smithy.api#documentation" => "<p> Specifies the Amazon S3 location where the test documents for an entity recognizer are\n      located. The URI must be in the same Amazon Web Services Region as the API endpoint that you are\n      calling.</p>"}))
    EntityRecognizerDocuments.add_member(:input_format, Smithy::Schema::Shapes::ShapeRef.new(shape: InputFormat, location_name: 'InputFormat', traits: {"smithy.api#documentation" => "<p> Specifies how the text in an input file should be processed. This is optional, and the\n      default is ONE_DOC_PER_LINE. ONE_DOC_PER_FILE - Each file is considered a separate document.\n      Use this option when you are processing large documents, such as newspaper articles or\n      scientific papers. ONE_DOC_PER_LINE - Each line in a file is considered a separate document.\n      Use this option when you are processing many short documents, such as text messages.</p>"}))
    EntityRecognizerDocuments.type = Types::EntityRecognizerDocuments
    EntityRecognizerEntityList.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon S3 location where the entity list is located. The URI must be in the\n      same Region as the API endpoint that you are calling.</p>", "smithy.api#required" => {}}))
    EntityRecognizerEntityList.type = Types::EntityRecognizerEntityList
    EntityRecognizerEvaluationMetrics.add_member(:precision, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Precision', traits: {"smithy.api#documentation" => "<p>A measure of the usefulness of the recognizer results in the test data. High precision\n      means that the recognizer returned substantially more relevant results than irrelevant ones.\n    </p>"}))
    EntityRecognizerEvaluationMetrics.add_member(:recall, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Recall', traits: {"smithy.api#documentation" => "<p>A measure of how complete the recognizer results are for the test data. High recall means\n      that the recognizer returned most of the relevant results.</p>"}))
    EntityRecognizerEvaluationMetrics.add_member(:f1_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'F1Score', traits: {"smithy.api#documentation" => "<p>A measure of how accurate the recognizer results are for the test data. It is derived from\n      the <code>Precision</code> and <code>Recall</code> values. The <code>F1Score</code> is the\n      harmonic average of the two scores. For plain text entity recognizer models, the range is 0 to 100,\n      where 100 is the best score. For PDF/Word entity recognizer models, the range is 0 to 1,\n      where 1 is the best score.\n    </p>"}))
    EntityRecognizerEvaluationMetrics.type = Types::EntityRecognizerEvaluationMetrics
    EntityRecognizerFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of an entity recognizer.</p>"}))
    EntityRecognizerFilter.add_member(:recognizer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArnName, location_name: 'RecognizerName', traits: {"smithy.api#documentation" => "<p>The name that you assigned the entity recognizer.</p>"}))
    EntityRecognizerFilter.add_member(:submit_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeBefore', traits: {"smithy.api#documentation" => "<p>Filters the list of entities based on the time that the list was submitted for processing.\n      Returns only jobs submitted before the specified time. Jobs are returned in descending order,\n      newest to oldest.</p>"}))
    EntityRecognizerFilter.add_member(:submit_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeAfter', traits: {"smithy.api#documentation" => "<p>Filters the list of entities based on the time that the list was submitted for processing.\n      Returns only jobs submitted after the specified time. Jobs are returned in ascending order,\n      oldest to newest.</p>"}))
    EntityRecognizerFilter.type = Types::EntityRecognizerFilter
    EntityRecognizerInputDataConfig.add_member(:data_format, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerDataFormat, location_name: 'DataFormat', traits: {"smithy.api#documentation" => "<p>The format of your training data:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>COMPREHEND_CSV</code>: A CSV file that supplements your training documents. The\n          CSV file contains information about the custom entities that your trained model will\n          detect. The required format of the file depends on whether you are providing annotations\n          or an entity list.</p>\n               <p>If you use this value, you must provide your CSV file by using either the\n            <code>Annotations</code> or <code>EntityList</code> parameters. You must provide your\n          training documents by using the <code>Documents</code> parameter.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AUGMENTED_MANIFEST</code>: A labeled dataset that is produced by Amazon\n          SageMaker Ground Truth. This file is in JSON lines format. Each line is a complete JSON\n          object that contains a training document and its labels. Each label annotates a named\n          entity in the training document. </p>\n               <p>If you use this value, you must provide the <code>AugmentedManifests</code> parameter\n          in your request.</p>\n            </li>\n         </ul>\n         <p>If you don't specify a value, Amazon Comprehend uses <code>COMPREHEND_CSV</code> as the\n      default.</p>"}))
    EntityRecognizerInputDataConfig.add_member(:entity_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityTypesList, location_name: 'EntityTypes', traits: {"smithy.api#documentation" => "<p>The entity types in the labeled training data that Amazon Comprehend uses to train the\n      custom entity recognizer. Any entity types that you don't specify are ignored.</p>\n         <p>A maximum of 25 entity types can be used at one time to train an entity recognizer. Entity\n      types must not contain the following invalid characters: \\n (line break), \\\\n (escaped line\n      break), \\r (carriage return), \\\\r (escaped carriage return), \\t (tab), \\\\t (escaped tab),\n      space, and , (comma). </p>", "smithy.api#required" => {}}))
    EntityRecognizerInputDataConfig.add_member(:documents, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerDocuments, location_name: 'Documents', traits: {"smithy.api#documentation" => "<p>The S3 location of the folder that contains the training documents for your custom entity\n      recognizer.</p>\n         <p>This parameter is required if you set <code>DataFormat</code> to\n        <code>COMPREHEND_CSV</code>.</p>"}))
    EntityRecognizerInputDataConfig.add_member(:annotations, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerAnnotations, location_name: 'Annotations', traits: {"smithy.api#documentation" => "<p>The S3 location of the CSV file that annotates your training documents.</p>"}))
    EntityRecognizerInputDataConfig.add_member(:entity_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerEntityList, location_name: 'EntityList', traits: {"smithy.api#documentation" => "<p>The S3 location of the CSV file that has the entity list for your custom entity\n      recognizer.</p>"}))
    EntityRecognizerInputDataConfig.add_member(:augmented_manifests, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerAugmentedManifestsList, location_name: 'AugmentedManifests', traits: {"smithy.api#documentation" => "<p>A list of augmented manifest files that provide training data for your custom model. An\n      augmented manifest file is a labeled dataset that is produced by Amazon SageMaker Ground\n      Truth.</p>\n         <p>This parameter is required if you set <code>DataFormat</code> to\n        <code>AUGMENTED_MANIFEST</code>.</p>"}))
    EntityRecognizerInputDataConfig.type = Types::EntityRecognizerInputDataConfig
    EntityRecognizerMetadata.add_member(:number_of_trained_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfTrainedDocuments', traits: {"smithy.api#documentation" => "<p> The number of documents in the input data that were used to train the entity recognizer.\n      Typically this is 80 to 90 percent of the input documents.</p>"}))
    EntityRecognizerMetadata.add_member(:number_of_test_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfTestDocuments', traits: {"smithy.api#documentation" => "<p> The number of documents in the input data that were used to test the entity recognizer.\n      Typically this is 10 to 20 percent of the input documents.</p>"}))
    EntityRecognizerMetadata.add_member(:evaluation_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerEvaluationMetrics, location_name: 'EvaluationMetrics', traits: {"smithy.api#documentation" => "<p>Detailed information about the accuracy of an entity recognizer.</p>"}))
    EntityRecognizerMetadata.add_member(:entity_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerMetadataEntityTypesList, location_name: 'EntityTypes', traits: {"smithy.api#documentation" => "<p>Entity types from the metadata of an entity recognizer.</p>"}))
    EntityRecognizerMetadata.type = Types::EntityRecognizerMetadata
    EntityRecognizerMetadataEntityTypesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerMetadataEntityTypesListItem)
    EntityRecognizerMetadataEntityTypesListItem.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Type of entity from the list of entity types in the metadata of an entity recognizer.\n    </p>"}))
    EntityRecognizerMetadataEntityTypesListItem.add_member(:evaluation_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityTypesEvaluationMetrics, location_name: 'EvaluationMetrics', traits: {"smithy.api#documentation" => "<p>Detailed information about the accuracy of the entity recognizer for a specific item on\n      the list of entity types. </p>"}))
    EntityRecognizerMetadataEntityTypesListItem.add_member(:number_of_train_mentions, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfTrainMentions', traits: {"smithy.api#documentation" => "<p>Indicates the number of times the given entity type was seen in the training data. </p>"}))
    EntityRecognizerMetadataEntityTypesListItem.type = Types::EntityRecognizerMetadataEntityTypesListItem
    EntityRecognizerOutputDataConfig.add_member(:flywheel_stats_s3_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'FlywheelStatsS3Prefix', traits: {"smithy.api#documentation" => "<p>The Amazon S3 prefix for the data lake location of the flywheel statistics.</p>"}))
    EntityRecognizerOutputDataConfig.type = Types::EntityRecognizerOutputDataConfig
    EntityRecognizerProperties.add_member(:entity_recognizer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerArn, location_name: 'EntityRecognizerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>"}))
    EntityRecognizerProperties.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p> The language of the input documents. All documents must be in the same language. Only\n      English (\"en\") is currently supported.</p>"}))
    EntityRecognizerProperties.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Provides the status of the entity recognizer.</p>"}))
    EntityRecognizerProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p> A description of the status of the recognizer.</p>"}))
    EntityRecognizerProperties.add_member(:submit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime', traits: {"smithy.api#documentation" => "<p>The time that the recognizer was submitted for processing.</p>"}))
    EntityRecognizerProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time that the recognizer creation completed.</p>"}))
    EntityRecognizerProperties.add_member(:training_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TrainingStartTime', traits: {"smithy.api#documentation" => "<p>The time that training of the entity recognizer started.</p>"}))
    EntityRecognizerProperties.add_member(:training_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TrainingEndTime', traits: {"smithy.api#documentation" => "<p>The time that training of the entity recognizer was completed.</p>"}))
    EntityRecognizerProperties.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerInputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input data properties of an entity recognizer.</p>"}))
    EntityRecognizerProperties.add_member(:recognizer_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerMetadata, location_name: 'RecognizerMetadata', traits: {"smithy.api#documentation" => "<p> Provides information about an entity recognizer.</p>"}))
    EntityRecognizerProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>"}))
    EntityRecognizerProperties.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    EntityRecognizerProperties.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the\n      resources you are using for your custom entity recognizer. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    EntityRecognizerProperties.add_member(:model_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'ModelKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the KMS key that Amazon Comprehend uses to encrypt\n      trained custom models. The ModelKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    EntityRecognizerProperties.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'VersionName', traits: {"smithy.api#documentation" => "<p>The version name you assigned to the entity recognizer.</p>"}))
    EntityRecognizerProperties.add_member(:source_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerArn, location_name: 'SourceModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the source model. This model was imported from a\n      different Amazon Web Services account to create the entity recognizer model in your Amazon Web Services account.</p>"}))
    EntityRecognizerProperties.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel</p>"}))
    EntityRecognizerProperties.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerOutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Output data configuration.</p>"}))
    EntityRecognizerProperties.type = Types::EntityRecognizerProperties
    EntityRecognizerPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerProperties)
    EntityRecognizerSummariesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerSummary)
    EntityRecognizerSummary.add_member(:recognizer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArnName, location_name: 'RecognizerName', traits: {"smithy.api#documentation" => "<p> The name that you assigned the entity recognizer.</p>"}))
    EntityRecognizerSummary.add_member(:number_of_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfVersions', traits: {"smithy.api#documentation" => "<p> The number of versions you created.</p>"}))
    EntityRecognizerSummary.add_member(:latest_version_created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LatestVersionCreatedAt', traits: {"smithy.api#documentation" => "<p> The time that the latest entity recognizer version was submitted for processing.</p>"}))
    EntityRecognizerSummary.add_member(:latest_version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'LatestVersionName', traits: {"smithy.api#documentation" => "<p> The version name you assigned to the latest entity recognizer version.</p>"}))
    EntityRecognizerSummary.add_member(:latest_version_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: 'LatestVersionStatus', traits: {"smithy.api#documentation" => "<p> Provides the status of the latest entity recognizer version.</p>"}))
    EntityRecognizerSummary.type = Types::EntityRecognizerSummary
    EntityType.add_member(:person, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERSON', traits: {"smithy.api#enumValue" => "PERSON"}))
    EntityType.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCATION', traits: {"smithy.api#enumValue" => "LOCATION"}))
    EntityType.add_member(:organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION', traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    EntityType.add_member(:commercial_item, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMMERCIAL_ITEM', traits: {"smithy.api#enumValue" => "COMMERCIAL_ITEM"}))
    EntityType.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT', traits: {"smithy.api#enumValue" => "EVENT"}))
    EntityType.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATE', traits: {"smithy.api#enumValue" => "DATE"}))
    EntityType.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUANTITY', traits: {"smithy.api#enumValue" => "QUANTITY"}))
    EntityType.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TITLE', traits: {"smithy.api#enumValue" => "TITLE"}))
    EntityType.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    EntityTypesEvaluationMetrics.add_member(:precision, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Precision', traits: {"smithy.api#documentation" => "<p>A measure of the usefulness of the recognizer results for a specific entity type in the\n      test data. High precision means that the recognizer returned substantially more relevant\n      results than irrelevant ones. </p>"}))
    EntityTypesEvaluationMetrics.add_member(:recall, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Recall', traits: {"smithy.api#documentation" => "<p>A measure of how complete the recognizer results are for a specific entity type in the\n      test data. High recall means that the recognizer returned most of the relevant results.</p>"}))
    EntityTypesEvaluationMetrics.add_member(:f1_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'F1Score', traits: {"smithy.api#documentation" => "<p>A measure of how accurate the recognizer results are for a specific entity type in the\n      test data. It is derived from the <code>Precision</code> and <code>Recall</code> values. The\n        <code>F1Score</code> is the harmonic average of the two scores. The highest score is 1, and\n      the worst score is 0. </p>"}))
    EntityTypesEvaluationMetrics.type = Types::EntityTypesEvaluationMetrics
    EntityTypesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EntityTypesListItem)
    EntityTypesListItem.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityTypeName, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>An entity type within a labeled training dataset that Amazon Comprehend uses to train a\n      custom entity recognizer.</p>\n         <p>Entity types must not contain the following invalid characters: \\n (line break), \\\\n\n      (escaped line break, \\r (carriage return), \\\\r (escaped carriage return), \\t (tab), \\\\t\n      (escaped tab), and , (comma).</p>", "smithy.api#required" => {}}))
    EntityTypesListItem.type = Types::EntityTypesListItem
    ErrorsListItem.add_member(:page, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Page', traits: {"smithy.api#documentation" => "<p>Page number where the error occurred.</p>"}))
    ErrorsListItem.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: PageBasedErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>Error code for the cause of the error.</p>"}))
    ErrorsListItem.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>Text message explaining the reason for the error.</p>"}))
    ErrorsListItem.type = Types::ErrorsListItem
    EventsDetectionJobFilter.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>Filters on the name of the events detection job.</p>"}))
    EventsDetectionJobFilter.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on job status. Returns only jobs with the specified\n      status.</p>"}))
    EventsDetectionJobFilter.add_member(:submit_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeBefore', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,\n      oldest to newest.</p>"}))
    EventsDetectionJobFilter.add_member(:submit_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeAfter', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted after the specified time. Jobs are returned in descending order,\n      newest to oldest.</p>"}))
    EventsDetectionJobFilter.type = Types::EventsDetectionJobFilter
    EventsDetectionJobProperties.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier assigned to the events detection job.</p>"}))
    EventsDetectionJobProperties.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the events detection job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:events-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:events-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    EventsDetectionJobProperties.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name you assigned the events detection job.</p>"}))
    EventsDetectionJobProperties.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the events detection job.</p>"}))
    EventsDetectionJobProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description of the status of the events detection job.</p>"}))
    EventsDetectionJobProperties.add_member(:submit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime', traits: {"smithy.api#documentation" => "<p>The time that the events detection job was submitted for processing.</p>"}))
    EventsDetectionJobProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time that the events detection job completed.</p>"}))
    EventsDetectionJobProperties.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input data configuration that you supplied when you created the events detection\n      job.</p>"}))
    EventsDetectionJobProperties.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output data configuration that you supplied when you created the events detection\n      job.</p>"}))
    EventsDetectionJobProperties.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code of the input documents.</p>"}))
    EventsDetectionJobProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>"}))
    EventsDetectionJobProperties.add_member(:target_event_types, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetEventTypes, location_name: 'TargetEventTypes', traits: {"smithy.api#documentation" => "<p>The types of events that are detected by the job.</p>"}))
    EventsDetectionJobProperties.type = Types::EventsDetectionJobProperties
    EventsDetectionJobPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventsDetectionJobProperties)
    ExtractedCharactersListItem.add_member(:page, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Page', traits: {"smithy.api#documentation" => "<p>Page number.</p>"}))
    ExtractedCharactersListItem.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Count', traits: {"smithy.api#documentation" => "<p>Number of characters extracted from each page.</p>"}))
    ExtractedCharactersListItem.type = Types::ExtractedCharactersListItem
    FlywheelFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Filter the flywheels based on the flywheel status.</p>"}))
    FlywheelFilter.add_member(:creation_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTimeAfter', traits: {"smithy.api#documentation" => "<p>Filter the flywheels to include flywheels created after the specified time.</p>"}))
    FlywheelFilter.add_member(:creation_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTimeBefore', traits: {"smithy.api#documentation" => "<p>Filter the flywheels to include flywheels created before the specified time.</p>"}))
    FlywheelFilter.type = Types::FlywheelFilter
    FlywheelIterationFilter.add_member(:creation_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTimeAfter', traits: {"smithy.api#documentation" => "<p>Filter the flywheel iterations to include iterations created after the specified time.</p>"}))
    FlywheelIterationFilter.add_member(:creation_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTimeBefore', traits: {"smithy.api#documentation" => "<p>Filter the flywheel iterations to include iterations created before the specified time.</p>"}))
    FlywheelIterationFilter.type = Types::FlywheelIterationFilter
    FlywheelIterationProperties.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p></p>"}))
    FlywheelIterationProperties.add_member(:flywheel_iteration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelIterationId, location_name: 'FlywheelIterationId', traits: {"smithy.api#documentation" => "<p></p>"}))
    FlywheelIterationProperties.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The creation start time of the flywheel iteration.</p>"}))
    FlywheelIterationProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The completion time of this flywheel iteration.</p>"}))
    FlywheelIterationProperties.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelIterationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the flywheel iteration.</p>"}))
    FlywheelIterationProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description of the status of the flywheel iteration.</p>"}))
    FlywheelIterationProperties.add_member(:evaluated_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'EvaluatedModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the evaluated model associated with this flywheel iteration.</p>"}))
    FlywheelIterationProperties.add_member(:evaluated_model_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelModelEvaluationMetrics, location_name: 'EvaluatedModelMetrics'))
    FlywheelIterationProperties.add_member(:trained_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'TrainedModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trained model associated with this flywheel iteration.</p>"}))
    FlywheelIterationProperties.add_member(:trained_model_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelModelEvaluationMetrics, location_name: 'TrainedModelMetrics', traits: {"smithy.api#documentation" => "<p>The metrics associated with the trained model.</p>"}))
    FlywheelIterationProperties.add_member(:evaluation_manifest_s3_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'EvaluationManifestS3Prefix', traits: {"smithy.api#documentation" => "<p></p>"}))
    FlywheelIterationProperties.type = Types::FlywheelIterationProperties
    FlywheelIterationPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelIterationProperties)
    FlywheelIterationStatus.add_member(:training, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINING', traits: {"smithy.api#enumValue" => "TRAINING"}))
    FlywheelIterationStatus.add_member(:evaluating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVALUATING', traits: {"smithy.api#enumValue" => "EVALUATING"}))
    FlywheelIterationStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    FlywheelIterationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    FlywheelIterationStatus.add_member(:stop_requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_REQUESTED', traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    FlywheelIterationStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    FlywheelModelEvaluationMetrics.add_member(:average_f1_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'AverageF1Score', traits: {"smithy.api#documentation" => "<p>The average F1 score from the evaluation metrics.</p>"}))
    FlywheelModelEvaluationMetrics.add_member(:average_precision, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'AveragePrecision', traits: {"smithy.api#documentation" => "<p>Average precision metric for the model.</p>"}))
    FlywheelModelEvaluationMetrics.add_member(:average_recall, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'AverageRecall', traits: {"smithy.api#documentation" => "<p>Average recall metric for the model.</p>"}))
    FlywheelModelEvaluationMetrics.add_member(:average_accuracy, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'AverageAccuracy', traits: {"smithy.api#documentation" => "<p>Average accuracy metric for the model.</p>"}))
    FlywheelModelEvaluationMetrics.type = Types::FlywheelModelEvaluationMetrics
    FlywheelProperties.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel.</p>"}))
    FlywheelProperties.add_member(:active_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'ActiveModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the active model version.</p>"}))
    FlywheelProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend permission to access the flywheel data.</p>"}))
    FlywheelProperties.add_member(:task_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskConfig, location_name: 'TaskConfig', traits: {"smithy.api#documentation" => "<p>Configuration about the model associated with a flywheel.</p>"}))
    FlywheelProperties.add_member(:data_lake_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'DataLakeS3Uri', traits: {"smithy.api#documentation" => "<p>Amazon S3 URI of the data lake location. </p>"}))
    FlywheelProperties.add_member(:data_security_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSecurityConfig, location_name: 'DataSecurityConfig', traits: {"smithy.api#documentation" => "<p>Data security configuration.</p>"}))
    FlywheelProperties.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the flywheel.</p>"}))
    FlywheelProperties.add_member(:model_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelType, location_name: 'ModelType', traits: {"smithy.api#documentation" => "<p>Model type of the flywheel's model.</p>"}))
    FlywheelProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description of the status of the flywheel.</p>"}))
    FlywheelProperties.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Creation time of the flywheel.</p>"}))
    FlywheelProperties.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>Last modified time for the flywheel.</p>"}))
    FlywheelProperties.add_member(:latest_flywheel_iteration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelIterationId, location_name: 'LatestFlywheelIteration', traits: {"smithy.api#documentation" => "<p>The most recent flywheel iteration.</p>"}))
    FlywheelProperties.type = Types::FlywheelProperties
    FlywheelStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    FlywheelStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    FlywheelStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    FlywheelStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    FlywheelStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    FlywheelSummary.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel</p>"}))
    FlywheelSummary.add_member(:active_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'ActiveModelArn', traits: {"smithy.api#documentation" => "<p>ARN of the active model version for the flywheel.</p>"}))
    FlywheelSummary.add_member(:data_lake_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'DataLakeS3Uri', traits: {"smithy.api#documentation" => "<p>Amazon S3 URI of the data lake location. </p>"}))
    FlywheelSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the flywheel.</p>"}))
    FlywheelSummary.add_member(:model_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelType, location_name: 'ModelType', traits: {"smithy.api#documentation" => "<p>Model type of the flywheel's model.</p>"}))
    FlywheelSummary.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description of the status of the flywheel.</p>"}))
    FlywheelSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Creation time of the flywheel.</p>"}))
    FlywheelSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>Last modified time for the flywheel.</p>"}))
    FlywheelSummary.add_member(:latest_flywheel_iteration, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelIterationId, location_name: 'LatestFlywheelIteration', traits: {"smithy.api#documentation" => "<p>The most recent flywheel iteration.</p>"}))
    FlywheelSummary.type = Types::FlywheelSummary
    FlywheelSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelSummary)
    Geometry.add_member(:bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'BoundingBox', traits: {"smithy.api#documentation" => "<p>An axis-aligned coarse representation of the location of the recognized item on the\n      document page.</p>"}))
    Geometry.add_member(:polygon, Smithy::Schema::Shapes::ShapeRef.new(shape: Polygon, location_name: 'Polygon', traits: {"smithy.api#documentation" => "<p>Within the bounding box, a fine-grained polygon around the recognized item.</p>"}))
    Geometry.type = Types::Geometry
    ImportModelRequest.add_member(:source_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'SourceModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom model to import.</p>", "smithy.api#required" => {}}))
    ImportModelRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArnName, location_name: 'ModelName', traits: {"smithy.api#documentation" => "<p>The name to assign to the custom model that is created in Amazon Comprehend by this\n      import.</p>"}))
    ImportModelRequest.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'VersionName', traits: {"smithy.api#documentation" => "<p>The version name given to the custom model that is created by this import. Version names\n      can have a maximum of 256 characters. Alphanumeric characters, hyphens (-) and underscores (_)\n      are allowed. The version name must be unique among all models with the same classifier name in\n      the account/Region.</p>"}))
    ImportModelRequest.add_member(:model_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'ModelKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the KMS key that Amazon Comprehend uses to encrypt\n      trained custom models. The ModelKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    ImportModelRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend permission to use Amazon Key Management Service (KMS) to encrypt or decrypt the custom\n      model.</p>"}))
    ImportModelRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the custom model that is created by this import. A tag is a\n      key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a\n      tag with \"Sales\" as the key might be added to a resource to indicate its use by the sales\n      department.</p>"}))
    ImportModelRequest.type = Types::ImportModelRequest
    ImportModelResponse.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'ModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom model being imported.</p>"}))
    ImportModelResponse.type = Types::ImportModelResponse
    InputDataConfig.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>The Amazon S3 URI for the input data. The URI must be in same Region as the API\n      endpoint that you are calling. The URI can point to a single input file or it can provide the\n      prefix for a collection of data files. </p>\n         <p>For example, if you use the URI <code>S3://bucketName/prefix</code>, if the prefix is a\n      single file, Amazon Comprehend uses that file as input. If more than one file begins with the\n      prefix, Amazon Comprehend uses all of them as input.</p>", "smithy.api#required" => {}}))
    InputDataConfig.add_member(:input_format, Smithy::Schema::Shapes::ShapeRef.new(shape: InputFormat, location_name: 'InputFormat', traits: {"smithy.api#documentation" => "<p>Specifies how the text in an input file should be processed:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ONE_DOC_PER_FILE</code> - Each file is considered a separate document. Use\n          this option when you are processing large documents, such as newspaper articles or\n          scientific papers.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ONE_DOC_PER_LINE</code> - Each line in a file is considered a separate\n          document. Use this option when you are processing many short documents, such as text\n          messages.</p>\n            </li>\n         </ul>"}))
    InputDataConfig.add_member(:document_reader_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentReaderConfig, location_name: 'DocumentReaderConfig', traits: {"smithy.api#documentation" => "<p>Provides configuration parameters to override the default actions for extracting text\n      from PDF documents and image files.</p>"}))
    InputDataConfig.type = Types::InputDataConfig
    InputFormat.add_member(:one_doc_per_file, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_DOC_PER_FILE', traits: {"smithy.api#enumValue" => "ONE_DOC_PER_FILE"}))
    InputFormat.add_member(:one_doc_per_line, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_DOC_PER_LINE', traits: {"smithy.api#enumValue" => "ONE_DOC_PER_LINE"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    InvalidFilterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidFilterException.type = Types::InvalidFilterException
    InvalidRequestDetail.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestDetailReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>Reason codes include the following values:</p>\n         <ul>\n            <li>\n               <p>DOCUMENT_SIZE_EXCEEDED - Document size is too large. Check the size of your file and resubmit the request.</p>\n            </li>\n            <li>\n               <p>UNSUPPORTED_DOC_TYPE - Document type is not supported. Check the file type and resubmit the request.</p>\n            </li>\n            <li>\n               <p>PAGE_LIMIT_EXCEEDED - Too many pages in the document. Check the number of pages in your file and resubmit the request.</p>\n            </li>\n            <li>\n               <p>TEXTRACT_ACCESS_DENIED - Access denied to Amazon Textract. Verify that your account has permission to use Amazon Textract API operations and resubmit the request.</p>\n            </li>\n            <li>\n               <p>NOT_TEXTRACT_JSON - Document is not Amazon Textract JSON format. Verify the format and resubmit the request.</p>\n            </li>\n            <li>\n               <p>MISMATCHED_TOTAL_PAGE_COUNT - Check the number of pages in your file and resubmit the request.</p>\n            </li>\n            <li>\n               <p>INVALID_DOCUMENT - Invalid document. Check the file and resubmit the request.</p>\n            </li>\n         </ul>"}))
    InvalidRequestDetail.type = Types::InvalidRequestDetail
    InvalidRequestDetailReason.add_member(:document_size_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_SIZE_EXCEEDED', traits: {"smithy.api#enumValue" => "DOCUMENT_SIZE_EXCEEDED"}))
    InvalidRequestDetailReason.add_member(:unsupported_doc_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_DOC_TYPE', traits: {"smithy.api#enumValue" => "UNSUPPORTED_DOC_TYPE"}))
    InvalidRequestDetailReason.add_member(:page_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAGE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "PAGE_LIMIT_EXCEEDED"}))
    InvalidRequestDetailReason.add_member(:textract_access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXTRACT_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "TEXTRACT_ACCESS_DENIED"}))
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidRequestException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestReason, location_name: 'Reason'))
    InvalidRequestException.add_member(:detail, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestDetail, location_name: 'Detail'))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidRequestReason.add_member(:invalid_document, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_DOCUMENT', traits: {"smithy.api#enumValue" => "INVALID_DOCUMENT"}))
    JobNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    JobNotFoundException.type = Types::JobNotFoundException
    JobStatus.add_member(:submitted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBMITTED', traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    JobStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:stop_requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_REQUESTED', traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    JobStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    KeyPhrase.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend has in the accuracy of the\n      detection.</p>"}))
    KeyPhrase.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The text of a key noun phrase.</p>"}))
    KeyPhrase.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p>The zero-based offset from the beginning of the source text to the first character in the\n      key phrase.</p>"}))
    KeyPhrase.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p>The zero-based offset from the beginning of the source text to the last character in the\n      key phrase.</p>"}))
    KeyPhrase.type = Types::KeyPhrase
    KeyPhrasesDetectionJobFilter.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>Filters on the name of the job.</p>"}))
    KeyPhrasesDetectionJobFilter.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on job status. Returns only jobs with the specified\n      status.</p>"}))
    KeyPhrasesDetectionJobFilter.add_member(:submit_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeBefore', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,\n      oldest to newest.</p>"}))
    KeyPhrasesDetectionJobFilter.add_member(:submit_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeAfter', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted after the specified time. Jobs are returned in descending order,\n      newest to oldest.</p>"}))
    KeyPhrasesDetectionJobFilter.type = Types::KeyPhrasesDetectionJobFilter
    KeyPhrasesDetectionJobProperties.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier assigned to the key phrases detection job.</p>"}))
    KeyPhrasesDetectionJobProperties.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the key phrases detection job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:key-phrases-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:key-phrases-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    KeyPhrasesDetectionJobProperties.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name that you assigned the key phrases detection job.</p>"}))
    KeyPhrasesDetectionJobProperties.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the key phrases detection job. If the status is <code>FAILED</code>,\n      the <code>Message</code> field shows the reason for the failure.</p>"}))
    KeyPhrasesDetectionJobProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description of the status of a job.</p>"}))
    KeyPhrasesDetectionJobProperties.add_member(:submit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime', traits: {"smithy.api#documentation" => "<p>The time that the key phrases detection job was submitted for processing.</p>"}))
    KeyPhrasesDetectionJobProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time that the key phrases detection job completed.</p>"}))
    KeyPhrasesDetectionJobProperties.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input data configuration that you supplied when you created the key phrases detection\n      job.</p>"}))
    KeyPhrasesDetectionJobProperties.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output data configuration that you supplied when you created the key phrases detection\n      job.</p>"}))
    KeyPhrasesDetectionJobProperties.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code of the input documents.</p>"}))
    KeyPhrasesDetectionJobProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>"}))
    KeyPhrasesDetectionJobProperties.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the KMS key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    KeyPhrasesDetectionJobProperties.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the\n      resources you are using for your key phrases detection job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    KeyPhrasesDetectionJobProperties.type = Types::KeyPhrasesDetectionJobProperties
    KeyPhrasesDetectionJobPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPhrasesDetectionJobProperties)
    KmsKeyValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    KmsKeyValidationException.type = Types::KmsKeyValidationException
    LabelsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LabelListItem)
    LanguageCode.add_member(:en, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN', traits: {"smithy.api#enumValue" => "en"}))
    LanguageCode.add_member(:es, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES', traits: {"smithy.api#enumValue" => "es"}))
    LanguageCode.add_member(:fr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR', traits: {"smithy.api#enumValue" => "fr"}))
    LanguageCode.add_member(:de, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DE', traits: {"smithy.api#enumValue" => "de"}))
    LanguageCode.add_member(:it, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IT', traits: {"smithy.api#enumValue" => "it"}))
    LanguageCode.add_member(:pt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT', traits: {"smithy.api#enumValue" => "pt"}))
    LanguageCode.add_member(:ar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AR', traits: {"smithy.api#enumValue" => "ar"}))
    LanguageCode.add_member(:hi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HI', traits: {"smithy.api#enumValue" => "hi"}))
    LanguageCode.add_member(:ja, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JA', traits: {"smithy.api#enumValue" => "ja"}))
    LanguageCode.add_member(:ko, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KO', traits: {"smithy.api#enumValue" => "ko"}))
    LanguageCode.add_member(:zh, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZH', traits: {"smithy.api#enumValue" => "zh"}))
    LanguageCode.add_member(:zh_tw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZH_TW', traits: {"smithy.api#enumValue" => "zh-TW"}))
    ListDatasetsRequest.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel.</p>"}))
    ListDatasetsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the datasets to be returned in the response.</p>"}))
    ListDatasetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListDatasetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a response. The default is 100.</p>"}))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:dataset_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetPropertiesList, location_name: 'DatasetPropertiesList', traits: {"smithy.api#documentation" => "<p>The dataset properties list.</p>"}))
    ListDatasetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListDocumentClassificationJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassificationJobFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the jobs that are returned. You can filter jobs on their names, status, or the\n      date and time that they were submitted. You can only set one filter at a time.</p>"}))
    ListDocumentClassificationJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListDocumentClassificationJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page. The default is 100.</p>"}))
    ListDocumentClassificationJobsRequest.type = Types::ListDocumentClassificationJobsRequest
    ListDocumentClassificationJobsResponse.add_member(:document_classification_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassificationJobPropertiesList, location_name: 'DocumentClassificationJobPropertiesList', traits: {"smithy.api#documentation" => "<p>A list containing the properties of each job returned.</p>"}))
    ListDocumentClassificationJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListDocumentClassificationJobsResponse.type = Types::ListDocumentClassificationJobsResponse
    ListDocumentClassifierSummariesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListDocumentClassifierSummariesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return on each page. The default is 100.</p>"}))
    ListDocumentClassifierSummariesRequest.type = Types::ListDocumentClassifierSummariesRequest
    ListDocumentClassifierSummariesResponse.add_member(:document_classifier_summaries_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierSummariesList, location_name: 'DocumentClassifierSummariesList', traits: {"smithy.api#documentation" => "<p>The list of summaries of document classifiers.</p>"}))
    ListDocumentClassifierSummariesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListDocumentClassifierSummariesResponse.type = Types::ListDocumentClassifierSummariesResponse
    ListDocumentClassifiersRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date\n      and time that they were submitted. You can only set one filter at a time.</p>"}))
    ListDocumentClassifiersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListDocumentClassifiersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page. The default is 100.</p>"}))
    ListDocumentClassifiersRequest.type = Types::ListDocumentClassifiersRequest
    ListDocumentClassifiersResponse.add_member(:document_classifier_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierPropertiesList, location_name: 'DocumentClassifierPropertiesList', traits: {"smithy.api#documentation" => "<p>A list containing the properties of each job returned.</p>"}))
    ListDocumentClassifiersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListDocumentClassifiersResponse.type = Types::ListDocumentClassifiersResponse
    ListDominantLanguageDetectionJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: DominantLanguageDetectionJobFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters that jobs that are returned. You can filter jobs on their name, status, or the\n      date and time that they were submitted. You can only set one filter at a time.</p>"}))
    ListDominantLanguageDetectionJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListDominantLanguageDetectionJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page. The default is 100.</p>"}))
    ListDominantLanguageDetectionJobsRequest.type = Types::ListDominantLanguageDetectionJobsRequest
    ListDominantLanguageDetectionJobsResponse.add_member(:dominant_language_detection_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DominantLanguageDetectionJobPropertiesList, location_name: 'DominantLanguageDetectionJobPropertiesList', traits: {"smithy.api#documentation" => "<p>A list containing the properties of each job that is returned.</p>"}))
    ListDominantLanguageDetectionJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListDominantLanguageDetectionJobsResponse.type = Types::ListDominantLanguageDetectionJobsResponse
    ListEndpointsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the endpoints that are returned. You can filter endpoints on their name, model,\n      status, or the date and time that they were created. You can only set one filter at a time.\n    </p>"}))
    ListEndpointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListEndpointsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page. The default is 100.</p>"}))
    ListEndpointsRequest.type = Types::ListEndpointsRequest
    ListEndpointsResponse.add_member(:endpoint_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointPropertiesList, location_name: 'EndpointPropertiesList', traits: {"smithy.api#documentation" => "<p>Displays a list of endpoint properties being retrieved by the service in response to the\n      request.</p>"}))
    ListEndpointsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListEndpointsResponse.type = Types::ListEndpointsResponse
    ListEntitiesDetectionJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitiesDetectionJobFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date\n      and time that they were submitted. You can only set one filter at a time.</p>"}))
    ListEntitiesDetectionJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListEntitiesDetectionJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page. The default is 100.</p>"}))
    ListEntitiesDetectionJobsRequest.type = Types::ListEntitiesDetectionJobsRequest
    ListEntitiesDetectionJobsResponse.add_member(:entities_detection_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitiesDetectionJobPropertiesList, location_name: 'EntitiesDetectionJobPropertiesList', traits: {"smithy.api#documentation" => "<p>A list containing the properties of each job that is returned.</p>"}))
    ListEntitiesDetectionJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListEntitiesDetectionJobsResponse.type = Types::ListEntitiesDetectionJobsResponse
    ListEntityRecognizerSummariesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListEntityRecognizerSummariesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return on each page. The default is 100.</p>"}))
    ListEntityRecognizerSummariesRequest.type = Types::ListEntityRecognizerSummariesRequest
    ListEntityRecognizerSummariesResponse.add_member(:entity_recognizer_summaries_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerSummariesList, location_name: 'EntityRecognizerSummariesList', traits: {"smithy.api#documentation" => "<p>The list entity recognizer summaries.</p>"}))
    ListEntityRecognizerSummariesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListEntityRecognizerSummariesResponse.type = Types::ListEntityRecognizerSummariesResponse
    ListEntityRecognizersRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the list of entities returned. You can filter on <code>Status</code>,\n        <code>SubmitTimeBefore</code>, or <code>SubmitTimeAfter</code>. You can only set one filter\n      at a time.</p>"}))
    ListEntityRecognizersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListEntityRecognizersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of results to return on each page. The default is 100.</p>"}))
    ListEntityRecognizersRequest.type = Types::ListEntityRecognizersRequest
    ListEntityRecognizersResponse.add_member(:entity_recognizer_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerPropertiesList, location_name: 'EntityRecognizerPropertiesList', traits: {"smithy.api#documentation" => "<p>The list of properties of an entity recognizer.</p>"}))
    ListEntityRecognizersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListEntityRecognizersResponse.type = Types::ListEntityRecognizersResponse
    ListEventsDetectionJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: EventsDetectionJobFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date\n      and time that they were submitted. You can only set one filter at a time.</p>"}))
    ListEventsDetectionJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListEventsDetectionJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page.</p>"}))
    ListEventsDetectionJobsRequest.type = Types::ListEventsDetectionJobsRequest
    ListEventsDetectionJobsResponse.add_member(:events_detection_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EventsDetectionJobPropertiesList, location_name: 'EventsDetectionJobPropertiesList', traits: {"smithy.api#documentation" => "<p>A list containing the properties of each job that is returned.</p>"}))
    ListEventsDetectionJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListEventsDetectionJobsResponse.type = Types::ListEventsDetectionJobsResponse
    ListFlywheelIterationHistoryRequest.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the flywheel.</p>", "smithy.api#required" => {}}))
    ListFlywheelIterationHistoryRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelIterationFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filter the flywheel iteration history based on creation time.</p>"}))
    ListFlywheelIterationHistoryRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Next token</p>"}))
    ListFlywheelIterationHistoryRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of iteration history results to return</p>"}))
    ListFlywheelIterationHistoryRequest.type = Types::ListFlywheelIterationHistoryRequest
    ListFlywheelIterationHistoryResponse.add_member(:flywheel_iteration_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelIterationPropertiesList, location_name: 'FlywheelIterationPropertiesList', traits: {"smithy.api#documentation" => "<p>List of flywheel iteration properties</p>"}))
    ListFlywheelIterationHistoryResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Next token</p>"}))
    ListFlywheelIterationHistoryResponse.type = Types::ListFlywheelIterationHistoryResponse
    ListFlywheelsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the flywheels that are returned. You can filter flywheels on their status,\n      or the date and time that they were submitted. You can only set one filter at a time.\n    </p>"}))
    ListFlywheelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListFlywheelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a response. The default is 100.</p>"}))
    ListFlywheelsRequest.type = Types::ListFlywheelsRequest
    ListFlywheelsResponse.add_member(:flywheel_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelSummaryList, location_name: 'FlywheelSummaryList', traits: {"smithy.api#documentation" => "<p>A list of flywheel properties retrieved by the service in response to the request.\n       </p>"}))
    ListFlywheelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListFlywheelsResponse.type = Types::ListFlywheelsResponse
    ListKeyPhrasesDetectionJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPhrasesDetectionJobFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date\n      and time that they were submitted. You can only set one filter at a time.</p>"}))
    ListKeyPhrasesDetectionJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListKeyPhrasesDetectionJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page. The default is 100.</p>"}))
    ListKeyPhrasesDetectionJobsRequest.type = Types::ListKeyPhrasesDetectionJobsRequest
    ListKeyPhrasesDetectionJobsResponse.add_member(:key_phrases_detection_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPhrasesDetectionJobPropertiesList, location_name: 'KeyPhrasesDetectionJobPropertiesList', traits: {"smithy.api#documentation" => "<p>A list containing the properties of each job that is returned.</p>"}))
    ListKeyPhrasesDetectionJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListKeyPhrasesDetectionJobsResponse.type = Types::ListKeyPhrasesDetectionJobsResponse
    ListOfBlockReferences.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BlockReference)
    ListOfBlocks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Block)
    ListOfChildBlocks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChildBlock)
    ListOfClasses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClass)
    ListOfDescriptiveMentionIndices.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    ListOfDetectDominantLanguageResult.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectDominantLanguageItemResult)
    ListOfDetectEntitiesResult.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectEntitiesItemResult)
    ListOfDetectKeyPhrasesResult.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectKeyPhrasesItemResult)
    ListOfDetectSentimentResult.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectSentimentItemResult)
    ListOfDetectSyntaxResult.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectSyntaxItemResult)
    ListOfDetectTargetedSentimentResult.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectTargetedSentimentItemResult)
    ListOfDocumentReadFeatureTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentReadFeatureTypes)
    ListOfDocumentType.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentTypeListItem)
    ListOfDominantLanguages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DominantLanguage)
    ListOfEntities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Entity)
    ListOfEntityLabels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EntityLabel)
    ListOfErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorsListItem)
    ListOfExtractedCharacters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExtractedCharactersListItem)
    ListOfKeyPhrases.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPhrase)
    ListOfLabels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentLabel)
    ListOfMentions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetedSentimentMention)
    ListOfPiiEntities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntity)
    ListOfPiiEntityTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntityType)
    ListOfRelationships.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipsListItem)
    ListOfSyntaxTokens.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SyntaxToken)
    ListOfTargetedSentimentEntities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetedSentimentEntity)
    ListOfTextSegments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TextSegment)
    ListOfToxicContent.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ToxicContent)
    ListOfToxicLabels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ToxicLabels)
    ListOfWarnings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WarningsListItem)
    ListPiiEntitiesDetectionJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntitiesDetectionJobFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date\n      and time that they were submitted. You can only set one filter at a time.</p>"}))
    ListPiiEntitiesDetectionJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListPiiEntitiesDetectionJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page.</p>"}))
    ListPiiEntitiesDetectionJobsRequest.type = Types::ListPiiEntitiesDetectionJobsRequest
    ListPiiEntitiesDetectionJobsResponse.add_member(:pii_entities_detection_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntitiesDetectionJobPropertiesList, location_name: 'PiiEntitiesDetectionJobPropertiesList', traits: {"smithy.api#documentation" => "<p>A list containing the properties of each job that is returned.</p>"}))
    ListPiiEntitiesDetectionJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListPiiEntitiesDetectionJobsResponse.type = Types::ListPiiEntitiesDetectionJobsResponse
    ListSentimentDetectionJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentDetectionJobFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date\n      and time that they were submitted. You can only set one filter at a time.</p>"}))
    ListSentimentDetectionJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListSentimentDetectionJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page. The default is 100.</p>"}))
    ListSentimentDetectionJobsRequest.type = Types::ListSentimentDetectionJobsRequest
    ListSentimentDetectionJobsResponse.add_member(:sentiment_detection_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentDetectionJobPropertiesList, location_name: 'SentimentDetectionJobPropertiesList', traits: {"smithy.api#documentation" => "<p>A list containing the properties of each job that is returned.</p>"}))
    ListSentimentDetectionJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListSentimentDetectionJobsResponse.type = Types::ListSentimentDetectionJobsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource you are querying.\n    </p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource you are\n      querying.</p>"}))
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags associated with the Amazon Comprehend resource being queried. A tag is a key-value\n      pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with\n      \"Sales\" as the key might be added to a resource to indicate its use by the sales department.\n    </p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTargetedSentimentDetectionJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetedSentimentDetectionJobFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date\n      and time that they were submitted. You can only set one filter at a time.</p>"}))
    ListTargetedSentimentDetectionJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListTargetedSentimentDetectionJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page. The default is 100.</p>"}))
    ListTargetedSentimentDetectionJobsRequest.type = Types::ListTargetedSentimentDetectionJobsRequest
    ListTargetedSentimentDetectionJobsResponse.add_member(:targeted_sentiment_detection_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetedSentimentDetectionJobPropertiesList, location_name: 'TargetedSentimentDetectionJobPropertiesList', traits: {"smithy.api#documentation" => "<p>A list containing the properties of each job that is returned.</p>"}))
    ListTargetedSentimentDetectionJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListTargetedSentimentDetectionJobsResponse.type = Types::ListTargetedSentimentDetectionJobsResponse
    ListTopicsDetectionJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicsDetectionJobFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the jobs that are returned. Jobs can be filtered on their name, status, or the\n      date and time that they were submitted. You can set only one filter at a time.</p>"}))
    ListTopicsDetectionJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListTopicsDetectionJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in each page. The default is 100.</p>"}))
    ListTopicsDetectionJobsRequest.type = Types::ListTopicsDetectionJobsRequest
    ListTopicsDetectionJobsResponse.add_member(:topics_detection_job_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicsDetectionJobPropertiesList, location_name: 'TopicsDetectionJobPropertiesList', traits: {"smithy.api#documentation" => "<p>A list containing the properties of each job that is returned.</p>"}))
    ListTopicsDetectionJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return.</p>"}))
    ListTopicsDetectionJobsResponse.type = Types::ListTopicsDetectionJobsResponse
    MentionSentiment.add_member(:sentiment, Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentType, location_name: 'Sentiment', traits: {"smithy.api#documentation" => "<p>The sentiment of the mention. </p>"}))
    MentionSentiment.add_member(:sentiment_score, Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentScore, location_name: 'SentimentScore'))
    MentionSentiment.type = Types::MentionSentiment
    ModelStatus.add_member(:submitted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBMITTED', traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    ModelStatus.add_member(:training, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINING', traits: {"smithy.api#enumValue" => "TRAINING"}))
    ModelStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ModelStatus.add_member(:stop_requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_REQUESTED', traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    ModelStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    ModelStatus.add_member(:in_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_ERROR', traits: {"smithy.api#enumValue" => "IN_ERROR"}))
    ModelStatus.add_member(:trained, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINED', traits: {"smithy.api#enumValue" => "TRAINED"}))
    ModelStatus.add_member(:trained_with_warning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINED_WITH_WARNING', traits: {"smithy.api#enumValue" => "TRAINED_WITH_WARNING"}))
    ModelType.add_member(:document_classifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_CLASSIFIER', traits: {"smithy.api#enumValue" => "DOCUMENT_CLASSIFIER"}))
    ModelType.add_member(:entity_recognizer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENTITY_RECOGNIZER', traits: {"smithy.api#enumValue" => "ENTITY_RECOGNIZER"}))
    OutputDataConfig.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>When you use the <code>OutputDataConfig</code> object with asynchronous operations, you\n      specify the Amazon S3 location where you want to write the output data. The URI must be in the\n      same Region as the API endpoint that you are calling. The location is used as the prefix for\n      the actual location of the output file.</p>\n         <p>When the topic detection job is finished, the service creates an output file in a\n      directory specific to the job. The <code>S3Uri</code> field contains the location of the\n      output file, called <code>output.tar.gz</code>. It is a compressed archive that contains the\n      ouput of the operation.</p>\n         <p>\n      For a PII entity detection job, the output file is plain text, not a compressed archive.\n      The output file name is the same as the input file, with <code>.out</code> appended at the end.\n    </p>", "smithy.api#required" => {}}))
    OutputDataConfig.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the\n      output results from an analysis job. Specify the Key Id of a symmetric key, because you cannot use an asymmetric\n       key for uploading data to S3.</p>\n         <p>The KmsKeyId can be one of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>KMS Key Alias: <code>\"alias/ExampleAlias\"</code>\n               </p>\n            </li>\n            <li>\n               <p>ARN of a KMS Key Alias:\n            <code>\"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias\"</code>\n               </p>\n            </li>\n         </ul>"}))
    OutputDataConfig.type = Types::OutputDataConfig
    PageBasedErrorCode.add_member(:textract_bad_page, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXTRACT_BAD_PAGE', traits: {"smithy.api#enumValue" => "TEXTRACT_BAD_PAGE"}))
    PageBasedErrorCode.add_member(:textract_provisioned_throughput_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED', traits: {"smithy.api#enumValue" => "TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED"}))
    PageBasedErrorCode.add_member(:page_characters_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAGE_CHARACTERS_EXCEEDED', traits: {"smithy.api#enumValue" => "PAGE_CHARACTERS_EXCEEDED"}))
    PageBasedErrorCode.add_member(:page_size_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAGE_SIZE_EXCEEDED', traits: {"smithy.api#enumValue" => "PAGE_SIZE_EXCEEDED"}))
    PageBasedErrorCode.add_member(:internal_server_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_SERVER_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    PageBasedWarningCode.add_member(:inferencing_plaintext_with_native_trained_model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFERENCING_PLAINTEXT_WITH_NATIVE_TRAINED_MODEL', traits: {"smithy.api#enumValue" => "INFERENCING_PLAINTEXT_WITH_NATIVE_TRAINED_MODEL"}))
    PageBasedWarningCode.add_member(:inferencing_native_document_with_plaintext_trained_model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFERENCING_NATIVE_DOCUMENT_WITH_PLAINTEXT_TRAINED_MODEL', traits: {"smithy.api#enumValue" => "INFERENCING_NATIVE_DOCUMENT_WITH_PLAINTEXT_TRAINED_MODEL"}))
    PartOfSpeechTag.add_member(:tag, Smithy::Schema::Shapes::ShapeRef.new(shape: PartOfSpeechTagType, location_name: 'Tag', traits: {"smithy.api#documentation" => "<p>Identifies the part of speech that the token represents.</p>"}))
    PartOfSpeechTag.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The confidence that Amazon Comprehend has that the part of speech was correctly\n      identified.</p>"}))
    PartOfSpeechTag.type = Types::PartOfSpeechTag
    PartOfSpeechTagType.add_member(:adj, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADJ', traits: {"smithy.api#enumValue" => "ADJ"}))
    PartOfSpeechTagType.add_member(:adp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADP', traits: {"smithy.api#enumValue" => "ADP"}))
    PartOfSpeechTagType.add_member(:adv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADV', traits: {"smithy.api#enumValue" => "ADV"}))
    PartOfSpeechTagType.add_member(:aux, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUX', traits: {"smithy.api#enumValue" => "AUX"}))
    PartOfSpeechTagType.add_member(:conj, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONJ', traits: {"smithy.api#enumValue" => "CONJ"}))
    PartOfSpeechTagType.add_member(:cconj, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CCONJ', traits: {"smithy.api#enumValue" => "CCONJ"}))
    PartOfSpeechTagType.add_member(:det, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DET', traits: {"smithy.api#enumValue" => "DET"}))
    PartOfSpeechTagType.add_member(:intj, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTJ', traits: {"smithy.api#enumValue" => "INTJ"}))
    PartOfSpeechTagType.add_member(:noun, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOUN', traits: {"smithy.api#enumValue" => "NOUN"}))
    PartOfSpeechTagType.add_member(:num, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUM', traits: {"smithy.api#enumValue" => "NUM"}))
    PartOfSpeechTagType.add_member(:o, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'O', traits: {"smithy.api#enumValue" => "O"}))
    PartOfSpeechTagType.add_member(:part, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PART', traits: {"smithy.api#enumValue" => "PART"}))
    PartOfSpeechTagType.add_member(:pron, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRON', traits: {"smithy.api#enumValue" => "PRON"}))
    PartOfSpeechTagType.add_member(:propn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROPN', traits: {"smithy.api#enumValue" => "PROPN"}))
    PartOfSpeechTagType.add_member(:punct, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUNCT', traits: {"smithy.api#enumValue" => "PUNCT"}))
    PartOfSpeechTagType.add_member(:sconj, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCONJ', traits: {"smithy.api#enumValue" => "SCONJ"}))
    PartOfSpeechTagType.add_member(:sym, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYM', traits: {"smithy.api#enumValue" => "SYM"}))
    PartOfSpeechTagType.add_member(:verb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERB', traits: {"smithy.api#enumValue" => "VERB"}))
    PiiEntitiesDetectionJobFilter.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>Filters on the name of the job.</p>"}))
    PiiEntitiesDetectionJobFilter.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on job status. Returns only jobs with the specified\n      status.</p>"}))
    PiiEntitiesDetectionJobFilter.add_member(:submit_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeBefore', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,\n      oldest to newest.</p>"}))
    PiiEntitiesDetectionJobFilter.add_member(:submit_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeAfter', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted after the specified time. Jobs are returned in descending order,\n      newest to oldest.</p>"}))
    PiiEntitiesDetectionJobFilter.type = Types::PiiEntitiesDetectionJobFilter
    PiiEntitiesDetectionJobProperties.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier assigned to the PII entities detection job.</p>"}))
    PiiEntitiesDetectionJobProperties.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the PII entities detection job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:pii-entities-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:pii-entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    PiiEntitiesDetectionJobProperties.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name that you assigned the PII entities detection job.</p>"}))
    PiiEntitiesDetectionJobProperties.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the PII entities detection job. If the status is\n      <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>"}))
    PiiEntitiesDetectionJobProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description of the status of a job.</p>"}))
    PiiEntitiesDetectionJobProperties.add_member(:submit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime', traits: {"smithy.api#documentation" => "<p>The time that the PII entities detection job was submitted for processing.</p>"}))
    PiiEntitiesDetectionJobProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time that the PII entities detection job completed.</p>"}))
    PiiEntitiesDetectionJobProperties.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input properties for a PII entities detection job.</p>"}))
    PiiEntitiesDetectionJobProperties.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PiiOutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output data configuration that you supplied when you created the PII entities\n      detection job.</p>"}))
    PiiEntitiesDetectionJobProperties.add_member(:redaction_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RedactionConfig, location_name: 'RedactionConfig', traits: {"smithy.api#documentation" => "<p>Provides configuration parameters for PII entity redaction.</p>\n         <p>This parameter is required if you set the <code>Mode</code> parameter to\n        <code>ONLY_REDACTION</code>. In that case, you must provide a <code>RedactionConfig</code>\n      definition that includes the <code>PiiEntityTypes</code> parameter.</p>"}))
    PiiEntitiesDetectionJobProperties.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code of the input documents.</p>"}))
    PiiEntitiesDetectionJobProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>"}))
    PiiEntitiesDetectionJobProperties.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntitiesDetectionMode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>Specifies whether the output provides the locations (offsets) of PII entities or a file in\n      which PII entities are redacted.</p>"}))
    PiiEntitiesDetectionJobProperties.type = Types::PiiEntitiesDetectionJobProperties
    PiiEntitiesDetectionJobPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntitiesDetectionJobProperties)
    PiiEntitiesDetectionMaskMode.add_member(:mask, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASK', traits: {"smithy.api#enumValue" => "MASK"}))
    PiiEntitiesDetectionMaskMode.add_member(:replace_with_pii_entity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLACE_WITH_PII_ENTITY_TYPE', traits: {"smithy.api#enumValue" => "REPLACE_WITH_PII_ENTITY_TYPE"}))
    PiiEntitiesDetectionMode.add_member(:only_redaction, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONLY_REDACTION', traits: {"smithy.api#enumValue" => "ONLY_REDACTION"}))
    PiiEntitiesDetectionMode.add_member(:only_offsets, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONLY_OFFSETS', traits: {"smithy.api#enumValue" => "ONLY_OFFSETS"}))
    PiiEntity.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend has in the accuracy of the\n      detection.</p>"}))
    PiiEntity.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntityType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The entity's type.</p>"}))
    PiiEntity.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p>The zero-based offset from the beginning of the source text to the first character in the\n      entity.</p>"}))
    PiiEntity.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p>The zero-based offset from the beginning of the source text to the last character in the\n      entity.</p>"}))
    PiiEntity.type = Types::PiiEntity
    PiiEntityType.add_member(:bank_account_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BANK_ACCOUNT_NUMBER', traits: {"smithy.api#enumValue" => "BANK_ACCOUNT_NUMBER"}))
    PiiEntityType.add_member(:bank_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BANK_ROUTING', traits: {"smithy.api#enumValue" => "BANK_ROUTING"}))
    PiiEntityType.add_member(:credit_debit_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREDIT_DEBIT_NUMBER', traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_NUMBER"}))
    PiiEntityType.add_member(:credit_debit_cvv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREDIT_DEBIT_CVV', traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CVV"}))
    PiiEntityType.add_member(:credit_debit_expiry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREDIT_DEBIT_EXPIRY', traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_EXPIRY"}))
    PiiEntityType.add_member(:pin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PIN', traits: {"smithy.api#enumValue" => "PIN"}))
    PiiEntityType.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    PiiEntityType.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDRESS', traits: {"smithy.api#enumValue" => "ADDRESS"}))
    PiiEntityType.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAME', traits: {"smithy.api#enumValue" => "NAME"}))
    PiiEntityType.add_member(:phone, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE', traits: {"smithy.api#enumValue" => "PHONE"}))
    PiiEntityType.add_member(:ssn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSN', traits: {"smithy.api#enumValue" => "SSN"}))
    PiiEntityType.add_member(:date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATE_TIME', traits: {"smithy.api#enumValue" => "DATE_TIME"}))
    PiiEntityType.add_member(:passport_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSPORT_NUMBER', traits: {"smithy.api#enumValue" => "PASSPORT_NUMBER"}))
    PiiEntityType.add_member(:driver_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DRIVER_ID', traits: {"smithy.api#enumValue" => "DRIVER_ID"}))
    PiiEntityType.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'URL', traits: {"smithy.api#enumValue" => "URL"}))
    PiiEntityType.add_member(:age, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGE', traits: {"smithy.api#enumValue" => "AGE"}))
    PiiEntityType.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USERNAME', traits: {"smithy.api#enumValue" => "USERNAME"}))
    PiiEntityType.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSWORD', traits: {"smithy.api#enumValue" => "PASSWORD"}))
    PiiEntityType.add_member(:aws_access_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_ACCESS_KEY', traits: {"smithy.api#enumValue" => "AWS_ACCESS_KEY"}))
    PiiEntityType.add_member(:aws_secret_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SECRET_KEY', traits: {"smithy.api#enumValue" => "AWS_SECRET_KEY"}))
    PiiEntityType.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IP_ADDRESS', traits: {"smithy.api#enumValue" => "IP_ADDRESS"}))
    PiiEntityType.add_member(:mac_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAC_ADDRESS', traits: {"smithy.api#enumValue" => "MAC_ADDRESS"}))
    PiiEntityType.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    PiiEntityType.add_member(:license_plate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LICENSE_PLATE', traits: {"smithy.api#enumValue" => "LICENSE_PLATE"}))
    PiiEntityType.add_member(:vehicle_identification_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VEHICLE_IDENTIFICATION_NUMBER', traits: {"smithy.api#enumValue" => "VEHICLE_IDENTIFICATION_NUMBER"}))
    PiiEntityType.add_member(:uk_national_insurance_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UK_NATIONAL_INSURANCE_NUMBER', traits: {"smithy.api#enumValue" => "UK_NATIONAL_INSURANCE_NUMBER"}))
    PiiEntityType.add_member(:ca_social_insurance_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CA_SOCIAL_INSURANCE_NUMBER', traits: {"smithy.api#enumValue" => "CA_SOCIAL_INSURANCE_NUMBER"}))
    PiiEntityType.add_member(:us_individual_tax_identification_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER', traits: {"smithy.api#enumValue" => "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"}))
    PiiEntityType.add_member(:uk_unique_taxpayer_reference_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER', traits: {"smithy.api#enumValue" => "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"}))
    PiiEntityType.add_member(:in_permanent_account_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PERMANENT_ACCOUNT_NUMBER', traits: {"smithy.api#enumValue" => "IN_PERMANENT_ACCOUNT_NUMBER"}))
    PiiEntityType.add_member(:in_nrega, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_NREGA', traits: {"smithy.api#enumValue" => "IN_NREGA"}))
    PiiEntityType.add_member(:international_bank_account_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNATIONAL_BANK_ACCOUNT_NUMBER', traits: {"smithy.api#enumValue" => "INTERNATIONAL_BANK_ACCOUNT_NUMBER"}))
    PiiEntityType.add_member(:swift_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SWIFT_CODE', traits: {"smithy.api#enumValue" => "SWIFT_CODE"}))
    PiiEntityType.add_member(:uk_national_health_service_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UK_NATIONAL_HEALTH_SERVICE_NUMBER', traits: {"smithy.api#enumValue" => "UK_NATIONAL_HEALTH_SERVICE_NUMBER"}))
    PiiEntityType.add_member(:ca_health_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CA_HEALTH_NUMBER', traits: {"smithy.api#enumValue" => "CA_HEALTH_NUMBER"}))
    PiiEntityType.add_member(:in_aadhaar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_AADHAAR', traits: {"smithy.api#enumValue" => "IN_AADHAAR"}))
    PiiEntityType.add_member(:in_voter_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_VOTER_NUMBER', traits: {"smithy.api#enumValue" => "IN_VOTER_NUMBER"}))
    PiiOutputDataConfig.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>When you use the <code>PiiOutputDataConfig</code> object with asynchronous operations,\n      you specify the Amazon S3 location where you want to write the output data. </p>\n         <p>\n      For a PII entity detection job, the output file is plain text, not a compressed archive.\n      The output file name is the same as the input file, with <code>.out</code> appended at the end.\n    </p>", "smithy.api#required" => {}}))
    PiiOutputDataConfig.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the\n      output results from an analysis job.</p>"}))
    PiiOutputDataConfig.type = Types::PiiOutputDataConfig
    Point.add_member(:x, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'X', traits: {"smithy.api#documentation" => "<p>The value of the X coordinate for a point on a polygon</p>"}))
    Point.add_member(:y, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Y', traits: {"smithy.api#documentation" => "<p>The value of the Y coordinate for a point on a polygon</p>"}))
    Point.type = Types::Point
    Polygon.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Point)
    PutResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom model to attach the policy to.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'ResourcePolicy', traits: {"smithy.api#documentation" => "<p>The JSON resource-based policy to attach to your custom model. Provide your JSON as a\n      UTF-8 encoded string without line breaks. To provide valid JSON for your policy, enclose the\n      attribute names and values in double quotes. If the JSON body is also enclosed in double\n      quotes, then you must escape the double quotes that are inside the policy:</p>\n         <p>\n            <code>\"{\\\"attribute\\\": \\\"value\\\", \\\"attribute\\\": [\\\"value\\\"]}\"</code>\n         </p>\n         <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double\n      quotes to enclose the JSON names and values:</p>\n         <p>\n            <code>'{\"attribute\": \"value\", \"attribute\": [\"value\"]}'</code>\n         </p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>The revision ID that Amazon Comprehend assigned to the policy that you are updating. If\n      you are creating a new policy that has no prior version, don't use this parameter. Amazon\n      Comprehend creates the revision ID for you.</p>"}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>The revision ID of the policy. Each time you modify a policy, Amazon Comprehend assigns a\n      new revision ID, and it deletes the prior version of the policy.</p>"}))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    RedactionConfig.add_member(:pii_entity_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPiiEntityTypes, location_name: 'PiiEntityTypes', traits: {"smithy.api#documentation" => "<p>An array of the types of PII entities that Amazon Comprehend detects in the input text for\n      your request.</p>"}))
    RedactionConfig.add_member(:mask_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntitiesDetectionMaskMode, location_name: 'MaskMode', traits: {"smithy.api#documentation" => "<p>Specifies whether the PII entity is redacted with the mask character or the entity\n      type.</p>"}))
    RedactionConfig.add_member(:mask_character, Smithy::Schema::Shapes::ShapeRef.new(shape: MaskCharacter, location_name: 'MaskCharacter', traits: {"smithy.api#documentation" => "<p>A character that replaces each character in the redacted PII entity.</p>"}))
    RedactionConfig.type = Types::RedactionConfig
    RelationshipType.add_member(:child, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHILD', traits: {"smithy.api#enumValue" => "CHILD"}))
    RelationshipsListItem.add_member(:ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Ids', traits: {"smithy.api#documentation" => "<p>Identifers of the child blocks.</p>"}))
    RelationshipsListItem.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Only supported relationship is a child relationship.</p>"}))
    RelationshipsListItem.type = Types::RelationshipsListItem
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceUnavailableException.type = Types::ResourceUnavailableException
    SecurityGroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    SentimentDetectionJobFilter.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>Filters on the name of the job.</p>"}))
    SentimentDetectionJobFilter.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on job status. Returns only jobs with the specified\n      status.</p>"}))
    SentimentDetectionJobFilter.add_member(:submit_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeBefore', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,\n      oldest to newest.</p>"}))
    SentimentDetectionJobFilter.add_member(:submit_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeAfter', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted after the specified time. Jobs are returned in descending order,\n      newest to oldest.</p>"}))
    SentimentDetectionJobFilter.type = Types::SentimentDetectionJobFilter
    SentimentDetectionJobProperties.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier assigned to the sentiment detection job.</p>"}))
    SentimentDetectionJobProperties.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the sentiment detection job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:sentiment-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    SentimentDetectionJobProperties.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name that you assigned to the sentiment detection job</p>"}))
    SentimentDetectionJobProperties.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the sentiment detection job. If the status is <code>FAILED</code>,\n      the <code>Messages</code> field shows the reason for the failure.</p>"}))
    SentimentDetectionJobProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description of the status of a job.</p>"}))
    SentimentDetectionJobProperties.add_member(:submit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime', traits: {"smithy.api#documentation" => "<p>The time that the sentiment detection job was submitted for processing.</p>"}))
    SentimentDetectionJobProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time that the sentiment detection job ended.</p>"}))
    SentimentDetectionJobProperties.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input data configuration that you supplied when you created the sentiment detection\n      job.</p>"}))
    SentimentDetectionJobProperties.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output data configuration that you supplied when you created the sentiment detection\n      job.</p>"}))
    SentimentDetectionJobProperties.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code of the input documents.</p>"}))
    SentimentDetectionJobProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>"}))
    SentimentDetectionJobProperties.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    SentimentDetectionJobProperties.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the\n      resources you are using for your sentiment detection job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    SentimentDetectionJobProperties.type = Types::SentimentDetectionJobProperties
    SentimentDetectionJobPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentDetectionJobProperties)
    SentimentScore.add_member(:positive, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Positive', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of\n      the <code>POSITIVE</code> sentiment.</p>"}))
    SentimentScore.add_member(:negative, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Negative', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of\n      the <code>NEGATIVE</code> sentiment.</p>"}))
    SentimentScore.add_member(:neutral, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Neutral', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of\n      the <code>NEUTRAL</code> sentiment.</p>"}))
    SentimentScore.add_member(:mixed, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Mixed', traits: {"smithy.api#documentation" => "<p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of\n      the <code>MIXED</code> sentiment.</p>"}))
    SentimentScore.type = Types::SentimentScore
    SentimentType.add_member(:positive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSITIVE', traits: {"smithy.api#enumValue" => "POSITIVE"}))
    SentimentType.add_member(:negative, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEGATIVE', traits: {"smithy.api#enumValue" => "NEGATIVE"}))
    SentimentType.add_member(:neutral, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEUTRAL', traits: {"smithy.api#enumValue" => "NEUTRAL"}))
    SentimentType.add_member(:mixed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIXED', traits: {"smithy.api#enumValue" => "MIXED"}))
    Split.add_member(:train, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAIN', traits: {"smithy.api#enumValue" => "TRAIN"}))
    Split.add_member(:test, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST', traits: {"smithy.api#enumValue" => "TEST"}))
    StartDocumentClassificationJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The identifier of the job.</p>"}))
    StartDocumentClassificationJobRequest.add_member(:document_classifier_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierArn, location_name: 'DocumentClassifierArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the document classifier to use to process the\n      job.</p>"}))
    StartDocumentClassificationJobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and location of the input data for the job.</p>", "smithy.api#required" => {}}))
    StartDocumentClassificationJobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies where to send the output files.</p>", "smithy.api#required" => {}}))
    StartDocumentClassificationJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>", "smithy.api#required" => {}}))
    StartDocumentClassificationJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you do not set the client request token, Amazon\n      Comprehend generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    StartDocumentClassificationJobRequest.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    StartDocumentClassificationJobRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing\n      the resources you are using for your document classification job. For more information, see\n      <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    StartDocumentClassificationJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the document classification job. A tag is a key-value pair that\n      adds metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the\n      key might be added to a resource to indicate its use by the sales department.</p>"}))
    StartDocumentClassificationJobRequest.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel associated with the model to use.</p>"}))
    StartDocumentClassificationJobRequest.type = Types::StartDocumentClassificationJobRequest
    StartDocumentClassificationJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier generated for the job. To get the status of the job, use this identifier\n      with the <code>DescribeDocumentClassificationJob</code> operation.</p>"}))
    StartDocumentClassificationJobResponse.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the document classification job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:document-classification-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    StartDocumentClassificationJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the job:</p>\n         <ul>\n            <li>\n               <p>SUBMITTED - The job has been received and queued for processing.</p>\n            </li>\n            <li>\n               <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>\n            </li>\n            <li>\n               <p>COMPLETED - The job was successfully completed and the output is available.</p>\n            </li>\n            <li>\n               <p>FAILED - The job did not complete. For details, use the \n          <code>DescribeDocumentClassificationJob</code> operation.</p>\n            </li>\n            <li>\n               <p>STOP_REQUESTED - Amazon Comprehend has received a stop request for the job and is\n          processing the request.</p>\n            </li>\n            <li>\n               <p>STOPPED - The job was successfully stopped without completing.</p>\n            </li>\n         </ul>"}))
    StartDocumentClassificationJobResponse.add_member(:document_classifier_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierArn, location_name: 'DocumentClassifierArn', traits: {"smithy.api#documentation" => "<p>The ARN of the custom classification model.</p>"}))
    StartDocumentClassificationJobResponse.type = Types::StartDocumentClassificationJobResponse
    StartDominantLanguageDetectionJobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and location of the input data for the job.</p>", "smithy.api#required" => {}}))
    StartDominantLanguageDetectionJobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies where to send the output files.</p>", "smithy.api#required" => {}}))
    StartDominantLanguageDetectionJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions\">Role-based permissions</a>.</p>", "smithy.api#required" => {}}))
    StartDominantLanguageDetectionJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>An identifier for the job.</p>"}))
    StartDominantLanguageDetectionJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you do not set the client request token, Amazon\n      Comprehend generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    StartDominantLanguageDetectionJobRequest.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    StartDominantLanguageDetectionJobRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing\n      the resources you are using for your dominant language detection job. For more information,\n      see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon VPC</a>. </p>"}))
    StartDominantLanguageDetectionJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the dominant language detection job. A tag is a key-value pair\n      that adds metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as\n      the key might be added to a resource to indicate its use by the sales department.</p>"}))
    StartDominantLanguageDetectionJobRequest.type = Types::StartDominantLanguageDetectionJobRequest
    StartDominantLanguageDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier generated for the job. To get the status of a job, use this identifier with\n      the  operation.</p>"}))
    StartDominantLanguageDetectionJobResponse.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dominant language detection job. It is a unique,\n      fully qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID.\n      The format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:dominant-language-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:dominant-language-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    StartDominantLanguageDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the job. </p>\n         <ul>\n            <li>\n               <p>SUBMITTED - The job has been received and is queued for processing.</p>\n            </li>\n            <li>\n               <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>\n            </li>\n            <li>\n               <p>COMPLETED - The job was successfully completed and the output is available.</p>\n            </li>\n            <li>\n               <p>FAILED - The job did not complete. To get details, use the  operation.</p>\n            </li>\n         </ul>"}))
    StartDominantLanguageDetectionJobResponse.type = Types::StartDominantLanguageDetectionJobResponse
    StartEntitiesDetectionJobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and location of the input data for the job.</p>", "smithy.api#required" => {}}))
    StartEntitiesDetectionJobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies where to send the output files.</p>", "smithy.api#required" => {}}))
    StartEntitiesDetectionJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions\">Role-based permissions</a>.</p>", "smithy.api#required" => {}}))
    StartEntitiesDetectionJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The identifier of the job.</p>"}))
    StartEntitiesDetectionJobRequest.add_member(:entity_recognizer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerArn, location_name: 'EntityRecognizerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the specific entity recognizer to be used\n      by the <code>StartEntitiesDetectionJob</code>. This ARN is optional and is only used for a\n      custom entity recognition job.</p>"}))
    StartEntitiesDetectionJobRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. All documents must be in the same language. You can\n      specify any of the languages supported by Amazon Comprehend. If custom entities recognition is\n      used, this parameter is ignored and the language used for training the model is used\n      instead.</p>", "smithy.api#required" => {}}))
    StartEntitiesDetectionJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you don't set the client request token, Amazon\n      Comprehend generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    StartEntitiesDetectionJobRequest.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    StartEntitiesDetectionJobRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing\n      the resources you are using for your entity detection job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    StartEntitiesDetectionJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the entities detection job. A tag is a key-value pair that adds\n      metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the key\n      might be added to a resource to indicate its use by the sales department.</p>"}))
    StartEntitiesDetectionJobRequest.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel associated with the model to use.</p>"}))
    StartEntitiesDetectionJobRequest.type = Types::StartEntitiesDetectionJobRequest
    StartEntitiesDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier generated for the job. To get the status of job, use this identifier with\n      the  operation.</p>"}))
    StartEntitiesDetectionJobResponse.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the entities detection job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:entities-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    StartEntitiesDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the job. </p>\n         <ul>\n            <li>\n               <p>SUBMITTED - The job has been received and is queued for processing.</p>\n            </li>\n            <li>\n               <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>\n            </li>\n            <li>\n               <p>COMPLETED - The job was successfully completed and the output is available.</p>\n            </li>\n            <li>\n               <p>FAILED - The job did not complete. To get details, use the  operation.</p>\n            </li>\n            <li>\n               <p>STOP_REQUESTED - Amazon Comprehend has received a stop request for the job and is\n          processing the request.</p>\n            </li>\n            <li>\n               <p>STOPPED - The job was successfully stopped without completing.</p>\n            </li>\n         </ul>"}))
    StartEntitiesDetectionJobResponse.add_member(:entity_recognizer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerArn, location_name: 'EntityRecognizerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the custom entity recognition model.</p>"}))
    StartEntitiesDetectionJobResponse.type = Types::StartEntitiesDetectionJobResponse
    StartEventsDetectionJobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and location of the input data for the job.</p>", "smithy.api#required" => {}}))
    StartEventsDetectionJobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies where to send the output files.</p>", "smithy.api#required" => {}}))
    StartEventsDetectionJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>", "smithy.api#required" => {}}))
    StartEventsDetectionJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The identifier of the events detection job.</p>"}))
    StartEventsDetectionJobRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code of the input documents.</p>", "smithy.api#required" => {}}))
    StartEventsDetectionJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>An unique identifier for the request. If you don't set the client request token, Amazon\n      Comprehend generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    StartEventsDetectionJobRequest.add_member(:target_event_types, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetEventTypes, location_name: 'TargetEventTypes', traits: {"smithy.api#documentation" => "<p>The types of events to detect in the input documents.</p>", "smithy.api#required" => {}}))
    StartEventsDetectionJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the events detection job. A tag is a key-value pair that adds\n      metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the key\n      might be added to a resource to indicate its use by the sales department.</p>"}))
    StartEventsDetectionJobRequest.type = Types::StartEventsDetectionJobRequest
    StartEventsDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>An unique identifier for the request. If you don't set the client request token, Amazon\n      Comprehend generates one.</p>"}))
    StartEventsDetectionJobResponse.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the events detection job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:events-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:events-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    StartEventsDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the events detection job.</p>"}))
    StartEventsDetectionJobResponse.type = Types::StartEventsDetectionJobResponse
    StartFlywheelIterationRequest.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the flywheel.</p>", "smithy.api#required" => {}}))
    StartFlywheelIterationRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you don't set the client request token, Amazon\n      Comprehend generates one.</p>"}))
    StartFlywheelIterationRequest.type = Types::StartFlywheelIterationRequest
    StartFlywheelIterationResponse.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p></p>"}))
    StartFlywheelIterationResponse.add_member(:flywheel_iteration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelIterationId, location_name: 'FlywheelIterationId', traits: {"smithy.api#documentation" => "<p></p>"}))
    StartFlywheelIterationResponse.type = Types::StartFlywheelIterationResponse
    StartKeyPhrasesDetectionJobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and location of the input data for the job.</p>", "smithy.api#required" => {}}))
    StartKeyPhrasesDetectionJobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies where to send the output files.</p>", "smithy.api#required" => {}}))
    StartKeyPhrasesDetectionJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions\">Role-based permissions</a>.</p>", "smithy.api#required" => {}}))
    StartKeyPhrasesDetectionJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The identifier of the job.</p>"}))
    StartKeyPhrasesDetectionJobRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. You can specify any of the primary languages\n      supported by Amazon Comprehend. All documents must be in the same language.</p>", "smithy.api#required" => {}}))
    StartKeyPhrasesDetectionJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you don't set the client request token, Amazon\n      Comprehend generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    StartKeyPhrasesDetectionJobRequest.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    StartKeyPhrasesDetectionJobRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing\n      the resources you are using for your key phrases detection job. For more information, see\n      <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    StartKeyPhrasesDetectionJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the key phrases detection job. A tag is a key-value pair that\n      adds metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the\n      key might be added to a resource to indicate its use by the sales department.</p>"}))
    StartKeyPhrasesDetectionJobRequest.type = Types::StartKeyPhrasesDetectionJobRequest
    StartKeyPhrasesDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier generated for the job. To get the status of a job, use this identifier with\n      the  operation.</p>"}))
    StartKeyPhrasesDetectionJobResponse.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the key phrase detection job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:key-phrases-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:key-phrases-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    StartKeyPhrasesDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the job. </p>\n         <ul>\n            <li>\n               <p>SUBMITTED - The job has been received and is queued for processing.</p>\n            </li>\n            <li>\n               <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>\n            </li>\n            <li>\n               <p>COMPLETED - The job was successfully completed and the output is available.</p>\n            </li>\n            <li>\n               <p>FAILED - The job did not complete. To get details, use the  operation.</p>\n            </li>\n         </ul>"}))
    StartKeyPhrasesDetectionJobResponse.type = Types::StartKeyPhrasesDetectionJobResponse
    StartPiiEntitiesDetectionJobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input properties for a PII entities detection job.</p>", "smithy.api#required" => {}}))
    StartPiiEntitiesDetectionJobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Provides conﬁguration parameters for the output of PII entity detection jobs.</p>", "smithy.api#required" => {}}))
    StartPiiEntitiesDetectionJobRequest.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntitiesDetectionMode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>Specifies whether the output provides the locations (offsets) of PII entities or a file in\n      which PII entities are redacted.</p>", "smithy.api#required" => {}}))
    StartPiiEntitiesDetectionJobRequest.add_member(:redaction_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RedactionConfig, location_name: 'RedactionConfig', traits: {"smithy.api#documentation" => "<p>Provides configuration parameters for PII entity redaction.</p>\n         <p>This parameter is required if you set the <code>Mode</code> parameter to\n        <code>ONLY_REDACTION</code>. In that case, you must provide a <code>RedactionConfig</code>\n      definition that includes the <code>PiiEntityTypes</code> parameter.</p>"}))
    StartPiiEntitiesDetectionJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>", "smithy.api#required" => {}}))
    StartPiiEntitiesDetectionJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The identifier of the job.</p>"}))
    StartPiiEntitiesDetectionJobRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. \n      Enter the language code for English (en) or Spanish (es).</p>", "smithy.api#required" => {}}))
    StartPiiEntitiesDetectionJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you don't set the client request token, Amazon\n      Comprehend generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    StartPiiEntitiesDetectionJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the PII entities detection job. A tag is a key-value pair that\n      adds metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the\n      key might be added to a resource to indicate its use by the sales department.</p>"}))
    StartPiiEntitiesDetectionJobRequest.type = Types::StartPiiEntitiesDetectionJobRequest
    StartPiiEntitiesDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier generated for the job.</p>"}))
    StartPiiEntitiesDetectionJobResponse.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the PII entity detection job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:pii-entities-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:pii-entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    StartPiiEntitiesDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the job.</p>"}))
    StartPiiEntitiesDetectionJobResponse.type = Types::StartPiiEntitiesDetectionJobResponse
    StartSentimentDetectionJobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and location of the input data for the job.</p>", "smithy.api#required" => {}}))
    StartSentimentDetectionJobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies where to send the output files. </p>", "smithy.api#required" => {}}))
    StartSentimentDetectionJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions\">Role-based permissions</a>.</p>", "smithy.api#required" => {}}))
    StartSentimentDetectionJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The identifier of the job.</p>"}))
    StartSentimentDetectionJobRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. You can specify any of the primary languages\n      supported by Amazon Comprehend. All documents must be in the same language.</p>", "smithy.api#required" => {}}))
    StartSentimentDetectionJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you don't set the client request token, Amazon\n      Comprehend generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    StartSentimentDetectionJobRequest.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    StartSentimentDetectionJobRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing\n      the resources you are using for your sentiment detection job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    StartSentimentDetectionJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the sentiment detection job. A tag is a key-value pair that\n      adds metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the\n      key might be added to a resource to indicate its use by the sales department.</p>"}))
    StartSentimentDetectionJobRequest.type = Types::StartSentimentDetectionJobRequest
    StartSentimentDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier generated for the job. To get the status of a job, use this identifier with\n      the  operation.</p>"}))
    StartSentimentDetectionJobResponse.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the sentiment detection job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:sentiment-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    StartSentimentDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the job. </p>\n         <ul>\n            <li>\n               <p>SUBMITTED - The job has been received and is queued for processing.</p>\n            </li>\n            <li>\n               <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>\n            </li>\n            <li>\n               <p>COMPLETED - The job was successfully completed and the output is available.</p>\n            </li>\n            <li>\n               <p>FAILED - The job did not complete. To get details, use the  operation.</p>\n            </li>\n         </ul>"}))
    StartSentimentDetectionJobResponse.type = Types::StartSentimentDetectionJobResponse
    StartTargetedSentimentDetectionJobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#required" => {}}))
    StartTargetedSentimentDetectionJobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies where to send the output files. </p>", "smithy.api#required" => {}}))
    StartTargetedSentimentDetectionJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions\">Role-based permissions</a>.</p>", "smithy.api#required" => {}}))
    StartTargetedSentimentDetectionJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The identifier of the job.</p>"}))
    StartTargetedSentimentDetectionJobRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language of the input documents. Currently, English is the only supported language.</p>", "smithy.api#required" => {}}))
    StartTargetedSentimentDetectionJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you don't set the client request token, Amazon\n      Comprehend generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    StartTargetedSentimentDetectionJobRequest.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the KMS key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n          <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    StartTargetedSentimentDetectionJobRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig'))
    StartTargetedSentimentDetectionJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the targeted sentiment detection job. A tag is a key-value pair that\n      adds metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the\n      key might be added to a resource to indicate its use by the sales department.</p>"}))
    StartTargetedSentimentDetectionJobRequest.type = Types::StartTargetedSentimentDetectionJobRequest
    StartTargetedSentimentDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier generated for the job. To get the status of a job, use this identifier with\n      the <code>DescribeTargetedSentimentDetectionJob</code> operation.</p>"}))
    StartTargetedSentimentDetectionJobResponse.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the targeted sentiment detection job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:targeted-sentiment-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:targeted-sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    StartTargetedSentimentDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the job. </p>\n         <ul>\n            <li>\n               <p>SUBMITTED - The job has been received and is queued for processing.</p>\n            </li>\n            <li>\n               <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>\n            </li>\n            <li>\n               <p>COMPLETED - The job was successfully completed and the output is available.</p>\n            </li>\n            <li>\n               <p>FAILED - The job did not complete. To get details, use the \n          <code>DescribeTargetedSentimentDetectionJob</code> operation.</p>\n            </li>\n         </ul>"}))
    StartTargetedSentimentDetectionJobResponse.type = Types::StartTargetedSentimentDetectionJobResponse
    StartTopicsDetectionJobRequest.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies the format and location of the input data for the job.</p>", "smithy.api#required" => {}}))
    StartTopicsDetectionJobRequest.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>Specifies where to send the output files. The output is a compressed archive with two\n      files, <code>topic-terms.csv</code> that lists the terms associated with each topic, and\n        <code>doc-topics.csv</code> that lists the documents associated with each topic</p>", "smithy.api#required" => {}}))
    StartTopicsDetectionJobRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions\">Role-based permissions</a>.</p>", "smithy.api#required" => {}}))
    StartTopicsDetectionJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The identifier of the job.</p>"}))
    StartTopicsDetectionJobRequest.add_member(:number_of_topics, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfTopicsInteger, location_name: 'NumberOfTopics', traits: {"smithy.api#documentation" => "<p>The number of topics to detect.</p>"}))
    StartTopicsDetectionJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for the request. If you do not set the client request token, Amazon\n      Comprehend generates one.</p>", "smithy.api#idempotencyToken" => {}}))
    StartTopicsDetectionJobRequest.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    StartTopicsDetectionJobRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing\n      the resources you are using for your topic detection job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    StartTopicsDetectionJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to associate with the topics detection job. A tag is a key-value pair that adds\n      metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the key\n      might be added to a resource to indicate its use by the sales department.</p>"}))
    StartTopicsDetectionJobRequest.type = Types::StartTopicsDetectionJobRequest
    StartTopicsDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier generated for the job. To get the status of the job, use this identifier\n      with the <code>DescribeTopicDetectionJob</code> operation.</p>"}))
    StartTopicsDetectionJobResponse.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the topics detection job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:topics-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    StartTopicsDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the job: </p>\n         <ul>\n            <li>\n               <p>SUBMITTED - The job has been received and is queued for processing.</p>\n            </li>\n            <li>\n               <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>\n            </li>\n            <li>\n               <p>COMPLETED - The job was successfully completed and the output is\n          available.</p>\n            </li>\n            <li>\n               <p>FAILED - The job did not complete. To get details, use the\n            <code>DescribeTopicDetectionJob</code> operation.</p>\n            </li>\n         </ul>"}))
    StartTopicsDetectionJobResponse.type = Types::StartTopicsDetectionJobResponse
    StopDominantLanguageDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the dominant language detection job to stop.</p>", "smithy.api#required" => {}}))
    StopDominantLanguageDetectionJobRequest.type = Types::StopDominantLanguageDetectionJobRequest
    StopDominantLanguageDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the dominant language detection job to stop.</p>"}))
    StopDominantLanguageDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Either <code>STOP_REQUESTED</code> if the job is currently running, or\n        <code>STOPPED</code> if the job was previously stopped with the\n        <code>StopDominantLanguageDetectionJob</code> operation.</p>"}))
    StopDominantLanguageDetectionJobResponse.type = Types::StopDominantLanguageDetectionJobResponse
    StopEntitiesDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the entities detection job to stop.</p>", "smithy.api#required" => {}}))
    StopEntitiesDetectionJobRequest.type = Types::StopEntitiesDetectionJobRequest
    StopEntitiesDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the entities detection job to stop.</p>"}))
    StopEntitiesDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Either <code>STOP_REQUESTED</code> if the job is currently running, or\n        <code>STOPPED</code> if the job was previously stopped with the\n        <code>StopEntitiesDetectionJob</code> operation.</p>"}))
    StopEntitiesDetectionJobResponse.type = Types::StopEntitiesDetectionJobResponse
    StopEventsDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the events detection job to stop.</p>", "smithy.api#required" => {}}))
    StopEventsDetectionJobRequest.type = Types::StopEventsDetectionJobRequest
    StopEventsDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the events detection job to stop.</p>"}))
    StopEventsDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the events detection job.</p>"}))
    StopEventsDetectionJobResponse.type = Types::StopEventsDetectionJobResponse
    StopKeyPhrasesDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the key phrases detection job to stop.</p>", "smithy.api#required" => {}}))
    StopKeyPhrasesDetectionJobRequest.type = Types::StopKeyPhrasesDetectionJobRequest
    StopKeyPhrasesDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the key phrases detection job to stop.</p>"}))
    StopKeyPhrasesDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Either <code>STOP_REQUESTED</code> if the job is currently running, or\n        <code>STOPPED</code> if the job was previously stopped with the\n        <code>StopKeyPhrasesDetectionJob</code> operation.</p>"}))
    StopKeyPhrasesDetectionJobResponse.type = Types::StopKeyPhrasesDetectionJobResponse
    StopPiiEntitiesDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the PII entities detection job to stop.</p>", "smithy.api#required" => {}}))
    StopPiiEntitiesDetectionJobRequest.type = Types::StopPiiEntitiesDetectionJobRequest
    StopPiiEntitiesDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the PII entities detection job to stop.</p>"}))
    StopPiiEntitiesDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the PII entities detection job.</p>"}))
    StopPiiEntitiesDetectionJobResponse.type = Types::StopPiiEntitiesDetectionJobResponse
    StopSentimentDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the sentiment detection job to stop.</p>", "smithy.api#required" => {}}))
    StopSentimentDetectionJobRequest.type = Types::StopSentimentDetectionJobRequest
    StopSentimentDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the sentiment detection job to stop.</p>"}))
    StopSentimentDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Either <code>STOP_REQUESTED</code> if the job is currently running, or\n        <code>STOPPED</code> if the job was previously stopped with the\n        <code>StopSentimentDetectionJob</code> operation.</p>"}))
    StopSentimentDetectionJobResponse.type = Types::StopSentimentDetectionJobResponse
    StopTargetedSentimentDetectionJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the targeted sentiment detection job to stop.</p>", "smithy.api#required" => {}}))
    StopTargetedSentimentDetectionJobRequest.type = Types::StopTargetedSentimentDetectionJobRequest
    StopTargetedSentimentDetectionJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the targeted sentiment detection job to stop.</p>"}))
    StopTargetedSentimentDetectionJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Either <code>STOP_REQUESTED</code> if the job is currently running, or\n      <code>STOPPED</code> if the job was previously stopped with the\n      <code>StopSentimentDetectionJob</code> operation.</p>"}))
    StopTargetedSentimentDetectionJobResponse.type = Types::StopTargetedSentimentDetectionJobResponse
    StopTrainingDocumentClassifierRequest.add_member(:document_classifier_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassifierArn, location_name: 'DocumentClassifierArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the document classifier currently being\n      trained.</p>", "smithy.api#required" => {}}))
    StopTrainingDocumentClassifierRequest.type = Types::StopTrainingDocumentClassifierRequest
    StopTrainingDocumentClassifierResponse.type = Types::StopTrainingDocumentClassifierResponse
    StopTrainingEntityRecognizerRequest.add_member(:entity_recognizer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognizerArn, location_name: 'EntityRecognizerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the entity recognizer currently being\n      trained.</p>", "smithy.api#required" => {}}))
    StopTrainingEntityRecognizerRequest.type = Types::StopTrainingEntityRecognizerRequest
    StopTrainingEntityRecognizerResponse.type = Types::StopTrainingEntityRecognizerResponse
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Subnets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    SyntaxLanguageCode.add_member(:en, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN', traits: {"smithy.api#enumValue" => "en"}))
    SyntaxLanguageCode.add_member(:es, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES', traits: {"smithy.api#enumValue" => "es"}))
    SyntaxLanguageCode.add_member(:fr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR', traits: {"smithy.api#enumValue" => "fr"}))
    SyntaxLanguageCode.add_member(:de, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DE', traits: {"smithy.api#enumValue" => "de"}))
    SyntaxLanguageCode.add_member(:it, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IT', traits: {"smithy.api#enumValue" => "it"}))
    SyntaxLanguageCode.add_member(:pt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT', traits: {"smithy.api#enumValue" => "pt"}))
    SyntaxToken.add_member(:token_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TokenId', traits: {"smithy.api#documentation" => "<p>A unique identifier for a token.</p>"}))
    SyntaxToken.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The word that was recognized in the source text.</p>"}))
    SyntaxToken.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p>The zero-based offset from the beginning of the source text to the first character in the\n      word.</p>"}))
    SyntaxToken.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p>The zero-based offset from the beginning of the source text to the last character in the\n      word.</p>"}))
    SyntaxToken.add_member(:part_of_speech, Smithy::Schema::Shapes::ShapeRef.new(shape: PartOfSpeechTag, location_name: 'PartOfSpeech', traits: {"smithy.api#documentation" => "<p>Provides the part of speech label and the confidence level that Amazon Comprehend has that\n      the part of speech was correctly identified. For more information, see\n      <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html\">Syntax</a> in the Comprehend Developer Guide.\n    </p>"}))
    SyntaxToken.type = Types::SyntaxToken
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The initial part of a key-value pair that forms a tag associated with a given resource.\n      For instance, if you want to show which resources are used by which departments, you might use\n      “Department” as the key portion of the pair, with multiple possible values such as “sales,”\n      “legal,” and “administration.” </p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p> The second part of a key-value pair that forms a tag associated with a given resource.\n      For instance, if you want to show which resources are used by which departments, you might use\n      “Department” as the initial (key) portion of the pair, with a value of “sales” to indicate the\n      sales department. </p>"}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource to which you want\n      to associate the tags. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags being associated with a specific Amazon Comprehend resource. There can be a maximum\n      of 50 tags (both existing and pending) associated with a specific resource. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetEventTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeString)
    TargetedSentimentDetectionJobFilter.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>Filters on the name of the job.</p>"}))
    TargetedSentimentDetectionJobFilter.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on job status. Returns only jobs with the specified\n      status.</p>"}))
    TargetedSentimentDetectionJobFilter.add_member(:submit_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeBefore', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,\n      oldest to newest.</p>"}))
    TargetedSentimentDetectionJobFilter.add_member(:submit_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeAfter', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Returns only jobs submitted after the specified time. Jobs are returned in descending order,\n      newest to oldest.</p>"}))
    TargetedSentimentDetectionJobFilter.type = Types::TargetedSentimentDetectionJobFilter
    TargetedSentimentDetectionJobProperties.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier assigned to the targeted sentiment detection job.</p>"}))
    TargetedSentimentDetectionJobProperties.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the targeted sentiment detection job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:targeted-sentiment-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:targeted-sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    TargetedSentimentDetectionJobProperties.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name that you assigned to the targeted sentiment detection job.</p>"}))
    TargetedSentimentDetectionJobProperties.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the targeted sentiment detection job. If the status is <code>FAILED</code>,\n      the <code>Messages</code> field shows the reason for the failure.</p>"}))
    TargetedSentimentDetectionJobProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description of the status of a job.</p>"}))
    TargetedSentimentDetectionJobProperties.add_member(:submit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime', traits: {"smithy.api#documentation" => "<p>The time that the targeted sentiment detection job was submitted for processing.</p>"}))
    TargetedSentimentDetectionJobProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time that the targeted sentiment detection job ended.</p>"}))
    TargetedSentimentDetectionJobProperties.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig'))
    TargetedSentimentDetectionJobProperties.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig'))
    TargetedSentimentDetectionJobProperties.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code of the input documents.</p>"}))
    TargetedSentimentDetectionJobProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your input data.</p>"}))
    TargetedSentimentDetectionJobProperties.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the KMS key that Amazon Comprehend uses to encrypt the\n      data on the storage volume attached to the ML compute instance(s) that process the\n      targeted sentiment detection job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n          <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    TargetedSentimentDetectionJobProperties.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig'))
    TargetedSentimentDetectionJobProperties.type = Types::TargetedSentimentDetectionJobProperties
    TargetedSentimentDetectionJobPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetedSentimentDetectionJobProperties)
    TargetedSentimentEntity.add_member(:descriptive_mention_index, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDescriptiveMentionIndices, location_name: 'DescriptiveMentionIndex', traits: {"smithy.api#documentation" => "<p>One or more index into the Mentions array that provides the best name for the entity group.</p>"}))
    TargetedSentimentEntity.add_member(:mentions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfMentions, location_name: 'Mentions', traits: {"smithy.api#documentation" => "<p>An array of mentions of the entity in the document. The array represents a co-reference group.\n      See <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html#how-targeted-sentiment-values\">\n        Co-reference group</a> for an example. </p>"}))
    TargetedSentimentEntity.type = Types::TargetedSentimentEntity
    TargetedSentimentEntityType.add_member(:person, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERSON', traits: {"smithy.api#enumValue" => "PERSON"}))
    TargetedSentimentEntityType.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCATION', traits: {"smithy.api#enumValue" => "LOCATION"}))
    TargetedSentimentEntityType.add_member(:organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION', traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    TargetedSentimentEntityType.add_member(:facility, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FACILITY', traits: {"smithy.api#enumValue" => "FACILITY"}))
    TargetedSentimentEntityType.add_member(:brand, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BRAND', traits: {"smithy.api#enumValue" => "BRAND"}))
    TargetedSentimentEntityType.add_member(:commercial_item, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMMERCIAL_ITEM', traits: {"smithy.api#enumValue" => "COMMERCIAL_ITEM"}))
    TargetedSentimentEntityType.add_member(:movie, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MOVIE', traits: {"smithy.api#enumValue" => "MOVIE"}))
    TargetedSentimentEntityType.add_member(:music, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MUSIC', traits: {"smithy.api#enumValue" => "MUSIC"}))
    TargetedSentimentEntityType.add_member(:book, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOK', traits: {"smithy.api#enumValue" => "BOOK"}))
    TargetedSentimentEntityType.add_member(:software, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOFTWARE', traits: {"smithy.api#enumValue" => "SOFTWARE"}))
    TargetedSentimentEntityType.add_member(:game, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GAME', traits: {"smithy.api#enumValue" => "GAME"}))
    TargetedSentimentEntityType.add_member(:personal_title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERSONAL_TITLE', traits: {"smithy.api#enumValue" => "PERSONAL_TITLE"}))
    TargetedSentimentEntityType.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT', traits: {"smithy.api#enumValue" => "EVENT"}))
    TargetedSentimentEntityType.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATE', traits: {"smithy.api#enumValue" => "DATE"}))
    TargetedSentimentEntityType.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUANTITY', traits: {"smithy.api#enumValue" => "QUANTITY"}))
    TargetedSentimentEntityType.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTRIBUTE', traits: {"smithy.api#enumValue" => "ATTRIBUTE"}))
    TargetedSentimentEntityType.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    TargetedSentimentMention.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>Model confidence that the entity is relevant. Value range is zero to one, where one is highest confidence.</p>"}))
    TargetedSentimentMention.add_member(:group_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'GroupScore', traits: {"smithy.api#documentation" => "<p>The confidence that all the entities mentioned in the group relate to the same entity.</p>"}))
    TargetedSentimentMention.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The text in the document that identifies the entity.</p>"}))
    TargetedSentimentMention.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetedSentimentEntityType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the entity. Amazon Comprehend supports a variety of <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html#how-targeted-sentiment-entities\">entity types</a>.</p>"}))
    TargetedSentimentMention.add_member(:mention_sentiment, Smithy::Schema::Shapes::ShapeRef.new(shape: MentionSentiment, location_name: 'MentionSentiment', traits: {"smithy.api#documentation" => "<p>Contains the sentiment and sentiment score for the mention.</p>"}))
    TargetedSentimentMention.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BeginOffset', traits: {"smithy.api#documentation" => "<p>The offset into the document text where the mention begins.</p>"}))
    TargetedSentimentMention.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndOffset', traits: {"smithy.api#documentation" => "<p>The offset into the document text where the mention ends.</p>"}))
    TargetedSentimentMention.type = Types::TargetedSentimentMention
    TaskConfig.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>Language code for the language that the model supports.</p>", "smithy.api#required" => {}}))
    TaskConfig.add_member(:document_classification_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentClassificationConfig, location_name: 'DocumentClassificationConfig', traits: {"smithy.api#documentation" => "<p>Configuration required for a document classification model.</p>"}))
    TaskConfig.add_member(:entity_recognition_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRecognitionConfig, location_name: 'EntityRecognitionConfig', traits: {"smithy.api#documentation" => "<p>Configuration required for an entity recognition model.</p>"}))
    TaskConfig.type = Types::TaskConfig
    TextSegment.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerInputString, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The text content.</p>", "smithy.api#required" => {}}))
    TextSegment.type = Types::TextSegment
    TextSizeLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TextSizeLimitExceededException.type = Types::TextSizeLimitExceededException
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TooManyTagKeysException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyTagKeysException.type = Types::TooManyTagKeysException
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyTagsException.type = Types::TooManyTagsException
    TopicsDetectionJobFilter.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p></p>"}))
    TopicsDetectionJobFilter.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Filters the list of topic detection jobs based on job status. Returns only jobs with\n      the specified status.</p>"}))
    TopicsDetectionJobFilter.add_member(:submit_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeBefore', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Only returns jobs submitted before the specified time. Jobs are returned in descending order,\n      newest to oldest.</p>"}))
    TopicsDetectionJobFilter.add_member(:submit_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTimeAfter', traits: {"smithy.api#documentation" => "<p>Filters the list of jobs based on the time that the job was submitted for processing.\n      Only returns jobs submitted after the specified time. Jobs are returned in ascending order,\n      oldest to newest.</p>"}))
    TopicsDetectionJobFilter.type = Types::TopicsDetectionJobFilter
    TopicsDetectionJobProperties.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier assigned to the topic detection job.</p>"}))
    TopicsDetectionJobProperties.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'JobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the topics detection job. It is a unique, fully\n      qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The\n      format of the ARN is as follows:</p>\n         <p>\n            <code>arn:<partition>:comprehend:<region>:<account-id>:topics-detection-job/<job-id></code>\n         </p>\n         <p>The following is an example job ARN:</p>\n         <p>\n            <code>arn:aws:comprehend:us-west-2:111122223333:topics-detection-job/1234abcd12ab34cd56ef1234567890ab</code>\n         </p>"}))
    TopicsDetectionJobProperties.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name of the topic detection job.</p>"}))
    TopicsDetectionJobProperties.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the topic detection job. If the status is <code>Failed</code>,\n      the reason for the failure is shown in the <code>Message</code> field.</p>"}))
    TopicsDetectionJobProperties.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyLengthString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description for the status of a job.</p>"}))
    TopicsDetectionJobProperties.add_member(:submit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime', traits: {"smithy.api#documentation" => "<p>The time that the topic detection job was submitted for processing.</p>"}))
    TopicsDetectionJobProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time that the topic detection job was completed.</p>"}))
    TopicsDetectionJobProperties.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input data configuration supplied when you created the topic detection\n      job.</p>"}))
    TopicsDetectionJobProperties.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output data configuration supplied when you created the topic detection\n      job.</p>"}))
    TopicsDetectionJobProperties.add_member(:number_of_topics, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfTopics', traits: {"smithy.api#documentation" => "<p>The number of topics to detect supplied when you created the topic detection job. The\n      default is 10. </p>"}))
    TopicsDetectionJobProperties.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend read access to your job data. </p>"}))
    TopicsDetectionJobProperties.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt\n      data on the storage volume attached to the ML compute instance(s) that process the analysis\n      job. The VolumeKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    TopicsDetectionJobProperties.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>Configuration parameters for a private Virtual Private Cloud (VPC) containing the\n      resources you are using for your topic detection job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon\n        VPC</a>. </p>"}))
    TopicsDetectionJobProperties.type = Types::TopicsDetectionJobProperties
    TopicsDetectionJobPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TopicsDetectionJobProperties)
    ToxicContent.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ToxicContentType, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the toxic content type.</p>"}))
    ToxicContent.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p> \n      Model confidence in the detected content type. Value range is zero to one, where one is highest confidence.</p>"}))
    ToxicContent.type = Types::ToxicContent
    ToxicContentType.add_member(:graphic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GRAPHIC', traits: {"smithy.api#enumValue" => "GRAPHIC"}))
    ToxicContentType.add_member(:harassment_or_abuse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HARASSMENT_OR_ABUSE', traits: {"smithy.api#enumValue" => "HARASSMENT_OR_ABUSE"}))
    ToxicContentType.add_member(:hate_speech, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HATE_SPEECH', traits: {"smithy.api#enumValue" => "HATE_SPEECH"}))
    ToxicContentType.add_member(:insult, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSULT', traits: {"smithy.api#enumValue" => "INSULT"}))
    ToxicContentType.add_member(:profanity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROFANITY', traits: {"smithy.api#enumValue" => "PROFANITY"}))
    ToxicContentType.add_member(:sexual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEXUAL', traits: {"smithy.api#enumValue" => "SEXUAL"}))
    ToxicContentType.add_member(:violence_or_threat, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIOLENCE_OR_THREAT', traits: {"smithy.api#enumValue" => "VIOLENCE_OR_THREAT"}))
    ToxicLabels.add_member(:labels, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfToxicContent, location_name: 'Labels', traits: {"smithy.api#documentation" => "<p>Array of toxic content types identified in the string.</p>"}))
    ToxicLabels.add_member(:toxicity, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Toxicity', traits: {"smithy.api#documentation" => "<p>Overall toxicity score for the string. Value range is zero to one, where one is the highest confidence.</p>"}))
    ToxicLabels.type = Types::ToxicLabels
    UnsupportedLanguageException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnsupportedLanguageException.type = Types::UnsupportedLanguageException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the given Amazon Comprehend resource from which you\n      want to remove the tags. </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The initial part of a key-value pair that forms a tag being removed from a given resource.\n      For example, a tag with \"Sales\" as the key might be added to a resource to indicate its use by\n      the sales department. Keys must be unique and cannot be duplicated for a particular resource.\n    </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDataSecurityConfig.add_member(:model_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'ModelKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the KMS key that Amazon Comprehend uses to encrypt\n      trained custom models. The ModelKmsKeyId can be either of the following formats:</p>\n         <ul>\n            <li>\n               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon Resource Name (ARN) of a KMS Key:\n            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>\n               </p>\n            </li>\n         </ul>"}))
    UpdateDataSecurityConfig.add_member(:volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'VolumeKmsKeyId', traits: {"smithy.api#documentation" => "<p>ID for the KMS key that Amazon Comprehend uses to encrypt the volume.</p>"}))
    UpdateDataSecurityConfig.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig'))
    UpdateDataSecurityConfig.type = Types::UpdateDataSecurityConfig
    UpdateEndpointRequest.add_member(:endpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendEndpointArn, location_name: 'EndpointArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the endpoint being updated.</p>", "smithy.api#required" => {}}))
    UpdateEndpointRequest.add_member(:desired_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'DesiredModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the new model to use when updating an existing endpoint.</p>"}))
    UpdateEndpointRequest.add_member(:desired_inference_units, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnitsInteger, location_name: 'DesiredInferenceUnits', traits: {"smithy.api#documentation" => "<p> The desired number of inference units to be used by the model using this endpoint.\n      \n      Each inference unit represents of a throughput of 100 characters per second.</p>"}))
    UpdateEndpointRequest.add_member(:desired_data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DesiredDataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>Data access role ARN to use in case the new model is encrypted with a customer CMK.</p>"}))
    UpdateEndpointRequest.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel</p>"}))
    UpdateEndpointRequest.type = Types::UpdateEndpointRequest
    UpdateEndpointResponse.add_member(:desired_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'DesiredModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the new model.</p>"}))
    UpdateEndpointResponse.type = Types::UpdateEndpointResponse
    UpdateFlywheelRequest.add_member(:flywheel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendFlywheelArn, location_name: 'FlywheelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the flywheel to update.</p>", "smithy.api#required" => {}}))
    UpdateFlywheelRequest.add_member(:active_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComprehendModelArn, location_name: 'ActiveModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the active model version.</p>"}))
    UpdateFlywheelRequest.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that\n      grants Amazon Comprehend permission to access the flywheel data.</p>"}))
    UpdateFlywheelRequest.add_member(:data_security_config, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSecurityConfig, location_name: 'DataSecurityConfig', traits: {"smithy.api#documentation" => "<p>Flywheel data security configuration.</p>"}))
    UpdateFlywheelRequest.type = Types::UpdateFlywheelRequest
    UpdateFlywheelResponse.add_member(:flywheel_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: FlywheelProperties, location_name: 'FlywheelProperties', traits: {"smithy.api#documentation" => "<p>The flywheel properties.</p>"}))
    UpdateFlywheelResponse.type = Types::UpdateFlywheelResponse
    VpcConfig.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The ID number for a security group on an instance of your private VPC. Security groups on\n      your VPC function serve as a virtual firewall to control inbound and outbound traffic and\n      provides security for the resources that you’ll be accessing on the VPC. This ID number is\n      preceded by \"sg-\", for instance: \"sg-03b388029b0a285ea\". For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html\">Security\n        Groups for your VPC</a>. </p>", "smithy.api#required" => {}}))
    VpcConfig.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: Subnets, location_name: 'Subnets', traits: {"smithy.api#documentation" => "<p>The ID for each subnet being used in your private VPC. This subnet is a subset of the a\n      range of IPv4 addresses used by the VPC and is specific to a given availability zone in the\n      VPC’s Region. This ID number is preceded by \"subnet-\", for instance:\n      \"subnet-04ccf456919e69055\". For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html\">VPCs and\n        Subnets</a>. </p>", "smithy.api#required" => {}}))
    VpcConfig.type = Types::VpcConfig
    WarningsListItem.add_member(:page, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Page', traits: {"smithy.api#documentation" => "<p>Page number in the input document.</p>"}))
    WarningsListItem.add_member(:warn_code, Smithy::Schema::Shapes::ShapeRef.new(shape: PageBasedWarningCode, location_name: 'WarnCode', traits: {"smithy.api#documentation" => "<p>The type of warning.</p>"}))
    WarningsListItem.add_member(:warn_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WarnMessage', traits: {"smithy.api#documentation" => "<p>Text message associated with the warning.</p>"}))
    WarningsListItem.type = Types::WarningsListItem

    Comprehend20171127 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.comprehend#Comprehend_20171127"
      service.name = "Comprehend20171127"
      service.version = "2017-11-27"
      service.traits = {"aws.api#service" => {"sdkId" => "Comprehend", "arnNamespace" => "comprehend", "cloudFormationName" => "Comprehend", "cloudTrailEventSource" => "comprehend.amazonaws.com", "endpointPrefix" => "comprehend"}, "aws.auth#sigv4" => {"name" => "comprehend"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Comprehend"}
      service.add_operation(:batch_detect_dominant_language, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#BatchDetectDominantLanguage"
        operation.name = "BatchDetectDominantLanguage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectDominantLanguageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectDominantLanguageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:batch_detect_entities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#BatchDetectEntities"
        operation.name = "BatchDetectEntities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectEntitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectEntitiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:batch_detect_key_phrases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#BatchDetectKeyPhrases"
        operation.name = "BatchDetectKeyPhrases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectKeyPhrasesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectKeyPhrasesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:batch_detect_sentiment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#BatchDetectSentiment"
        operation.name = "BatchDetectSentiment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectSentimentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectSentimentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:batch_detect_syntax, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#BatchDetectSyntax"
        operation.name = "BatchDetectSyntax"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectSyntaxRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectSyntaxResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:batch_detect_targeted_sentiment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#BatchDetectTargetedSentiment"
        operation.name = "BatchDetectTargetedSentiment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectTargetedSentimentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetectTargetedSentimentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:classify_document, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ClassifyDocument"
        operation.name = "ClassifyDocument"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ClassifyDocumentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ClassifyDocumentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:contains_pii_entities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ContainsPiiEntities"
        operation.name = "ContainsPiiEntities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ContainsPiiEntitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ContainsPiiEntitiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:create_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_document_classifier, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#CreateDocumentClassifier"
        operation.name = "CreateDocumentClassifier"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDocumentClassifierRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDocumentClassifierResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:create_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#CreateEndpoint"
        operation.name = "CreateEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_entity_recognizer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#CreateEntityRecognizer"
        operation.name = "CreateEntityRecognizer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEntityRecognizerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEntityRecognizerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:create_flywheel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#CreateFlywheel"
        operation.name = "CreateFlywheel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFlywheelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFlywheelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:delete_document_classifier, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DeleteDocumentClassifier"
        operation.name = "DeleteDocumentClassifier"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDocumentClassifierRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDocumentClassifierResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DeleteEndpoint"
        operation.name = "DeleteEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_entity_recognizer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DeleteEntityRecognizer"
        operation.name = "DeleteEntityRecognizer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEntityRecognizerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEntityRecognizerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_flywheel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DeleteFlywheel"
        operation.name = "DeleteFlywheel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFlywheelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFlywheelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_document_classification_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeDocumentClassificationJob"
        operation.name = "DescribeDocumentClassificationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDocumentClassificationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDocumentClassificationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_document_classifier, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeDocumentClassifier"
        operation.name = "DescribeDocumentClassifier"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDocumentClassifierRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDocumentClassifierResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_dominant_language_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeDominantLanguageDetectionJob"
        operation.name = "DescribeDominantLanguageDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDominantLanguageDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDominantLanguageDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeEndpoint"
        operation.name = "DescribeEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_entities_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeEntitiesDetectionJob"
        operation.name = "DescribeEntitiesDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntitiesDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntitiesDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_entity_recognizer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeEntityRecognizer"
        operation.name = "DescribeEntityRecognizer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntityRecognizerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntityRecognizerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_events_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeEventsDetectionJob"
        operation.name = "DescribeEventsDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_flywheel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeFlywheel"
        operation.name = "DescribeFlywheel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFlywheelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFlywheelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_flywheel_iteration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeFlywheelIteration"
        operation.name = "DescribeFlywheelIteration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFlywheelIterationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFlywheelIterationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_key_phrases_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeKeyPhrasesDetectionJob"
        operation.name = "DescribeKeyPhrasesDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeKeyPhrasesDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeKeyPhrasesDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_pii_entities_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribePiiEntitiesDetectionJob"
        operation.name = "DescribePiiEntitiesDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePiiEntitiesDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePiiEntitiesDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeResourcePolicy"
        operation.name = "DescribeResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_sentiment_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeSentimentDetectionJob"
        operation.name = "DescribeSentimentDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSentimentDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSentimentDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_targeted_sentiment_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeTargetedSentimentDetectionJob"
        operation.name = "DescribeTargetedSentimentDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTargetedSentimentDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTargetedSentimentDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_topics_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeTopicsDetectionJob"
        operation.name = "DescribeTopicsDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTopicsDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTopicsDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:detect_dominant_language, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectDominantLanguage"
        operation.name = "DetectDominantLanguage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectDominantLanguageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectDominantLanguageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:detect_entities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectEntities"
        operation.name = "DetectEntities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectEntitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectEntitiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:detect_key_phrases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectKeyPhrases"
        operation.name = "DetectKeyPhrases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectKeyPhrasesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectKeyPhrasesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:detect_pii_entities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectPiiEntities"
        operation.name = "DetectPiiEntities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectPiiEntitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectPiiEntitiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:detect_sentiment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectSentiment"
        operation.name = "DetectSentiment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectSentimentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectSentimentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:detect_syntax, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectSyntax"
        operation.name = "DetectSyntax"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectSyntaxRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectSyntaxResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:detect_targeted_sentiment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectTargetedSentiment"
        operation.name = "DetectTargetedSentiment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectTargetedSentimentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectTargetedSentimentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:detect_toxic_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectToxicContent"
        operation.name = "DetectToxicContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectToxicContentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectToxicContentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedLanguageException)
        operation.traits = {}
      end)
      service.add_operation(:import_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ImportModel"
        operation.name = "ImportModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:list_datasets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_document_classification_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListDocumentClassificationJobs"
        operation.name = "ListDocumentClassificationJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDocumentClassificationJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDocumentClassificationJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDocumentClassificationJobs.new
      end)
      service.add_operation(:list_document_classifier_summaries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListDocumentClassifierSummaries"
        operation.name = "ListDocumentClassifierSummaries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDocumentClassifierSummariesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDocumentClassifierSummariesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDocumentClassifierSummaries.new
      end)
      service.add_operation(:list_document_classifiers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListDocumentClassifiers"
        operation.name = "ListDocumentClassifiers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDocumentClassifiersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDocumentClassifiersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDocumentClassifiers.new
      end)
      service.add_operation(:list_dominant_language_detection_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListDominantLanguageDetectionJobs"
        operation.name = "ListDominantLanguageDetectionJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDominantLanguageDetectionJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDominantLanguageDetectionJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDominantLanguageDetectionJobs.new
      end)
      service.add_operation(:list_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListEndpoints"
        operation.name = "ListEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEndpoints.new
      end)
      service.add_operation(:list_entities_detection_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListEntitiesDetectionJobs"
        operation.name = "ListEntitiesDetectionJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntitiesDetectionJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntitiesDetectionJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEntitiesDetectionJobs.new
      end)
      service.add_operation(:list_entity_recognizer_summaries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListEntityRecognizerSummaries"
        operation.name = "ListEntityRecognizerSummaries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntityRecognizerSummariesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntityRecognizerSummariesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEntityRecognizerSummaries.new
      end)
      service.add_operation(:list_entity_recognizers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListEntityRecognizers"
        operation.name = "ListEntityRecognizers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntityRecognizersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntityRecognizersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEntityRecognizers.new
      end)
      service.add_operation(:list_events_detection_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListEventsDetectionJobs"
        operation.name = "ListEventsDetectionJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventsDetectionJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventsDetectionJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEventsDetectionJobs.new
      end)
      service.add_operation(:list_flywheel_iteration_history, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListFlywheelIterationHistory"
        operation.name = "ListFlywheelIterationHistory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlywheelIterationHistoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlywheelIterationHistoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFlywheelIterationHistory.new
      end)
      service.add_operation(:list_flywheels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListFlywheels"
        operation.name = "ListFlywheels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlywheelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlywheelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFlywheels.new
      end)
      service.add_operation(:list_key_phrases_detection_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListKeyPhrasesDetectionJobs"
        operation.name = "ListKeyPhrasesDetectionJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeyPhrasesDetectionJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeyPhrasesDetectionJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListKeyPhrasesDetectionJobs.new
      end)
      service.add_operation(:list_pii_entities_detection_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListPiiEntitiesDetectionJobs"
        operation.name = "ListPiiEntitiesDetectionJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPiiEntitiesDetectionJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPiiEntitiesDetectionJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPiiEntitiesDetectionJobs.new
      end)
      service.add_operation(:list_sentiment_detection_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListSentimentDetectionJobs"
        operation.name = "ListSentimentDetectionJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSentimentDetectionJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSentimentDetectionJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSentimentDetectionJobs.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_targeted_sentiment_detection_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListTargetedSentimentDetectionJobs"
        operation.name = "ListTargetedSentimentDetectionJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetedSentimentDetectionJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetedSentimentDetectionJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTargetedSentimentDetectionJobs.new
      end)
      service.add_operation(:list_topics_detection_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListTopicsDetectionJobs"
        operation.name = "ListTopicsDetectionJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTopicsDetectionJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTopicsDetectionJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTopicsDetectionJobs.new
      end)
      service.add_operation(:put_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_document_classification_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartDocumentClassificationJob"
        operation.name = "StartDocumentClassificationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDocumentClassificationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDocumentClassificationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:start_dominant_language_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartDominantLanguageDetectionJob"
        operation.name = "StartDominantLanguageDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDominantLanguageDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDominantLanguageDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:start_entities_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartEntitiesDetectionJob"
        operation.name = "StartEntitiesDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartEntitiesDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartEntitiesDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:start_events_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartEventsDetectionJob"
        operation.name = "StartEventsDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartEventsDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartEventsDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:start_flywheel_iteration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartFlywheelIteration"
        operation.name = "StartFlywheelIteration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartFlywheelIterationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartFlywheelIterationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:start_key_phrases_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartKeyPhrasesDetectionJob"
        operation.name = "StartKeyPhrasesDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartKeyPhrasesDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartKeyPhrasesDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:start_pii_entities_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartPiiEntitiesDetectionJob"
        operation.name = "StartPiiEntitiesDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartPiiEntitiesDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartPiiEntitiesDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:start_sentiment_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartSentimentDetectionJob"
        operation.name = "StartSentimentDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSentimentDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSentimentDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:start_targeted_sentiment_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartTargetedSentimentDetectionJob"
        operation.name = "StartTargetedSentimentDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTargetedSentimentDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTargetedSentimentDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:start_topics_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartTopicsDetectionJob"
        operation.name = "StartTopicsDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTopicsDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTopicsDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:stop_dominant_language_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopDominantLanguageDetectionJob"
        operation.name = "StopDominantLanguageDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopDominantLanguageDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopDominantLanguageDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_entities_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopEntitiesDetectionJob"
        operation.name = "StopEntitiesDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopEntitiesDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopEntitiesDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_events_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopEventsDetectionJob"
        operation.name = "StopEventsDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopEventsDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopEventsDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_key_phrases_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopKeyPhrasesDetectionJob"
        operation.name = "StopKeyPhrasesDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopKeyPhrasesDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopKeyPhrasesDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_pii_entities_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopPiiEntitiesDetectionJob"
        operation.name = "StopPiiEntitiesDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopPiiEntitiesDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopPiiEntitiesDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_sentiment_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopSentimentDetectionJob"
        operation.name = "StopSentimentDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopSentimentDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopSentimentDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_targeted_sentiment_detection_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopTargetedSentimentDetectionJob"
        operation.name = "StopTargetedSentimentDetectionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopTargetedSentimentDetectionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopTargetedSentimentDetectionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_training_document_classifier, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopTrainingDocumentClassifier"
        operation.name = "StopTrainingDocumentClassifier"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopTrainingDocumentClassifierRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopTrainingDocumentClassifierResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:stop_training_entity_recognizer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopTrainingEntityRecognizer"
        operation.name = "StopTrainingEntityRecognizer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopTrainingEntityRecognizerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopTrainingEntityRecognizerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagKeysException)
        operation.traits = {}
      end)
      service.add_operation(:update_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#UpdateEndpoint"
        operation.name = "UpdateEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_flywheel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#UpdateFlywheel"
        operation.name = "UpdateFlywheel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFlywheelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFlywheelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
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
