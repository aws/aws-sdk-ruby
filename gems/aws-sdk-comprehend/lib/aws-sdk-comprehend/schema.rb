# frozen_string_literal: true

# This is generated code!

module Aws::Comprehend
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AnyLengthString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#AnyLengthString", name: "AnyLengthString")
    AttributeNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#AttributeNamesList", name: "AttributeNamesList")
    AttributeNamesListItem = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#AttributeNamesListItem", name: "AttributeNamesListItem", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    AugmentedManifestsDocumentTypeFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#AugmentedManifestsDocumentTypeFormat", name: "AugmentedManifestsDocumentTypeFormat")
    AugmentedManifestsListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#AugmentedManifestsListItem", name: "AugmentedManifestsListItem")
    BatchDetectDominantLanguageItemResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectDominantLanguageItemResult", name: "BatchDetectDominantLanguageItemResult")
    BatchDetectDominantLanguageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectDominantLanguageRequest", name: "BatchDetectDominantLanguageRequest")
    BatchDetectDominantLanguageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectDominantLanguageResponse", name: "BatchDetectDominantLanguageResponse", traits: {"smithy.api#sensitive" => {}})
    BatchDetectEntitiesItemResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectEntitiesItemResult", name: "BatchDetectEntitiesItemResult")
    BatchDetectEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectEntitiesRequest", name: "BatchDetectEntitiesRequest")
    BatchDetectEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectEntitiesResponse", name: "BatchDetectEntitiesResponse", traits: {"smithy.api#sensitive" => {}})
    BatchDetectKeyPhrasesItemResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectKeyPhrasesItemResult", name: "BatchDetectKeyPhrasesItemResult")
    BatchDetectKeyPhrasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectKeyPhrasesRequest", name: "BatchDetectKeyPhrasesRequest")
    BatchDetectKeyPhrasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectKeyPhrasesResponse", name: "BatchDetectKeyPhrasesResponse", traits: {"smithy.api#sensitive" => {}})
    BatchDetectSentimentItemResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectSentimentItemResult", name: "BatchDetectSentimentItemResult")
    BatchDetectSentimentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectSentimentRequest", name: "BatchDetectSentimentRequest")
    BatchDetectSentimentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectSentimentResponse", name: "BatchDetectSentimentResponse", traits: {"smithy.api#sensitive" => {}})
    BatchDetectSyntaxItemResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectSyntaxItemResult", name: "BatchDetectSyntaxItemResult")
    BatchDetectSyntaxRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectSyntaxRequest", name: "BatchDetectSyntaxRequest")
    BatchDetectSyntaxResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectSyntaxResponse", name: "BatchDetectSyntaxResponse", traits: {"smithy.api#sensitive" => {}})
    BatchDetectTargetedSentimentItemResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectTargetedSentimentItemResult", name: "BatchDetectTargetedSentimentItemResult")
    BatchDetectTargetedSentimentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectTargetedSentimentRequest", name: "BatchDetectTargetedSentimentRequest")
    BatchDetectTargetedSentimentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchDetectTargetedSentimentResponse", name: "BatchDetectTargetedSentimentResponse", traits: {"smithy.api#sensitive" => {}})
    BatchItemError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchItemError", name: "BatchItemError")
    BatchItemErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#BatchItemErrorList", name: "BatchItemErrorList")
    BatchSizeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BatchSizeLimitExceededException", name: "BatchSizeLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Block = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#Block", name: "Block")
    BlockReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BlockReference", name: "BlockReference")
    BlockType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#BlockType", name: "BlockType")
    BoundingBox = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#BoundingBox", name: "BoundingBox")
    ChildBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ChildBlock", name: "ChildBlock")
    ClassifierEvaluationMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ClassifierEvaluationMetrics", name: "ClassifierEvaluationMetrics")
    ClassifierMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ClassifierMetadata", name: "ClassifierMetadata", traits: {"smithy.api#sensitive" => {}})
    ClassifyDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ClassifyDocumentRequest", name: "ClassifyDocumentRequest")
    ClassifyDocumentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ClassifyDocumentResponse", name: "ClassifyDocumentResponse", traits: {"smithy.api#sensitive" => {}})
    ClientRequestTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#ClientRequestTokenString", name: "ClientRequestTokenString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ComprehendArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#ComprehendArn", name: "ComprehendArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:[a-zA-Z0-9-]{1,64}/[a-zA-Z0-9](-*[a-zA-Z0-9])*((/dataset/[a-zA-Z0-9](-*[a-zA-Z0-9])*)|(/version/[a-zA-Z0-9](-*[a-zA-Z0-9])*))?$"})
    ComprehendArnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#ComprehendArnName", name: "ComprehendArnName", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ComprehendDatasetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#ComprehendDatasetArn", name: "ComprehendDatasetArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:flywheel/[a-zA-Z0-9](-*[a-zA-Z0-9])*/dataset/[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ComprehendEndpointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#ComprehendEndpointArn", name: "ComprehendEndpointArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:(document-classifier-endpoint|entity-recognizer-endpoint)/[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ComprehendEndpointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#ComprehendEndpointName", name: "ComprehendEndpointName", traits: {"smithy.api#length" => {"min" => 0, "max" => 40}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ComprehendFlywheelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#ComprehendFlywheelArn", name: "ComprehendFlywheelArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:flywheel/[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ComprehendModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#ComprehendModelArn", name: "ComprehendModelArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:(document-classifier|entity-recognizer)/[a-zA-Z0-9](-*[a-zA-Z0-9])*(/version/[a-zA-Z0-9](-*[a-zA-Z0-9])*)?$"})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ContainsPiiEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ContainsPiiEntitiesRequest", name: "ContainsPiiEntitiesRequest")
    ContainsPiiEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ContainsPiiEntitiesResponse", name: "ContainsPiiEntitiesResponse")
    CreateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#CreateDatasetRequest", name: "CreateDatasetRequest")
    CreateDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#CreateDatasetResponse", name: "CreateDatasetResponse")
    CreateDocumentClassifierRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#CreateDocumentClassifierRequest", name: "CreateDocumentClassifierRequest")
    CreateDocumentClassifierResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#CreateDocumentClassifierResponse", name: "CreateDocumentClassifierResponse")
    CreateEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#CreateEndpointRequest", name: "CreateEndpointRequest")
    CreateEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#CreateEndpointResponse", name: "CreateEndpointResponse")
    CreateEntityRecognizerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#CreateEntityRecognizerRequest", name: "CreateEntityRecognizerRequest")
    CreateEntityRecognizerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#CreateEntityRecognizerResponse", name: "CreateEntityRecognizerResponse")
    CreateFlywheelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#CreateFlywheelRequest", name: "CreateFlywheelRequest")
    CreateFlywheelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#CreateFlywheelResponse", name: "CreateFlywheelResponse")
    CustomerInputString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#CustomerInputString", name: "CustomerInputString", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    CustomerInputStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#CustomerInputStringList", name: "CustomerInputStringList", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    DataSecurityConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DataSecurityConfig", name: "DataSecurityConfig")
    DatasetAugmentedManifestsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#DatasetAugmentedManifestsList", name: "DatasetAugmentedManifestsList")
    DatasetAugmentedManifestsListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DatasetAugmentedManifestsListItem", name: "DatasetAugmentedManifestsListItem")
    DatasetDataFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#DatasetDataFormat", name: "DatasetDataFormat")
    DatasetDocumentClassifierInputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DatasetDocumentClassifierInputDataConfig", name: "DatasetDocumentClassifierInputDataConfig")
    DatasetEntityRecognizerAnnotations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DatasetEntityRecognizerAnnotations", name: "DatasetEntityRecognizerAnnotations")
    DatasetEntityRecognizerDocuments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DatasetEntityRecognizerDocuments", name: "DatasetEntityRecognizerDocuments")
    DatasetEntityRecognizerEntityList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DatasetEntityRecognizerEntityList", name: "DatasetEntityRecognizerEntityList")
    DatasetEntityRecognizerInputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DatasetEntityRecognizerInputDataConfig", name: "DatasetEntityRecognizerInputDataConfig")
    DatasetFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DatasetFilter", name: "DatasetFilter")
    DatasetInputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DatasetInputDataConfig", name: "DatasetInputDataConfig")
    DatasetProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DatasetProperties", name: "DatasetProperties")
    DatasetPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#DatasetPropertiesList", name: "DatasetPropertiesList")
    DatasetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#DatasetStatus", name: "DatasetStatus")
    DatasetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#DatasetType", name: "DatasetType")
    DeleteDocumentClassifierRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DeleteDocumentClassifierRequest", name: "DeleteDocumentClassifierRequest")
    DeleteDocumentClassifierResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DeleteDocumentClassifierResponse", name: "DeleteDocumentClassifierResponse")
    DeleteEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DeleteEndpointRequest", name: "DeleteEndpointRequest")
    DeleteEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DeleteEndpointResponse", name: "DeleteEndpointResponse")
    DeleteEntityRecognizerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DeleteEntityRecognizerRequest", name: "DeleteEntityRecognizerRequest")
    DeleteEntityRecognizerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DeleteEntityRecognizerResponse", name: "DeleteEntityRecognizerResponse")
    DeleteFlywheelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DeleteFlywheelRequest", name: "DeleteFlywheelRequest")
    DeleteFlywheelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DeleteFlywheelResponse", name: "DeleteFlywheelResponse")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DeleteResourcePolicyResponse", name: "DeleteResourcePolicyResponse")
    DescribeDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeDatasetRequest", name: "DescribeDatasetRequest")
    DescribeDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeDatasetResponse", name: "DescribeDatasetResponse")
    DescribeDocumentClassificationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeDocumentClassificationJobRequest", name: "DescribeDocumentClassificationJobRequest")
    DescribeDocumentClassificationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeDocumentClassificationJobResponse", name: "DescribeDocumentClassificationJobResponse")
    DescribeDocumentClassifierRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeDocumentClassifierRequest", name: "DescribeDocumentClassifierRequest")
    DescribeDocumentClassifierResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeDocumentClassifierResponse", name: "DescribeDocumentClassifierResponse")
    DescribeDominantLanguageDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeDominantLanguageDetectionJobRequest", name: "DescribeDominantLanguageDetectionJobRequest")
    DescribeDominantLanguageDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeDominantLanguageDetectionJobResponse", name: "DescribeDominantLanguageDetectionJobResponse")
    DescribeEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeEndpointRequest", name: "DescribeEndpointRequest")
    DescribeEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeEndpointResponse", name: "DescribeEndpointResponse")
    DescribeEntitiesDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeEntitiesDetectionJobRequest", name: "DescribeEntitiesDetectionJobRequest")
    DescribeEntitiesDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeEntitiesDetectionJobResponse", name: "DescribeEntitiesDetectionJobResponse")
    DescribeEntityRecognizerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeEntityRecognizerRequest", name: "DescribeEntityRecognizerRequest")
    DescribeEntityRecognizerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeEntityRecognizerResponse", name: "DescribeEntityRecognizerResponse")
    DescribeEventsDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeEventsDetectionJobRequest", name: "DescribeEventsDetectionJobRequest")
    DescribeEventsDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeEventsDetectionJobResponse", name: "DescribeEventsDetectionJobResponse")
    DescribeFlywheelIterationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeFlywheelIterationRequest", name: "DescribeFlywheelIterationRequest")
    DescribeFlywheelIterationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeFlywheelIterationResponse", name: "DescribeFlywheelIterationResponse")
    DescribeFlywheelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeFlywheelRequest", name: "DescribeFlywheelRequest")
    DescribeFlywheelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeFlywheelResponse", name: "DescribeFlywheelResponse")
    DescribeKeyPhrasesDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeKeyPhrasesDetectionJobRequest", name: "DescribeKeyPhrasesDetectionJobRequest")
    DescribeKeyPhrasesDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeKeyPhrasesDetectionJobResponse", name: "DescribeKeyPhrasesDetectionJobResponse")
    DescribePiiEntitiesDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribePiiEntitiesDetectionJobRequest", name: "DescribePiiEntitiesDetectionJobRequest")
    DescribePiiEntitiesDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribePiiEntitiesDetectionJobResponse", name: "DescribePiiEntitiesDetectionJobResponse")
    DescribeResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeResourcePolicyRequest", name: "DescribeResourcePolicyRequest")
    DescribeResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeResourcePolicyResponse", name: "DescribeResourcePolicyResponse")
    DescribeSentimentDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeSentimentDetectionJobRequest", name: "DescribeSentimentDetectionJobRequest")
    DescribeSentimentDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeSentimentDetectionJobResponse", name: "DescribeSentimentDetectionJobResponse")
    DescribeTargetedSentimentDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeTargetedSentimentDetectionJobRequest", name: "DescribeTargetedSentimentDetectionJobRequest")
    DescribeTargetedSentimentDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeTargetedSentimentDetectionJobResponse", name: "DescribeTargetedSentimentDetectionJobResponse")
    DescribeTopicsDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeTopicsDetectionJobRequest", name: "DescribeTopicsDetectionJobRequest")
    DescribeTopicsDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DescribeTopicsDetectionJobResponse", name: "DescribeTopicsDetectionJobResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"})
    DetectDominantLanguageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectDominantLanguageRequest", name: "DetectDominantLanguageRequest")
    DetectDominantLanguageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectDominantLanguageResponse", name: "DetectDominantLanguageResponse", traits: {"smithy.api#sensitive" => {}})
    DetectEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectEntitiesRequest", name: "DetectEntitiesRequest")
    DetectEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectEntitiesResponse", name: "DetectEntitiesResponse", traits: {"smithy.api#sensitive" => {}})
    DetectKeyPhrasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectKeyPhrasesRequest", name: "DetectKeyPhrasesRequest")
    DetectKeyPhrasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectKeyPhrasesResponse", name: "DetectKeyPhrasesResponse", traits: {"smithy.api#sensitive" => {}})
    DetectPiiEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectPiiEntitiesRequest", name: "DetectPiiEntitiesRequest")
    DetectPiiEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectPiiEntitiesResponse", name: "DetectPiiEntitiesResponse")
    DetectSentimentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectSentimentRequest", name: "DetectSentimentRequest")
    DetectSentimentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectSentimentResponse", name: "DetectSentimentResponse", traits: {"smithy.api#sensitive" => {}})
    DetectSyntaxRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectSyntaxRequest", name: "DetectSyntaxRequest")
    DetectSyntaxResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectSyntaxResponse", name: "DetectSyntaxResponse", traits: {"smithy.api#sensitive" => {}})
    DetectTargetedSentimentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectTargetedSentimentRequest", name: "DetectTargetedSentimentRequest")
    DetectTargetedSentimentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectTargetedSentimentResponse", name: "DetectTargetedSentimentResponse", traits: {"smithy.api#sensitive" => {}})
    DetectToxicContentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectToxicContentRequest", name: "DetectToxicContentRequest")
    DetectToxicContentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DetectToxicContentResponse", name: "DetectToxicContentResponse")
    DocumentClass = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DocumentClass", name: "DocumentClass")
    DocumentClassificationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DocumentClassificationConfig", name: "DocumentClassificationConfig")
    DocumentClassificationJobFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DocumentClassificationJobFilter", name: "DocumentClassificationJobFilter")
    DocumentClassificationJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DocumentClassificationJobProperties", name: "DocumentClassificationJobProperties")
    DocumentClassificationJobPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#DocumentClassificationJobPropertiesList", name: "DocumentClassificationJobPropertiesList")
    DocumentClassifierArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#DocumentClassifierArn", name: "DocumentClassifierArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:document-classifier/[a-zA-Z0-9](-*[a-zA-Z0-9])*(/version/[a-zA-Z0-9](-*[a-zA-Z0-9])*)?$"})
    DocumentClassifierAugmentedManifestsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#DocumentClassifierAugmentedManifestsList", name: "DocumentClassifierAugmentedManifestsList")
    DocumentClassifierDataFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#DocumentClassifierDataFormat", name: "DocumentClassifierDataFormat")
    DocumentClassifierDocumentTypeFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#DocumentClassifierDocumentTypeFormat", name: "DocumentClassifierDocumentTypeFormat")
    DocumentClassifierDocuments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DocumentClassifierDocuments", name: "DocumentClassifierDocuments")
    DocumentClassifierEndpointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#DocumentClassifierEndpointArn", name: "DocumentClassifierEndpointArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:([0-9]{12}|aws):document-classifier-endpoint/[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    DocumentClassifierFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DocumentClassifierFilter", name: "DocumentClassifierFilter")
    DocumentClassifierInputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DocumentClassifierInputDataConfig", name: "DocumentClassifierInputDataConfig")
    DocumentClassifierMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#DocumentClassifierMode", name: "DocumentClassifierMode")
    DocumentClassifierOutputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DocumentClassifierOutputDataConfig", name: "DocumentClassifierOutputDataConfig")
    DocumentClassifierProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DocumentClassifierProperties", name: "DocumentClassifierProperties")
    DocumentClassifierPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#DocumentClassifierPropertiesList", name: "DocumentClassifierPropertiesList")
    DocumentClassifierSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#DocumentClassifierSummariesList", name: "DocumentClassifierSummariesList")
    DocumentClassifierSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DocumentClassifierSummary", name: "DocumentClassifierSummary")
    DocumentLabel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DocumentLabel", name: "DocumentLabel")
    DocumentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DocumentMetadata", name: "DocumentMetadata")
    DocumentReadAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#DocumentReadAction", name: "DocumentReadAction")
    DocumentReadFeatureTypes = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#DocumentReadFeatureTypes", name: "DocumentReadFeatureTypes")
    DocumentReadMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#DocumentReadMode", name: "DocumentReadMode")
    DocumentReaderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DocumentReaderConfig", name: "DocumentReaderConfig")
    DocumentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#DocumentType", name: "DocumentType")
    DocumentTypeListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DocumentTypeListItem", name: "DocumentTypeListItem")
    DominantLanguage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DominantLanguage", name: "DominantLanguage")
    DominantLanguageDetectionJobFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DominantLanguageDetectionJobFilter", name: "DominantLanguageDetectionJobFilter")
    DominantLanguageDetectionJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#DominantLanguageDetectionJobProperties", name: "DominantLanguageDetectionJobProperties")
    DominantLanguageDetectionJobPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#DominantLanguageDetectionJobPropertiesList", name: "DominantLanguageDetectionJobPropertiesList")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.comprehend#Double", name: "Double")
    EndpointFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EndpointFilter", name: "EndpointFilter")
    EndpointProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EndpointProperties", name: "EndpointProperties")
    EndpointPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#EndpointPropertiesList", name: "EndpointPropertiesList")
    EndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#EndpointStatus", name: "EndpointStatus")
    EntitiesDetectionJobFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntitiesDetectionJobFilter", name: "EntitiesDetectionJobFilter")
    EntitiesDetectionJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntitiesDetectionJobProperties", name: "EntitiesDetectionJobProperties")
    EntitiesDetectionJobPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#EntitiesDetectionJobPropertiesList", name: "EntitiesDetectionJobPropertiesList")
    Entity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#Entity", name: "Entity")
    EntityLabel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityLabel", name: "EntityLabel")
    EntityRecognitionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityRecognitionConfig", name: "EntityRecognitionConfig")
    EntityRecognizerAnnotations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityRecognizerAnnotations", name: "EntityRecognizerAnnotations")
    EntityRecognizerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#EntityRecognizerArn", name: "EntityRecognizerArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:entity-recognizer/[a-zA-Z0-9](-*[a-zA-Z0-9])*(/version/[a-zA-Z0-9](-*[a-zA-Z0-9])*)?$"})
    EntityRecognizerAugmentedManifestsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#EntityRecognizerAugmentedManifestsList", name: "EntityRecognizerAugmentedManifestsList")
    EntityRecognizerDataFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#EntityRecognizerDataFormat", name: "EntityRecognizerDataFormat")
    EntityRecognizerDocuments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityRecognizerDocuments", name: "EntityRecognizerDocuments")
    EntityRecognizerEndpointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#EntityRecognizerEndpointArn", name: "EntityRecognizerEndpointArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:entity-recognizer-endpoint/[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    EntityRecognizerEntityList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityRecognizerEntityList", name: "EntityRecognizerEntityList")
    EntityRecognizerEvaluationMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityRecognizerEvaluationMetrics", name: "EntityRecognizerEvaluationMetrics")
    EntityRecognizerFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityRecognizerFilter", name: "EntityRecognizerFilter")
    EntityRecognizerInputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityRecognizerInputDataConfig", name: "EntityRecognizerInputDataConfig")
    EntityRecognizerMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityRecognizerMetadata", name: "EntityRecognizerMetadata", traits: {"smithy.api#sensitive" => {}})
    EntityRecognizerMetadataEntityTypesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#EntityRecognizerMetadataEntityTypesList", name: "EntityRecognizerMetadataEntityTypesList")
    EntityRecognizerMetadataEntityTypesListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityRecognizerMetadataEntityTypesListItem", name: "EntityRecognizerMetadataEntityTypesListItem")
    EntityRecognizerOutputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityRecognizerOutputDataConfig", name: "EntityRecognizerOutputDataConfig")
    EntityRecognizerProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityRecognizerProperties", name: "EntityRecognizerProperties")
    EntityRecognizerPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#EntityRecognizerPropertiesList", name: "EntityRecognizerPropertiesList")
    EntityRecognizerSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#EntityRecognizerSummariesList", name: "EntityRecognizerSummariesList")
    EntityRecognizerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityRecognizerSummary", name: "EntityRecognizerSummary")
    EntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#EntityType", name: "EntityType")
    EntityTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#EntityTypeName", name: "EntityTypeName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^(?![^\\n\\r\\t,]*\\\\n|\\\\r|\\\\t)[^\\n\\r\\t,]+$"})
    EntityTypesEvaluationMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityTypesEvaluationMetrics", name: "EntityTypesEvaluationMetrics")
    EntityTypesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#EntityTypesList", name: "EntityTypesList")
    EntityTypesListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EntityTypesListItem", name: "EntityTypesListItem")
    ErrorsListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ErrorsListItem", name: "ErrorsListItem")
    EventTypeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#EventTypeString", name: "EventTypeString", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[A-Z_]*$"})
    EventsDetectionJobFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EventsDetectionJobFilter", name: "EventsDetectionJobFilter")
    EventsDetectionJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#EventsDetectionJobProperties", name: "EventsDetectionJobProperties")
    EventsDetectionJobPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#EventsDetectionJobPropertiesList", name: "EventsDetectionJobPropertiesList")
    ExtractedCharactersListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ExtractedCharactersListItem", name: "ExtractedCharactersListItem")
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.comprehend#Float", name: "Float")
    FlywheelFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#FlywheelFilter", name: "FlywheelFilter")
    FlywheelIterationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#FlywheelIterationFilter", name: "FlywheelIterationFilter")
    FlywheelIterationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#FlywheelIterationId", name: "FlywheelIterationId", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[0-9]{8}T[0-9]{6}Z$"})
    FlywheelIterationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#FlywheelIterationProperties", name: "FlywheelIterationProperties")
    FlywheelIterationPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#FlywheelIterationPropertiesList", name: "FlywheelIterationPropertiesList")
    FlywheelIterationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#FlywheelIterationStatus", name: "FlywheelIterationStatus")
    FlywheelModelEvaluationMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#FlywheelModelEvaluationMetrics", name: "FlywheelModelEvaluationMetrics")
    FlywheelProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#FlywheelProperties", name: "FlywheelProperties")
    FlywheelS3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#FlywheelS3Uri", name: "FlywheelS3Uri", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    FlywheelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#FlywheelStatus", name: "FlywheelStatus")
    FlywheelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#FlywheelSummary", name: "FlywheelSummary")
    FlywheelSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#FlywheelSummaryList", name: "FlywheelSummaryList")
    Geometry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#Geometry", name: "Geometry")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    ImportModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ImportModelRequest", name: "ImportModelRequest")
    ImportModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ImportModelResponse", name: "ImportModelResponse")
    InferenceUnitsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.comprehend#InferenceUnitsInteger", name: "InferenceUnitsInteger", traits: {"smithy.api#range" => {"min" => 1}})
    InputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#InputDataConfig", name: "InputDataConfig")
    InputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#InputFormat", name: "InputFormat")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.comprehend#Integer", name: "Integer")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidFilterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#InvalidFilterException", name: "InvalidFilterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#InvalidRequestDetail", name: "InvalidRequestDetail")
    InvalidRequestDetailReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#InvalidRequestDetailReason", name: "InvalidRequestDetailReason")
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#InvalidRequestReason", name: "InvalidRequestReason")
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    JobName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#JobName", name: "JobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    JobNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#JobNotFoundException", name: "JobNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#JobStatus", name: "JobStatus")
    KeyPhrase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#KeyPhrase", name: "KeyPhrase")
    KeyPhrasesDetectionJobFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#KeyPhrasesDetectionJobFilter", name: "KeyPhrasesDetectionJobFilter")
    KeyPhrasesDetectionJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#KeyPhrasesDetectionJobProperties", name: "KeyPhrasesDetectionJobProperties")
    KeyPhrasesDetectionJobPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#KeyPhrasesDetectionJobPropertiesList", name: "KeyPhrasesDetectionJobPropertiesList")
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^\\p{ASCII}+$"})
    KmsKeyValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#KmsKeyValidationException", name: "KmsKeyValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LabelDelimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#LabelDelimiter", name: "LabelDelimiter", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#pattern" => "^[ ~!@\#$%^*\\-_+=|\\\\:;\\t>?/]$"})
    LabelListItem = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#LabelListItem", name: "LabelListItem", traits: {"smithy.api#length" => {"min" => 0, "max" => 5000}, "smithy.api#pattern" => "^\\P{C}*$"})
    LabelsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#LabelsList", name: "LabelsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    LanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#LanguageCode", name: "LanguageCode")
    ListDatasetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListDatasetsRequest", name: "ListDatasetsRequest")
    ListDatasetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListDatasetsResponse", name: "ListDatasetsResponse")
    ListDocumentClassificationJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListDocumentClassificationJobsRequest", name: "ListDocumentClassificationJobsRequest")
    ListDocumentClassificationJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListDocumentClassificationJobsResponse", name: "ListDocumentClassificationJobsResponse")
    ListDocumentClassifierSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListDocumentClassifierSummariesRequest", name: "ListDocumentClassifierSummariesRequest")
    ListDocumentClassifierSummariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListDocumentClassifierSummariesResponse", name: "ListDocumentClassifierSummariesResponse")
    ListDocumentClassifiersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListDocumentClassifiersRequest", name: "ListDocumentClassifiersRequest")
    ListDocumentClassifiersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListDocumentClassifiersResponse", name: "ListDocumentClassifiersResponse")
    ListDominantLanguageDetectionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListDominantLanguageDetectionJobsRequest", name: "ListDominantLanguageDetectionJobsRequest")
    ListDominantLanguageDetectionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListDominantLanguageDetectionJobsResponse", name: "ListDominantLanguageDetectionJobsResponse")
    ListEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListEndpointsRequest", name: "ListEndpointsRequest")
    ListEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListEndpointsResponse", name: "ListEndpointsResponse")
    ListEntitiesDetectionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListEntitiesDetectionJobsRequest", name: "ListEntitiesDetectionJobsRequest")
    ListEntitiesDetectionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListEntitiesDetectionJobsResponse", name: "ListEntitiesDetectionJobsResponse")
    ListEntityRecognizerSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListEntityRecognizerSummariesRequest", name: "ListEntityRecognizerSummariesRequest")
    ListEntityRecognizerSummariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListEntityRecognizerSummariesResponse", name: "ListEntityRecognizerSummariesResponse")
    ListEntityRecognizersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListEntityRecognizersRequest", name: "ListEntityRecognizersRequest")
    ListEntityRecognizersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListEntityRecognizersResponse", name: "ListEntityRecognizersResponse")
    ListEventsDetectionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListEventsDetectionJobsRequest", name: "ListEventsDetectionJobsRequest")
    ListEventsDetectionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListEventsDetectionJobsResponse", name: "ListEventsDetectionJobsResponse")
    ListFlywheelIterationHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListFlywheelIterationHistoryRequest", name: "ListFlywheelIterationHistoryRequest")
    ListFlywheelIterationHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListFlywheelIterationHistoryResponse", name: "ListFlywheelIterationHistoryResponse")
    ListFlywheelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListFlywheelsRequest", name: "ListFlywheelsRequest")
    ListFlywheelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListFlywheelsResponse", name: "ListFlywheelsResponse")
    ListKeyPhrasesDetectionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListKeyPhrasesDetectionJobsRequest", name: "ListKeyPhrasesDetectionJobsRequest")
    ListKeyPhrasesDetectionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListKeyPhrasesDetectionJobsResponse", name: "ListKeyPhrasesDetectionJobsResponse")
    ListOfBlockReferences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfBlockReferences", name: "ListOfBlockReferences")
    ListOfBlocks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfBlocks", name: "ListOfBlocks")
    ListOfChildBlocks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfChildBlocks", name: "ListOfChildBlocks")
    ListOfClasses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfClasses", name: "ListOfClasses")
    ListOfDescriptiveMentionIndices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfDescriptiveMentionIndices", name: "ListOfDescriptiveMentionIndices")
    ListOfDetectDominantLanguageResult = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfDetectDominantLanguageResult", name: "ListOfDetectDominantLanguageResult")
    ListOfDetectEntitiesResult = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfDetectEntitiesResult", name: "ListOfDetectEntitiesResult")
    ListOfDetectKeyPhrasesResult = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfDetectKeyPhrasesResult", name: "ListOfDetectKeyPhrasesResult")
    ListOfDetectSentimentResult = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfDetectSentimentResult", name: "ListOfDetectSentimentResult")
    ListOfDetectSyntaxResult = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfDetectSyntaxResult", name: "ListOfDetectSyntaxResult")
    ListOfDetectTargetedSentimentResult = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfDetectTargetedSentimentResult", name: "ListOfDetectTargetedSentimentResult")
    ListOfDocumentReadFeatureTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfDocumentReadFeatureTypes", name: "ListOfDocumentReadFeatureTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    ListOfDocumentType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfDocumentType", name: "ListOfDocumentType")
    ListOfDominantLanguages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfDominantLanguages", name: "ListOfDominantLanguages")
    ListOfEntities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfEntities", name: "ListOfEntities")
    ListOfEntityLabels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfEntityLabels", name: "ListOfEntityLabels")
    ListOfErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfErrors", name: "ListOfErrors")
    ListOfExtractedCharacters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfExtractedCharacters", name: "ListOfExtractedCharacters")
    ListOfKeyPhrases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfKeyPhrases", name: "ListOfKeyPhrases")
    ListOfLabels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfLabels", name: "ListOfLabels")
    ListOfMentions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfMentions", name: "ListOfMentions")
    ListOfPiiEntities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfPiiEntities", name: "ListOfPiiEntities")
    ListOfPiiEntityTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfPiiEntityTypes", name: "ListOfPiiEntityTypes")
    ListOfRelationships = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfRelationships", name: "ListOfRelationships")
    ListOfSyntaxTokens = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfSyntaxTokens", name: "ListOfSyntaxTokens")
    ListOfTargetedSentimentEntities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfTargetedSentimentEntities", name: "ListOfTargetedSentimentEntities")
    ListOfTextSegments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfTextSegments", name: "ListOfTextSegments", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    ListOfToxicContent = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfToxicContent", name: "ListOfToxicContent")
    ListOfToxicLabels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfToxicLabels", name: "ListOfToxicLabels")
    ListOfWarnings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#ListOfWarnings", name: "ListOfWarnings")
    ListPiiEntitiesDetectionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListPiiEntitiesDetectionJobsRequest", name: "ListPiiEntitiesDetectionJobsRequest")
    ListPiiEntitiesDetectionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListPiiEntitiesDetectionJobsResponse", name: "ListPiiEntitiesDetectionJobsResponse")
    ListSentimentDetectionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListSentimentDetectionJobsRequest", name: "ListSentimentDetectionJobsRequest")
    ListSentimentDetectionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListSentimentDetectionJobsResponse", name: "ListSentimentDetectionJobsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTargetedSentimentDetectionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListTargetedSentimentDetectionJobsRequest", name: "ListTargetedSentimentDetectionJobsRequest")
    ListTargetedSentimentDetectionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListTargetedSentimentDetectionJobsResponse", name: "ListTargetedSentimentDetectionJobsResponse")
    ListTopicsDetectionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListTopicsDetectionJobsRequest", name: "ListTopicsDetectionJobsRequest")
    ListTopicsDetectionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ListTopicsDetectionJobsResponse", name: "ListTopicsDetectionJobsResponse")
    MaskCharacter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#MaskCharacter", name: "MaskCharacter", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#pattern" => "^[!@\#$%&*]$"})
    MaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.comprehend#MaxResultsInteger", name: "MaxResultsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    MentionSentiment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#MentionSentiment", name: "MentionSentiment")
    ModelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#ModelStatus", name: "ModelStatus")
    ModelType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#ModelType", name: "ModelType")
    NumberOfDocuments = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.comprehend#NumberOfDocuments", name: "NumberOfDocuments")
    NumberOfTopicsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.comprehend#NumberOfTopicsInteger", name: "NumberOfTopicsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    OutputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#OutputDataConfig", name: "OutputDataConfig")
    PageBasedErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#PageBasedErrorCode", name: "PageBasedErrorCode")
    PageBasedWarningCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#PageBasedWarningCode", name: "PageBasedWarningCode")
    PartOfSpeechTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#PartOfSpeechTag", name: "PartOfSpeechTag")
    PartOfSpeechTagType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#PartOfSpeechTagType", name: "PartOfSpeechTagType")
    PiiEntitiesDetectionJobFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#PiiEntitiesDetectionJobFilter", name: "PiiEntitiesDetectionJobFilter")
    PiiEntitiesDetectionJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#PiiEntitiesDetectionJobProperties", name: "PiiEntitiesDetectionJobProperties")
    PiiEntitiesDetectionJobPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#PiiEntitiesDetectionJobPropertiesList", name: "PiiEntitiesDetectionJobPropertiesList")
    PiiEntitiesDetectionMaskMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#PiiEntitiesDetectionMaskMode", name: "PiiEntitiesDetectionMaskMode")
    PiiEntitiesDetectionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#PiiEntitiesDetectionMode", name: "PiiEntitiesDetectionMode")
    PiiEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#PiiEntity", name: "PiiEntity")
    PiiEntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#PiiEntityType", name: "PiiEntityType")
    PiiOutputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#PiiOutputDataConfig", name: "PiiOutputDataConfig")
    Point = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#Point", name: "Point")
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#Policy", name: "Policy", traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    PolicyRevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#PolicyRevisionId", name: "PolicyRevisionId", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Fa-f]+$"})
    Polygon = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#Polygon", name: "Polygon")
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    RedactionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#RedactionConfig", name: "RedactionConfig")
    RelationshipType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#RelationshipType", name: "RelationshipType")
    RelationshipsListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#RelationshipsListItem", name: "RelationshipsListItem")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ResourceLimitExceededException", name: "ResourceLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ResourceUnavailableException", name: "ResourceUnavailableException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#S3Uri", name: "S3Uri", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SemiStructuredDocumentBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.comprehend#SemiStructuredDocumentBlob", name: "SemiStructuredDocumentBlob", traits: {"smithy.api#length" => {"min" => 1}})
    SentimentDetectionJobFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#SentimentDetectionJobFilter", name: "SentimentDetectionJobFilter")
    SentimentDetectionJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#SentimentDetectionJobProperties", name: "SentimentDetectionJobProperties")
    SentimentDetectionJobPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#SentimentDetectionJobPropertiesList", name: "SentimentDetectionJobPropertiesList")
    SentimentScore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#SentimentScore", name: "SentimentScore")
    SentimentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#SentimentType", name: "SentimentType")
    Split = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#Split", name: "Split")
    StartDocumentClassificationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartDocumentClassificationJobRequest", name: "StartDocumentClassificationJobRequest")
    StartDocumentClassificationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartDocumentClassificationJobResponse", name: "StartDocumentClassificationJobResponse")
    StartDominantLanguageDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartDominantLanguageDetectionJobRequest", name: "StartDominantLanguageDetectionJobRequest")
    StartDominantLanguageDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartDominantLanguageDetectionJobResponse", name: "StartDominantLanguageDetectionJobResponse")
    StartEntitiesDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartEntitiesDetectionJobRequest", name: "StartEntitiesDetectionJobRequest")
    StartEntitiesDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartEntitiesDetectionJobResponse", name: "StartEntitiesDetectionJobResponse")
    StartEventsDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartEventsDetectionJobRequest", name: "StartEventsDetectionJobRequest")
    StartEventsDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartEventsDetectionJobResponse", name: "StartEventsDetectionJobResponse")
    StartFlywheelIterationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartFlywheelIterationRequest", name: "StartFlywheelIterationRequest")
    StartFlywheelIterationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartFlywheelIterationResponse", name: "StartFlywheelIterationResponse")
    StartKeyPhrasesDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartKeyPhrasesDetectionJobRequest", name: "StartKeyPhrasesDetectionJobRequest")
    StartKeyPhrasesDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartKeyPhrasesDetectionJobResponse", name: "StartKeyPhrasesDetectionJobResponse")
    StartPiiEntitiesDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartPiiEntitiesDetectionJobRequest", name: "StartPiiEntitiesDetectionJobRequest")
    StartPiiEntitiesDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartPiiEntitiesDetectionJobResponse", name: "StartPiiEntitiesDetectionJobResponse")
    StartSentimentDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartSentimentDetectionJobRequest", name: "StartSentimentDetectionJobRequest")
    StartSentimentDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartSentimentDetectionJobResponse", name: "StartSentimentDetectionJobResponse")
    StartTargetedSentimentDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartTargetedSentimentDetectionJobRequest", name: "StartTargetedSentimentDetectionJobRequest")
    StartTargetedSentimentDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartTargetedSentimentDetectionJobResponse", name: "StartTargetedSentimentDetectionJobResponse")
    StartTopicsDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartTopicsDetectionJobRequest", name: "StartTopicsDetectionJobRequest")
    StartTopicsDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StartTopicsDetectionJobResponse", name: "StartTopicsDetectionJobResponse")
    StopDominantLanguageDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopDominantLanguageDetectionJobRequest", name: "StopDominantLanguageDetectionJobRequest")
    StopDominantLanguageDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopDominantLanguageDetectionJobResponse", name: "StopDominantLanguageDetectionJobResponse")
    StopEntitiesDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopEntitiesDetectionJobRequest", name: "StopEntitiesDetectionJobRequest")
    StopEntitiesDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopEntitiesDetectionJobResponse", name: "StopEntitiesDetectionJobResponse")
    StopEventsDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopEventsDetectionJobRequest", name: "StopEventsDetectionJobRequest")
    StopEventsDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopEventsDetectionJobResponse", name: "StopEventsDetectionJobResponse")
    StopKeyPhrasesDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopKeyPhrasesDetectionJobRequest", name: "StopKeyPhrasesDetectionJobRequest")
    StopKeyPhrasesDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopKeyPhrasesDetectionJobResponse", name: "StopKeyPhrasesDetectionJobResponse")
    StopPiiEntitiesDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopPiiEntitiesDetectionJobRequest", name: "StopPiiEntitiesDetectionJobRequest")
    StopPiiEntitiesDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopPiiEntitiesDetectionJobResponse", name: "StopPiiEntitiesDetectionJobResponse")
    StopSentimentDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopSentimentDetectionJobRequest", name: "StopSentimentDetectionJobRequest")
    StopSentimentDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopSentimentDetectionJobResponse", name: "StopSentimentDetectionJobResponse")
    StopTargetedSentimentDetectionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopTargetedSentimentDetectionJobRequest", name: "StopTargetedSentimentDetectionJobRequest")
    StopTargetedSentimentDetectionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopTargetedSentimentDetectionJobResponse", name: "StopTargetedSentimentDetectionJobResponse")
    StopTrainingDocumentClassifierRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopTrainingDocumentClassifierRequest", name: "StopTrainingDocumentClassifierRequest")
    StopTrainingDocumentClassifierResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopTrainingDocumentClassifierResponse", name: "StopTrainingDocumentClassifierResponse")
    StopTrainingEntityRecognizerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopTrainingEntityRecognizerRequest", name: "StopTrainingEntityRecognizerRequest")
    StopTrainingEntityRecognizerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#StopTrainingEntityRecognizerResponse", name: "StopTrainingEntityRecognizerResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#String", name: "String", traits: {"smithy.api#length" => {"min" => 1}})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#StringList", name: "StringList")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+$"})
    Subnets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#Subnets", name: "Subnets", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    SyntaxLanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#SyntaxLanguageCode", name: "SyntaxLanguageCode")
    SyntaxToken = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#SyntaxToken", name: "SyntaxToken")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#TagList", name: "TagList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetEventTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#TargetEventTypes", name: "TargetEventTypes", traits: {"smithy.api#length" => {"min" => 1}})
    TargetedSentimentDetectionJobFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#TargetedSentimentDetectionJobFilter", name: "TargetedSentimentDetectionJobFilter")
    TargetedSentimentDetectionJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#TargetedSentimentDetectionJobProperties", name: "TargetedSentimentDetectionJobProperties")
    TargetedSentimentDetectionJobPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#TargetedSentimentDetectionJobPropertiesList", name: "TargetedSentimentDetectionJobPropertiesList")
    TargetedSentimentEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#TargetedSentimentEntity", name: "TargetedSentimentEntity")
    TargetedSentimentEntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#TargetedSentimentEntityType", name: "TargetedSentimentEntityType")
    TargetedSentimentMention = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#TargetedSentimentMention", name: "TargetedSentimentMention")
    TaskConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#TaskConfig", name: "TaskConfig")
    TextSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#TextSegment", name: "TextSegment")
    TextSizeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#TextSizeLimitExceededException", name: "TextSizeLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.comprehend#Timestamp", name: "Timestamp")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TooManyTagKeysException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#TooManyTagKeysException", name: "TooManyTagKeysException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TopicsDetectionJobFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#TopicsDetectionJobFilter", name: "TopicsDetectionJobFilter")
    TopicsDetectionJobProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#TopicsDetectionJobProperties", name: "TopicsDetectionJobProperties")
    TopicsDetectionJobPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.comprehend#TopicsDetectionJobPropertiesList", name: "TopicsDetectionJobPropertiesList")
    ToxicContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ToxicContent", name: "ToxicContent")
    ToxicContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.comprehend#ToxicContentType", name: "ToxicContentType")
    ToxicLabels = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#ToxicLabels", name: "ToxicLabels")
    UnsupportedLanguageException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#UnsupportedLanguageException", name: "UnsupportedLanguageException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateDataSecurityConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#UpdateDataSecurityConfig", name: "UpdateDataSecurityConfig")
    UpdateEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#UpdateEndpointRequest", name: "UpdateEndpointRequest")
    UpdateEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#UpdateEndpointResponse", name: "UpdateEndpointResponse")
    UpdateFlywheelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#UpdateFlywheelRequest", name: "UpdateFlywheelRequest")
    UpdateFlywheelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#UpdateFlywheelResponse", name: "UpdateFlywheelResponse")
    VersionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.comprehend#VersionName", name: "VersionName", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    VpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#VpcConfig", name: "VpcConfig")
    WarningsListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.comprehend#WarningsListItem", name: "WarningsListItem")

    AttributeNamesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNamesListItem, name: "member")
    AugmentedManifestsDocumentTypeFormat.add_member(:plain_text_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAIN_TEXT_DOCUMENT", traits: {"smithy.api#enumValue" => "PLAIN_TEXT_DOCUMENT"}))
    AugmentedManifestsDocumentTypeFormat.add_member(:semi_structured_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEMI_STRUCTURED_DOCUMENT", traits: {"smithy.api#enumValue" => "SEMI_STRUCTURED_DOCUMENT"}))
    AugmentedManifestsListItem.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    AugmentedManifestsListItem.add_member(:split, ::Smithy::Schema::Shapes::MemberShape.new(target: Split, name: "Split"))
    AugmentedManifestsListItem.add_member(:attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNamesList, name: "AttributeNames", traits: {"smithy.api#required" => {}}))
    AugmentedManifestsListItem.add_member(:annotation_data_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "AnnotationDataS3Uri"))
    AugmentedManifestsListItem.add_member(:source_documents_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "SourceDocumentsS3Uri"))
    AugmentedManifestsListItem.add_member(:document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AugmentedManifestsDocumentTypeFormat, name: "DocumentType"))
    AugmentedManifestsListItem.type = Types::AugmentedManifestsListItem
    BatchDetectDominantLanguageItemResult.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Index"))
    BatchDetectDominantLanguageItemResult.add_member(:languages, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDominantLanguages, name: "Languages"))
    BatchDetectDominantLanguageItemResult.type = Types::BatchDetectDominantLanguageItemResult
    BatchDetectDominantLanguageRequest.add_member(:text_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputStringList, name: "TextList", traits: {"smithy.api#required" => {}}))
    BatchDetectDominantLanguageRequest.type = Types::BatchDetectDominantLanguageRequest
    BatchDetectDominantLanguageResponse.add_member(:result_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDetectDominantLanguageResult, name: "ResultList", traits: {"smithy.api#required" => {}}))
    BatchDetectDominantLanguageResponse.add_member(:error_list, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchItemErrorList, name: "ErrorList", traits: {"smithy.api#required" => {}}))
    BatchDetectDominantLanguageResponse.type = Types::BatchDetectDominantLanguageResponse
    BatchDetectEntitiesItemResult.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Index"))
    BatchDetectEntitiesItemResult.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfEntities, name: "Entities"))
    BatchDetectEntitiesItemResult.type = Types::BatchDetectEntitiesItemResult
    BatchDetectEntitiesRequest.add_member(:text_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputStringList, name: "TextList", traits: {"smithy.api#required" => {}}))
    BatchDetectEntitiesRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    BatchDetectEntitiesRequest.type = Types::BatchDetectEntitiesRequest
    BatchDetectEntitiesResponse.add_member(:result_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDetectEntitiesResult, name: "ResultList", traits: {"smithy.api#required" => {}}))
    BatchDetectEntitiesResponse.add_member(:error_list, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchItemErrorList, name: "ErrorList", traits: {"smithy.api#required" => {}}))
    BatchDetectEntitiesResponse.type = Types::BatchDetectEntitiesResponse
    BatchDetectKeyPhrasesItemResult.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Index"))
    BatchDetectKeyPhrasesItemResult.add_member(:key_phrases, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfKeyPhrases, name: "KeyPhrases"))
    BatchDetectKeyPhrasesItemResult.type = Types::BatchDetectKeyPhrasesItemResult
    BatchDetectKeyPhrasesRequest.add_member(:text_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputStringList, name: "TextList", traits: {"smithy.api#required" => {}}))
    BatchDetectKeyPhrasesRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    BatchDetectKeyPhrasesRequest.type = Types::BatchDetectKeyPhrasesRequest
    BatchDetectKeyPhrasesResponse.add_member(:result_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDetectKeyPhrasesResult, name: "ResultList", traits: {"smithy.api#required" => {}}))
    BatchDetectKeyPhrasesResponse.add_member(:error_list, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchItemErrorList, name: "ErrorList", traits: {"smithy.api#required" => {}}))
    BatchDetectKeyPhrasesResponse.type = Types::BatchDetectKeyPhrasesResponse
    BatchDetectSentimentItemResult.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Index"))
    BatchDetectSentimentItemResult.add_member(:sentiment, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentType, name: "Sentiment"))
    BatchDetectSentimentItemResult.add_member(:sentiment_score, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentScore, name: "SentimentScore"))
    BatchDetectSentimentItemResult.type = Types::BatchDetectSentimentItemResult
    BatchDetectSentimentRequest.add_member(:text_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputStringList, name: "TextList", traits: {"smithy.api#required" => {}}))
    BatchDetectSentimentRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    BatchDetectSentimentRequest.type = Types::BatchDetectSentimentRequest
    BatchDetectSentimentResponse.add_member(:result_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDetectSentimentResult, name: "ResultList", traits: {"smithy.api#required" => {}}))
    BatchDetectSentimentResponse.add_member(:error_list, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchItemErrorList, name: "ErrorList", traits: {"smithy.api#required" => {}}))
    BatchDetectSentimentResponse.type = Types::BatchDetectSentimentResponse
    BatchDetectSyntaxItemResult.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Index"))
    BatchDetectSyntaxItemResult.add_member(:syntax_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfSyntaxTokens, name: "SyntaxTokens"))
    BatchDetectSyntaxItemResult.type = Types::BatchDetectSyntaxItemResult
    BatchDetectSyntaxRequest.add_member(:text_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputStringList, name: "TextList", traits: {"smithy.api#required" => {}}))
    BatchDetectSyntaxRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SyntaxLanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    BatchDetectSyntaxRequest.type = Types::BatchDetectSyntaxRequest
    BatchDetectSyntaxResponse.add_member(:result_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDetectSyntaxResult, name: "ResultList", traits: {"smithy.api#required" => {}}))
    BatchDetectSyntaxResponse.add_member(:error_list, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchItemErrorList, name: "ErrorList", traits: {"smithy.api#required" => {}}))
    BatchDetectSyntaxResponse.type = Types::BatchDetectSyntaxResponse
    BatchDetectTargetedSentimentItemResult.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Index"))
    BatchDetectTargetedSentimentItemResult.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfTargetedSentimentEntities, name: "Entities"))
    BatchDetectTargetedSentimentItemResult.type = Types::BatchDetectTargetedSentimentItemResult
    BatchDetectTargetedSentimentRequest.add_member(:text_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputStringList, name: "TextList", traits: {"smithy.api#required" => {}}))
    BatchDetectTargetedSentimentRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    BatchDetectTargetedSentimentRequest.type = Types::BatchDetectTargetedSentimentRequest
    BatchDetectTargetedSentimentResponse.add_member(:result_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDetectTargetedSentimentResult, name: "ResultList", traits: {"smithy.api#required" => {}}))
    BatchDetectTargetedSentimentResponse.add_member(:error_list, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchItemErrorList, name: "ErrorList", traits: {"smithy.api#required" => {}}))
    BatchDetectTargetedSentimentResponse.type = Types::BatchDetectTargetedSentimentResponse
    BatchItemError.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Index"))
    BatchItemError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    BatchItemError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    BatchItemError.type = Types::BatchItemError
    BatchItemErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchItemError, name: "member")
    BatchSizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BatchSizeLimitExceededException.type = Types::BatchSizeLimitExceededException
    Block.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    Block.add_member(:block_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockType, name: "BlockType"))
    Block.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text"))
    Block.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Page"))
    Block.add_member(:geometry, ::Smithy::Schema::Shapes::MemberShape.new(target: Geometry, name: "Geometry"))
    Block.add_member(:relationships, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfRelationships, name: "Relationships"))
    Block.type = Types::Block
    BlockReference.add_member(:block_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BlockId"))
    BlockReference.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "BeginOffset"))
    BlockReference.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EndOffset"))
    BlockReference.add_member(:child_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfChildBlocks, name: "ChildBlocks"))
    BlockReference.type = Types::BlockReference
    BlockType.add_member(:line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINE", traits: {"smithy.api#enumValue" => "LINE"}))
    BlockType.add_member(:word, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORD", traits: {"smithy.api#enumValue" => "WORD"}))
    BoundingBox.add_member(:height, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Height"))
    BoundingBox.add_member(:left, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Left"))
    BoundingBox.add_member(:top, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Top"))
    BoundingBox.add_member(:width, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Width"))
    BoundingBox.type = Types::BoundingBox
    ChildBlock.add_member(:child_block_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChildBlockId"))
    ChildBlock.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "BeginOffset"))
    ChildBlock.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EndOffset"))
    ChildBlock.type = Types::ChildBlock
    ClassifierEvaluationMetrics.add_member(:accuracy, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Accuracy"))
    ClassifierEvaluationMetrics.add_member(:precision, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Precision"))
    ClassifierEvaluationMetrics.add_member(:recall, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Recall"))
    ClassifierEvaluationMetrics.add_member(:f1_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "F1Score"))
    ClassifierEvaluationMetrics.add_member(:micro_precision, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "MicroPrecision"))
    ClassifierEvaluationMetrics.add_member(:micro_recall, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "MicroRecall"))
    ClassifierEvaluationMetrics.add_member(:micro_f1_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "MicroF1Score"))
    ClassifierEvaluationMetrics.add_member(:hamming_loss, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "HammingLoss"))
    ClassifierEvaluationMetrics.type = Types::ClassifierEvaluationMetrics
    ClassifierMetadata.add_member(:number_of_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfLabels"))
    ClassifierMetadata.add_member(:number_of_trained_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfTrainedDocuments"))
    ClassifierMetadata.add_member(:number_of_test_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfTestDocuments"))
    ClassifierMetadata.add_member(:evaluation_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ClassifierEvaluationMetrics, name: "EvaluationMetrics"))
    ClassifierMetadata.type = Types::ClassifierMetadata
    ClassifyDocumentRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputString, name: "Text"))
    ClassifyDocumentRequest.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierEndpointArn, name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    ClassifyDocumentRequest.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: SemiStructuredDocumentBlob, name: "Bytes"))
    ClassifyDocumentRequest.add_member(:document_reader_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReaderConfig, name: "DocumentReaderConfig"))
    ClassifyDocumentRequest.type = Types::ClassifyDocumentRequest
    ClassifyDocumentResponse.add_member(:classes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfClasses, name: "Classes"))
    ClassifyDocumentResponse.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfLabels, name: "Labels"))
    ClassifyDocumentResponse.add_member(:document_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "DocumentMetadata"))
    ClassifyDocumentResponse.add_member(:document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDocumentType, name: "DocumentType"))
    ClassifyDocumentResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfErrors, name: "Errors"))
    ClassifyDocumentResponse.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfWarnings, name: "Warnings"))
    ClassifyDocumentResponse.type = Types::ClassifyDocumentResponse
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ContainsPiiEntitiesRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text", traits: {"smithy.api#required" => {}}))
    ContainsPiiEntitiesRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    ContainsPiiEntitiesRequest.type = Types::ContainsPiiEntitiesRequest
    ContainsPiiEntitiesResponse.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfEntityLabels, name: "Labels"))
    ContainsPiiEntitiesResponse.type = Types::ContainsPiiEntitiesResponse
    CreateDatasetRequest.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArnName, name: "DatasetName", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, name: "DatasetType"))
    CreateDatasetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateDatasetRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetInputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDatasetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendDatasetArn, name: "DatasetArn"))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateDocumentClassifierRequest.add_member(:document_classifier_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArnName, name: "DocumentClassifierName", traits: {"smithy.api#required" => {}}))
    CreateDocumentClassifierRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, name: "VersionName"))
    CreateDocumentClassifierRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    CreateDocumentClassifierRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDocumentClassifierRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierInputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    CreateDocumentClassifierRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierOutputDataConfig, name: "OutputDataConfig"))
    CreateDocumentClassifierRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDocumentClassifierRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    CreateDocumentClassifierRequest.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    CreateDocumentClassifierRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    CreateDocumentClassifierRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierMode, name: "Mode"))
    CreateDocumentClassifierRequest.add_member(:model_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "ModelKmsKeyId"))
    CreateDocumentClassifierRequest.add_member(:model_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "ModelPolicy"))
    CreateDocumentClassifierRequest.type = Types::CreateDocumentClassifierRequest
    CreateDocumentClassifierResponse.add_member(:document_classifier_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierArn, name: "DocumentClassifierArn"))
    CreateDocumentClassifierResponse.type = Types::CreateDocumentClassifierResponse
    CreateEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendEndpointName, name: "EndpointName", traits: {"smithy.api#required" => {}}))
    CreateEndpointRequest.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "ModelArn"))
    CreateEndpointRequest.add_member(:desired_inference_units, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceUnitsInteger, name: "DesiredInferenceUnits", traits: {"smithy.api#required" => {}}))
    CreateEndpointRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEndpointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateEndpointRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    CreateEndpointRequest.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    CreateEndpointRequest.type = Types::CreateEndpointRequest
    CreateEndpointResponse.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendEndpointArn, name: "EndpointArn"))
    CreateEndpointResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "ModelArn"))
    CreateEndpointResponse.type = Types::CreateEndpointResponse
    CreateEntityRecognizerRequest.add_member(:recognizer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArnName, name: "RecognizerName", traits: {"smithy.api#required" => {}}))
    CreateEntityRecognizerRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, name: "VersionName"))
    CreateEntityRecognizerRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    CreateEntityRecognizerRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateEntityRecognizerRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerInputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    CreateEntityRecognizerRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEntityRecognizerRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    CreateEntityRecognizerRequest.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    CreateEntityRecognizerRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    CreateEntityRecognizerRequest.add_member(:model_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "ModelKmsKeyId"))
    CreateEntityRecognizerRequest.add_member(:model_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "ModelPolicy"))
    CreateEntityRecognizerRequest.type = Types::CreateEntityRecognizerRequest
    CreateEntityRecognizerResponse.add_member(:entity_recognizer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerArn, name: "EntityRecognizerArn"))
    CreateEntityRecognizerResponse.type = Types::CreateEntityRecognizerResponse
    CreateFlywheelRequest.add_member(:flywheel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArnName, name: "FlywheelName", traits: {"smithy.api#required" => {}}))
    CreateFlywheelRequest.add_member(:active_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "ActiveModelArn"))
    CreateFlywheelRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    CreateFlywheelRequest.add_member(:task_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskConfig, name: "TaskConfig"))
    CreateFlywheelRequest.add_member(:model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelType, name: "ModelType"))
    CreateFlywheelRequest.add_member(:data_lake_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelS3Uri, name: "DataLakeS3Uri", traits: {"smithy.api#required" => {}}))
    CreateFlywheelRequest.add_member(:data_security_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSecurityConfig, name: "DataSecurityConfig"))
    CreateFlywheelRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFlywheelRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateFlywheelRequest.type = Types::CreateFlywheelRequest
    CreateFlywheelResponse.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    CreateFlywheelResponse.add_member(:active_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "ActiveModelArn"))
    CreateFlywheelResponse.type = Types::CreateFlywheelResponse
    CustomerInputStringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputString, name: "member")
    DataSecurityConfig.add_member(:model_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "ModelKmsKeyId"))
    DataSecurityConfig.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    DataSecurityConfig.add_member(:data_lake_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "DataLakeKmsKeyId"))
    DataSecurityConfig.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    DataSecurityConfig.type = Types::DataSecurityConfig
    DatasetAugmentedManifestsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetAugmentedManifestsListItem, name: "member")
    DatasetAugmentedManifestsListItem.add_member(:attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNamesList, name: "AttributeNames", traits: {"smithy.api#required" => {}}))
    DatasetAugmentedManifestsListItem.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    DatasetAugmentedManifestsListItem.add_member(:annotation_data_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "AnnotationDataS3Uri"))
    DatasetAugmentedManifestsListItem.add_member(:source_documents_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "SourceDocumentsS3Uri"))
    DatasetAugmentedManifestsListItem.add_member(:document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AugmentedManifestsDocumentTypeFormat, name: "DocumentType"))
    DatasetAugmentedManifestsListItem.type = Types::DatasetAugmentedManifestsListItem
    DatasetDataFormat.add_member(:comprehend_csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPREHEND_CSV", traits: {"smithy.api#enumValue" => "COMPREHEND_CSV"}))
    DatasetDataFormat.add_member(:augmented_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUGMENTED_MANIFEST", traits: {"smithy.api#enumValue" => "AUGMENTED_MANIFEST"}))
    DatasetDocumentClassifierInputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    DatasetDocumentClassifierInputDataConfig.add_member(:label_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelDelimiter, name: "LabelDelimiter"))
    DatasetDocumentClassifierInputDataConfig.type = Types::DatasetDocumentClassifierInputDataConfig
    DatasetEntityRecognizerAnnotations.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    DatasetEntityRecognizerAnnotations.type = Types::DatasetEntityRecognizerAnnotations
    DatasetEntityRecognizerDocuments.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    DatasetEntityRecognizerDocuments.add_member(:input_format, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFormat, name: "InputFormat"))
    DatasetEntityRecognizerDocuments.type = Types::DatasetEntityRecognizerDocuments
    DatasetEntityRecognizerEntityList.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    DatasetEntityRecognizerEntityList.type = Types::DatasetEntityRecognizerEntityList
    DatasetEntityRecognizerInputDataConfig.add_member(:annotations, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetEntityRecognizerAnnotations, name: "Annotations"))
    DatasetEntityRecognizerInputDataConfig.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetEntityRecognizerDocuments, name: "Documents", traits: {"smithy.api#required" => {}}))
    DatasetEntityRecognizerInputDataConfig.add_member(:entity_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetEntityRecognizerEntityList, name: "EntityList"))
    DatasetEntityRecognizerInputDataConfig.type = Types::DatasetEntityRecognizerInputDataConfig
    DatasetFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, name: "Status"))
    DatasetFilter.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, name: "DatasetType"))
    DatasetFilter.add_member(:creation_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTimeAfter"))
    DatasetFilter.add_member(:creation_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTimeBefore"))
    DatasetFilter.type = Types::DatasetFilter
    DatasetInputDataConfig.add_member(:augmented_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetAugmentedManifestsList, name: "AugmentedManifests"))
    DatasetInputDataConfig.add_member(:data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetDataFormat, name: "DataFormat"))
    DatasetInputDataConfig.add_member(:document_classifier_input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetDocumentClassifierInputDataConfig, name: "DocumentClassifierInputDataConfig"))
    DatasetInputDataConfig.add_member(:entity_recognizer_input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetEntityRecognizerInputDataConfig, name: "EntityRecognizerInputDataConfig"))
    DatasetInputDataConfig.type = Types::DatasetInputDataConfig
    DatasetProperties.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendDatasetArn, name: "DatasetArn"))
    DatasetProperties.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArnName, name: "DatasetName"))
    DatasetProperties.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, name: "DatasetType"))
    DatasetProperties.add_member(:dataset_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "DatasetS3Uri"))
    DatasetProperties.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DatasetProperties.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, name: "Status"))
    DatasetProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    DatasetProperties.add_member(:number_of_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfDocuments, name: "NumberOfDocuments"))
    DatasetProperties.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DatasetProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    DatasetProperties.type = Types::DatasetProperties
    DatasetPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetProperties, name: "member")
    DatasetStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DatasetStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DatasetStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DatasetType.add_member(:train, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAIN", traits: {"smithy.api#enumValue" => "TRAIN"}))
    DatasetType.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST", traits: {"smithy.api#enumValue" => "TEST"}))
    DeleteDocumentClassifierRequest.add_member(:document_classifier_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierArn, name: "DocumentClassifierArn", traits: {"smithy.api#required" => {}}))
    DeleteDocumentClassifierRequest.type = Types::DeleteDocumentClassifierRequest
    DeleteDocumentClassifierResponse.type = Types::DeleteDocumentClassifierResponse
    DeleteEndpointRequest.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendEndpointArn, name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    DeleteEndpointRequest.type = Types::DeleteEndpointRequest
    DeleteEndpointResponse.type = Types::DeleteEndpointResponse
    DeleteEntityRecognizerRequest.add_member(:entity_recognizer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerArn, name: "EntityRecognizerArn", traits: {"smithy.api#required" => {}}))
    DeleteEntityRecognizerRequest.type = Types::DeleteEntityRecognizerRequest
    DeleteEntityRecognizerResponse.type = Types::DeleteEntityRecognizerResponse
    DeleteFlywheelRequest.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn", traits: {"smithy.api#required" => {}}))
    DeleteFlywheelRequest.type = Types::DeleteFlywheelRequest
    DeleteFlywheelResponse.type = Types::DeleteFlywheelResponse
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "PolicyRevisionId"))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DescribeDatasetRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendDatasetArn, name: "DatasetArn", traits: {"smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetProperties, name: "DatasetProperties"))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeDocumentClassificationJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeDocumentClassificationJobRequest.type = Types::DescribeDocumentClassificationJobRequest
    DescribeDocumentClassificationJobResponse.add_member(:document_classification_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassificationJobProperties, name: "DocumentClassificationJobProperties"))
    DescribeDocumentClassificationJobResponse.type = Types::DescribeDocumentClassificationJobResponse
    DescribeDocumentClassifierRequest.add_member(:document_classifier_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierArn, name: "DocumentClassifierArn", traits: {"smithy.api#required" => {}}))
    DescribeDocumentClassifierRequest.type = Types::DescribeDocumentClassifierRequest
    DescribeDocumentClassifierResponse.add_member(:document_classifier_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierProperties, name: "DocumentClassifierProperties"))
    DescribeDocumentClassifierResponse.type = Types::DescribeDocumentClassifierResponse
    DescribeDominantLanguageDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeDominantLanguageDetectionJobRequest.type = Types::DescribeDominantLanguageDetectionJobRequest
    DescribeDominantLanguageDetectionJobResponse.add_member(:dominant_language_detection_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DominantLanguageDetectionJobProperties, name: "DominantLanguageDetectionJobProperties"))
    DescribeDominantLanguageDetectionJobResponse.type = Types::DescribeDominantLanguageDetectionJobResponse
    DescribeEndpointRequest.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendEndpointArn, name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    DescribeEndpointRequest.type = Types::DescribeEndpointRequest
    DescribeEndpointResponse.add_member(:endpoint_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointProperties, name: "EndpointProperties"))
    DescribeEndpointResponse.type = Types::DescribeEndpointResponse
    DescribeEntitiesDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeEntitiesDetectionJobRequest.type = Types::DescribeEntitiesDetectionJobRequest
    DescribeEntitiesDetectionJobResponse.add_member(:entities_detection_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitiesDetectionJobProperties, name: "EntitiesDetectionJobProperties"))
    DescribeEntitiesDetectionJobResponse.type = Types::DescribeEntitiesDetectionJobResponse
    DescribeEntityRecognizerRequest.add_member(:entity_recognizer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerArn, name: "EntityRecognizerArn", traits: {"smithy.api#required" => {}}))
    DescribeEntityRecognizerRequest.type = Types::DescribeEntityRecognizerRequest
    DescribeEntityRecognizerResponse.add_member(:entity_recognizer_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerProperties, name: "EntityRecognizerProperties"))
    DescribeEntityRecognizerResponse.type = Types::DescribeEntityRecognizerResponse
    DescribeEventsDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeEventsDetectionJobRequest.type = Types::DescribeEventsDetectionJobRequest
    DescribeEventsDetectionJobResponse.add_member(:events_detection_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EventsDetectionJobProperties, name: "EventsDetectionJobProperties"))
    DescribeEventsDetectionJobResponse.type = Types::DescribeEventsDetectionJobResponse
    DescribeFlywheelIterationRequest.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn", traits: {"smithy.api#required" => {}}))
    DescribeFlywheelIterationRequest.add_member(:flywheel_iteration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelIterationId, name: "FlywheelIterationId", traits: {"smithy.api#required" => {}}))
    DescribeFlywheelIterationRequest.type = Types::DescribeFlywheelIterationRequest
    DescribeFlywheelIterationResponse.add_member(:flywheel_iteration_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelIterationProperties, name: "FlywheelIterationProperties"))
    DescribeFlywheelIterationResponse.type = Types::DescribeFlywheelIterationResponse
    DescribeFlywheelRequest.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn", traits: {"smithy.api#required" => {}}))
    DescribeFlywheelRequest.type = Types::DescribeFlywheelRequest
    DescribeFlywheelResponse.add_member(:flywheel_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelProperties, name: "FlywheelProperties"))
    DescribeFlywheelResponse.type = Types::DescribeFlywheelResponse
    DescribeKeyPhrasesDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeKeyPhrasesDetectionJobRequest.type = Types::DescribeKeyPhrasesDetectionJobRequest
    DescribeKeyPhrasesDetectionJobResponse.add_member(:key_phrases_detection_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPhrasesDetectionJobProperties, name: "KeyPhrasesDetectionJobProperties"))
    DescribeKeyPhrasesDetectionJobResponse.type = Types::DescribeKeyPhrasesDetectionJobResponse
    DescribePiiEntitiesDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribePiiEntitiesDetectionJobRequest.type = Types::DescribePiiEntitiesDetectionJobRequest
    DescribePiiEntitiesDetectionJobResponse.add_member(:pii_entities_detection_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiEntitiesDetectionJobProperties, name: "PiiEntitiesDetectionJobProperties"))
    DescribePiiEntitiesDetectionJobResponse.type = Types::DescribePiiEntitiesDetectionJobResponse
    DescribeResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DescribeResourcePolicyRequest.type = Types::DescribeResourcePolicyRequest
    DescribeResourcePolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "ResourcePolicy"))
    DescribeResourcePolicyResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribeResourcePolicyResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    DescribeResourcePolicyResponse.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "PolicyRevisionId"))
    DescribeResourcePolicyResponse.type = Types::DescribeResourcePolicyResponse
    DescribeSentimentDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeSentimentDetectionJobRequest.type = Types::DescribeSentimentDetectionJobRequest
    DescribeSentimentDetectionJobResponse.add_member(:sentiment_detection_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentDetectionJobProperties, name: "SentimentDetectionJobProperties"))
    DescribeSentimentDetectionJobResponse.type = Types::DescribeSentimentDetectionJobResponse
    DescribeTargetedSentimentDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeTargetedSentimentDetectionJobRequest.type = Types::DescribeTargetedSentimentDetectionJobRequest
    DescribeTargetedSentimentDetectionJobResponse.add_member(:targeted_sentiment_detection_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetedSentimentDetectionJobProperties, name: "TargetedSentimentDetectionJobProperties"))
    DescribeTargetedSentimentDetectionJobResponse.type = Types::DescribeTargetedSentimentDetectionJobResponse
    DescribeTopicsDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeTopicsDetectionJobRequest.type = Types::DescribeTopicsDetectionJobRequest
    DescribeTopicsDetectionJobResponse.add_member(:topics_detection_job_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicsDetectionJobProperties, name: "TopicsDetectionJobProperties"))
    DescribeTopicsDetectionJobResponse.type = Types::DescribeTopicsDetectionJobResponse
    DetectDominantLanguageRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputString, name: "Text", traits: {"smithy.api#required" => {}}))
    DetectDominantLanguageRequest.type = Types::DetectDominantLanguageRequest
    DetectDominantLanguageResponse.add_member(:languages, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDominantLanguages, name: "Languages"))
    DetectDominantLanguageResponse.type = Types::DetectDominantLanguageResponse
    DetectEntitiesRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputString, name: "Text"))
    DetectEntitiesRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    DetectEntitiesRequest.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerEndpointArn, name: "EndpointArn"))
    DetectEntitiesRequest.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: SemiStructuredDocumentBlob, name: "Bytes"))
    DetectEntitiesRequest.add_member(:document_reader_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReaderConfig, name: "DocumentReaderConfig"))
    DetectEntitiesRequest.type = Types::DetectEntitiesRequest
    DetectEntitiesResponse.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfEntities, name: "Entities"))
    DetectEntitiesResponse.add_member(:document_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "DocumentMetadata"))
    DetectEntitiesResponse.add_member(:document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDocumentType, name: "DocumentType"))
    DetectEntitiesResponse.add_member(:blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfBlocks, name: "Blocks"))
    DetectEntitiesResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfErrors, name: "Errors"))
    DetectEntitiesResponse.type = Types::DetectEntitiesResponse
    DetectKeyPhrasesRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputString, name: "Text", traits: {"smithy.api#required" => {}}))
    DetectKeyPhrasesRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    DetectKeyPhrasesRequest.type = Types::DetectKeyPhrasesRequest
    DetectKeyPhrasesResponse.add_member(:key_phrases, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfKeyPhrases, name: "KeyPhrases"))
    DetectKeyPhrasesResponse.type = Types::DetectKeyPhrasesResponse
    DetectPiiEntitiesRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text", traits: {"smithy.api#required" => {}}))
    DetectPiiEntitiesRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    DetectPiiEntitiesRequest.type = Types::DetectPiiEntitiesRequest
    DetectPiiEntitiesResponse.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPiiEntities, name: "Entities"))
    DetectPiiEntitiesResponse.type = Types::DetectPiiEntitiesResponse
    DetectSentimentRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputString, name: "Text", traits: {"smithy.api#required" => {}}))
    DetectSentimentRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    DetectSentimentRequest.type = Types::DetectSentimentRequest
    DetectSentimentResponse.add_member(:sentiment, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentType, name: "Sentiment"))
    DetectSentimentResponse.add_member(:sentiment_score, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentScore, name: "SentimentScore"))
    DetectSentimentResponse.type = Types::DetectSentimentResponse
    DetectSyntaxRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputString, name: "Text", traits: {"smithy.api#required" => {}}))
    DetectSyntaxRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SyntaxLanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    DetectSyntaxRequest.type = Types::DetectSyntaxRequest
    DetectSyntaxResponse.add_member(:syntax_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfSyntaxTokens, name: "SyntaxTokens"))
    DetectSyntaxResponse.type = Types::DetectSyntaxResponse
    DetectTargetedSentimentRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputString, name: "Text", traits: {"smithy.api#required" => {}}))
    DetectTargetedSentimentRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    DetectTargetedSentimentRequest.type = Types::DetectTargetedSentimentRequest
    DetectTargetedSentimentResponse.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfTargetedSentimentEntities, name: "Entities"))
    DetectTargetedSentimentResponse.type = Types::DetectTargetedSentimentResponse
    DetectToxicContentRequest.add_member(:text_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfTextSegments, name: "TextSegments", traits: {"smithy.api#required" => {}}))
    DetectToxicContentRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    DetectToxicContentRequest.type = Types::DetectToxicContentRequest
    DetectToxicContentResponse.add_member(:result_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfToxicLabels, name: "ResultList"))
    DetectToxicContentResponse.type = Types::DetectToxicContentResponse
    DocumentClass.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    DocumentClass.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Score"))
    DocumentClass.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Page"))
    DocumentClass.type = Types::DocumentClass
    DocumentClassificationConfig.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierMode, name: "Mode", traits: {"smithy.api#required" => {}}))
    DocumentClassificationConfig.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelsList, name: "Labels"))
    DocumentClassificationConfig.type = Types::DocumentClassificationConfig
    DocumentClassificationJobFilter.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    DocumentClassificationJobFilter.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    DocumentClassificationJobFilter.add_member(:submit_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeBefore"))
    DocumentClassificationJobFilter.add_member(:submit_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeAfter"))
    DocumentClassificationJobFilter.type = Types::DocumentClassificationJobFilter
    DocumentClassificationJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    DocumentClassificationJobProperties.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    DocumentClassificationJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    DocumentClassificationJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    DocumentClassificationJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    DocumentClassificationJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime"))
    DocumentClassificationJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    DocumentClassificationJobProperties.add_member(:document_classifier_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierArn, name: "DocumentClassifierArn"))
    DocumentClassificationJobProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig"))
    DocumentClassificationJobProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig"))
    DocumentClassificationJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    DocumentClassificationJobProperties.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    DocumentClassificationJobProperties.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    DocumentClassificationJobProperties.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    DocumentClassificationJobProperties.type = Types::DocumentClassificationJobProperties
    DocumentClassificationJobPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassificationJobProperties, name: "member")
    DocumentClassifierAugmentedManifestsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AugmentedManifestsListItem, name: "member")
    DocumentClassifierDataFormat.add_member(:comprehend_csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPREHEND_CSV", traits: {"smithy.api#enumValue" => "COMPREHEND_CSV"}))
    DocumentClassifierDataFormat.add_member(:augmented_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUGMENTED_MANIFEST", traits: {"smithy.api#enumValue" => "AUGMENTED_MANIFEST"}))
    DocumentClassifierDocumentTypeFormat.add_member(:plain_text_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAIN_TEXT_DOCUMENT", traits: {"smithy.api#enumValue" => "PLAIN_TEXT_DOCUMENT"}))
    DocumentClassifierDocumentTypeFormat.add_member(:semi_structured_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEMI_STRUCTURED_DOCUMENT", traits: {"smithy.api#enumValue" => "SEMI_STRUCTURED_DOCUMENT"}))
    DocumentClassifierDocuments.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    DocumentClassifierDocuments.add_member(:test_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "TestS3Uri"))
    DocumentClassifierDocuments.type = Types::DocumentClassifierDocuments
    DocumentClassifierFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatus, name: "Status"))
    DocumentClassifierFilter.add_member(:document_classifier_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArnName, name: "DocumentClassifierName"))
    DocumentClassifierFilter.add_member(:submit_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeBefore"))
    DocumentClassifierFilter.add_member(:submit_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeAfter"))
    DocumentClassifierFilter.type = Types::DocumentClassifierFilter
    DocumentClassifierInputDataConfig.add_member(:data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierDataFormat, name: "DataFormat"))
    DocumentClassifierInputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri"))
    DocumentClassifierInputDataConfig.add_member(:test_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "TestS3Uri"))
    DocumentClassifierInputDataConfig.add_member(:label_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelDelimiter, name: "LabelDelimiter"))
    DocumentClassifierInputDataConfig.add_member(:augmented_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierAugmentedManifestsList, name: "AugmentedManifests"))
    DocumentClassifierInputDataConfig.add_member(:document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierDocumentTypeFormat, name: "DocumentType"))
    DocumentClassifierInputDataConfig.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierDocuments, name: "Documents"))
    DocumentClassifierInputDataConfig.add_member(:document_reader_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReaderConfig, name: "DocumentReaderConfig"))
    DocumentClassifierInputDataConfig.type = Types::DocumentClassifierInputDataConfig
    DocumentClassifierMode.add_member(:multi_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_CLASS", traits: {"smithy.api#enumValue" => "MULTI_CLASS"}))
    DocumentClassifierMode.add_member(:multi_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_LABEL", traits: {"smithy.api#enumValue" => "MULTI_LABEL"}))
    DocumentClassifierOutputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri"))
    DocumentClassifierOutputDataConfig.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    DocumentClassifierOutputDataConfig.add_member(:flywheel_stats_s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "FlywheelStatsS3Prefix"))
    DocumentClassifierOutputDataConfig.type = Types::DocumentClassifierOutputDataConfig
    DocumentClassifierProperties.add_member(:document_classifier_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierArn, name: "DocumentClassifierArn"))
    DocumentClassifierProperties.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    DocumentClassifierProperties.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatus, name: "Status"))
    DocumentClassifierProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    DocumentClassifierProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime"))
    DocumentClassifierProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    DocumentClassifierProperties.add_member(:training_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "TrainingStartTime"))
    DocumentClassifierProperties.add_member(:training_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "TrainingEndTime"))
    DocumentClassifierProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierInputDataConfig, name: "InputDataConfig"))
    DocumentClassifierProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierOutputDataConfig, name: "OutputDataConfig"))
    DocumentClassifierProperties.add_member(:classifier_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClassifierMetadata, name: "ClassifierMetadata"))
    DocumentClassifierProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    DocumentClassifierProperties.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    DocumentClassifierProperties.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    DocumentClassifierProperties.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierMode, name: "Mode"))
    DocumentClassifierProperties.add_member(:model_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "ModelKmsKeyId"))
    DocumentClassifierProperties.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, name: "VersionName"))
    DocumentClassifierProperties.add_member(:source_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierArn, name: "SourceModelArn"))
    DocumentClassifierProperties.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    DocumentClassifierProperties.type = Types::DocumentClassifierProperties
    DocumentClassifierPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierProperties, name: "member")
    DocumentClassifierSummariesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierSummary, name: "member")
    DocumentClassifierSummary.add_member(:document_classifier_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArnName, name: "DocumentClassifierName"))
    DocumentClassifierSummary.add_member(:number_of_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfVersions"))
    DocumentClassifierSummary.add_member(:latest_version_created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LatestVersionCreatedAt"))
    DocumentClassifierSummary.add_member(:latest_version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, name: "LatestVersionName"))
    DocumentClassifierSummary.add_member(:latest_version_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatus, name: "LatestVersionStatus"))
    DocumentClassifierSummary.type = Types::DocumentClassifierSummary
    DocumentLabel.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    DocumentLabel.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Score"))
    DocumentLabel.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Page"))
    DocumentLabel.type = Types::DocumentLabel
    DocumentMetadata.add_member(:pages, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Pages"))
    DocumentMetadata.add_member(:extracted_characters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfExtractedCharacters, name: "ExtractedCharacters"))
    DocumentMetadata.type = Types::DocumentMetadata
    DocumentReadAction.add_member(:textract_detect_document_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXTRACT_DETECT_DOCUMENT_TEXT", traits: {"smithy.api#enumValue" => "TEXTRACT_DETECT_DOCUMENT_TEXT"}))
    DocumentReadAction.add_member(:textract_analyze_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXTRACT_ANALYZE_DOCUMENT", traits: {"smithy.api#enumValue" => "TEXTRACT_ANALYZE_DOCUMENT"}))
    DocumentReadFeatureTypes.add_member(:tables, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLES", traits: {"smithy.api#enumValue" => "TABLES"}))
    DocumentReadFeatureTypes.add_member(:forms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORMS", traits: {"smithy.api#enumValue" => "FORMS"}))
    DocumentReadMode.add_member(:service_default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_DEFAULT", traits: {"smithy.api#enumValue" => "SERVICE_DEFAULT"}))
    DocumentReadMode.add_member(:force_document_read_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORCE_DOCUMENT_READ_ACTION", traits: {"smithy.api#enumValue" => "FORCE_DOCUMENT_READ_ACTION"}))
    DocumentReaderConfig.add_member(:document_read_action, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReadAction, name: "DocumentReadAction", traits: {"smithy.api#required" => {}}))
    DocumentReaderConfig.add_member(:document_read_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReadMode, name: "DocumentReadMode"))
    DocumentReaderConfig.add_member(:feature_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDocumentReadFeatureTypes, name: "FeatureTypes"))
    DocumentReaderConfig.type = Types::DocumentReaderConfig
    DocumentType.add_member(:native_pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NATIVE_PDF", traits: {"smithy.api#enumValue" => "NATIVE_PDF"}))
    DocumentType.add_member(:scanned_pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCANNED_PDF", traits: {"smithy.api#enumValue" => "SCANNED_PDF"}))
    DocumentType.add_member(:ms_word, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MS_WORD", traits: {"smithy.api#enumValue" => "MS_WORD"}))
    DocumentType.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE", traits: {"smithy.api#enumValue" => "IMAGE"}))
    DocumentType.add_member(:plain_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAIN_TEXT", traits: {"smithy.api#enumValue" => "PLAIN_TEXT"}))
    DocumentType.add_member(:textract_detect_document_text_json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXTRACT_DETECT_DOCUMENT_TEXT_JSON", traits: {"smithy.api#enumValue" => "TEXTRACT_DETECT_DOCUMENT_TEXT_JSON"}))
    DocumentType.add_member(:textract_analyze_document_json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXTRACT_ANALYZE_DOCUMENT_JSON", traits: {"smithy.api#enumValue" => "TEXTRACT_ANALYZE_DOCUMENT_JSON"}))
    DocumentTypeListItem.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Page"))
    DocumentTypeListItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentType, name: "Type"))
    DocumentTypeListItem.type = Types::DocumentTypeListItem
    DominantLanguage.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LanguageCode"))
    DominantLanguage.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Score"))
    DominantLanguage.type = Types::DominantLanguage
    DominantLanguageDetectionJobFilter.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    DominantLanguageDetectionJobFilter.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    DominantLanguageDetectionJobFilter.add_member(:submit_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeBefore"))
    DominantLanguageDetectionJobFilter.add_member(:submit_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeAfter"))
    DominantLanguageDetectionJobFilter.type = Types::DominantLanguageDetectionJobFilter
    DominantLanguageDetectionJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    DominantLanguageDetectionJobProperties.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    DominantLanguageDetectionJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    DominantLanguageDetectionJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    DominantLanguageDetectionJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    DominantLanguageDetectionJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime"))
    DominantLanguageDetectionJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    DominantLanguageDetectionJobProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig"))
    DominantLanguageDetectionJobProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig"))
    DominantLanguageDetectionJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    DominantLanguageDetectionJobProperties.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    DominantLanguageDetectionJobProperties.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    DominantLanguageDetectionJobProperties.type = Types::DominantLanguageDetectionJobProperties
    DominantLanguageDetectionJobPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DominantLanguageDetectionJobProperties, name: "member")
    EndpointFilter.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "ModelArn"))
    EndpointFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointStatus, name: "Status"))
    EndpointFilter.add_member(:creation_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTimeBefore"))
    EndpointFilter.add_member(:creation_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTimeAfter"))
    EndpointFilter.type = Types::EndpointFilter
    EndpointProperties.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendEndpointArn, name: "EndpointArn"))
    EndpointProperties.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointStatus, name: "Status"))
    EndpointProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    EndpointProperties.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "ModelArn"))
    EndpointProperties.add_member(:desired_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "DesiredModelArn"))
    EndpointProperties.add_member(:desired_inference_units, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceUnitsInteger, name: "DesiredInferenceUnits"))
    EndpointProperties.add_member(:current_inference_units, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceUnitsInteger, name: "CurrentInferenceUnits"))
    EndpointProperties.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    EndpointProperties.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    EndpointProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    EndpointProperties.add_member(:desired_data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DesiredDataAccessRoleArn"))
    EndpointProperties.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    EndpointProperties.type = Types::EndpointProperties
    EndpointPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointProperties, name: "member")
    EndpointStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    EndpointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    EndpointStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    EndpointStatus.add_member(:in_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_SERVICE", traits: {"smithy.api#enumValue" => "IN_SERVICE"}))
    EndpointStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    EntitiesDetectionJobFilter.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    EntitiesDetectionJobFilter.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    EntitiesDetectionJobFilter.add_member(:submit_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeBefore"))
    EntitiesDetectionJobFilter.add_member(:submit_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeAfter"))
    EntitiesDetectionJobFilter.type = Types::EntitiesDetectionJobFilter
    EntitiesDetectionJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    EntitiesDetectionJobProperties.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    EntitiesDetectionJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    EntitiesDetectionJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    EntitiesDetectionJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    EntitiesDetectionJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime"))
    EntitiesDetectionJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    EntitiesDetectionJobProperties.add_member(:entity_recognizer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerArn, name: "EntityRecognizerArn"))
    EntitiesDetectionJobProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig"))
    EntitiesDetectionJobProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig"))
    EntitiesDetectionJobProperties.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    EntitiesDetectionJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    EntitiesDetectionJobProperties.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    EntitiesDetectionJobProperties.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    EntitiesDetectionJobProperties.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    EntitiesDetectionJobProperties.type = Types::EntitiesDetectionJobProperties
    EntitiesDetectionJobPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntitiesDetectionJobProperties, name: "member")
    Entity.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Score"))
    Entity.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "Type"))
    Entity.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text"))
    Entity.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "BeginOffset"))
    Entity.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EndOffset"))
    Entity.add_member(:block_references, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfBlockReferences, name: "BlockReferences"))
    Entity.type = Types::Entity
    EntityLabel.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiEntityType, name: "Name"))
    EntityLabel.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Score"))
    EntityLabel.type = Types::EntityLabel
    EntityRecognitionConfig.add_member(:entity_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTypesList, name: "EntityTypes", traits: {"smithy.api#required" => {}}))
    EntityRecognitionConfig.type = Types::EntityRecognitionConfig
    EntityRecognizerAnnotations.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    EntityRecognizerAnnotations.add_member(:test_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "TestS3Uri"))
    EntityRecognizerAnnotations.type = Types::EntityRecognizerAnnotations
    EntityRecognizerAugmentedManifestsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AugmentedManifestsListItem, name: "member")
    EntityRecognizerDataFormat.add_member(:comprehend_csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPREHEND_CSV", traits: {"smithy.api#enumValue" => "COMPREHEND_CSV"}))
    EntityRecognizerDataFormat.add_member(:augmented_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUGMENTED_MANIFEST", traits: {"smithy.api#enumValue" => "AUGMENTED_MANIFEST"}))
    EntityRecognizerDocuments.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    EntityRecognizerDocuments.add_member(:test_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "TestS3Uri"))
    EntityRecognizerDocuments.add_member(:input_format, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFormat, name: "InputFormat"))
    EntityRecognizerDocuments.type = Types::EntityRecognizerDocuments
    EntityRecognizerEntityList.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    EntityRecognizerEntityList.type = Types::EntityRecognizerEntityList
    EntityRecognizerEvaluationMetrics.add_member(:precision, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Precision"))
    EntityRecognizerEvaluationMetrics.add_member(:recall, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Recall"))
    EntityRecognizerEvaluationMetrics.add_member(:f1_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "F1Score"))
    EntityRecognizerEvaluationMetrics.type = Types::EntityRecognizerEvaluationMetrics
    EntityRecognizerFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatus, name: "Status"))
    EntityRecognizerFilter.add_member(:recognizer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArnName, name: "RecognizerName"))
    EntityRecognizerFilter.add_member(:submit_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeBefore"))
    EntityRecognizerFilter.add_member(:submit_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeAfter"))
    EntityRecognizerFilter.type = Types::EntityRecognizerFilter
    EntityRecognizerInputDataConfig.add_member(:data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerDataFormat, name: "DataFormat"))
    EntityRecognizerInputDataConfig.add_member(:entity_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTypesList, name: "EntityTypes", traits: {"smithy.api#required" => {}}))
    EntityRecognizerInputDataConfig.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerDocuments, name: "Documents"))
    EntityRecognizerInputDataConfig.add_member(:annotations, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerAnnotations, name: "Annotations"))
    EntityRecognizerInputDataConfig.add_member(:entity_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerEntityList, name: "EntityList"))
    EntityRecognizerInputDataConfig.add_member(:augmented_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerAugmentedManifestsList, name: "AugmentedManifests"))
    EntityRecognizerInputDataConfig.type = Types::EntityRecognizerInputDataConfig
    EntityRecognizerMetadata.add_member(:number_of_trained_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfTrainedDocuments"))
    EntityRecognizerMetadata.add_member(:number_of_test_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfTestDocuments"))
    EntityRecognizerMetadata.add_member(:evaluation_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerEvaluationMetrics, name: "EvaluationMetrics"))
    EntityRecognizerMetadata.add_member(:entity_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerMetadataEntityTypesList, name: "EntityTypes"))
    EntityRecognizerMetadata.type = Types::EntityRecognizerMetadata
    EntityRecognizerMetadataEntityTypesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerMetadataEntityTypesListItem, name: "member")
    EntityRecognizerMetadataEntityTypesListItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Type"))
    EntityRecognizerMetadataEntityTypesListItem.add_member(:evaluation_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTypesEvaluationMetrics, name: "EvaluationMetrics"))
    EntityRecognizerMetadataEntityTypesListItem.add_member(:number_of_train_mentions, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfTrainMentions"))
    EntityRecognizerMetadataEntityTypesListItem.type = Types::EntityRecognizerMetadataEntityTypesListItem
    EntityRecognizerOutputDataConfig.add_member(:flywheel_stats_s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "FlywheelStatsS3Prefix"))
    EntityRecognizerOutputDataConfig.type = Types::EntityRecognizerOutputDataConfig
    EntityRecognizerProperties.add_member(:entity_recognizer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerArn, name: "EntityRecognizerArn"))
    EntityRecognizerProperties.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    EntityRecognizerProperties.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatus, name: "Status"))
    EntityRecognizerProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    EntityRecognizerProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime"))
    EntityRecognizerProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    EntityRecognizerProperties.add_member(:training_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "TrainingStartTime"))
    EntityRecognizerProperties.add_member(:training_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "TrainingEndTime"))
    EntityRecognizerProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerInputDataConfig, name: "InputDataConfig"))
    EntityRecognizerProperties.add_member(:recognizer_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerMetadata, name: "RecognizerMetadata"))
    EntityRecognizerProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    EntityRecognizerProperties.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    EntityRecognizerProperties.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    EntityRecognizerProperties.add_member(:model_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "ModelKmsKeyId"))
    EntityRecognizerProperties.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, name: "VersionName"))
    EntityRecognizerProperties.add_member(:source_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerArn, name: "SourceModelArn"))
    EntityRecognizerProperties.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    EntityRecognizerProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerOutputDataConfig, name: "OutputDataConfig"))
    EntityRecognizerProperties.type = Types::EntityRecognizerProperties
    EntityRecognizerPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerProperties, name: "member")
    EntityRecognizerSummariesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerSummary, name: "member")
    EntityRecognizerSummary.add_member(:recognizer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArnName, name: "RecognizerName"))
    EntityRecognizerSummary.add_member(:number_of_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfVersions"))
    EntityRecognizerSummary.add_member(:latest_version_created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LatestVersionCreatedAt"))
    EntityRecognizerSummary.add_member(:latest_version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, name: "LatestVersionName"))
    EntityRecognizerSummary.add_member(:latest_version_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStatus, name: "LatestVersionStatus"))
    EntityRecognizerSummary.type = Types::EntityRecognizerSummary
    EntityType.add_member(:person, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERSON", traits: {"smithy.api#enumValue" => "PERSON"}))
    EntityType.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCATION", traits: {"smithy.api#enumValue" => "LOCATION"}))
    EntityType.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    EntityType.add_member(:commercial_item, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMERCIAL_ITEM", traits: {"smithy.api#enumValue" => "COMMERCIAL_ITEM"}))
    EntityType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENT", traits: {"smithy.api#enumValue" => "EVENT"}))
    EntityType.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATE", traits: {"smithy.api#enumValue" => "DATE"}))
    EntityType.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUANTITY", traits: {"smithy.api#enumValue" => "QUANTITY"}))
    EntityType.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TITLE", traits: {"smithy.api#enumValue" => "TITLE"}))
    EntityType.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    EntityTypesEvaluationMetrics.add_member(:precision, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Precision"))
    EntityTypesEvaluationMetrics.add_member(:recall, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Recall"))
    EntityTypesEvaluationMetrics.add_member(:f1_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "F1Score"))
    EntityTypesEvaluationMetrics.type = Types::EntityTypesEvaluationMetrics
    EntityTypesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTypesListItem, name: "member")
    EntityTypesListItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTypeName, name: "Type", traits: {"smithy.api#required" => {}}))
    EntityTypesListItem.type = Types::EntityTypesListItem
    ErrorsListItem.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Page"))
    ErrorsListItem.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: PageBasedErrorCode, name: "ErrorCode"))
    ErrorsListItem.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    ErrorsListItem.type = Types::ErrorsListItem
    EventsDetectionJobFilter.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    EventsDetectionJobFilter.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    EventsDetectionJobFilter.add_member(:submit_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeBefore"))
    EventsDetectionJobFilter.add_member(:submit_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeAfter"))
    EventsDetectionJobFilter.type = Types::EventsDetectionJobFilter
    EventsDetectionJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    EventsDetectionJobProperties.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    EventsDetectionJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    EventsDetectionJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    EventsDetectionJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    EventsDetectionJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime"))
    EventsDetectionJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    EventsDetectionJobProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig"))
    EventsDetectionJobProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig"))
    EventsDetectionJobProperties.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    EventsDetectionJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    EventsDetectionJobProperties.add_member(:target_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetEventTypes, name: "TargetEventTypes"))
    EventsDetectionJobProperties.type = Types::EventsDetectionJobProperties
    EventsDetectionJobPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventsDetectionJobProperties, name: "member")
    ExtractedCharactersListItem.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Page"))
    ExtractedCharactersListItem.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count"))
    ExtractedCharactersListItem.type = Types::ExtractedCharactersListItem
    FlywheelFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelStatus, name: "Status"))
    FlywheelFilter.add_member(:creation_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTimeAfter"))
    FlywheelFilter.add_member(:creation_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTimeBefore"))
    FlywheelFilter.type = Types::FlywheelFilter
    FlywheelIterationFilter.add_member(:creation_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTimeAfter"))
    FlywheelIterationFilter.add_member(:creation_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTimeBefore"))
    FlywheelIterationFilter.type = Types::FlywheelIterationFilter
    FlywheelIterationProperties.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    FlywheelIterationProperties.add_member(:flywheel_iteration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelIterationId, name: "FlywheelIterationId"))
    FlywheelIterationProperties.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    FlywheelIterationProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    FlywheelIterationProperties.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelIterationStatus, name: "Status"))
    FlywheelIterationProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    FlywheelIterationProperties.add_member(:evaluated_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "EvaluatedModelArn"))
    FlywheelIterationProperties.add_member(:evaluated_model_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelModelEvaluationMetrics, name: "EvaluatedModelMetrics"))
    FlywheelIterationProperties.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "TrainedModelArn"))
    FlywheelIterationProperties.add_member(:trained_model_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelModelEvaluationMetrics, name: "TrainedModelMetrics"))
    FlywheelIterationProperties.add_member(:evaluation_manifest_s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "EvaluationManifestS3Prefix"))
    FlywheelIterationProperties.type = Types::FlywheelIterationProperties
    FlywheelIterationPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelIterationProperties, name: "member")
    FlywheelIterationStatus.add_member(:training, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAINING", traits: {"smithy.api#enumValue" => "TRAINING"}))
    FlywheelIterationStatus.add_member(:evaluating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVALUATING", traits: {"smithy.api#enumValue" => "EVALUATING"}))
    FlywheelIterationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    FlywheelIterationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    FlywheelIterationStatus.add_member(:stop_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_REQUESTED", traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    FlywheelIterationStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    FlywheelModelEvaluationMetrics.add_member(:average_f1_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "AverageF1Score"))
    FlywheelModelEvaluationMetrics.add_member(:average_precision, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "AveragePrecision"))
    FlywheelModelEvaluationMetrics.add_member(:average_recall, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "AverageRecall"))
    FlywheelModelEvaluationMetrics.add_member(:average_accuracy, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "AverageAccuracy"))
    FlywheelModelEvaluationMetrics.type = Types::FlywheelModelEvaluationMetrics
    FlywheelProperties.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    FlywheelProperties.add_member(:active_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "ActiveModelArn"))
    FlywheelProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    FlywheelProperties.add_member(:task_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskConfig, name: "TaskConfig"))
    FlywheelProperties.add_member(:data_lake_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "DataLakeS3Uri"))
    FlywheelProperties.add_member(:data_security_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSecurityConfig, name: "DataSecurityConfig"))
    FlywheelProperties.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelStatus, name: "Status"))
    FlywheelProperties.add_member(:model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelType, name: "ModelType"))
    FlywheelProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    FlywheelProperties.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    FlywheelProperties.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    FlywheelProperties.add_member(:latest_flywheel_iteration, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelIterationId, name: "LatestFlywheelIteration"))
    FlywheelProperties.type = Types::FlywheelProperties
    FlywheelStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    FlywheelStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    FlywheelStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    FlywheelStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FlywheelStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    FlywheelSummary.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    FlywheelSummary.add_member(:active_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "ActiveModelArn"))
    FlywheelSummary.add_member(:data_lake_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "DataLakeS3Uri"))
    FlywheelSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelStatus, name: "Status"))
    FlywheelSummary.add_member(:model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelType, name: "ModelType"))
    FlywheelSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    FlywheelSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    FlywheelSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    FlywheelSummary.add_member(:latest_flywheel_iteration, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelIterationId, name: "LatestFlywheelIteration"))
    FlywheelSummary.type = Types::FlywheelSummary
    FlywheelSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelSummary, name: "member")
    Geometry.add_member(:bounding_box, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundingBox, name: "BoundingBox"))
    Geometry.add_member(:polygon, ::Smithy::Schema::Shapes::MemberShape.new(target: Polygon, name: "Polygon"))
    Geometry.type = Types::Geometry
    ImportModelRequest.add_member(:source_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "SourceModelArn", traits: {"smithy.api#required" => {}}))
    ImportModelRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArnName, name: "ModelName"))
    ImportModelRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, name: "VersionName"))
    ImportModelRequest.add_member(:model_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "ModelKmsKeyId"))
    ImportModelRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    ImportModelRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ImportModelRequest.type = Types::ImportModelRequest
    ImportModelResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "ModelArn"))
    ImportModelResponse.type = Types::ImportModelResponse
    InputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    InputDataConfig.add_member(:input_format, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFormat, name: "InputFormat"))
    InputDataConfig.add_member(:document_reader_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReaderConfig, name: "DocumentReaderConfig"))
    InputDataConfig.type = Types::InputDataConfig
    InputFormat.add_member(:one_doc_per_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_DOC_PER_FILE", traits: {"smithy.api#enumValue" => "ONE_DOC_PER_FILE"}))
    InputFormat.add_member(:one_doc_per_line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_DOC_PER_LINE", traits: {"smithy.api#enumValue" => "ONE_DOC_PER_LINE"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    InvalidFilterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidFilterException.type = Types::InvalidFilterException
    InvalidRequestDetail.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidRequestDetailReason, name: "Reason"))
    InvalidRequestDetail.type = Types::InvalidRequestDetail
    InvalidRequestDetailReason.add_member(:document_size_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_SIZE_EXCEEDED", traits: {"smithy.api#enumValue" => "DOCUMENT_SIZE_EXCEEDED"}))
    InvalidRequestDetailReason.add_member(:unsupported_doc_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_DOC_TYPE", traits: {"smithy.api#enumValue" => "UNSUPPORTED_DOC_TYPE"}))
    InvalidRequestDetailReason.add_member(:page_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "PAGE_LIMIT_EXCEEDED"}))
    InvalidRequestDetailReason.add_member(:textract_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXTRACT_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "TEXTRACT_ACCESS_DENIED"}))
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidRequestException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidRequestReason, name: "Reason"))
    InvalidRequestException.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidRequestDetail, name: "Detail"))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidRequestReason.add_member(:invalid_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_DOCUMENT", traits: {"smithy.api#enumValue" => "INVALID_DOCUMENT"}))
    JobNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    JobNotFoundException.type = Types::JobNotFoundException
    JobStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    JobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:stop_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_REQUESTED", traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    JobStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    KeyPhrase.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Score"))
    KeyPhrase.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text"))
    KeyPhrase.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "BeginOffset"))
    KeyPhrase.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EndOffset"))
    KeyPhrase.type = Types::KeyPhrase
    KeyPhrasesDetectionJobFilter.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    KeyPhrasesDetectionJobFilter.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    KeyPhrasesDetectionJobFilter.add_member(:submit_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeBefore"))
    KeyPhrasesDetectionJobFilter.add_member(:submit_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeAfter"))
    KeyPhrasesDetectionJobFilter.type = Types::KeyPhrasesDetectionJobFilter
    KeyPhrasesDetectionJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    KeyPhrasesDetectionJobProperties.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    KeyPhrasesDetectionJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    KeyPhrasesDetectionJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    KeyPhrasesDetectionJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    KeyPhrasesDetectionJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime"))
    KeyPhrasesDetectionJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    KeyPhrasesDetectionJobProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig"))
    KeyPhrasesDetectionJobProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig"))
    KeyPhrasesDetectionJobProperties.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    KeyPhrasesDetectionJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    KeyPhrasesDetectionJobProperties.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    KeyPhrasesDetectionJobProperties.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    KeyPhrasesDetectionJobProperties.type = Types::KeyPhrasesDetectionJobProperties
    KeyPhrasesDetectionJobPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPhrasesDetectionJobProperties, name: "member")
    KmsKeyValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    KmsKeyValidationException.type = Types::KmsKeyValidationException
    LabelsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LabelListItem, name: "member")
    LanguageCode.add_member(:en, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN", traits: {"smithy.api#enumValue" => "en"}))
    LanguageCode.add_member(:es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES", traits: {"smithy.api#enumValue" => "es"}))
    LanguageCode.add_member(:fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR", traits: {"smithy.api#enumValue" => "fr"}))
    LanguageCode.add_member(:de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DE", traits: {"smithy.api#enumValue" => "de"}))
    LanguageCode.add_member(:it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IT", traits: {"smithy.api#enumValue" => "it"}))
    LanguageCode.add_member(:pt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PT", traits: {"smithy.api#enumValue" => "pt"}))
    LanguageCode.add_member(:ar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AR", traits: {"smithy.api#enumValue" => "ar"}))
    LanguageCode.add_member(:hi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HI", traits: {"smithy.api#enumValue" => "hi"}))
    LanguageCode.add_member(:ja, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JA", traits: {"smithy.api#enumValue" => "ja"}))
    LanguageCode.add_member(:ko, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KO", traits: {"smithy.api#enumValue" => "ko"}))
    LanguageCode.add_member(:zh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZH", traits: {"smithy.api#enumValue" => "zh"}))
    LanguageCode.add_member(:zh_tw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZH_TW", traits: {"smithy.api#enumValue" => "zh-TW"}))
    ListDatasetsRequest.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    ListDatasetsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetFilter, name: "Filter"))
    ListDatasetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDatasetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:dataset_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetPropertiesList, name: "DatasetPropertiesList"))
    ListDatasetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListDocumentClassificationJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassificationJobFilter, name: "Filter"))
    ListDocumentClassificationJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDocumentClassificationJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListDocumentClassificationJobsRequest.type = Types::ListDocumentClassificationJobsRequest
    ListDocumentClassificationJobsResponse.add_member(:document_classification_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassificationJobPropertiesList, name: "DocumentClassificationJobPropertiesList"))
    ListDocumentClassificationJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDocumentClassificationJobsResponse.type = Types::ListDocumentClassificationJobsResponse
    ListDocumentClassifierSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDocumentClassifierSummariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListDocumentClassifierSummariesRequest.type = Types::ListDocumentClassifierSummariesRequest
    ListDocumentClassifierSummariesResponse.add_member(:document_classifier_summaries_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierSummariesList, name: "DocumentClassifierSummariesList"))
    ListDocumentClassifierSummariesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDocumentClassifierSummariesResponse.type = Types::ListDocumentClassifierSummariesResponse
    ListDocumentClassifiersRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierFilter, name: "Filter"))
    ListDocumentClassifiersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDocumentClassifiersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListDocumentClassifiersRequest.type = Types::ListDocumentClassifiersRequest
    ListDocumentClassifiersResponse.add_member(:document_classifier_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierPropertiesList, name: "DocumentClassifierPropertiesList"))
    ListDocumentClassifiersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDocumentClassifiersResponse.type = Types::ListDocumentClassifiersResponse
    ListDominantLanguageDetectionJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DominantLanguageDetectionJobFilter, name: "Filter"))
    ListDominantLanguageDetectionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDominantLanguageDetectionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListDominantLanguageDetectionJobsRequest.type = Types::ListDominantLanguageDetectionJobsRequest
    ListDominantLanguageDetectionJobsResponse.add_member(:dominant_language_detection_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DominantLanguageDetectionJobPropertiesList, name: "DominantLanguageDetectionJobPropertiesList"))
    ListDominantLanguageDetectionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDominantLanguageDetectionJobsResponse.type = Types::ListDominantLanguageDetectionJobsResponse
    ListEndpointsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointFilter, name: "Filter"))
    ListEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListEndpointsRequest.type = Types::ListEndpointsRequest
    ListEndpointsResponse.add_member(:endpoint_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointPropertiesList, name: "EndpointPropertiesList"))
    ListEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListEndpointsResponse.type = Types::ListEndpointsResponse
    ListEntitiesDetectionJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitiesDetectionJobFilter, name: "Filter"))
    ListEntitiesDetectionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListEntitiesDetectionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListEntitiesDetectionJobsRequest.type = Types::ListEntitiesDetectionJobsRequest
    ListEntitiesDetectionJobsResponse.add_member(:entities_detection_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitiesDetectionJobPropertiesList, name: "EntitiesDetectionJobPropertiesList"))
    ListEntitiesDetectionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListEntitiesDetectionJobsResponse.type = Types::ListEntitiesDetectionJobsResponse
    ListEntityRecognizerSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListEntityRecognizerSummariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListEntityRecognizerSummariesRequest.type = Types::ListEntityRecognizerSummariesRequest
    ListEntityRecognizerSummariesResponse.add_member(:entity_recognizer_summaries_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerSummariesList, name: "EntityRecognizerSummariesList"))
    ListEntityRecognizerSummariesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListEntityRecognizerSummariesResponse.type = Types::ListEntityRecognizerSummariesResponse
    ListEntityRecognizersRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerFilter, name: "Filter"))
    ListEntityRecognizersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListEntityRecognizersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListEntityRecognizersRequest.type = Types::ListEntityRecognizersRequest
    ListEntityRecognizersResponse.add_member(:entity_recognizer_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerPropertiesList, name: "EntityRecognizerPropertiesList"))
    ListEntityRecognizersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListEntityRecognizersResponse.type = Types::ListEntityRecognizersResponse
    ListEventsDetectionJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EventsDetectionJobFilter, name: "Filter"))
    ListEventsDetectionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListEventsDetectionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListEventsDetectionJobsRequest.type = Types::ListEventsDetectionJobsRequest
    ListEventsDetectionJobsResponse.add_member(:events_detection_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventsDetectionJobPropertiesList, name: "EventsDetectionJobPropertiesList"))
    ListEventsDetectionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListEventsDetectionJobsResponse.type = Types::ListEventsDetectionJobsResponse
    ListFlywheelIterationHistoryRequest.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn", traits: {"smithy.api#required" => {}}))
    ListFlywheelIterationHistoryRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelIterationFilter, name: "Filter"))
    ListFlywheelIterationHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListFlywheelIterationHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListFlywheelIterationHistoryRequest.type = Types::ListFlywheelIterationHistoryRequest
    ListFlywheelIterationHistoryResponse.add_member(:flywheel_iteration_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelIterationPropertiesList, name: "FlywheelIterationPropertiesList"))
    ListFlywheelIterationHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListFlywheelIterationHistoryResponse.type = Types::ListFlywheelIterationHistoryResponse
    ListFlywheelsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelFilter, name: "Filter"))
    ListFlywheelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListFlywheelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListFlywheelsRequest.type = Types::ListFlywheelsRequest
    ListFlywheelsResponse.add_member(:flywheel_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelSummaryList, name: "FlywheelSummaryList"))
    ListFlywheelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListFlywheelsResponse.type = Types::ListFlywheelsResponse
    ListKeyPhrasesDetectionJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPhrasesDetectionJobFilter, name: "Filter"))
    ListKeyPhrasesDetectionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListKeyPhrasesDetectionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListKeyPhrasesDetectionJobsRequest.type = Types::ListKeyPhrasesDetectionJobsRequest
    ListKeyPhrasesDetectionJobsResponse.add_member(:key_phrases_detection_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPhrasesDetectionJobPropertiesList, name: "KeyPhrasesDetectionJobPropertiesList"))
    ListKeyPhrasesDetectionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListKeyPhrasesDetectionJobsResponse.type = Types::ListKeyPhrasesDetectionJobsResponse
    ListOfBlockReferences.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BlockReference, name: "member")
    ListOfBlocks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Block, name: "member")
    ListOfChildBlocks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChildBlock, name: "member")
    ListOfClasses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClass, name: "member")
    ListOfDescriptiveMentionIndices.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "member")
    ListOfDetectDominantLanguageResult.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDetectDominantLanguageItemResult, name: "member")
    ListOfDetectEntitiesResult.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDetectEntitiesItemResult, name: "member")
    ListOfDetectKeyPhrasesResult.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDetectKeyPhrasesItemResult, name: "member")
    ListOfDetectSentimentResult.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDetectSentimentItemResult, name: "member")
    ListOfDetectSyntaxResult.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDetectSyntaxItemResult, name: "member")
    ListOfDetectTargetedSentimentResult.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDetectTargetedSentimentItemResult, name: "member")
    ListOfDocumentReadFeatureTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReadFeatureTypes, name: "member")
    ListOfDocumentType.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentTypeListItem, name: "member")
    ListOfDominantLanguages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DominantLanguage, name: "member")
    ListOfEntities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Entity, name: "member")
    ListOfEntityLabels.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityLabel, name: "member")
    ListOfErrors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorsListItem, name: "member")
    ListOfExtractedCharacters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExtractedCharactersListItem, name: "member")
    ListOfKeyPhrases.member = ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPhrase, name: "member")
    ListOfLabels.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentLabel, name: "member")
    ListOfMentions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetedSentimentMention, name: "member")
    ListOfPiiEntities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PiiEntity, name: "member")
    ListOfPiiEntityTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PiiEntityType, name: "member")
    ListOfRelationships.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipsListItem, name: "member")
    ListOfSyntaxTokens.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SyntaxToken, name: "member")
    ListOfTargetedSentimentEntities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetedSentimentEntity, name: "member")
    ListOfTextSegments.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TextSegment, name: "member")
    ListOfToxicContent.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ToxicContent, name: "member")
    ListOfToxicLabels.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ToxicLabels, name: "member")
    ListOfWarnings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WarningsListItem, name: "member")
    ListPiiEntitiesDetectionJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiEntitiesDetectionJobFilter, name: "Filter"))
    ListPiiEntitiesDetectionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPiiEntitiesDetectionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListPiiEntitiesDetectionJobsRequest.type = Types::ListPiiEntitiesDetectionJobsRequest
    ListPiiEntitiesDetectionJobsResponse.add_member(:pii_entities_detection_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiEntitiesDetectionJobPropertiesList, name: "PiiEntitiesDetectionJobPropertiesList"))
    ListPiiEntitiesDetectionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPiiEntitiesDetectionJobsResponse.type = Types::ListPiiEntitiesDetectionJobsResponse
    ListSentimentDetectionJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentDetectionJobFilter, name: "Filter"))
    ListSentimentDetectionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListSentimentDetectionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListSentimentDetectionJobsRequest.type = Types::ListSentimentDetectionJobsRequest
    ListSentimentDetectionJobsResponse.add_member(:sentiment_detection_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentDetectionJobPropertiesList, name: "SentimentDetectionJobPropertiesList"))
    ListSentimentDetectionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListSentimentDetectionJobsResponse.type = Types::ListSentimentDetectionJobsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "ResourceArn"))
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTargetedSentimentDetectionJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetedSentimentDetectionJobFilter, name: "Filter"))
    ListTargetedSentimentDetectionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTargetedSentimentDetectionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListTargetedSentimentDetectionJobsRequest.type = Types::ListTargetedSentimentDetectionJobsRequest
    ListTargetedSentimentDetectionJobsResponse.add_member(:targeted_sentiment_detection_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetedSentimentDetectionJobPropertiesList, name: "TargetedSentimentDetectionJobPropertiesList"))
    ListTargetedSentimentDetectionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTargetedSentimentDetectionJobsResponse.type = Types::ListTargetedSentimentDetectionJobsResponse
    ListTopicsDetectionJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicsDetectionJobFilter, name: "Filter"))
    ListTopicsDetectionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTopicsDetectionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults"))
    ListTopicsDetectionJobsRequest.type = Types::ListTopicsDetectionJobsRequest
    ListTopicsDetectionJobsResponse.add_member(:topics_detection_job_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicsDetectionJobPropertiesList, name: "TopicsDetectionJobPropertiesList"))
    ListTopicsDetectionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTopicsDetectionJobsResponse.type = Types::ListTopicsDetectionJobsResponse
    MentionSentiment.add_member(:sentiment, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentType, name: "Sentiment"))
    MentionSentiment.add_member(:sentiment_score, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentScore, name: "SentimentScore"))
    MentionSentiment.type = Types::MentionSentiment
    ModelStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    ModelStatus.add_member(:training, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAINING", traits: {"smithy.api#enumValue" => "TRAINING"}))
    ModelStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ModelStatus.add_member(:stop_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_REQUESTED", traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    ModelStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    ModelStatus.add_member(:in_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_ERROR", traits: {"smithy.api#enumValue" => "IN_ERROR"}))
    ModelStatus.add_member(:trained, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAINED", traits: {"smithy.api#enumValue" => "TRAINED"}))
    ModelStatus.add_member(:trained_with_warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAINED_WITH_WARNING", traits: {"smithy.api#enumValue" => "TRAINED_WITH_WARNING"}))
    ModelType.add_member(:document_classifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_CLASSIFIER", traits: {"smithy.api#enumValue" => "DOCUMENT_CLASSIFIER"}))
    ModelType.add_member(:entity_recognizer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTITY_RECOGNIZER", traits: {"smithy.api#enumValue" => "ENTITY_RECOGNIZER"}))
    OutputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    OutputDataConfig.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    OutputDataConfig.type = Types::OutputDataConfig
    PageBasedErrorCode.add_member(:textract_bad_page, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXTRACT_BAD_PAGE", traits: {"smithy.api#enumValue" => "TEXTRACT_BAD_PAGE"}))
    PageBasedErrorCode.add_member(:textract_provisioned_throughput_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED", traits: {"smithy.api#enumValue" => "TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED"}))
    PageBasedErrorCode.add_member(:page_characters_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGE_CHARACTERS_EXCEEDED", traits: {"smithy.api#enumValue" => "PAGE_CHARACTERS_EXCEEDED"}))
    PageBasedErrorCode.add_member(:page_size_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGE_SIZE_EXCEEDED", traits: {"smithy.api#enumValue" => "PAGE_SIZE_EXCEEDED"}))
    PageBasedErrorCode.add_member(:internal_server_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    PageBasedWarningCode.add_member(:inferencing_plaintext_with_native_trained_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFERENCING_PLAINTEXT_WITH_NATIVE_TRAINED_MODEL", traits: {"smithy.api#enumValue" => "INFERENCING_PLAINTEXT_WITH_NATIVE_TRAINED_MODEL"}))
    PageBasedWarningCode.add_member(:inferencing_native_document_with_plaintext_trained_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFERENCING_NATIVE_DOCUMENT_WITH_PLAINTEXT_TRAINED_MODEL", traits: {"smithy.api#enumValue" => "INFERENCING_NATIVE_DOCUMENT_WITH_PLAINTEXT_TRAINED_MODEL"}))
    PartOfSpeechTag.add_member(:tag, ::Smithy::Schema::Shapes::MemberShape.new(target: PartOfSpeechTagType, name: "Tag"))
    PartOfSpeechTag.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Score"))
    PartOfSpeechTag.type = Types::PartOfSpeechTag
    PartOfSpeechTagType.add_member(:adj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADJ", traits: {"smithy.api#enumValue" => "ADJ"}))
    PartOfSpeechTagType.add_member(:adp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADP", traits: {"smithy.api#enumValue" => "ADP"}))
    PartOfSpeechTagType.add_member(:adv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADV", traits: {"smithy.api#enumValue" => "ADV"}))
    PartOfSpeechTagType.add_member(:aux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUX", traits: {"smithy.api#enumValue" => "AUX"}))
    PartOfSpeechTagType.add_member(:conj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONJ", traits: {"smithy.api#enumValue" => "CONJ"}))
    PartOfSpeechTagType.add_member(:cconj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CCONJ", traits: {"smithy.api#enumValue" => "CCONJ"}))
    PartOfSpeechTagType.add_member(:det, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DET", traits: {"smithy.api#enumValue" => "DET"}))
    PartOfSpeechTagType.add_member(:intj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTJ", traits: {"smithy.api#enumValue" => "INTJ"}))
    PartOfSpeechTagType.add_member(:noun, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOUN", traits: {"smithy.api#enumValue" => "NOUN"}))
    PartOfSpeechTagType.add_member(:num, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUM", traits: {"smithy.api#enumValue" => "NUM"}))
    PartOfSpeechTagType.add_member(:o, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "O", traits: {"smithy.api#enumValue" => "O"}))
    PartOfSpeechTagType.add_member(:part, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PART", traits: {"smithy.api#enumValue" => "PART"}))
    PartOfSpeechTagType.add_member(:pron, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRON", traits: {"smithy.api#enumValue" => "PRON"}))
    PartOfSpeechTagType.add_member(:propn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROPN", traits: {"smithy.api#enumValue" => "PROPN"}))
    PartOfSpeechTagType.add_member(:punct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUNCT", traits: {"smithy.api#enumValue" => "PUNCT"}))
    PartOfSpeechTagType.add_member(:sconj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCONJ", traits: {"smithy.api#enumValue" => "SCONJ"}))
    PartOfSpeechTagType.add_member(:sym, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYM", traits: {"smithy.api#enumValue" => "SYM"}))
    PartOfSpeechTagType.add_member(:verb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERB", traits: {"smithy.api#enumValue" => "VERB"}))
    PiiEntitiesDetectionJobFilter.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    PiiEntitiesDetectionJobFilter.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    PiiEntitiesDetectionJobFilter.add_member(:submit_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeBefore"))
    PiiEntitiesDetectionJobFilter.add_member(:submit_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeAfter"))
    PiiEntitiesDetectionJobFilter.type = Types::PiiEntitiesDetectionJobFilter
    PiiEntitiesDetectionJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    PiiEntitiesDetectionJobProperties.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    PiiEntitiesDetectionJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    PiiEntitiesDetectionJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    PiiEntitiesDetectionJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    PiiEntitiesDetectionJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime"))
    PiiEntitiesDetectionJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    PiiEntitiesDetectionJobProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig"))
    PiiEntitiesDetectionJobProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiOutputDataConfig, name: "OutputDataConfig"))
    PiiEntitiesDetectionJobProperties.add_member(:redaction_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RedactionConfig, name: "RedactionConfig"))
    PiiEntitiesDetectionJobProperties.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    PiiEntitiesDetectionJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    PiiEntitiesDetectionJobProperties.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiEntitiesDetectionMode, name: "Mode"))
    PiiEntitiesDetectionJobProperties.type = Types::PiiEntitiesDetectionJobProperties
    PiiEntitiesDetectionJobPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PiiEntitiesDetectionJobProperties, name: "member")
    PiiEntitiesDetectionMaskMode.add_member(:mask, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK", traits: {"smithy.api#enumValue" => "MASK"}))
    PiiEntitiesDetectionMaskMode.add_member(:replace_with_pii_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE_WITH_PII_ENTITY_TYPE", traits: {"smithy.api#enumValue" => "REPLACE_WITH_PII_ENTITY_TYPE"}))
    PiiEntitiesDetectionMode.add_member(:only_redaction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONLY_REDACTION", traits: {"smithy.api#enumValue" => "ONLY_REDACTION"}))
    PiiEntitiesDetectionMode.add_member(:only_offsets, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONLY_OFFSETS", traits: {"smithy.api#enumValue" => "ONLY_OFFSETS"}))
    PiiEntity.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Score"))
    PiiEntity.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiEntityType, name: "Type"))
    PiiEntity.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "BeginOffset"))
    PiiEntity.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EndOffset"))
    PiiEntity.type = Types::PiiEntity
    PiiEntityType.add_member(:bank_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BANK_ACCOUNT_NUMBER", traits: {"smithy.api#enumValue" => "BANK_ACCOUNT_NUMBER"}))
    PiiEntityType.add_member(:bank_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BANK_ROUTING", traits: {"smithy.api#enumValue" => "BANK_ROUTING"}))
    PiiEntityType.add_member(:credit_debit_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_DEBIT_NUMBER", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_NUMBER"}))
    PiiEntityType.add_member(:credit_debit_cvv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_DEBIT_CVV", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CVV"}))
    PiiEntityType.add_member(:credit_debit_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_DEBIT_EXPIRY", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_EXPIRY"}))
    PiiEntityType.add_member(:pin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PIN", traits: {"smithy.api#enumValue" => "PIN"}))
    PiiEntityType.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "EMAIL"}))
    PiiEntityType.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDRESS", traits: {"smithy.api#enumValue" => "ADDRESS"}))
    PiiEntityType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    PiiEntityType.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHONE", traits: {"smithy.api#enumValue" => "PHONE"}))
    PiiEntityType.add_member(:ssn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSN", traits: {"smithy.api#enumValue" => "SSN"}))
    PiiEntityType.add_member(:date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATE_TIME", traits: {"smithy.api#enumValue" => "DATE_TIME"}))
    PiiEntityType.add_member(:passport_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSPORT_NUMBER", traits: {"smithy.api#enumValue" => "PASSPORT_NUMBER"}))
    PiiEntityType.add_member(:driver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRIVER_ID", traits: {"smithy.api#enumValue" => "DRIVER_ID"}))
    PiiEntityType.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL", traits: {"smithy.api#enumValue" => "URL"}))
    PiiEntityType.add_member(:age, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGE", traits: {"smithy.api#enumValue" => "AGE"}))
    PiiEntityType.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USERNAME", traits: {"smithy.api#enumValue" => "USERNAME"}))
    PiiEntityType.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSWORD", traits: {"smithy.api#enumValue" => "PASSWORD"}))
    PiiEntityType.add_member(:aws_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_ACCESS_KEY", traits: {"smithy.api#enumValue" => "AWS_ACCESS_KEY"}))
    PiiEntityType.add_member(:aws_secret_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SECRET_KEY", traits: {"smithy.api#enumValue" => "AWS_SECRET_KEY"}))
    PiiEntityType.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_ADDRESS", traits: {"smithy.api#enumValue" => "IP_ADDRESS"}))
    PiiEntityType.add_member(:mac_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAC_ADDRESS", traits: {"smithy.api#enumValue" => "MAC_ADDRESS"}))
    PiiEntityType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    PiiEntityType.add_member(:license_plate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_PLATE", traits: {"smithy.api#enumValue" => "LICENSE_PLATE"}))
    PiiEntityType.add_member(:vehicle_identification_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VEHICLE_IDENTIFICATION_NUMBER", traits: {"smithy.api#enumValue" => "VEHICLE_IDENTIFICATION_NUMBER"}))
    PiiEntityType.add_member(:uk_national_insurance_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UK_NATIONAL_INSURANCE_NUMBER", traits: {"smithy.api#enumValue" => "UK_NATIONAL_INSURANCE_NUMBER"}))
    PiiEntityType.add_member(:ca_social_insurance_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_SOCIAL_INSURANCE_NUMBER", traits: {"smithy.api#enumValue" => "CA_SOCIAL_INSURANCE_NUMBER"}))
    PiiEntityType.add_member(:us_individual_tax_identification_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", traits: {"smithy.api#enumValue" => "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"}))
    PiiEntityType.add_member(:uk_unique_taxpayer_reference_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", traits: {"smithy.api#enumValue" => "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"}))
    PiiEntityType.add_member(:in_permanent_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PERMANENT_ACCOUNT_NUMBER", traits: {"smithy.api#enumValue" => "IN_PERMANENT_ACCOUNT_NUMBER"}))
    PiiEntityType.add_member(:in_nrega, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_NREGA", traits: {"smithy.api#enumValue" => "IN_NREGA"}))
    PiiEntityType.add_member(:international_bank_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNATIONAL_BANK_ACCOUNT_NUMBER", traits: {"smithy.api#enumValue" => "INTERNATIONAL_BANK_ACCOUNT_NUMBER"}))
    PiiEntityType.add_member(:swift_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SWIFT_CODE", traits: {"smithy.api#enumValue" => "SWIFT_CODE"}))
    PiiEntityType.add_member(:uk_national_health_service_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UK_NATIONAL_HEALTH_SERVICE_NUMBER", traits: {"smithy.api#enumValue" => "UK_NATIONAL_HEALTH_SERVICE_NUMBER"}))
    PiiEntityType.add_member(:ca_health_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_HEALTH_NUMBER", traits: {"smithy.api#enumValue" => "CA_HEALTH_NUMBER"}))
    PiiEntityType.add_member(:in_aadhaar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_AADHAAR", traits: {"smithy.api#enumValue" => "IN_AADHAAR"}))
    PiiEntityType.add_member(:in_voter_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_VOTER_NUMBER", traits: {"smithy.api#enumValue" => "IN_VOTER_NUMBER"}))
    PiiOutputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "S3Uri", traits: {"smithy.api#required" => {}}))
    PiiOutputDataConfig.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    PiiOutputDataConfig.type = Types::PiiOutputDataConfig
    Point.add_member(:x, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "X"))
    Point.add_member(:y, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Y"))
    Point.type = Types::Point
    Polygon.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Point, name: "member")
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "ResourcePolicy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "PolicyRevisionId"))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "PolicyRevisionId"))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    RedactionConfig.add_member(:pii_entity_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPiiEntityTypes, name: "PiiEntityTypes"))
    RedactionConfig.add_member(:mask_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiEntitiesDetectionMaskMode, name: "MaskMode"))
    RedactionConfig.add_member(:mask_character, ::Smithy::Schema::Shapes::MemberShape.new(target: MaskCharacter, name: "MaskCharacter"))
    RedactionConfig.type = Types::RedactionConfig
    RelationshipType.add_member(:child, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHILD", traits: {"smithy.api#enumValue" => "CHILD"}))
    RelationshipsListItem.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Ids"))
    RelationshipsListItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipType, name: "Type"))
    RelationshipsListItem.type = Types::RelationshipsListItem
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceUnavailableException.type = Types::ResourceUnavailableException
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member")
    SentimentDetectionJobFilter.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    SentimentDetectionJobFilter.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    SentimentDetectionJobFilter.add_member(:submit_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeBefore"))
    SentimentDetectionJobFilter.add_member(:submit_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeAfter"))
    SentimentDetectionJobFilter.type = Types::SentimentDetectionJobFilter
    SentimentDetectionJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    SentimentDetectionJobProperties.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    SentimentDetectionJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    SentimentDetectionJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    SentimentDetectionJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    SentimentDetectionJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime"))
    SentimentDetectionJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    SentimentDetectionJobProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig"))
    SentimentDetectionJobProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig"))
    SentimentDetectionJobProperties.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    SentimentDetectionJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    SentimentDetectionJobProperties.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    SentimentDetectionJobProperties.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    SentimentDetectionJobProperties.type = Types::SentimentDetectionJobProperties
    SentimentDetectionJobPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentDetectionJobProperties, name: "member")
    SentimentScore.add_member(:positive, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Positive"))
    SentimentScore.add_member(:negative, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Negative"))
    SentimentScore.add_member(:neutral, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Neutral"))
    SentimentScore.add_member(:mixed, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Mixed"))
    SentimentScore.type = Types::SentimentScore
    SentimentType.add_member(:positive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POSITIVE", traits: {"smithy.api#enumValue" => "POSITIVE"}))
    SentimentType.add_member(:negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEGATIVE", traits: {"smithy.api#enumValue" => "NEGATIVE"}))
    SentimentType.add_member(:neutral, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEUTRAL", traits: {"smithy.api#enumValue" => "NEUTRAL"}))
    SentimentType.add_member(:mixed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIXED", traits: {"smithy.api#enumValue" => "MIXED"}))
    Split.add_member(:train, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAIN", traits: {"smithy.api#enumValue" => "TRAIN"}))
    Split.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST", traits: {"smithy.api#enumValue" => "TEST"}))
    StartDocumentClassificationJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    StartDocumentClassificationJobRequest.add_member(:document_classifier_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierArn, name: "DocumentClassifierArn"))
    StartDocumentClassificationJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartDocumentClassificationJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartDocumentClassificationJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartDocumentClassificationJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartDocumentClassificationJobRequest.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    StartDocumentClassificationJobRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    StartDocumentClassificationJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartDocumentClassificationJobRequest.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    StartDocumentClassificationJobRequest.type = Types::StartDocumentClassificationJobRequest
    StartDocumentClassificationJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StartDocumentClassificationJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    StartDocumentClassificationJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StartDocumentClassificationJobResponse.add_member(:document_classifier_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierArn, name: "DocumentClassifierArn"))
    StartDocumentClassificationJobResponse.type = Types::StartDocumentClassificationJobResponse
    StartDominantLanguageDetectionJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartDominantLanguageDetectionJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartDominantLanguageDetectionJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartDominantLanguageDetectionJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    StartDominantLanguageDetectionJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartDominantLanguageDetectionJobRequest.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    StartDominantLanguageDetectionJobRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    StartDominantLanguageDetectionJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartDominantLanguageDetectionJobRequest.type = Types::StartDominantLanguageDetectionJobRequest
    StartDominantLanguageDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StartDominantLanguageDetectionJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    StartDominantLanguageDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StartDominantLanguageDetectionJobResponse.type = Types::StartDominantLanguageDetectionJobResponse
    StartEntitiesDetectionJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartEntitiesDetectionJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartEntitiesDetectionJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartEntitiesDetectionJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    StartEntitiesDetectionJobRequest.add_member(:entity_recognizer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerArn, name: "EntityRecognizerArn"))
    StartEntitiesDetectionJobRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    StartEntitiesDetectionJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartEntitiesDetectionJobRequest.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    StartEntitiesDetectionJobRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    StartEntitiesDetectionJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartEntitiesDetectionJobRequest.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    StartEntitiesDetectionJobRequest.type = Types::StartEntitiesDetectionJobRequest
    StartEntitiesDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StartEntitiesDetectionJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    StartEntitiesDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StartEntitiesDetectionJobResponse.add_member(:entity_recognizer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerArn, name: "EntityRecognizerArn"))
    StartEntitiesDetectionJobResponse.type = Types::StartEntitiesDetectionJobResponse
    StartEventsDetectionJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartEventsDetectionJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartEventsDetectionJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartEventsDetectionJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    StartEventsDetectionJobRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    StartEventsDetectionJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartEventsDetectionJobRequest.add_member(:target_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetEventTypes, name: "TargetEventTypes", traits: {"smithy.api#required" => {}}))
    StartEventsDetectionJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartEventsDetectionJobRequest.type = Types::StartEventsDetectionJobRequest
    StartEventsDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StartEventsDetectionJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    StartEventsDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StartEventsDetectionJobResponse.type = Types::StartEventsDetectionJobResponse
    StartFlywheelIterationRequest.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn", traits: {"smithy.api#required" => {}}))
    StartFlywheelIterationRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken"))
    StartFlywheelIterationRequest.type = Types::StartFlywheelIterationRequest
    StartFlywheelIterationResponse.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    StartFlywheelIterationResponse.add_member(:flywheel_iteration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelIterationId, name: "FlywheelIterationId"))
    StartFlywheelIterationResponse.type = Types::StartFlywheelIterationResponse
    StartKeyPhrasesDetectionJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartKeyPhrasesDetectionJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartKeyPhrasesDetectionJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartKeyPhrasesDetectionJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    StartKeyPhrasesDetectionJobRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    StartKeyPhrasesDetectionJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartKeyPhrasesDetectionJobRequest.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    StartKeyPhrasesDetectionJobRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    StartKeyPhrasesDetectionJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartKeyPhrasesDetectionJobRequest.type = Types::StartKeyPhrasesDetectionJobRequest
    StartKeyPhrasesDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StartKeyPhrasesDetectionJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    StartKeyPhrasesDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StartKeyPhrasesDetectionJobResponse.type = Types::StartKeyPhrasesDetectionJobResponse
    StartPiiEntitiesDetectionJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartPiiEntitiesDetectionJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartPiiEntitiesDetectionJobRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiEntitiesDetectionMode, name: "Mode", traits: {"smithy.api#required" => {}}))
    StartPiiEntitiesDetectionJobRequest.add_member(:redaction_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RedactionConfig, name: "RedactionConfig"))
    StartPiiEntitiesDetectionJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartPiiEntitiesDetectionJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    StartPiiEntitiesDetectionJobRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    StartPiiEntitiesDetectionJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartPiiEntitiesDetectionJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartPiiEntitiesDetectionJobRequest.type = Types::StartPiiEntitiesDetectionJobRequest
    StartPiiEntitiesDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StartPiiEntitiesDetectionJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    StartPiiEntitiesDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StartPiiEntitiesDetectionJobResponse.type = Types::StartPiiEntitiesDetectionJobResponse
    StartSentimentDetectionJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartSentimentDetectionJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartSentimentDetectionJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartSentimentDetectionJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    StartSentimentDetectionJobRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    StartSentimentDetectionJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartSentimentDetectionJobRequest.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    StartSentimentDetectionJobRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    StartSentimentDetectionJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartSentimentDetectionJobRequest.type = Types::StartSentimentDetectionJobRequest
    StartSentimentDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StartSentimentDetectionJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    StartSentimentDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StartSentimentDetectionJobResponse.type = Types::StartSentimentDetectionJobResponse
    StartTargetedSentimentDetectionJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartTargetedSentimentDetectionJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartTargetedSentimentDetectionJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartTargetedSentimentDetectionJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    StartTargetedSentimentDetectionJobRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    StartTargetedSentimentDetectionJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartTargetedSentimentDetectionJobRequest.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    StartTargetedSentimentDetectionJobRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    StartTargetedSentimentDetectionJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartTargetedSentimentDetectionJobRequest.type = Types::StartTargetedSentimentDetectionJobRequest
    StartTargetedSentimentDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StartTargetedSentimentDetectionJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    StartTargetedSentimentDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StartTargetedSentimentDetectionJobResponse.type = Types::StartTargetedSentimentDetectionJobResponse
    StartTopicsDetectionJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig", traits: {"smithy.api#required" => {}}))
    StartTopicsDetectionJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig", traits: {"smithy.api#required" => {}}))
    StartTopicsDetectionJobRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartTopicsDetectionJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    StartTopicsDetectionJobRequest.add_member(:number_of_topics, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfTopicsInteger, name: "NumberOfTopics"))
    StartTopicsDetectionJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenString, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartTopicsDetectionJobRequest.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    StartTopicsDetectionJobRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    StartTopicsDetectionJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartTopicsDetectionJobRequest.type = Types::StartTopicsDetectionJobRequest
    StartTopicsDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StartTopicsDetectionJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    StartTopicsDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StartTopicsDetectionJobResponse.type = Types::StartTopicsDetectionJobResponse
    StopDominantLanguageDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    StopDominantLanguageDetectionJobRequest.type = Types::StopDominantLanguageDetectionJobRequest
    StopDominantLanguageDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StopDominantLanguageDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StopDominantLanguageDetectionJobResponse.type = Types::StopDominantLanguageDetectionJobResponse
    StopEntitiesDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    StopEntitiesDetectionJobRequest.type = Types::StopEntitiesDetectionJobRequest
    StopEntitiesDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StopEntitiesDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StopEntitiesDetectionJobResponse.type = Types::StopEntitiesDetectionJobResponse
    StopEventsDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    StopEventsDetectionJobRequest.type = Types::StopEventsDetectionJobRequest
    StopEventsDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StopEventsDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StopEventsDetectionJobResponse.type = Types::StopEventsDetectionJobResponse
    StopKeyPhrasesDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    StopKeyPhrasesDetectionJobRequest.type = Types::StopKeyPhrasesDetectionJobRequest
    StopKeyPhrasesDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StopKeyPhrasesDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StopKeyPhrasesDetectionJobResponse.type = Types::StopKeyPhrasesDetectionJobResponse
    StopPiiEntitiesDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    StopPiiEntitiesDetectionJobRequest.type = Types::StopPiiEntitiesDetectionJobRequest
    StopPiiEntitiesDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StopPiiEntitiesDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StopPiiEntitiesDetectionJobResponse.type = Types::StopPiiEntitiesDetectionJobResponse
    StopSentimentDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    StopSentimentDetectionJobRequest.type = Types::StopSentimentDetectionJobRequest
    StopSentimentDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StopSentimentDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StopSentimentDetectionJobResponse.type = Types::StopSentimentDetectionJobResponse
    StopTargetedSentimentDetectionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    StopTargetedSentimentDetectionJobRequest.type = Types::StopTargetedSentimentDetectionJobRequest
    StopTargetedSentimentDetectionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StopTargetedSentimentDetectionJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    StopTargetedSentimentDetectionJobResponse.type = Types::StopTargetedSentimentDetectionJobResponse
    StopTrainingDocumentClassifierRequest.add_member(:document_classifier_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassifierArn, name: "DocumentClassifierArn", traits: {"smithy.api#required" => {}}))
    StopTrainingDocumentClassifierRequest.type = Types::StopTrainingDocumentClassifierRequest
    StopTrainingDocumentClassifierResponse.type = Types::StopTrainingDocumentClassifierResponse
    StopTrainingEntityRecognizerRequest.add_member(:entity_recognizer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognizerArn, name: "EntityRecognizerArn", traits: {"smithy.api#required" => {}}))
    StopTrainingEntityRecognizerRequest.type = Types::StopTrainingEntityRecognizerRequest
    StopTrainingEntityRecognizerResponse.type = Types::StopTrainingEntityRecognizerResponse
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    Subnets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member")
    SyntaxLanguageCode.add_member(:en, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN", traits: {"smithy.api#enumValue" => "en"}))
    SyntaxLanguageCode.add_member(:es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES", traits: {"smithy.api#enumValue" => "es"}))
    SyntaxLanguageCode.add_member(:fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR", traits: {"smithy.api#enumValue" => "fr"}))
    SyntaxLanguageCode.add_member(:de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DE", traits: {"smithy.api#enumValue" => "de"}))
    SyntaxLanguageCode.add_member(:it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IT", traits: {"smithy.api#enumValue" => "it"}))
    SyntaxLanguageCode.add_member(:pt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PT", traits: {"smithy.api#enumValue" => "pt"}))
    SyntaxToken.add_member(:token_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TokenId"))
    SyntaxToken.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text"))
    SyntaxToken.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "BeginOffset"))
    SyntaxToken.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EndOffset"))
    SyntaxToken.add_member(:part_of_speech, ::Smithy::Schema::Shapes::MemberShape.new(target: PartOfSpeechTag, name: "PartOfSpeech"))
    SyntaxToken.type = Types::SyntaxToken
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetEventTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeString, name: "member")
    TargetedSentimentDetectionJobFilter.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    TargetedSentimentDetectionJobFilter.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    TargetedSentimentDetectionJobFilter.add_member(:submit_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeBefore"))
    TargetedSentimentDetectionJobFilter.add_member(:submit_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeAfter"))
    TargetedSentimentDetectionJobFilter.type = Types::TargetedSentimentDetectionJobFilter
    TargetedSentimentDetectionJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    TargetedSentimentDetectionJobProperties.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    TargetedSentimentDetectionJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    TargetedSentimentDetectionJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    TargetedSentimentDetectionJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    TargetedSentimentDetectionJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime"))
    TargetedSentimentDetectionJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    TargetedSentimentDetectionJobProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig"))
    TargetedSentimentDetectionJobProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig"))
    TargetedSentimentDetectionJobProperties.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    TargetedSentimentDetectionJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    TargetedSentimentDetectionJobProperties.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    TargetedSentimentDetectionJobProperties.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    TargetedSentimentDetectionJobProperties.type = Types::TargetedSentimentDetectionJobProperties
    TargetedSentimentDetectionJobPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetedSentimentDetectionJobProperties, name: "member")
    TargetedSentimentEntity.add_member(:descriptive_mention_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDescriptiveMentionIndices, name: "DescriptiveMentionIndex"))
    TargetedSentimentEntity.add_member(:mentions, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfMentions, name: "Mentions"))
    TargetedSentimentEntity.type = Types::TargetedSentimentEntity
    TargetedSentimentEntityType.add_member(:person, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERSON", traits: {"smithy.api#enumValue" => "PERSON"}))
    TargetedSentimentEntityType.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCATION", traits: {"smithy.api#enumValue" => "LOCATION"}))
    TargetedSentimentEntityType.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    TargetedSentimentEntityType.add_member(:facility, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FACILITY", traits: {"smithy.api#enumValue" => "FACILITY"}))
    TargetedSentimentEntityType.add_member(:brand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BRAND", traits: {"smithy.api#enumValue" => "BRAND"}))
    TargetedSentimentEntityType.add_member(:commercial_item, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMERCIAL_ITEM", traits: {"smithy.api#enumValue" => "COMMERCIAL_ITEM"}))
    TargetedSentimentEntityType.add_member(:movie, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MOVIE", traits: {"smithy.api#enumValue" => "MOVIE"}))
    TargetedSentimentEntityType.add_member(:music, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MUSIC", traits: {"smithy.api#enumValue" => "MUSIC"}))
    TargetedSentimentEntityType.add_member(:book, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOK", traits: {"smithy.api#enumValue" => "BOOK"}))
    TargetedSentimentEntityType.add_member(:software, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOFTWARE", traits: {"smithy.api#enumValue" => "SOFTWARE"}))
    TargetedSentimentEntityType.add_member(:game, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GAME", traits: {"smithy.api#enumValue" => "GAME"}))
    TargetedSentimentEntityType.add_member(:personal_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERSONAL_TITLE", traits: {"smithy.api#enumValue" => "PERSONAL_TITLE"}))
    TargetedSentimentEntityType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENT", traits: {"smithy.api#enumValue" => "EVENT"}))
    TargetedSentimentEntityType.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATE", traits: {"smithy.api#enumValue" => "DATE"}))
    TargetedSentimentEntityType.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUANTITY", traits: {"smithy.api#enumValue" => "QUANTITY"}))
    TargetedSentimentEntityType.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTRIBUTE", traits: {"smithy.api#enumValue" => "ATTRIBUTE"}))
    TargetedSentimentEntityType.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    TargetedSentimentMention.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Score"))
    TargetedSentimentMention.add_member(:group_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "GroupScore"))
    TargetedSentimentMention.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text"))
    TargetedSentimentMention.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetedSentimentEntityType, name: "Type"))
    TargetedSentimentMention.add_member(:mention_sentiment, ::Smithy::Schema::Shapes::MemberShape.new(target: MentionSentiment, name: "MentionSentiment"))
    TargetedSentimentMention.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "BeginOffset"))
    TargetedSentimentMention.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EndOffset"))
    TargetedSentimentMention.type = Types::TargetedSentimentMention
    TaskConfig.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    TaskConfig.add_member(:document_classification_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentClassificationConfig, name: "DocumentClassificationConfig"))
    TaskConfig.add_member(:entity_recognition_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRecognitionConfig, name: "EntityRecognitionConfig"))
    TaskConfig.type = Types::TaskConfig
    TextSegment.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerInputString, name: "Text", traits: {"smithy.api#required" => {}}))
    TextSegment.type = Types::TextSegment
    TextSizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TextSizeLimitExceededException.type = Types::TextSizeLimitExceededException
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TooManyTagKeysException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyTagKeysException.type = Types::TooManyTagKeysException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyTagsException.type = Types::TooManyTagsException
    TopicsDetectionJobFilter.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    TopicsDetectionJobFilter.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    TopicsDetectionJobFilter.add_member(:submit_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeBefore"))
    TopicsDetectionJobFilter.add_member(:submit_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTimeAfter"))
    TopicsDetectionJobFilter.type = Types::TopicsDetectionJobFilter
    TopicsDetectionJobProperties.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    TopicsDetectionJobProperties.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "JobArn"))
    TopicsDetectionJobProperties.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "JobName"))
    TopicsDetectionJobProperties.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    TopicsDetectionJobProperties.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyLengthString, name: "Message"))
    TopicsDetectionJobProperties.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime"))
    TopicsDetectionJobProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    TopicsDetectionJobProperties.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "InputDataConfig"))
    TopicsDetectionJobProperties.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "OutputDataConfig"))
    TopicsDetectionJobProperties.add_member(:number_of_topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfTopics"))
    TopicsDetectionJobProperties.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    TopicsDetectionJobProperties.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    TopicsDetectionJobProperties.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    TopicsDetectionJobProperties.type = Types::TopicsDetectionJobProperties
    TopicsDetectionJobPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TopicsDetectionJobProperties, name: "member")
    ToxicContent.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ToxicContentType, name: "Name"))
    ToxicContent.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Score"))
    ToxicContent.type = Types::ToxicContent
    ToxicContentType.add_member(:graphic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GRAPHIC", traits: {"smithy.api#enumValue" => "GRAPHIC"}))
    ToxicContentType.add_member(:harassment_or_abuse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HARASSMENT_OR_ABUSE", traits: {"smithy.api#enumValue" => "HARASSMENT_OR_ABUSE"}))
    ToxicContentType.add_member(:hate_speech, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HATE_SPEECH", traits: {"smithy.api#enumValue" => "HATE_SPEECH"}))
    ToxicContentType.add_member(:insult, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSULT", traits: {"smithy.api#enumValue" => "INSULT"}))
    ToxicContentType.add_member(:profanity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFANITY", traits: {"smithy.api#enumValue" => "PROFANITY"}))
    ToxicContentType.add_member(:sexual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEXUAL", traits: {"smithy.api#enumValue" => "SEXUAL"}))
    ToxicContentType.add_member(:violence_or_threat, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIOLENCE_OR_THREAT", traits: {"smithy.api#enumValue" => "VIOLENCE_OR_THREAT"}))
    ToxicLabels.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfToxicContent, name: "Labels"))
    ToxicLabels.add_member(:toxicity, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Toxicity"))
    ToxicLabels.type = Types::ToxicLabels
    UnsupportedLanguageException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnsupportedLanguageException.type = Types::UnsupportedLanguageException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDataSecurityConfig.add_member(:model_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "ModelKmsKeyId"))
    UpdateDataSecurityConfig.add_member(:volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "VolumeKmsKeyId"))
    UpdateDataSecurityConfig.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    UpdateDataSecurityConfig.type = Types::UpdateDataSecurityConfig
    UpdateEndpointRequest.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendEndpointArn, name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    UpdateEndpointRequest.add_member(:desired_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "DesiredModelArn"))
    UpdateEndpointRequest.add_member(:desired_inference_units, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceUnitsInteger, name: "DesiredInferenceUnits"))
    UpdateEndpointRequest.add_member(:desired_data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DesiredDataAccessRoleArn"))
    UpdateEndpointRequest.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn"))
    UpdateEndpointRequest.type = Types::UpdateEndpointRequest
    UpdateEndpointResponse.add_member(:desired_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "DesiredModelArn"))
    UpdateEndpointResponse.type = Types::UpdateEndpointResponse
    UpdateFlywheelRequest.add_member(:flywheel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendFlywheelArn, name: "FlywheelArn", traits: {"smithy.api#required" => {}}))
    UpdateFlywheelRequest.add_member(:active_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComprehendModelArn, name: "ActiveModelArn"))
    UpdateFlywheelRequest.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DataAccessRoleArn"))
    UpdateFlywheelRequest.add_member(:data_security_config, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateDataSecurityConfig, name: "DataSecurityConfig"))
    UpdateFlywheelRequest.type = Types::UpdateFlywheelRequest
    UpdateFlywheelResponse.add_member(:flywheel_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: FlywheelProperties, name: "FlywheelProperties"))
    UpdateFlywheelResponse.type = Types::UpdateFlywheelResponse
    VpcConfig.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds", traits: {"smithy.api#required" => {}}))
    VpcConfig.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, name: "Subnets", traits: {"smithy.api#required" => {}}))
    VpcConfig.type = Types::VpcConfig
    WarningsListItem.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Page"))
    WarningsListItem.add_member(:warn_code, ::Smithy::Schema::Shapes::MemberShape.new(target: PageBasedWarningCode, name: "WarnCode"))
    WarningsListItem.add_member(:warn_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WarnMessage"))
    WarningsListItem.type = Types::WarningsListItem

    Comprehend20171127 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.comprehend#Comprehend_20171127"
      service.name = "Comprehend20171127"
      service.version = "2017-11-27"
      service.traits = {"aws.api#service" => {"sdkId" => "Comprehend", "arnNamespace" => "comprehend", "cloudFormationName" => "Comprehend", "cloudTrailEventSource" => "comprehend.amazonaws.com", "endpointPrefix" => "comprehend"}, "aws.auth#sigv4" => {"name" => "comprehend"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Comprehend"}
      service.add_operation(:batch_detect_dominant_language, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#BatchDetectDominantLanguage"
        operation.name = "BatchDetectDominantLanguage"
        operation.input = BatchDetectDominantLanguageRequest
        operation.output = BatchDetectDominantLanguageResponse
        operation.errors << BatchSizeLimitExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TextSizeLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:batch_detect_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#BatchDetectEntities"
        operation.name = "BatchDetectEntities"
        operation.input = BatchDetectEntitiesRequest
        operation.output = BatchDetectEntitiesResponse
        operation.errors << BatchSizeLimitExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TextSizeLimitExceededException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:batch_detect_key_phrases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#BatchDetectKeyPhrases"
        operation.name = "BatchDetectKeyPhrases"
        operation.input = BatchDetectKeyPhrasesRequest
        operation.output = BatchDetectKeyPhrasesResponse
        operation.errors << BatchSizeLimitExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TextSizeLimitExceededException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:batch_detect_sentiment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#BatchDetectSentiment"
        operation.name = "BatchDetectSentiment"
        operation.input = BatchDetectSentimentRequest
        operation.output = BatchDetectSentimentResponse
        operation.errors << BatchSizeLimitExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TextSizeLimitExceededException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:batch_detect_syntax, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#BatchDetectSyntax"
        operation.name = "BatchDetectSyntax"
        operation.input = BatchDetectSyntaxRequest
        operation.output = BatchDetectSyntaxResponse
        operation.errors << BatchSizeLimitExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TextSizeLimitExceededException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:batch_detect_targeted_sentiment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#BatchDetectTargetedSentiment"
        operation.name = "BatchDetectTargetedSentiment"
        operation.input = BatchDetectTargetedSentimentRequest
        operation.output = BatchDetectTargetedSentimentResponse
        operation.errors << BatchSizeLimitExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TextSizeLimitExceededException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:classify_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ClassifyDocument"
        operation.name = "ClassifyDocument"
        operation.input = ClassifyDocumentRequest
        operation.output = ClassifyDocumentResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceUnavailableException
        operation.errors << TextSizeLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:contains_pii_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ContainsPiiEntities"
        operation.name = "ContainsPiiEntities"
        operation.input = ContainsPiiEntitiesRequest
        operation.output = ContainsPiiEntitiesResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TextSizeLimitExceededException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:create_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = CreateDatasetRequest
        operation.output = CreateDatasetResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_document_classifier, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#CreateDocumentClassifier"
        operation.name = "CreateDocumentClassifier"
        operation.input = CreateDocumentClassifierRequest
        operation.output = CreateDocumentClassifierResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << KmsKeyValidationException
        operation.errors << ResourceInUseException
        operation.errors << ResourceLimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:create_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#CreateEndpoint"
        operation.name = "CreateEndpoint"
        operation.input = CreateEndpointRequest
        operation.output = CreateEndpointResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_entity_recognizer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#CreateEntityRecognizer"
        operation.name = "CreateEntityRecognizer"
        operation.input = CreateEntityRecognizerRequest
        operation.output = CreateEntityRecognizerResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << KmsKeyValidationException
        operation.errors << ResourceInUseException
        operation.errors << ResourceLimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:create_flywheel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#CreateFlywheel"
        operation.name = "CreateFlywheel"
        operation.input = CreateFlywheelRequest
        operation.output = CreateFlywheelResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << KmsKeyValidationException
        operation.errors << ResourceInUseException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:delete_document_classifier, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DeleteDocumentClassifier"
        operation.name = "DeleteDocumentClassifier"
        operation.input = DeleteDocumentClassifierRequest
        operation.output = DeleteDocumentClassifierResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:delete_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DeleteEndpoint"
        operation.name = "DeleteEndpoint"
        operation.input = DeleteEndpointRequest
        operation.output = DeleteEndpointResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:delete_entity_recognizer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DeleteEntityRecognizer"
        operation.name = "DeleteEntityRecognizer"
        operation.input = DeleteEntityRecognizerRequest
        operation.output = DeleteEntityRecognizerResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:delete_flywheel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DeleteFlywheel"
        operation.name = "DeleteFlywheel"
        operation.input = DeleteFlywheelRequest
        operation.output = DeleteFlywheelResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = DeleteResourcePolicyResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = DescribeDatasetRequest
        operation.output = DescribeDatasetResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_document_classification_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeDocumentClassificationJob"
        operation.name = "DescribeDocumentClassificationJob"
        operation.input = DescribeDocumentClassificationJobRequest
        operation.output = DescribeDocumentClassificationJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_document_classifier, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeDocumentClassifier"
        operation.name = "DescribeDocumentClassifier"
        operation.input = DescribeDocumentClassifierRequest
        operation.output = DescribeDocumentClassifierResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_dominant_language_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeDominantLanguageDetectionJob"
        operation.name = "DescribeDominantLanguageDetectionJob"
        operation.input = DescribeDominantLanguageDetectionJobRequest
        operation.output = DescribeDominantLanguageDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeEndpoint"
        operation.name = "DescribeEndpoint"
        operation.input = DescribeEndpointRequest
        operation.output = DescribeEndpointResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_entities_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeEntitiesDetectionJob"
        operation.name = "DescribeEntitiesDetectionJob"
        operation.input = DescribeEntitiesDetectionJobRequest
        operation.output = DescribeEntitiesDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_entity_recognizer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeEntityRecognizer"
        operation.name = "DescribeEntityRecognizer"
        operation.input = DescribeEntityRecognizerRequest
        operation.output = DescribeEntityRecognizerResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_events_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeEventsDetectionJob"
        operation.name = "DescribeEventsDetectionJob"
        operation.input = DescribeEventsDetectionJobRequest
        operation.output = DescribeEventsDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_flywheel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeFlywheel"
        operation.name = "DescribeFlywheel"
        operation.input = DescribeFlywheelRequest
        operation.output = DescribeFlywheelResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_flywheel_iteration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeFlywheelIteration"
        operation.name = "DescribeFlywheelIteration"
        operation.input = DescribeFlywheelIterationRequest
        operation.output = DescribeFlywheelIterationResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_key_phrases_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeKeyPhrasesDetectionJob"
        operation.name = "DescribeKeyPhrasesDetectionJob"
        operation.input = DescribeKeyPhrasesDetectionJobRequest
        operation.output = DescribeKeyPhrasesDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_pii_entities_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribePiiEntitiesDetectionJob"
        operation.name = "DescribePiiEntitiesDetectionJob"
        operation.input = DescribePiiEntitiesDetectionJobRequest
        operation.output = DescribePiiEntitiesDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeResourcePolicy"
        operation.name = "DescribeResourcePolicy"
        operation.input = DescribeResourcePolicyRequest
        operation.output = DescribeResourcePolicyResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_sentiment_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeSentimentDetectionJob"
        operation.name = "DescribeSentimentDetectionJob"
        operation.input = DescribeSentimentDetectionJobRequest
        operation.output = DescribeSentimentDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_targeted_sentiment_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeTargetedSentimentDetectionJob"
        operation.name = "DescribeTargetedSentimentDetectionJob"
        operation.input = DescribeTargetedSentimentDetectionJobRequest
        operation.output = DescribeTargetedSentimentDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_topics_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DescribeTopicsDetectionJob"
        operation.name = "DescribeTopicsDetectionJob"
        operation.input = DescribeTopicsDetectionJobRequest
        operation.output = DescribeTopicsDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:detect_dominant_language, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectDominantLanguage"
        operation.name = "DetectDominantLanguage"
        operation.input = DetectDominantLanguageRequest
        operation.output = DetectDominantLanguageResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TextSizeLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:detect_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectEntities"
        operation.name = "DetectEntities"
        operation.input = DetectEntitiesRequest
        operation.output = DetectEntitiesResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceUnavailableException
        operation.errors << TextSizeLimitExceededException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:detect_key_phrases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectKeyPhrases"
        operation.name = "DetectKeyPhrases"
        operation.input = DetectKeyPhrasesRequest
        operation.output = DetectKeyPhrasesResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TextSizeLimitExceededException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:detect_pii_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectPiiEntities"
        operation.name = "DetectPiiEntities"
        operation.input = DetectPiiEntitiesRequest
        operation.output = DetectPiiEntitiesResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TextSizeLimitExceededException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:detect_sentiment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectSentiment"
        operation.name = "DetectSentiment"
        operation.input = DetectSentimentRequest
        operation.output = DetectSentimentResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TextSizeLimitExceededException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:detect_syntax, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectSyntax"
        operation.name = "DetectSyntax"
        operation.input = DetectSyntaxRequest
        operation.output = DetectSyntaxResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TextSizeLimitExceededException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:detect_targeted_sentiment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectTargetedSentiment"
        operation.name = "DetectTargetedSentiment"
        operation.input = DetectTargetedSentimentRequest
        operation.output = DetectTargetedSentimentResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TextSizeLimitExceededException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:detect_toxic_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#DetectToxicContent"
        operation.name = "DetectToxicContent"
        operation.input = DetectToxicContentRequest
        operation.output = DetectToxicContentResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TextSizeLimitExceededException
        operation.errors << UnsupportedLanguageException
        operation.traits = {}
      end)
      service.add_operation(:import_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ImportModel"
        operation.name = "ImportModel"
        operation.input = ImportModelRequest
        operation.output = ImportModelResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << KmsKeyValidationException
        operation.errors << ResourceInUseException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:list_datasets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = ListDatasetsRequest
        operation.output = ListDatasetsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidFilterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_document_classification_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListDocumentClassificationJobs"
        operation.name = "ListDocumentClassificationJobs"
        operation.input = ListDocumentClassificationJobsRequest
        operation.output = ListDocumentClassificationJobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidFilterException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDocumentClassificationJobs.new
      end)
      service.add_operation(:list_document_classifier_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListDocumentClassifierSummaries"
        operation.name = "ListDocumentClassifierSummaries"
        operation.input = ListDocumentClassifierSummariesRequest
        operation.output = ListDocumentClassifierSummariesResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDocumentClassifierSummaries.new
      end)
      service.add_operation(:list_document_classifiers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListDocumentClassifiers"
        operation.name = "ListDocumentClassifiers"
        operation.input = ListDocumentClassifiersRequest
        operation.output = ListDocumentClassifiersResponse
        operation.errors << InternalServerException
        operation.errors << InvalidFilterException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDocumentClassifiers.new
      end)
      service.add_operation(:list_dominant_language_detection_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListDominantLanguageDetectionJobs"
        operation.name = "ListDominantLanguageDetectionJobs"
        operation.input = ListDominantLanguageDetectionJobsRequest
        operation.output = ListDominantLanguageDetectionJobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidFilterException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDominantLanguageDetectionJobs.new
      end)
      service.add_operation(:list_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListEndpoints"
        operation.name = "ListEndpoints"
        operation.input = ListEndpointsRequest
        operation.output = ListEndpointsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListEndpoints.new
      end)
      service.add_operation(:list_entities_detection_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListEntitiesDetectionJobs"
        operation.name = "ListEntitiesDetectionJobs"
        operation.input = ListEntitiesDetectionJobsRequest
        operation.output = ListEntitiesDetectionJobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidFilterException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListEntitiesDetectionJobs.new
      end)
      service.add_operation(:list_entity_recognizer_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListEntityRecognizerSummaries"
        operation.name = "ListEntityRecognizerSummaries"
        operation.input = ListEntityRecognizerSummariesRequest
        operation.output = ListEntityRecognizerSummariesResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListEntityRecognizerSummaries.new
      end)
      service.add_operation(:list_entity_recognizers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListEntityRecognizers"
        operation.name = "ListEntityRecognizers"
        operation.input = ListEntityRecognizersRequest
        operation.output = ListEntityRecognizersResponse
        operation.errors << InternalServerException
        operation.errors << InvalidFilterException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListEntityRecognizers.new
      end)
      service.add_operation(:list_events_detection_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListEventsDetectionJobs"
        operation.name = "ListEventsDetectionJobs"
        operation.input = ListEventsDetectionJobsRequest
        operation.output = ListEventsDetectionJobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidFilterException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListEventsDetectionJobs.new
      end)
      service.add_operation(:list_flywheel_iteration_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListFlywheelIterationHistory"
        operation.name = "ListFlywheelIterationHistory"
        operation.input = ListFlywheelIterationHistoryRequest
        operation.output = ListFlywheelIterationHistoryResponse
        operation.errors << InternalServerException
        operation.errors << InvalidFilterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFlywheelIterationHistory.new
      end)
      service.add_operation(:list_flywheels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListFlywheels"
        operation.name = "ListFlywheels"
        operation.input = ListFlywheelsRequest
        operation.output = ListFlywheelsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidFilterException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFlywheels.new
      end)
      service.add_operation(:list_key_phrases_detection_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListKeyPhrasesDetectionJobs"
        operation.name = "ListKeyPhrasesDetectionJobs"
        operation.input = ListKeyPhrasesDetectionJobsRequest
        operation.output = ListKeyPhrasesDetectionJobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidFilterException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListKeyPhrasesDetectionJobs.new
      end)
      service.add_operation(:list_pii_entities_detection_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListPiiEntitiesDetectionJobs"
        operation.name = "ListPiiEntitiesDetectionJobs"
        operation.input = ListPiiEntitiesDetectionJobsRequest
        operation.output = ListPiiEntitiesDetectionJobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidFilterException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPiiEntitiesDetectionJobs.new
      end)
      service.add_operation(:list_sentiment_detection_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListSentimentDetectionJobs"
        operation.name = "ListSentimentDetectionJobs"
        operation.input = ListSentimentDetectionJobsRequest
        operation.output = ListSentimentDetectionJobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidFilterException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSentimentDetectionJobs.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_targeted_sentiment_detection_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListTargetedSentimentDetectionJobs"
        operation.name = "ListTargetedSentimentDetectionJobs"
        operation.input = ListTargetedSentimentDetectionJobsRequest
        operation.output = ListTargetedSentimentDetectionJobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidFilterException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTargetedSentimentDetectionJobs.new
      end)
      service.add_operation(:list_topics_detection_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#ListTopicsDetectionJobs"
        operation.name = "ListTopicsDetectionJobs"
        operation.input = ListTopicsDetectionJobsRequest
        operation.output = ListTopicsDetectionJobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidFilterException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTopicsDetectionJobs.new
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_document_classification_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartDocumentClassificationJob"
        operation.name = "StartDocumentClassificationJob"
        operation.input = StartDocumentClassificationJobRequest
        operation.output = StartDocumentClassificationJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << KmsKeyValidationException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:start_dominant_language_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartDominantLanguageDetectionJob"
        operation.name = "StartDominantLanguageDetectionJob"
        operation.input = StartDominantLanguageDetectionJobRequest
        operation.output = StartDominantLanguageDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << KmsKeyValidationException
        operation.errors << ResourceInUseException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:start_entities_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartEntitiesDetectionJob"
        operation.name = "StartEntitiesDetectionJob"
        operation.input = StartEntitiesDetectionJobRequest
        operation.output = StartEntitiesDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << KmsKeyValidationException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:start_events_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartEventsDetectionJob"
        operation.name = "StartEventsDetectionJob"
        operation.input = StartEventsDetectionJobRequest
        operation.output = StartEventsDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << KmsKeyValidationException
        operation.errors << ResourceInUseException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:start_flywheel_iteration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartFlywheelIteration"
        operation.name = "StartFlywheelIteration"
        operation.input = StartFlywheelIterationRequest
        operation.output = StartFlywheelIterationResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:start_key_phrases_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartKeyPhrasesDetectionJob"
        operation.name = "StartKeyPhrasesDetectionJob"
        operation.input = StartKeyPhrasesDetectionJobRequest
        operation.output = StartKeyPhrasesDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << KmsKeyValidationException
        operation.errors << ResourceInUseException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:start_pii_entities_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartPiiEntitiesDetectionJob"
        operation.name = "StartPiiEntitiesDetectionJob"
        operation.input = StartPiiEntitiesDetectionJobRequest
        operation.output = StartPiiEntitiesDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << KmsKeyValidationException
        operation.errors << ResourceInUseException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:start_sentiment_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartSentimentDetectionJob"
        operation.name = "StartSentimentDetectionJob"
        operation.input = StartSentimentDetectionJobRequest
        operation.output = StartSentimentDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << KmsKeyValidationException
        operation.errors << ResourceInUseException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:start_targeted_sentiment_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartTargetedSentimentDetectionJob"
        operation.name = "StartTargetedSentimentDetectionJob"
        operation.input = StartTargetedSentimentDetectionJobRequest
        operation.output = StartTargetedSentimentDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << KmsKeyValidationException
        operation.errors << ResourceInUseException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:start_topics_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StartTopicsDetectionJob"
        operation.name = "StartTopicsDetectionJob"
        operation.input = StartTopicsDetectionJobRequest
        operation.output = StartTopicsDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << KmsKeyValidationException
        operation.errors << ResourceInUseException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:stop_dominant_language_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopDominantLanguageDetectionJob"
        operation.name = "StopDominantLanguageDetectionJob"
        operation.input = StopDominantLanguageDetectionJobRequest
        operation.output = StopDominantLanguageDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_entities_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopEntitiesDetectionJob"
        operation.name = "StopEntitiesDetectionJob"
        operation.input = StopEntitiesDetectionJobRequest
        operation.output = StopEntitiesDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_events_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopEventsDetectionJob"
        operation.name = "StopEventsDetectionJob"
        operation.input = StopEventsDetectionJobRequest
        operation.output = StopEventsDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_key_phrases_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopKeyPhrasesDetectionJob"
        operation.name = "StopKeyPhrasesDetectionJob"
        operation.input = StopKeyPhrasesDetectionJobRequest
        operation.output = StopKeyPhrasesDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_pii_entities_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopPiiEntitiesDetectionJob"
        operation.name = "StopPiiEntitiesDetectionJob"
        operation.input = StopPiiEntitiesDetectionJobRequest
        operation.output = StopPiiEntitiesDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_sentiment_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopSentimentDetectionJob"
        operation.name = "StopSentimentDetectionJob"
        operation.input = StopSentimentDetectionJobRequest
        operation.output = StopSentimentDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_targeted_sentiment_detection_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopTargetedSentimentDetectionJob"
        operation.name = "StopTargetedSentimentDetectionJob"
        operation.input = StopTargetedSentimentDetectionJobRequest
        operation.output = StopTargetedSentimentDetectionJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << JobNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_training_document_classifier, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopTrainingDocumentClassifier"
        operation.name = "StopTrainingDocumentClassifier"
        operation.input = StopTrainingDocumentClassifierRequest
        operation.output = StopTrainingDocumentClassifierResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:stop_training_entity_recognizer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#StopTrainingEntityRecognizer"
        operation.name = "StopTrainingEntityRecognizer"
        operation.input = StopTrainingEntityRecognizerRequest
        operation.output = StopTrainingEntityRecognizerResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagKeysException
        operation.traits = {}
      end)
      service.add_operation(:update_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#UpdateEndpoint"
        operation.name = "UpdateEndpoint"
        operation.input = UpdateEndpointRequest
        operation.output = UpdateEndpointResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:update_flywheel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.comprehend#UpdateFlywheel"
        operation.name = "UpdateFlywheel"
        operation.input = UpdateFlywheelRequest
        operation.output = UpdateFlywheelResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << KmsKeyValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
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
