# frozen_string_literal: true

# This is generated code!

module Aws::Rekognition
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client"})
    AgeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#AgeRange', name: 'AgeRange')
    Asset = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Asset', name: 'Asset')
    Assets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#Assets', name: 'Assets')
    AssociateFacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#AssociateFacesRequest', name: 'AssociateFacesRequest')
    AssociateFacesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#AssociateFacesResponse', name: 'AssociateFacesResponse')
    AssociatedFace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#AssociatedFace', name: 'AssociatedFace')
    AssociatedFacesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#AssociatedFacesList', name: 'AssociatedFacesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Attribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#Attribute', name: 'Attribute')
    Attributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#Attributes', name: 'Attributes')
    AudioMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#AudioMetadata', name: 'AudioMetadata')
    AudioMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#AudioMetadataList', name: 'AudioMetadataList')
    AuditImage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#AuditImage', name: 'AuditImage')
    AuditImages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#AuditImages', name: 'AuditImages')
    AuditImagesLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#AuditImagesLimit', name: 'AuditImagesLimit', traits: {"smithy.api#range" => {"min" => 0, "max" => 4}})
    Beard = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Beard', name: 'Beard')
    BlackFrame = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#BlackFrame', name: 'BlackFrame')
    BodyPart = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#BodyPart', name: 'BodyPart')
    BodyParts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#BodyParts', name: 'BodyParts')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.rekognition#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BoundingBox = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#BoundingBox', name: 'BoundingBox')
    BoundingBoxHeight = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.rekognition#BoundingBoxHeight', name: 'BoundingBoxHeight', traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    BoundingBoxWidth = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.rekognition#BoundingBoxWidth', name: 'BoundingBoxWidth', traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    Celebrity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Celebrity', name: 'Celebrity')
    CelebrityDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CelebrityDetail', name: 'CelebrityDetail')
    CelebrityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#CelebrityList', name: 'CelebrityList')
    CelebrityRecognition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CelebrityRecognition', name: 'CelebrityRecognition')
    CelebrityRecognitionSortBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#CelebrityRecognitionSortBy', name: 'CelebrityRecognitionSortBy')
    CelebrityRecognitions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#CelebrityRecognitions', name: 'CelebrityRecognitions')
    Challenge = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Challenge', name: 'Challenge')
    ChallengePreference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ChallengePreference', name: 'ChallengePreference')
    ChallengePreferences = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#ChallengePreferences', name: 'ChallengePreferences')
    ChallengeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#ChallengeType', name: 'ChallengeType')
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    CollectionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#CollectionId', name: 'CollectionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]+$"})
    CollectionIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#CollectionIdList', name: 'CollectionIdList')
    CompareFacesMatch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CompareFacesMatch', name: 'CompareFacesMatch')
    CompareFacesMatchList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#CompareFacesMatchList', name: 'CompareFacesMatchList')
    CompareFacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CompareFacesRequest', name: 'CompareFacesRequest')
    CompareFacesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CompareFacesResponse', name: 'CompareFacesResponse')
    CompareFacesUnmatchList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#CompareFacesUnmatchList', name: 'CompareFacesUnmatchList')
    ComparedFace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ComparedFace', name: 'ComparedFace')
    ComparedFaceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#ComparedFaceList', name: 'ComparedFaceList')
    ComparedSourceImageFace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ComparedSourceImageFace', name: 'ComparedSourceImageFace')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client"})
    ConnectedHomeLabel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#ConnectedHomeLabel', name: 'ConnectedHomeLabel')
    ConnectedHomeLabels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#ConnectedHomeLabels', name: 'ConnectedHomeLabels', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ConnectedHomeSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ConnectedHomeSettings', name: 'ConnectedHomeSettings')
    ConnectedHomeSettingsForUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ConnectedHomeSettingsForUpdate', name: 'ConnectedHomeSettingsForUpdate')
    ContentClassifier = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#ContentClassifier', name: 'ContentClassifier')
    ContentClassifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#ContentClassifiers', name: 'ContentClassifiers', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ContentModerationAggregateBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#ContentModerationAggregateBy', name: 'ContentModerationAggregateBy')
    ContentModerationDetection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ContentModerationDetection', name: 'ContentModerationDetection')
    ContentModerationDetections = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#ContentModerationDetections', name: 'ContentModerationDetections')
    ContentModerationSortBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#ContentModerationSortBy', name: 'ContentModerationSortBy')
    ContentType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ContentType', name: 'ContentType')
    ContentTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#ContentTypes', name: 'ContentTypes', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    CopyProjectVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CopyProjectVersionRequest', name: 'CopyProjectVersionRequest')
    CopyProjectVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CopyProjectVersionResponse', name: 'CopyProjectVersionResponse')
    CoversBodyPart = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CoversBodyPart', name: 'CoversBodyPart')
    CreateCollectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateCollectionRequest', name: 'CreateCollectionRequest')
    CreateCollectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateCollectionResponse', name: 'CreateCollectionResponse')
    CreateDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateDatasetRequest', name: 'CreateDatasetRequest')
    CreateDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateDatasetResponse', name: 'CreateDatasetResponse')
    CreateFaceLivenessSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateFaceLivenessSessionRequest', name: 'CreateFaceLivenessSessionRequest')
    CreateFaceLivenessSessionRequestSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateFaceLivenessSessionRequestSettings', name: 'CreateFaceLivenessSessionRequestSettings')
    CreateFaceLivenessSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateFaceLivenessSessionResponse', name: 'CreateFaceLivenessSessionResponse')
    CreateProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateProjectRequest', name: 'CreateProjectRequest')
    CreateProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateProjectResponse', name: 'CreateProjectResponse')
    CreateProjectVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateProjectVersionRequest', name: 'CreateProjectVersionRequest')
    CreateProjectVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateProjectVersionResponse', name: 'CreateProjectVersionResponse')
    CreateStreamProcessorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateStreamProcessorRequest', name: 'CreateStreamProcessorRequest')
    CreateStreamProcessorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateStreamProcessorResponse', name: 'CreateStreamProcessorResponse')
    CreateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateUserRequest', name: 'CreateUserRequest')
    CreateUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CreateUserResponse', name: 'CreateUserResponse')
    CustomLabel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CustomLabel', name: 'CustomLabel')
    CustomLabels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#CustomLabels', name: 'CustomLabels')
    CustomizationFeature = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#CustomizationFeature', name: 'CustomizationFeature')
    CustomizationFeatureConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CustomizationFeatureConfig', name: 'CustomizationFeatureConfig')
    CustomizationFeatureContentModerationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#CustomizationFeatureContentModerationConfig', name: 'CustomizationFeatureContentModerationConfig')
    CustomizationFeatures = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#CustomizationFeatures', name: 'CustomizationFeatures', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    DatasetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#DatasetArn', name: 'DatasetArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^(^arn:[a-z\\d-]+:rekognition:[a-z\\d-]+:\\d{12}:project\\/[a-zA-Z0-9_.\\-]{1,255}\\/dataset\\/(train|test)\\/[0-9]+$)$"})
    DatasetChanges = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DatasetChanges', name: 'DatasetChanges')
    DatasetDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DatasetDescription', name: 'DatasetDescription')
    DatasetEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#DatasetEntries', name: 'DatasetEntries')
    DatasetEntry = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#DatasetEntry', name: 'DatasetEntry', traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#pattern" => "^\\{.*\\}$"})
    DatasetLabel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#DatasetLabel', name: 'DatasetLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.{1,}$"})
    DatasetLabelDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DatasetLabelDescription', name: 'DatasetLabelDescription')
    DatasetLabelDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#DatasetLabelDescriptions', name: 'DatasetLabelDescriptions')
    DatasetLabelStats = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DatasetLabelStats', name: 'DatasetLabelStats')
    DatasetLabels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#DatasetLabels', name: 'DatasetLabels', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DatasetMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DatasetMetadata', name: 'DatasetMetadata')
    DatasetMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#DatasetMetadataList', name: 'DatasetMetadataList')
    DatasetSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DatasetSource', name: 'DatasetSource')
    DatasetStats = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DatasetStats', name: 'DatasetStats')
    DatasetStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#DatasetStatus', name: 'DatasetStatus')
    DatasetStatusMessageCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#DatasetStatusMessageCode', name: 'DatasetStatusMessageCode')
    DatasetType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#DatasetType', name: 'DatasetType')
    DateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.rekognition#DateTime', name: 'DateTime')
    Degree = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.rekognition#Degree', name: 'Degree', traits: {"smithy.api#range" => {"min" => -180, "max" => 180}})
    DeleteCollectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteCollectionRequest', name: 'DeleteCollectionRequest')
    DeleteCollectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteCollectionResponse', name: 'DeleteCollectionResponse')
    DeleteDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteDatasetRequest', name: 'DeleteDatasetRequest')
    DeleteDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteDatasetResponse', name: 'DeleteDatasetResponse')
    DeleteFacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteFacesRequest', name: 'DeleteFacesRequest')
    DeleteFacesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteFacesResponse', name: 'DeleteFacesResponse')
    DeleteProjectPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteProjectPolicyRequest', name: 'DeleteProjectPolicyRequest')
    DeleteProjectPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteProjectPolicyResponse', name: 'DeleteProjectPolicyResponse')
    DeleteProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteProjectRequest', name: 'DeleteProjectRequest')
    DeleteProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteProjectResponse', name: 'DeleteProjectResponse')
    DeleteProjectVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteProjectVersionRequest', name: 'DeleteProjectVersionRequest')
    DeleteProjectVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteProjectVersionResponse', name: 'DeleteProjectVersionResponse')
    DeleteStreamProcessorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteStreamProcessorRequest', name: 'DeleteStreamProcessorRequest')
    DeleteStreamProcessorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteStreamProcessorResponse', name: 'DeleteStreamProcessorResponse')
    DeleteUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteUserRequest', name: 'DeleteUserRequest')
    DeleteUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DeleteUserResponse', name: 'DeleteUserResponse')
    DescribeCollectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DescribeCollectionRequest', name: 'DescribeCollectionRequest')
    DescribeCollectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DescribeCollectionResponse', name: 'DescribeCollectionResponse')
    DescribeDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DescribeDatasetRequest', name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DescribeDatasetResponse', name: 'DescribeDatasetResponse')
    DescribeProjectVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DescribeProjectVersionsRequest', name: 'DescribeProjectVersionsRequest')
    DescribeProjectVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DescribeProjectVersionsResponse', name: 'DescribeProjectVersionsResponse')
    DescribeProjectsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DescribeProjectsRequest', name: 'DescribeProjectsRequest')
    DescribeProjectsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DescribeProjectsResponse', name: 'DescribeProjectsResponse')
    DescribeStreamProcessorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DescribeStreamProcessorRequest', name: 'DescribeStreamProcessorRequest')
    DescribeStreamProcessorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DescribeStreamProcessorResponse', name: 'DescribeStreamProcessorResponse')
    DetectCustomLabelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectCustomLabelsRequest', name: 'DetectCustomLabelsRequest')
    DetectCustomLabelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectCustomLabelsResponse', name: 'DetectCustomLabelsResponse')
    DetectFacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectFacesRequest', name: 'DetectFacesRequest')
    DetectFacesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectFacesResponse', name: 'DetectFacesResponse')
    DetectLabelsFeatureList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#DetectLabelsFeatureList', name: 'DetectLabelsFeatureList', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    DetectLabelsFeatureName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#DetectLabelsFeatureName', name: 'DetectLabelsFeatureName')
    DetectLabelsImageBackground = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectLabelsImageBackground', name: 'DetectLabelsImageBackground')
    DetectLabelsImageForeground = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectLabelsImageForeground', name: 'DetectLabelsImageForeground')
    DetectLabelsImageProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectLabelsImageProperties', name: 'DetectLabelsImageProperties')
    DetectLabelsImagePropertiesSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectLabelsImagePropertiesSettings', name: 'DetectLabelsImagePropertiesSettings')
    DetectLabelsImageQuality = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectLabelsImageQuality', name: 'DetectLabelsImageQuality')
    DetectLabelsMaxDominantColors = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#DetectLabelsMaxDominantColors', name: 'DetectLabelsMaxDominantColors', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 20}})
    DetectLabelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectLabelsRequest', name: 'DetectLabelsRequest')
    DetectLabelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectLabelsResponse', name: 'DetectLabelsResponse')
    DetectLabelsSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectLabelsSettings', name: 'DetectLabelsSettings')
    DetectModerationLabelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectModerationLabelsRequest', name: 'DetectModerationLabelsRequest')
    DetectModerationLabelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectModerationLabelsResponse', name: 'DetectModerationLabelsResponse')
    DetectProtectiveEquipmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectProtectiveEquipmentRequest', name: 'DetectProtectiveEquipmentRequest')
    DetectProtectiveEquipmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectProtectiveEquipmentResponse', name: 'DetectProtectiveEquipmentResponse')
    DetectTextFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectTextFilters', name: 'DetectTextFilters')
    DetectTextRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectTextRequest', name: 'DetectTextRequest')
    DetectTextResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectTextResponse', name: 'DetectTextResponse')
    DetectionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DetectionFilter', name: 'DetectionFilter')
    DisassociateFacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DisassociateFacesRequest', name: 'DisassociateFacesRequest')
    DisassociateFacesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DisassociateFacesResponse', name: 'DisassociateFacesResponse')
    DisassociatedFace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DisassociatedFace', name: 'DisassociatedFace')
    DisassociatedFacesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#DisassociatedFacesList', name: 'DisassociatedFacesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DistributeDataset = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DistributeDataset', name: 'DistributeDataset')
    DistributeDatasetEntriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DistributeDatasetEntriesRequest', name: 'DistributeDatasetEntriesRequest')
    DistributeDatasetEntriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DistributeDatasetEntriesResponse', name: 'DistributeDatasetEntriesResponse')
    DistributeDatasetMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#DistributeDatasetMetadataList', name: 'DistributeDatasetMetadataList', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    DominantColor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#DominantColor', name: 'DominantColor')
    DominantColors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#DominantColors', name: 'DominantColors')
    Emotion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Emotion', name: 'Emotion')
    EmotionName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#EmotionName', name: 'EmotionName')
    Emotions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#Emotions', name: 'Emotions')
    EquipmentDetection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#EquipmentDetection', name: 'EquipmentDetection')
    EquipmentDetections = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#EquipmentDetections', name: 'EquipmentDetections')
    EvaluationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#EvaluationResult', name: 'EvaluationResult')
    ExtendedPaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#ExtendedPaginationToken', name: 'ExtendedPaginationToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ExternalImageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#ExternalImageId', name: 'ExternalImageId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-:]+$"})
    EyeDirection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#EyeDirection', name: 'EyeDirection')
    EyeOpen = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#EyeOpen', name: 'EyeOpen')
    Eyeglasses = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Eyeglasses', name: 'Eyeglasses')
    Face = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Face', name: 'Face')
    FaceAttributes = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#FaceAttributes', name: 'FaceAttributes')
    FaceDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#FaceDetail', name: 'FaceDetail')
    FaceDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#FaceDetailList', name: 'FaceDetailList')
    FaceDetection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#FaceDetection', name: 'FaceDetection')
    FaceDetections = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#FaceDetections', name: 'FaceDetections')
    FaceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#FaceId', name: 'FaceId', traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    FaceIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#FaceIdList', name: 'FaceIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    FaceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#FaceList', name: 'FaceList')
    FaceMatch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#FaceMatch', name: 'FaceMatch')
    FaceMatchList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#FaceMatchList', name: 'FaceMatchList')
    FaceModelVersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#FaceModelVersionList', name: 'FaceModelVersionList')
    FaceOccluded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#FaceOccluded', name: 'FaceOccluded')
    FaceRecord = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#FaceRecord', name: 'FaceRecord')
    FaceRecordList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#FaceRecordList', name: 'FaceRecordList')
    FaceSearchSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#FaceSearchSettings', name: 'FaceSearchSettings')
    FaceSearchSortBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#FaceSearchSortBy', name: 'FaceSearchSortBy')
    Float = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.rekognition#Float', name: 'Float')
    FlowDefinitionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#FlowDefinitionArn', name: 'FlowDefinitionArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Gender = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Gender', name: 'Gender')
    GenderType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#GenderType', name: 'GenderType')
    GeneralLabelsFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#GeneralLabelsFilterList', name: 'GeneralLabelsFilterList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    GeneralLabelsFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#GeneralLabelsFilterValue', name: 'GeneralLabelsFilterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9àâèçñó'-_(). ]*$"})
    GeneralLabelsSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GeneralLabelsSettings', name: 'GeneralLabelsSettings')
    Geometry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Geometry', name: 'Geometry')
    GetCelebrityInfoRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetCelebrityInfoRequest', name: 'GetCelebrityInfoRequest')
    GetCelebrityInfoResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetCelebrityInfoResponse', name: 'GetCelebrityInfoResponse')
    GetCelebrityRecognitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetCelebrityRecognitionRequest', name: 'GetCelebrityRecognitionRequest')
    GetCelebrityRecognitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetCelebrityRecognitionResponse', name: 'GetCelebrityRecognitionResponse')
    GetContentModerationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetContentModerationRequest', name: 'GetContentModerationRequest')
    GetContentModerationRequestMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetContentModerationRequestMetadata', name: 'GetContentModerationRequestMetadata')
    GetContentModerationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetContentModerationResponse', name: 'GetContentModerationResponse')
    GetFaceDetectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetFaceDetectionRequest', name: 'GetFaceDetectionRequest')
    GetFaceDetectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetFaceDetectionResponse', name: 'GetFaceDetectionResponse')
    GetFaceLivenessSessionResultsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetFaceLivenessSessionResultsRequest', name: 'GetFaceLivenessSessionResultsRequest')
    GetFaceLivenessSessionResultsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetFaceLivenessSessionResultsResponse', name: 'GetFaceLivenessSessionResultsResponse')
    GetFaceSearchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetFaceSearchRequest', name: 'GetFaceSearchRequest')
    GetFaceSearchResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetFaceSearchResponse', name: 'GetFaceSearchResponse')
    GetLabelDetectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetLabelDetectionRequest', name: 'GetLabelDetectionRequest')
    GetLabelDetectionRequestMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetLabelDetectionRequestMetadata', name: 'GetLabelDetectionRequestMetadata')
    GetLabelDetectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetLabelDetectionResponse', name: 'GetLabelDetectionResponse')
    GetMediaAnalysisJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetMediaAnalysisJobRequest', name: 'GetMediaAnalysisJobRequest')
    GetMediaAnalysisJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetMediaAnalysisJobResponse', name: 'GetMediaAnalysisJobResponse')
    GetPersonTrackingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetPersonTrackingRequest', name: 'GetPersonTrackingRequest')
    GetPersonTrackingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetPersonTrackingResponse', name: 'GetPersonTrackingResponse')
    GetSegmentDetectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetSegmentDetectionRequest', name: 'GetSegmentDetectionRequest')
    GetSegmentDetectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetSegmentDetectionResponse', name: 'GetSegmentDetectionResponse')
    GetTextDetectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetTextDetectionRequest', name: 'GetTextDetectionRequest')
    GetTextDetectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GetTextDetectionResponse', name: 'GetTextDetectionResponse')
    GroundTruthBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.rekognition#GroundTruthBlob', name: 'GroundTruthBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 5242880}})
    GroundTruthManifest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#GroundTruthManifest', name: 'GroundTruthManifest')
    HasErrors = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.rekognition#HasErrors', name: 'HasErrors')
    HumanLoopActivationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#HumanLoopActivationOutput', name: 'HumanLoopActivationOutput')
    HumanLoopActivationReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#HumanLoopActivationReason', name: 'HumanLoopActivationReason')
    HumanLoopActivationReasons = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#HumanLoopActivationReasons', name: 'HumanLoopActivationReasons', traits: {"smithy.api#length" => {"min" => 1}})
    HumanLoopArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#HumanLoopArn', name: 'HumanLoopArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    HumanLoopConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#HumanLoopConfig', name: 'HumanLoopConfig')
    HumanLoopDataAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#HumanLoopDataAttributes', name: 'HumanLoopDataAttributes')
    HumanLoopName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#HumanLoopName', name: 'HumanLoopName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9](-*[a-z0-9])*$"})
    HumanLoopQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#HumanLoopQuotaExceededException', name: 'HumanLoopQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    IdempotentParameterMismatchException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#IdempotentParameterMismatchException', name: 'IdempotentParameterMismatchException', traits: {"smithy.api#error" => "client"})
    Image = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Image', name: 'Image')
    ImageBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.rekognition#ImageBlob', name: 'ImageBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 5242880}})
    ImageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#ImageId', name: 'ImageId', traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ImageQuality = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ImageQuality', name: 'ImageQuality')
    ImageTooLargeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ImageTooLargeException', name: 'ImageTooLargeException', traits: {"smithy.api#error" => "client"})
    IndexFacesModelVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#IndexFacesModelVersion', name: 'IndexFacesModelVersion', traits: {"smithy.api#pattern" => "^[0-9\\.]+$"})
    IndexFacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#IndexFacesRequest', name: 'IndexFacesRequest')
    IndexFacesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#IndexFacesResponse', name: 'IndexFacesResponse')
    InferenceUnits = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#InferenceUnits', name: 'InferenceUnits', traits: {"smithy.api#range" => {"min" => 1}})
    Instance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Instance', name: 'Instance')
    Instances = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#Instances', name: 'Instances')
    InternalServerError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#InternalServerError', name: 'InternalServerError', traits: {"smithy.api#error" => "server"})
    InvalidImageFormatException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#InvalidImageFormatException', name: 'InvalidImageFormatException', traits: {"smithy.api#error" => "client"})
    InvalidManifestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#InvalidManifestException', name: 'InvalidManifestException', traits: {"smithy.api#error" => "client"})
    InvalidPaginationTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#InvalidPaginationTokenException', name: 'InvalidPaginationTokenException', traits: {"smithy.api#error" => "client"})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client"})
    InvalidPolicyRevisionIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#InvalidPolicyRevisionIdException', name: 'InvalidPolicyRevisionIdException', traits: {"smithy.api#error" => "client"})
    InvalidS3ObjectException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#InvalidS3ObjectException', name: 'InvalidS3ObjectException', traits: {"smithy.api#error" => "client"})
    IsLabeled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.rekognition#IsLabeled', name: 'IsLabeled')
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    JobTag = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#JobTag', name: 'JobTag', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-:+=\\/]+$"})
    KinesisDataArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#KinesisDataArn', name: 'KinesisDataArn', traits: {"smithy.api#pattern" => "^(^arn:([a-z\\d-]+):kinesis:([a-z\\d-]+):\\d{12}:.+$)$"})
    KinesisDataStream = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#KinesisDataStream', name: 'KinesisDataStream')
    KinesisVideoArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#KinesisVideoArn', name: 'KinesisVideoArn', traits: {"smithy.api#pattern" => "^(^arn:([a-z\\d-]+):kinesisvideo:([a-z\\d-]+):\\d{12}:.+$)$"})
    KinesisVideoStream = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#KinesisVideoStream', name: 'KinesisVideoStream')
    KinesisVideoStreamFragmentNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#KinesisVideoStreamFragmentNumber', name: 'KinesisVideoStreamFragmentNumber', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9]+$"})
    KinesisVideoStreamStartSelector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#KinesisVideoStreamStartSelector', name: 'KinesisVideoStreamStartSelector')
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,2048}$"})
    KnownGender = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#KnownGender', name: 'KnownGender')
    KnownGenderType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#KnownGenderType', name: 'KnownGenderType')
    Label = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Label', name: 'Label')
    LabelAlias = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#LabelAlias', name: 'LabelAlias')
    LabelAliases = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#LabelAliases', name: 'LabelAliases')
    LabelCategories = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#LabelCategories', name: 'LabelCategories')
    LabelCategory = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#LabelCategory', name: 'LabelCategory')
    LabelDetection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#LabelDetection', name: 'LabelDetection')
    LabelDetectionAggregateBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#LabelDetectionAggregateBy', name: 'LabelDetectionAggregateBy')
    LabelDetectionFeatureList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#LabelDetectionFeatureList', name: 'LabelDetectionFeatureList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    LabelDetectionFeatureName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#LabelDetectionFeatureName', name: 'LabelDetectionFeatureName')
    LabelDetectionSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#LabelDetectionSettings', name: 'LabelDetectionSettings')
    LabelDetectionSortBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#LabelDetectionSortBy', name: 'LabelDetectionSortBy')
    LabelDetections = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#LabelDetections', name: 'LabelDetections')
    Labels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#Labels', name: 'Labels')
    Landmark = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Landmark', name: 'Landmark')
    LandmarkType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#LandmarkType', name: 'LandmarkType')
    Landmarks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#Landmarks', name: 'Landmarks')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListCollectionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListCollectionsRequest', name: 'ListCollectionsRequest')
    ListCollectionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListCollectionsResponse', name: 'ListCollectionsResponse')
    ListDatasetEntriesPageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#ListDatasetEntriesPageSize', name: 'ListDatasetEntriesPageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListDatasetEntriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListDatasetEntriesRequest', name: 'ListDatasetEntriesRequest')
    ListDatasetEntriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListDatasetEntriesResponse', name: 'ListDatasetEntriesResponse')
    ListDatasetLabelsPageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#ListDatasetLabelsPageSize', name: 'ListDatasetLabelsPageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListDatasetLabelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListDatasetLabelsRequest', name: 'ListDatasetLabelsRequest')
    ListDatasetLabelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListDatasetLabelsResponse', name: 'ListDatasetLabelsResponse')
    ListFacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListFacesRequest', name: 'ListFacesRequest')
    ListFacesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListFacesResponse', name: 'ListFacesResponse')
    ListMediaAnalysisJobsPageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#ListMediaAnalysisJobsPageSize', name: 'ListMediaAnalysisJobsPageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListMediaAnalysisJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListMediaAnalysisJobsRequest', name: 'ListMediaAnalysisJobsRequest')
    ListMediaAnalysisJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListMediaAnalysisJobsResponse', name: 'ListMediaAnalysisJobsResponse')
    ListProjectPoliciesPageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#ListProjectPoliciesPageSize', name: 'ListProjectPoliciesPageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    ListProjectPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListProjectPoliciesRequest', name: 'ListProjectPoliciesRequest')
    ListProjectPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListProjectPoliciesResponse', name: 'ListProjectPoliciesResponse')
    ListStreamProcessorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListStreamProcessorsRequest', name: 'ListStreamProcessorsRequest')
    ListStreamProcessorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListStreamProcessorsResponse', name: 'ListStreamProcessorsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListUsersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListUsersRequest', name: 'ListUsersRequest')
    ListUsersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ListUsersResponse', name: 'ListUsersResponse')
    LivenessImageBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.rekognition#LivenessImageBlob', name: 'LivenessImageBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 204800}, "smithy.api#sensitive" => {}})
    LivenessOutputConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#LivenessOutputConfig', name: 'LivenessOutputConfig')
    LivenessS3KeyPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#LivenessS3KeyPrefix', name: 'LivenessS3KeyPrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 950}, "smithy.api#pattern" => "^\\S*$"})
    LivenessSessionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#LivenessSessionId', name: 'LivenessSessionId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    LivenessSessionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#LivenessSessionStatus', name: 'LivenessSessionStatus')
    MalformedPolicyDocumentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#MalformedPolicyDocumentException', name: 'MalformedPolicyDocumentException', traits: {"smithy.api#error" => "client"})
    MatchedUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#MatchedUser', name: 'MatchedUser')
    MaxDurationInSecondsULong = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#MaxDurationInSecondsULong', name: 'MaxDurationInSecondsULong', traits: {"smithy.api#range" => {"min" => 1, "max" => 120}})
    MaxFaces = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#MaxFaces', name: 'MaxFaces', traits: {"smithy.api#range" => {"min" => 1, "max" => 4096}})
    MaxFacesToIndex = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#MaxFacesToIndex', name: 'MaxFacesToIndex', traits: {"smithy.api#range" => {"min" => 1}})
    MaxPixelThreshold = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.rekognition#MaxPixelThreshold', name: 'MaxPixelThreshold', traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    MaxUserResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#MaxUserResults', name: 'MaxUserResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    MediaAnalysisDetectModerationLabelsConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisDetectModerationLabelsConfig', name: 'MediaAnalysisDetectModerationLabelsConfig')
    MediaAnalysisInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisInput', name: 'MediaAnalysisInput')
    MediaAnalysisJobDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisJobDescription', name: 'MediaAnalysisJobDescription')
    MediaAnalysisJobDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisJobDescriptions', name: 'MediaAnalysisJobDescriptions')
    MediaAnalysisJobFailureCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisJobFailureCode', name: 'MediaAnalysisJobFailureCode')
    MediaAnalysisJobFailureDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisJobFailureDetails', name: 'MediaAnalysisJobFailureDetails')
    MediaAnalysisJobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisJobId', name: 'MediaAnalysisJobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    MediaAnalysisJobName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisJobName', name: 'MediaAnalysisJobName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]+$"})
    MediaAnalysisJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisJobStatus', name: 'MediaAnalysisJobStatus')
    MediaAnalysisManifestSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisManifestSummary', name: 'MediaAnalysisManifestSummary')
    MediaAnalysisModelVersions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisModelVersions', name: 'MediaAnalysisModelVersions')
    MediaAnalysisOperationsConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisOperationsConfig', name: 'MediaAnalysisOperationsConfig')
    MediaAnalysisOutputConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisOutputConfig', name: 'MediaAnalysisOutputConfig')
    MediaAnalysisResults = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisResults', name: 'MediaAnalysisResults')
    MediaAnalysisS3KeyPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#MediaAnalysisS3KeyPrefix', name: 'MediaAnalysisS3KeyPrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 800}, "smithy.api#pattern" => "^\\S*$"})
    MinCoveragePercentage = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.rekognition#MinCoveragePercentage', name: 'MinCoveragePercentage', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ModerationLabel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ModerationLabel', name: 'ModerationLabel')
    ModerationLabels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#ModerationLabels', name: 'ModerationLabels')
    MouthOpen = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#MouthOpen', name: 'MouthOpen')
    Mustache = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Mustache', name: 'Mustache')
    NotificationChannel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#NotificationChannel', name: 'NotificationChannel')
    OrientationCorrection = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#OrientationCorrection', name: 'OrientationCorrection')
    OutputConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#OutputConfig', name: 'OutputConfig')
    PageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#PageSize', name: 'PageSize', traits: {"smithy.api#range" => {"min" => 0, "max" => 4096}})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    Parent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Parent', name: 'Parent')
    Parents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#Parents', name: 'Parents')
    Percent = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.rekognition#Percent', name: 'Percent', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    PersonDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#PersonDetail', name: 'PersonDetail')
    PersonDetection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#PersonDetection', name: 'PersonDetection')
    PersonDetections = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#PersonDetections', name: 'PersonDetections')
    PersonIndex = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#PersonIndex', name: 'PersonIndex', traits: {"smithy.api#default" => 0})
    PersonMatch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#PersonMatch', name: 'PersonMatch')
    PersonMatches = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#PersonMatches', name: 'PersonMatches')
    PersonTrackingSortBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#PersonTrackingSortBy', name: 'PersonTrackingSortBy')
    Point = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Point', name: 'Point')
    Polygon = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#Polygon', name: 'Polygon')
    Pose = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Pose', name: 'Pose')
    ProjectArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#ProjectArn', name: 'ProjectArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^(^arn:[a-z\\d-]+:rekognition:[a-z\\d-]+:\\d{12}:project\\/[a-zA-Z0-9_.\\-]{1,255}\\/[0-9]+$)$"})
    ProjectAutoUpdate = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#ProjectAutoUpdate', name: 'ProjectAutoUpdate')
    ProjectDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ProjectDescription', name: 'ProjectDescription')
    ProjectDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#ProjectDescriptions', name: 'ProjectDescriptions')
    ProjectName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#ProjectName', name: 'ProjectName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]+$"})
    ProjectNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#ProjectNames', name: 'ProjectNames', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ProjectPolicies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#ProjectPolicies', name: 'ProjectPolicies')
    ProjectPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ProjectPolicy', name: 'ProjectPolicy')
    ProjectPolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#ProjectPolicyDocument', name: 'ProjectPolicyDocument', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    ProjectPolicyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#ProjectPolicyName', name: 'ProjectPolicyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]+$"})
    ProjectPolicyRevisionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#ProjectPolicyRevisionId', name: 'ProjectPolicyRevisionId', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Fa-f]+$"})
    ProjectStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#ProjectStatus', name: 'ProjectStatus')
    ProjectVersionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#ProjectVersionArn', name: 'ProjectVersionArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^(^arn:[a-z\\d-]+:rekognition:[a-z\\d-]+:\\d{12}:project\\/[a-zA-Z0-9_.\\-]{1,255}\\/version\\/[a-zA-Z0-9_.\\-]{1,255}\\/[0-9]+$)$"})
    ProjectVersionDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ProjectVersionDescription', name: 'ProjectVersionDescription')
    ProjectVersionDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#ProjectVersionDescriptions', name: 'ProjectVersionDescriptions')
    ProjectVersionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#ProjectVersionId', name: 'ProjectVersionId', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^(^arn:[a-z\\d-]+:rekognition:[a-z\\d-]+:\\d{12}:project\\/[a-zA-Z0-9_.\\-]{1,255}\\/version\\/[a-zA-Z0-9_.\\-]{1,255}\\/[0-9]+$)$"})
    ProjectVersionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#ProjectVersionStatus', name: 'ProjectVersionStatus')
    ProjectVersionsPageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#ProjectVersionsPageSize', name: 'ProjectVersionsPageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ProjectsPageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#ProjectsPageSize', name: 'ProjectsPageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ProtectiveEquipmentBodyPart = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ProtectiveEquipmentBodyPart', name: 'ProtectiveEquipmentBodyPart')
    ProtectiveEquipmentPerson = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ProtectiveEquipmentPerson', name: 'ProtectiveEquipmentPerson')
    ProtectiveEquipmentPersonIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#ProtectiveEquipmentPersonIds', name: 'ProtectiveEquipmentPersonIds')
    ProtectiveEquipmentPersons = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#ProtectiveEquipmentPersons', name: 'ProtectiveEquipmentPersons')
    ProtectiveEquipmentSummarizationAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ProtectiveEquipmentSummarizationAttributes', name: 'ProtectiveEquipmentSummarizationAttributes')
    ProtectiveEquipmentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ProtectiveEquipmentSummary', name: 'ProtectiveEquipmentSummary')
    ProtectiveEquipmentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#ProtectiveEquipmentType', name: 'ProtectiveEquipmentType')
    ProtectiveEquipmentTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#ProtectiveEquipmentTypes', name: 'ProtectiveEquipmentTypes')
    ProvisionedThroughputExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ProvisionedThroughputExceededException', name: 'ProvisionedThroughputExceededException', traits: {"smithy.api#error" => "client"})
    PutProjectPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#PutProjectPolicyRequest', name: 'PutProjectPolicyRequest')
    PutProjectPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#PutProjectPolicyResponse', name: 'PutProjectPolicyResponse')
    QualityFilter = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#QualityFilter', name: 'QualityFilter')
    QueryString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#QueryString', name: 'QueryString', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    Reason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#Reason', name: 'Reason')
    Reasons = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#Reasons', name: 'Reasons')
    RecognizeCelebritiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#RecognizeCelebritiesRequest', name: 'RecognizeCelebritiesRequest')
    RecognizeCelebritiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#RecognizeCelebritiesResponse', name: 'RecognizeCelebritiesResponse')
    RegionOfInterest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#RegionOfInterest', name: 'RegionOfInterest')
    RegionsOfInterest = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#RegionsOfInterest', name: 'RegionsOfInterest', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    RekognitionUniqueId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#RekognitionUniqueId', name: 'RekognitionUniqueId', traits: {"smithy.api#pattern" => "^[0-9A-Za-z]*$"})
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResourceNotReadyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ResourceNotReadyException', name: 'ResourceNotReadyException', traits: {"smithy.api#error" => "client"})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#RoleArn', name: 'RoleArn', traits: {"smithy.api#pattern" => "^arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]*$"})
    S3Destination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#S3Destination', name: 'S3Destination')
    S3KeyPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#S3KeyPrefix', name: 'S3KeyPrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    S3Object = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#S3Object', name: 'S3Object')
    S3ObjectName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#S3ObjectName', name: 'S3ObjectName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    S3ObjectVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#S3ObjectVersion', name: 'S3ObjectVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    SNSTopicArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#SNSTopicArn', name: 'SNSTopicArn', traits: {"smithy.api#pattern" => "^(^arn:aws:sns:.*:\\w{12}:.+$)$"})
    SearchFacesByImageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#SearchFacesByImageRequest', name: 'SearchFacesByImageRequest')
    SearchFacesByImageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#SearchFacesByImageResponse', name: 'SearchFacesByImageResponse')
    SearchFacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#SearchFacesRequest', name: 'SearchFacesRequest')
    SearchFacesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#SearchFacesResponse', name: 'SearchFacesResponse')
    SearchUsersByImageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#SearchUsersByImageRequest', name: 'SearchUsersByImageRequest')
    SearchUsersByImageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#SearchUsersByImageResponse', name: 'SearchUsersByImageResponse')
    SearchUsersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#SearchUsersRequest', name: 'SearchUsersRequest')
    SearchUsersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#SearchUsersResponse', name: 'SearchUsersResponse')
    SearchedFace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#SearchedFace', name: 'SearchedFace')
    SearchedFaceDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#SearchedFaceDetails', name: 'SearchedFaceDetails')
    SearchedUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#SearchedUser', name: 'SearchedUser')
    SegmentConfidence = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.rekognition#SegmentConfidence', name: 'SegmentConfidence', traits: {"smithy.api#range" => {"min" => 50, "max" => 100}})
    SegmentDetection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#SegmentDetection', name: 'SegmentDetection')
    SegmentDetections = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#SegmentDetections', name: 'SegmentDetections')
    SegmentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#SegmentType', name: 'SegmentType')
    SegmentTypeInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#SegmentTypeInfo', name: 'SegmentTypeInfo')
    SegmentTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#SegmentTypes', name: 'SegmentTypes', traits: {"smithy.api#length" => {"min" => 1}})
    SegmentTypesInfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#SegmentTypesInfo', name: 'SegmentTypesInfo')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client"})
    SessionNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#SessionNotFoundException', name: 'SessionNotFoundException', traits: {"smithy.api#error" => "client"})
    ShotSegment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ShotSegment', name: 'ShotSegment')
    Smile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Smile', name: 'Smile')
    StartCelebrityRecognitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartCelebrityRecognitionRequest', name: 'StartCelebrityRecognitionRequest')
    StartCelebrityRecognitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartCelebrityRecognitionResponse', name: 'StartCelebrityRecognitionResponse')
    StartContentModerationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartContentModerationRequest', name: 'StartContentModerationRequest')
    StartContentModerationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartContentModerationResponse', name: 'StartContentModerationResponse')
    StartFaceDetectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartFaceDetectionRequest', name: 'StartFaceDetectionRequest')
    StartFaceDetectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartFaceDetectionResponse', name: 'StartFaceDetectionResponse')
    StartFaceSearchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartFaceSearchRequest', name: 'StartFaceSearchRequest')
    StartFaceSearchResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartFaceSearchResponse', name: 'StartFaceSearchResponse')
    StartLabelDetectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartLabelDetectionRequest', name: 'StartLabelDetectionRequest')
    StartLabelDetectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartLabelDetectionResponse', name: 'StartLabelDetectionResponse')
    StartMediaAnalysisJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartMediaAnalysisJobRequest', name: 'StartMediaAnalysisJobRequest')
    StartMediaAnalysisJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartMediaAnalysisJobResponse', name: 'StartMediaAnalysisJobResponse')
    StartPersonTrackingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartPersonTrackingRequest', name: 'StartPersonTrackingRequest')
    StartPersonTrackingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartPersonTrackingResponse', name: 'StartPersonTrackingResponse')
    StartProjectVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartProjectVersionRequest', name: 'StartProjectVersionRequest')
    StartProjectVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartProjectVersionResponse', name: 'StartProjectVersionResponse')
    StartSegmentDetectionFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartSegmentDetectionFilters', name: 'StartSegmentDetectionFilters')
    StartSegmentDetectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartSegmentDetectionRequest', name: 'StartSegmentDetectionRequest')
    StartSegmentDetectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartSegmentDetectionResponse', name: 'StartSegmentDetectionResponse')
    StartShotDetectionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartShotDetectionFilter', name: 'StartShotDetectionFilter')
    StartStreamProcessorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartStreamProcessorRequest', name: 'StartStreamProcessorRequest')
    StartStreamProcessorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartStreamProcessorResponse', name: 'StartStreamProcessorResponse')
    StartStreamProcessorSessionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#StartStreamProcessorSessionId', name: 'StartStreamProcessorSessionId')
    StartTechnicalCueDetectionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartTechnicalCueDetectionFilter', name: 'StartTechnicalCueDetectionFilter')
    StartTextDetectionFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartTextDetectionFilters', name: 'StartTextDetectionFilters')
    StartTextDetectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartTextDetectionRequest', name: 'StartTextDetectionRequest')
    StartTextDetectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StartTextDetectionResponse', name: 'StartTextDetectionResponse')
    StatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#StatusMessage', name: 'StatusMessage')
    StopProjectVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StopProjectVersionRequest', name: 'StopProjectVersionRequest')
    StopProjectVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StopProjectVersionResponse', name: 'StopProjectVersionResponse')
    StopStreamProcessorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StopStreamProcessorRequest', name: 'StopStreamProcessorRequest')
    StopStreamProcessorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StopStreamProcessorResponse', name: 'StopStreamProcessorResponse')
    StreamProcessingStartSelector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StreamProcessingStartSelector', name: 'StreamProcessingStartSelector')
    StreamProcessingStopSelector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StreamProcessingStopSelector', name: 'StreamProcessingStopSelector')
    StreamProcessor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StreamProcessor', name: 'StreamProcessor')
    StreamProcessorArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#StreamProcessorArn', name: 'StreamProcessorArn', traits: {"smithy.api#pattern" => "^(^arn:[a-z\\d-]+:rekognition:[a-z\\d-]+:\\d{12}:streamprocessor\\/.+$)$"})
    StreamProcessorDataSharingPreference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StreamProcessorDataSharingPreference', name: 'StreamProcessorDataSharingPreference')
    StreamProcessorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StreamProcessorInput', name: 'StreamProcessorInput')
    StreamProcessorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#StreamProcessorList', name: 'StreamProcessorList')
    StreamProcessorName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#StreamProcessorName', name: 'StreamProcessorName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]+$"})
    StreamProcessorNotificationChannel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StreamProcessorNotificationChannel', name: 'StreamProcessorNotificationChannel')
    StreamProcessorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StreamProcessorOutput', name: 'StreamProcessorOutput')
    StreamProcessorParameterToDelete = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#StreamProcessorParameterToDelete', name: 'StreamProcessorParameterToDelete')
    StreamProcessorParametersToDelete = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#StreamProcessorParametersToDelete', name: 'StreamProcessorParametersToDelete')
    StreamProcessorSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StreamProcessorSettings', name: 'StreamProcessorSettings')
    StreamProcessorSettingsForUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#StreamProcessorSettingsForUpdate', name: 'StreamProcessorSettingsForUpdate')
    StreamProcessorStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#StreamProcessorStatus', name: 'StreamProcessorStatus')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#String', name: 'String')
    Summary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Summary', name: 'Summary')
    Sunglasses = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Sunglasses', name: 'Sunglasses')
    SynthesizedJsonHumanLoopActivationConditionsEvaluationResults = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#SynthesizedJsonHumanLoopActivationConditionsEvaluationResults', name: 'SynthesizedJsonHumanLoopActivationConditionsEvaluationResults', traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}, "smithy.api#mediaType" => "application/json"})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.rekognition#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TechnicalCueSegment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#TechnicalCueSegment', name: 'TechnicalCueSegment')
    TechnicalCueType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#TechnicalCueType', name: 'TechnicalCueType')
    TestingData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#TestingData', name: 'TestingData')
    TestingDataResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#TestingDataResult', name: 'TestingDataResult')
    TextDetection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#TextDetection', name: 'TextDetection')
    TextDetectionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#TextDetectionList', name: 'TextDetectionList')
    TextDetectionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#TextDetectionResult', name: 'TextDetectionResult')
    TextDetectionResults = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#TextDetectionResults', name: 'TextDetectionResults')
    TextTypes = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#TextTypes', name: 'TextTypes')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "server"})
    Timecode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#Timecode', name: 'Timecode')
    Timestamp = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#Timestamp', name: 'Timestamp', traits: {"smithy.api#default" => 0})
    TrainingData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#TrainingData', name: 'TrainingData')
    TrainingDataResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#TrainingDataResult', name: 'TrainingDataResult')
    UInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#UInteger', name: 'UInteger', traits: {"smithy.api#range" => {"min" => 0}})
    ULong = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rekognition#ULong', name: 'ULong', traits: {"smithy.api#range" => {"min" => 0}})
    UnindexedFace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#UnindexedFace', name: 'UnindexedFace')
    UnindexedFaces = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#UnindexedFaces', name: 'UnindexedFaces')
    UnsearchedFace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#UnsearchedFace', name: 'UnsearchedFace')
    UnsearchedFaceReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#UnsearchedFaceReason', name: 'UnsearchedFaceReason')
    UnsearchedFaceReasons = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#UnsearchedFaceReasons', name: 'UnsearchedFaceReasons')
    UnsearchedFacesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#UnsearchedFacesList', name: 'UnsearchedFacesList')
    UnsuccessfulFaceAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#UnsuccessfulFaceAssociation', name: 'UnsuccessfulFaceAssociation')
    UnsuccessfulFaceAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#UnsuccessfulFaceAssociationList', name: 'UnsuccessfulFaceAssociationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    UnsuccessfulFaceAssociationReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#UnsuccessfulFaceAssociationReason', name: 'UnsuccessfulFaceAssociationReason')
    UnsuccessfulFaceAssociationReasons = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#UnsuccessfulFaceAssociationReasons', name: 'UnsuccessfulFaceAssociationReasons')
    UnsuccessfulFaceDeletion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#UnsuccessfulFaceDeletion', name: 'UnsuccessfulFaceDeletion')
    UnsuccessfulFaceDeletionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#UnsuccessfulFaceDeletionReason', name: 'UnsuccessfulFaceDeletionReason')
    UnsuccessfulFaceDeletionReasons = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#UnsuccessfulFaceDeletionReasons', name: 'UnsuccessfulFaceDeletionReasons')
    UnsuccessfulFaceDeletionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#UnsuccessfulFaceDeletionsList', name: 'UnsuccessfulFaceDeletionsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    UnsuccessfulFaceDisassociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#UnsuccessfulFaceDisassociation', name: 'UnsuccessfulFaceDisassociation')
    UnsuccessfulFaceDisassociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#UnsuccessfulFaceDisassociationList', name: 'UnsuccessfulFaceDisassociationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    UnsuccessfulFaceDisassociationReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#UnsuccessfulFaceDisassociationReason', name: 'UnsuccessfulFaceDisassociationReason')
    UnsuccessfulFaceDisassociationReasons = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#UnsuccessfulFaceDisassociationReasons', name: 'UnsuccessfulFaceDisassociationReasons')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateDatasetEntriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#UpdateDatasetEntriesRequest', name: 'UpdateDatasetEntriesRequest')
    UpdateDatasetEntriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#UpdateDatasetEntriesResponse', name: 'UpdateDatasetEntriesResponse')
    UpdateStreamProcessorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#UpdateStreamProcessorRequest', name: 'UpdateStreamProcessorRequest')
    UpdateStreamProcessorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#UpdateStreamProcessorResponse', name: 'UpdateStreamProcessorResponse')
    Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#Url', name: 'Url')
    Urls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#Urls', name: 'Urls', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    User = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#User', name: 'User')
    UserFaceIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#UserFaceIdList', name: 'UserFaceIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    UserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#UserId', name: 'UserId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-:]+$"})
    UserList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#UserList', name: 'UserList', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    UserMatch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#UserMatch', name: 'UserMatch')
    UserMatchList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#UserMatchList', name: 'UserMatchList', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    UserStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#UserStatus', name: 'UserStatus')
    ValidationData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#ValidationData', name: 'ValidationData')
    Version = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 5, "max" => 11}, "smithy.api#pattern" => "^(0|[1-9]\\d{0,2})\\.(0|[1-9]\\d{0,2})\\.(0|[1-9]\\d{0,2})$"})
    VersionDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#VersionDescription', name: 'VersionDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-_. ()':,;?]+$"})
    VersionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rekognition#VersionName', name: 'VersionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]+$"})
    VersionNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#VersionNames', name: 'VersionNames', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Versions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Versions', name: 'Versions')
    Video = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#Video', name: 'Video')
    VideoColorRange = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#VideoColorRange', name: 'VideoColorRange')
    VideoJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rekognition#VideoJobStatus', name: 'VideoJobStatus')
    VideoMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#VideoMetadata', name: 'VideoMetadata')
    VideoMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rekognition#VideoMetadataList', name: 'VideoMetadataList')
    VideoTooLargeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rekognition#VideoTooLargeException', name: 'VideoTooLargeException', traits: {"smithy.api#error" => "client"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    AccessDeniedException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    AccessDeniedException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AgeRange.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'Low', traits: {"smithy.api#documentation" => "<p>The lowest estimated age.</p>"}))
    AgeRange.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'High', traits: {"smithy.api#documentation" => "<p>The highest estimated age.</p>"}))
    AgeRange.type = Types::AgeRange
    Asset.add_member(:ground_truth_manifest, Smithy::Schema::Shapes::ShapeRef.new(shape: GroundTruthManifest, location_name: 'GroundTruthManifest'))
    Asset.type = Types::Asset
    Assets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Asset)
    AssociateFacesRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>The ID of an existing collection containing the UserID.</p>", "smithy.api#required" => {}}))
    AssociateFacesRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The ID for the existing UserID.</p>", "smithy.api#required" => {}}))
    AssociateFacesRequest.add_member(:face_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: UserFaceIdList, location_name: 'FaceIds', traits: {"smithy.api#documentation" => "<p>An array of FaceIDs to associate with the UserID.</p>", "smithy.api#required" => {}}))
    AssociateFacesRequest.add_member(:user_match_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'UserMatchThreshold', traits: {"smithy.api#documentation" => "<p>An optional value specifying the minimum confidence in the UserID match to return. The\n      default value is 75.</p>"}))
    AssociateFacesRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token used to identify the request to <code>AssociateFaces</code>. If you use\n      the same token with multiple <code>AssociateFaces</code> requests, the same response is\n      returned. Use ClientRequestToken to prevent the same request from being processed more than\n      once.</p>", "smithy.api#idempotencyToken" => {}}))
    AssociateFacesRequest.type = Types::AssociateFacesRequest
    AssociateFacesResponse.add_member(:associated_faces, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedFacesList, location_name: 'AssociatedFaces', traits: {"smithy.api#documentation" => "<p>An array of AssociatedFace objects containing FaceIDs that have been successfully associated\n      with the UserID. Returned if the AssociateFaces action is successful.</p>"}))
    AssociateFacesResponse.add_member(:unsuccessful_face_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceAssociationList, location_name: 'UnsuccessfulFaceAssociations', traits: {"smithy.api#documentation" => "<p>An array of UnsuccessfulAssociation objects containing FaceIDs that are not successfully\n      associated along with the reasons. Returned if the AssociateFaces action is successful.</p>"}))
    AssociateFacesResponse.add_member(:user_status, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStatus, location_name: 'UserStatus', traits: {"smithy.api#documentation" => "<p>The status of an update made to a UserID. Reflects if the UserID has been updated for\n      every requested change.</p>"}))
    AssociateFacesResponse.type = Types::AssociateFacesResponse
    AssociatedFace.add_member(:face_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: 'FaceId', traits: {"smithy.api#documentation" => "<p>Unique identifier assigned to the face.</p>"}))
    AssociatedFace.type = Types::AssociatedFace
    AssociatedFacesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedFace)
    Attribute.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    Attribute.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    Attribute.add_member(:age_range, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGE_RANGE', traits: {"smithy.api#enumValue" => "AGE_RANGE"}))
    Attribute.add_member(:beard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEARD', traits: {"smithy.api#enumValue" => "BEARD"}))
    Attribute.add_member(:emotions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMOTIONS', traits: {"smithy.api#enumValue" => "EMOTIONS"}))
    Attribute.add_member(:eye_direction, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EYE_DIRECTION', traits: {"smithy.api#enumValue" => "EYE_DIRECTION"}))
    Attribute.add_member(:eyeglasses, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EYEGLASSES', traits: {"smithy.api#enumValue" => "EYEGLASSES"}))
    Attribute.add_member(:eyes_open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EYES_OPEN', traits: {"smithy.api#enumValue" => "EYES_OPEN"}))
    Attribute.add_member(:gender, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENDER', traits: {"smithy.api#enumValue" => "GENDER"}))
    Attribute.add_member(:mouth_open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MOUTH_OPEN', traits: {"smithy.api#enumValue" => "MOUTH_OPEN"}))
    Attribute.add_member(:mustache, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MUSTACHE', traits: {"smithy.api#enumValue" => "MUSTACHE"}))
    Attribute.add_member(:face_occluded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FACE_OCCLUDED', traits: {"smithy.api#enumValue" => "FACE_OCCLUDED"}))
    Attribute.add_member(:smile, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMILE', traits: {"smithy.api#enumValue" => "SMILE"}))
    Attribute.add_member(:sunglasses, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUNGLASSES', traits: {"smithy.api#enumValue" => "SUNGLASSES"}))
    Attributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute)
    AudioMetadata.add_member(:codec, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Codec', traits: {"smithy.api#documentation" => "<p>The audio codec used to encode or decode the audio stream. </p>"}))
    AudioMetadata.add_member(:duration_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'DurationMillis', traits: {"smithy.api#documentation" => "<p>The duration of the audio stream in milliseconds.</p>"}))
    AudioMetadata.add_member(:sample_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'SampleRate', traits: {"smithy.api#documentation" => "<p>The sample rate for the audio stream.</p>"}))
    AudioMetadata.add_member(:number_of_channels, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'NumberOfChannels', traits: {"smithy.api#documentation" => "<p>The number of audio channels in the segment.</p>"}))
    AudioMetadata.type = Types::AudioMetadata
    AudioMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AudioMetadata)
    AuditImage.add_member(:bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: LivenessImageBlob, location_name: 'Bytes', traits: {"smithy.api#documentation" => "<p>The Base64-encoded bytes representing an image selected from the Face Liveness video and\n      returned for audit purposes.</p>"}))
    AuditImage.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'S3Object'))
    AuditImage.add_member(:bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'BoundingBox'))
    AuditImage.type = Types::AuditImage
    AuditImages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AuditImage)
    Beard.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Value', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Boolean value that indicates whether the face has beard or not.</p>"}))
    Beard.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Level of confidence in the determination.</p>"}))
    Beard.type = Types::Beard
    BlackFrame.add_member(:max_pixel_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPixelThreshold, location_name: 'MaxPixelThreshold', traits: {"smithy.api#documentation" => "<p>\n      A threshold used to determine the maximum luminance value for a pixel to be considered black. In a full color range video,\n      luminance values range from 0-255. A pixel value of 0 is pure black, and the most strict filter. The maximum black pixel\n      value is computed as follows: max_black_pixel_value = minimum_luminance + MaxPixelThreshold *luminance_range.\n    </p>\n         <p>For example, for a full range video with BlackPixelThreshold = 0.1,  max_black_pixel_value is 0 + 0.1 * (255-0) = 25.5.</p>\n         <p>The default value of MaxPixelThreshold is 0.2, which maps to a max_black_pixel_value of 51 for a full range video.\n      You can lower this threshold to be more strict on black levels.</p>"}))
    BlackFrame.add_member(:min_coverage_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: MinCoveragePercentage, location_name: 'MinCoveragePercentage', traits: {"smithy.api#documentation" => "<p>\n      The minimum percentage of pixels in a frame that need to have a luminance below the max_black_pixel_value for a frame to be considered\n      a black frame. Luminance is calculated using the BT.709 matrix.\n    </p>\n         <p>The default value is 99, which means at least 99% of all pixels in the frame are black pixels as per the <code>MaxPixelThreshold</code>\n      set. You can reduce this value to allow more noise on the black frame.</p>"}))
    BlackFrame.type = Types::BlackFrame
    BodyPart.add_member(:face, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FACE', traits: {"smithy.api#enumValue" => "FACE"}))
    BodyPart.add_member(:head, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEAD', traits: {"smithy.api#enumValue" => "HEAD"}))
    BodyPart.add_member(:left_hand, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEFT_HAND', traits: {"smithy.api#enumValue" => "LEFT_HAND"}))
    BodyPart.add_member(:right_hand, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RIGHT_HAND', traits: {"smithy.api#enumValue" => "RIGHT_HAND"}))
    BodyParts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentBodyPart)
    BoundingBox.add_member(:width, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Width', traits: {"smithy.api#documentation" => "<p>Width of the bounding box as a ratio of the overall image width.</p>"}))
    BoundingBox.add_member(:height, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Height', traits: {"smithy.api#documentation" => "<p>Height of the bounding box as a ratio of the overall image height.</p>"}))
    BoundingBox.add_member(:left, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Left', traits: {"smithy.api#documentation" => "<p>Left coordinate of the bounding box as a ratio of overall image width.</p>"}))
    BoundingBox.add_member(:top, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Top', traits: {"smithy.api#documentation" => "<p>Top coordinate of the bounding box as a ratio of overall image height.</p>"}))
    BoundingBox.type = Types::BoundingBox
    Celebrity.add_member(:urls, Smithy::Schema::Shapes::ShapeRef.new(shape: Urls, location_name: 'Urls', traits: {"smithy.api#documentation" => "<p>An array of URLs pointing to additional information about the celebrity. If there is no\n      additional information about the celebrity, this list is empty.</p>"}))
    Celebrity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the celebrity.</p>"}))
    Celebrity.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RekognitionUniqueId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>A unique identifier for the celebrity. </p>"}))
    Celebrity.add_member(:face, Smithy::Schema::Shapes::ShapeRef.new(shape: ComparedFace, location_name: 'Face', traits: {"smithy.api#documentation" => "<p>Provides information about the celebrity's face, such as its location on the\n      image.</p>"}))
    Celebrity.add_member(:match_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'MatchConfidence', traits: {"smithy.api#documentation" => "<p>The confidence, in percentage, that Amazon Rekognition has that the recognized face is the\n      celebrity.</p>"}))
    Celebrity.add_member(:known_gender, Smithy::Schema::Shapes::ShapeRef.new(shape: KnownGender, location_name: 'KnownGender'))
    Celebrity.type = Types::Celebrity
    CelebrityDetail.add_member(:urls, Smithy::Schema::Shapes::ShapeRef.new(shape: Urls, location_name: 'Urls', traits: {"smithy.api#documentation" => "<p>An array of URLs pointing to additional celebrity information. </p>"}))
    CelebrityDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the celebrity.</p>"}))
    CelebrityDetail.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RekognitionUniqueId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the celebrity. </p>"}))
    CelebrityDetail.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence, in percentage, that Amazon Rekognition has that the recognized face is the celebrity. </p>"}))
    CelebrityDetail.add_member(:bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'BoundingBox', traits: {"smithy.api#documentation" => "<p>Bounding box around the body of a celebrity.</p>"}))
    CelebrityDetail.add_member(:face, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail, location_name: 'Face', traits: {"smithy.api#documentation" => "<p>Face details for the recognized celebrity.</p>"}))
    CelebrityDetail.add_member(:known_gender, Smithy::Schema::Shapes::ShapeRef.new(shape: KnownGender, location_name: 'KnownGender', traits: {"smithy.api#documentation" => "<p>Retrieves the known gender for the celebrity.</p>"}))
    CelebrityDetail.type = Types::CelebrityDetail
    CelebrityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Celebrity)
    CelebrityRecognition.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time, in milliseconds from the start of the video, that the celebrity was recognized.\n         Note that <code>Timestamp</code> is not guaranteed to be accurate to the individual frame where the celebrity first appears.</p>"}))
    CelebrityRecognition.add_member(:celebrity, Smithy::Schema::Shapes::ShapeRef.new(shape: CelebrityDetail, location_name: 'Celebrity', traits: {"smithy.api#documentation" => "<p>Information about a recognized celebrity.</p>"}))
    CelebrityRecognition.type = Types::CelebrityRecognition
    CelebrityRecognitionSortBy.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ID', traits: {"smithy.api#enumValue" => "ID"}))
    CelebrityRecognitionSortBy.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    CelebrityRecognitions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CelebrityRecognition)
    Challenge.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the challenge being used for the Face Liveness session.</p>", "smithy.api#required" => {}}))
    Challenge.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The version of the challenge being used for the Face Liveness session.</p>", "smithy.api#required" => {}}))
    Challenge.type = Types::Challenge
    ChallengePreference.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The types of challenges that have been selected for the Face Liveness session.</p>", "smithy.api#required" => {}}))
    ChallengePreference.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Versions, location_name: 'Versions', traits: {"smithy.api#documentation" => "<p>The version of the challenges that have been selected for the Face Liveness session.</p>"}))
    ChallengePreference.type = Types::ChallengePreference
    ChallengePreferences.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengePreference)
    ChallengeType.add_member(:face_movement_and_light_challenge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FACE_MOVEMENT_AND_LIGHT_CHALLENGE', traits: {"smithy.api#enumValue" => "FaceMovementAndLightChallenge"}))
    ChallengeType.add_member(:face_movement_challenge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FACE_MOVEMENT_CHALLENGE', traits: {"smithy.api#enumValue" => "FaceMovementChallenge"}))
    CollectionIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId)
    CompareFacesMatch.add_member(:similarity, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Similarity', traits: {"smithy.api#documentation" => "<p>Level of confidence that the faces match.</p>"}))
    CompareFacesMatch.add_member(:face, Smithy::Schema::Shapes::ShapeRef.new(shape: ComparedFace, location_name: 'Face', traits: {"smithy.api#documentation" => "<p>Provides face metadata (bounding box and confidence that the bounding box actually\n      contains a face).</p>"}))
    CompareFacesMatch.type = Types::CompareFacesMatch
    CompareFacesMatchList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CompareFacesMatch)
    CompareFacesRequest.add_member(:source_image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'SourceImage', traits: {"smithy.api#documentation" => "<p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to\n      call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>\n         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to\n      base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see\n      Images in the Amazon Rekognition developer guide.</p>", "smithy.api#required" => {}}))
    CompareFacesRequest.add_member(:target_image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'TargetImage', traits: {"smithy.api#documentation" => "<p>The target image as base64-encoded bytes or an S3 object. If you use the AWS CLI to\n      call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>\n         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to\n      base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see\n      Images in the Amazon Rekognition developer guide.</p>", "smithy.api#required" => {}}))
    CompareFacesRequest.add_member(:similarity_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'SimilarityThreshold', traits: {"smithy.api#documentation" => "<p>The minimum level of confidence in the face matches that a match must meet to be\n      included in the <code>FaceMatches</code> array.</p>"}))
    CompareFacesRequest.add_member(:quality_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: QualityFilter, location_name: 'QualityFilter', traits: {"smithy.api#documentation" => "<p>A filter that specifies a quality bar for how much filtering is done to identify faces.\n      Filtered faces aren't compared. If you specify <code>AUTO</code>, Amazon Rekognition chooses the\n      quality bar. If you specify <code>LOW</code>, <code>MEDIUM</code>, or <code>HIGH</code>,\n      filtering removes all faces that don’t meet the chosen quality bar.\n       The quality bar is\n      based on a variety of common use cases. Low-quality detections can occur for a number of\n      reasons. Some examples are an object that's misidentified as a face, a face that's too blurry,\n      or a face with a pose that's too extreme to use. If you specify <code>NONE</code>, no\n      filtering is performed. The default value is <code>NONE</code>. </p>\n         <p>To use quality filtering, the collection you are using must be associated with version 3\n      of the face model or higher.</p>"}))
    CompareFacesRequest.type = Types::CompareFacesRequest
    CompareFacesResponse.add_member(:source_image_face, Smithy::Schema::Shapes::ShapeRef.new(shape: ComparedSourceImageFace, location_name: 'SourceImageFace', traits: {"smithy.api#documentation" => "<p>The face in the source image that was used for comparison.</p>"}))
    CompareFacesResponse.add_member(:face_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: CompareFacesMatchList, location_name: 'FaceMatches', traits: {"smithy.api#documentation" => "<p>An array of faces in the target image that match the source image face. Each\n        <code>CompareFacesMatch</code> object provides the bounding box, the confidence level that\n      the bounding box contains a face, and the similarity score for the face in the bounding box\n      and the face in the source image.</p>"}))
    CompareFacesResponse.add_member(:unmatched_faces, Smithy::Schema::Shapes::ShapeRef.new(shape: CompareFacesUnmatchList, location_name: 'UnmatchedFaces', traits: {"smithy.api#documentation" => "<p>An array of faces in the target image that did not match the source image\n      face.</p>"}))
    CompareFacesResponse.add_member(:source_image_orientation_correction, Smithy::Schema::Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: 'SourceImageOrientationCorrection', traits: {"smithy.api#documentation" => "<p>The value of <code>SourceImageOrientationCorrection</code> is always null.</p>\n         <p>If the input image is in .jpeg format, it might contain exchangeable image file format\n      (Exif) metadata that includes the image's orientation. Amazon Rekognition uses this orientation\n      information to perform image correction. The bounding box coordinates are translated to\n      represent object locations after the orientation information in the Exif metadata is used to\n      correct the image orientation. Images in .png format don't contain Exif metadata.</p>\n         <p>Amazon Rekognition doesn’t perform image correction for images in .png format and .jpeg images\n      without orientation information in the image Exif metadata. The bounding box coordinates\n      aren't translated and represent the object locations before the image is rotated. </p>"}))
    CompareFacesResponse.add_member(:target_image_orientation_correction, Smithy::Schema::Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: 'TargetImageOrientationCorrection', traits: {"smithy.api#documentation" => "<p>The value of <code>TargetImageOrientationCorrection</code> is always null.</p>\n         <p>If the input image is in .jpeg format, it might contain exchangeable image file format\n      (Exif) metadata that includes the image's orientation. Amazon Rekognition uses this orientation\n      information to perform image correction. The bounding box coordinates are translated to\n      represent object locations after the orientation information in the Exif metadata is used to\n      correct the image orientation. Images in .png format don't contain Exif metadata.</p>\n         <p>Amazon Rekognition doesn’t perform image correction for images in .png format and .jpeg images\n      without orientation information in the image Exif metadata. The bounding box coordinates\n      aren't translated and represent the object locations before the image is rotated. </p>"}))
    CompareFacesResponse.type = Types::CompareFacesResponse
    CompareFacesUnmatchList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComparedFace)
    ComparedFace.add_member(:bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'BoundingBox', traits: {"smithy.api#documentation" => "<p>Bounding box of the face.</p>"}))
    ComparedFace.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Level of confidence that what the bounding box contains is a face.</p>"}))
    ComparedFace.add_member(:landmarks, Smithy::Schema::Shapes::ShapeRef.new(shape: Landmarks, location_name: 'Landmarks', traits: {"smithy.api#documentation" => "<p>An array of facial landmarks.</p>"}))
    ComparedFace.add_member(:pose, Smithy::Schema::Shapes::ShapeRef.new(shape: Pose, location_name: 'Pose', traits: {"smithy.api#documentation" => "<p>Indicates the pose of the face as determined by its pitch, roll, and yaw.</p>"}))
    ComparedFace.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageQuality, location_name: 'Quality', traits: {"smithy.api#documentation" => "<p>Identifies face image brightness and sharpness. </p>"}))
    ComparedFace.add_member(:emotions, Smithy::Schema::Shapes::ShapeRef.new(shape: Emotions, location_name: 'Emotions', traits: {"smithy.api#documentation" => "<p> The emotions that appear to be expressed on the face, and the confidence level in the\n      determination. Valid values include \"Happy\", \"Sad\", \"Angry\", \"Confused\", \"Disgusted\",\n      \"Surprised\", \"Calm\", \"Unknown\", and \"Fear\". </p>"}))
    ComparedFace.add_member(:smile, Smithy::Schema::Shapes::ShapeRef.new(shape: Smile, location_name: 'Smile', traits: {"smithy.api#documentation" => "<p> Indicates whether or not the face is smiling, and the confidence level in the\n      determination. </p>"}))
    ComparedFace.type = Types::ComparedFace
    ComparedFaceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComparedFace)
    ComparedSourceImageFace.add_member(:bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'BoundingBox', traits: {"smithy.api#documentation" => "<p>Bounding box of the face.</p>"}))
    ComparedSourceImageFace.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Confidence level that the selected bounding box contains a face.</p>"}))
    ComparedSourceImageFace.type = Types::ComparedSourceImageFace
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ConflictException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    ConflictException.type = Types::ConflictException
    ConnectedHomeLabels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectedHomeLabel)
    ConnectedHomeSettings.add_member(:labels, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectedHomeLabels, location_name: 'Labels', traits: {"smithy.api#documentation" => "<p>\n            Specifies what you want to detect in the video, such as people, packages, or pets. The current valid labels you can include in this list are: \"PERSON\", \"PET\", \"PACKAGE\", and \"ALL\".\n        </p>", "smithy.api#required" => {}}))
    ConnectedHomeSettings.add_member(:min_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'MinConfidence', traits: {"smithy.api#documentation" => "<p>\n            The minimum confidence required to label an object in the video. \n        </p>"}))
    ConnectedHomeSettings.type = Types::ConnectedHomeSettings
    ConnectedHomeSettingsForUpdate.add_member(:labels, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectedHomeLabels, location_name: 'Labels', traits: {"smithy.api#documentation" => "<p>\n            Specifies what you want to detect in the video, such as people, packages, or pets. The current valid labels you can include in this list are: \"PERSON\", \"PET\", \"PACKAGE\", and \"ALL\".\n        </p>"}))
    ConnectedHomeSettingsForUpdate.add_member(:min_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'MinConfidence', traits: {"smithy.api#documentation" => "<p>\n            The minimum confidence required to label an object in the video. \n        </p>"}))
    ConnectedHomeSettingsForUpdate.type = Types::ConnectedHomeSettingsForUpdate
    ContentClassifier.add_member(:free_of_personally_identifiable_information, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION', traits: {"smithy.api#enumValue" => "FreeOfPersonallyIdentifiableInformation"}))
    ContentClassifier.add_member(:free_of_adult_content, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FREE_OF_ADULT_CONTENT', traits: {"smithy.api#enumValue" => "FreeOfAdultContent"}))
    ContentClassifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContentClassifier)
    ContentModerationAggregateBy.add_member(:timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMPS', traits: {"smithy.api#enumValue" => "TIMESTAMPS"}))
    ContentModerationAggregateBy.add_member(:segments, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEGMENTS', traits: {"smithy.api#enumValue" => "SEGMENTS"}))
    ContentModerationDetection.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Time, in milliseconds from the beginning of the video, that the content moderation label was detected.\n          Note that <code>Timestamp</code> is not guaranteed to be accurate to the individual frame where the moderated content first appears.</p>"}))
    ContentModerationDetection.add_member(:moderation_label, Smithy::Schema::Shapes::ShapeRef.new(shape: ModerationLabel, location_name: 'ModerationLabel', traits: {"smithy.api#documentation" => "<p>The content moderation label detected by in the stored video.</p>"}))
    ContentModerationDetection.add_member(:start_timestamp_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'StartTimestampMillis', traits: {"smithy.api#documentation" => "<p>The time in milliseconds defining the start of the timeline segment containing a\n      continuously detected moderation label.</p>"}))
    ContentModerationDetection.add_member(:end_timestamp_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'EndTimestampMillis', traits: {"smithy.api#documentation" => "<p> The time in milliseconds defining the end of the timeline segment containing a\n      continuously detected moderation label. </p>"}))
    ContentModerationDetection.add_member(:duration_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'DurationMillis', traits: {"smithy.api#documentation" => "<p> The time duration of a segment in milliseconds, I.e. time elapsed from\n      StartTimestampMillis to EndTimestampMillis. </p>"}))
    ContentModerationDetection.add_member(:content_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTypes, location_name: 'ContentTypes', traits: {"smithy.api#documentation" => "<p>A list of predicted results for the type of content an image contains. For example, \n      the image content might be from animation, sports, or a video game.</p>"}))
    ContentModerationDetection.type = Types::ContentModerationDetection
    ContentModerationDetections.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContentModerationDetection)
    ContentModerationSortBy.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAME', traits: {"smithy.api#enumValue" => "NAME"}))
    ContentModerationSortBy.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    ContentType.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence level of the label given</p>"}))
    ContentType.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the label</p>"}))
    ContentType.type = Types::ContentType
    ContentTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType)
    CopyProjectVersionRequest.add_member(:source_project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'SourceProjectArn', traits: {"smithy.api#documentation" => "<p>The ARN of the source project in the trusting AWS account.</p>", "smithy.api#required" => {}}))
    CopyProjectVersionRequest.add_member(:source_project_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: 'SourceProjectVersionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the model version in the source project that you want to copy to a destination project.</p>", "smithy.api#required" => {}}))
    CopyProjectVersionRequest.add_member(:destination_project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'DestinationProjectArn', traits: {"smithy.api#documentation" => "<p>The ARN of the project in the trusted AWS account that you want to copy the model version to. </p>", "smithy.api#required" => {}}))
    CopyProjectVersionRequest.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'VersionName', traits: {"smithy.api#documentation" => "<p>A name for the version of the model that's copied to the destination project.</p>", "smithy.api#required" => {}}))
    CopyProjectVersionRequest.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#documentation" => "<p>The S3 bucket and folder location where the training output for the source model version is placed.</p>", "smithy.api#required" => {}}))
    CopyProjectVersionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value tags to assign to the model version. </p>"}))
    CopyProjectVersionRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The identifier for your AWS Key Management Service key (AWS KMS key).\n         You can supply the Amazon Resource Name (ARN) of your KMS key, the ID of your KMS key,\n         an alias for your KMS key, or an alias ARN.\n         The key is used to encrypt training results\n         and manifest files written to the output Amazon S3 bucket (<code>OutputConfig</code>).</p>\n         <p>If you choose to use your own KMS key, you need the following permissions on the KMS key.</p>\n         <ul>\n            <li>\n               <p>kms:CreateGrant</p>\n            </li>\n            <li>\n               <p>kms:DescribeKey</p>\n            </li>\n            <li>\n               <p>kms:GenerateDataKey</p>\n            </li>\n            <li>\n               <p>kms:Decrypt</p>\n            </li>\n         </ul>\n         <p>If you don't specify a value for <code>KmsKeyId</code>, images copied into the service are encrypted\n         using a key that AWS owns and manages.</p>"}))
    CopyProjectVersionRequest.type = Types::CopyProjectVersionRequest
    CopyProjectVersionResponse.add_member(:project_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: 'ProjectVersionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the copied model version in the destination project. </p>"}))
    CopyProjectVersionResponse.type = Types::CopyProjectVersionResponse
    CoversBodyPart.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence that Amazon Rekognition has in the value of <code>Value</code>.</p>"}))
    CoversBodyPart.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Value', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>True if the PPE covers the corresponding body part, otherwise false.</p>"}))
    CoversBodyPart.type = Types::CoversBodyPart
    CreateCollectionRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>ID for the collection that you are creating.</p>", "smithy.api#required" => {}}))
    CreateCollectionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> A set of tags (key-value pairs) that you want to attach to the collection. </p>"}))
    CreateCollectionRequest.type = Types::CreateCollectionRequest
    CreateCollectionResponse.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>HTTP status code indicating the result of the operation.</p>"}))
    CreateCollectionResponse.add_member(:collection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CollectionArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the collection. You can use this to manage permissions on\n      your resources. </p>"}))
    CreateCollectionResponse.add_member(:face_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FaceModelVersion', traits: {"smithy.api#documentation" => "<p>Version number of the face detection model associated with the collection you are\n      creating.</p>"}))
    CreateCollectionResponse.type = Types::CreateCollectionResponse
    CreateDatasetRequest.add_member(:dataset_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSource, location_name: 'DatasetSource', traits: {"smithy.api#documentation" => "<p>\nThe source files for the dataset. You can specify the ARN of an existing dataset or specify the Amazon S3 bucket location\nof an Amazon Sagemaker format manifest file. If you don't specify <code>datasetSource</code>, an empty dataset is created.\n  To add labeled images to the dataset,  You can use the console or call <a>UpdateDatasetEntries</a>.\n  \n</p>"}))
    CreateDatasetRequest.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'DatasetType', traits: {"smithy.api#documentation" => "<p>\nThe type of the dataset. Specify <code>TRAIN</code> to create a training dataset. Specify <code>TEST</code> \n   to create a test dataset.\n</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'ProjectArn', traits: {"smithy.api#documentation" => "<p>\nThe ARN of the Amazon Rekognition Custom Labels project to which you want to asssign the dataset.\n</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A set of tags (key-value pairs) that you want to attach to the dataset.</p>"}))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>\nThe ARN of the created  Amazon Rekognition Custom Labels dataset.\n</p>"}))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateFaceLivenessSessionRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p> The identifier for your AWS Key Management Service key (AWS KMS key). Used to encrypt\n      audit images and reference images.</p>"}))
    CreateFaceLivenessSessionRequest.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFaceLivenessSessionRequestSettings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>A session settings object. It contains settings for the operation to be performed. For\n      Face Liveness, it accepts <code>OutputConfig</code> and <code>AuditImagesLimit</code>.</p>"}))
    CreateFaceLivenessSessionRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token is used to recognize the Face Liveness request. If the same token is used\n      with multiple <code>CreateFaceLivenessSession</code> requests, the same session is returned.\n      This token is employed to avoid unintentionally creating the same session multiple\n      times.</p>"}))
    CreateFaceLivenessSessionRequest.type = Types::CreateFaceLivenessSessionRequest
    CreateFaceLivenessSessionRequestSettings.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LivenessOutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#documentation" => "<p>Can specify the location of an Amazon S3 bucket, where reference and audit images will be\n      stored. Note that the Amazon S3 bucket must be located in the caller's AWS account and in the\n      same region as the Face Liveness end-point. Additionally, the Amazon S3 object keys are\n      auto-generated by the Face Liveness system. Requires that the caller has the\n        <code>s3:PutObject</code> permission on the Amazon S3 bucket.</p>"}))
    CreateFaceLivenessSessionRequestSettings.add_member(:audit_images_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditImagesLimit, location_name: 'AuditImagesLimit', traits: {"smithy.api#documentation" => "<p>Number of audit images to be returned back. Takes an integer between 0-4. Any integer less\n      than 0 will return 0, any integer above 4 will return 4 images in the response. By default, it\n      is set to 0. The limit is best effort and is based on the actual duration of the\n      selfie-video.</p>"}))
    CreateFaceLivenessSessionRequestSettings.add_member(:challenge_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengePreferences, location_name: 'ChallengePreferences', traits: {"smithy.api#documentation" => "<p>Indicates preferred challenge types and versions for the Face Liveness session to be created.</p>"}))
    CreateFaceLivenessSessionRequestSettings.type = Types::CreateFaceLivenessSessionRequestSettings
    CreateFaceLivenessSessionResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LivenessSessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>A unique 128-bit UUID identifying a Face Liveness session. \n      A new sessionID must be used for every Face Liveness check. If a given sessionID is used for subsequent \n      Face Liveness checks, the checks will fail. Additionally, a SessionId expires 3 minutes after it's sent, \n      making all Liveness data associated with the session (e.g., sessionID, reference image, audit images, etc.) unavailable.\n    </p>", "smithy.api#required" => {}}))
    CreateFaceLivenessSessionResponse.type = Types::CreateFaceLivenessSessionResponse
    CreateProjectRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project to create.</p>", "smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:feature, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeature, location_name: 'Feature', traits: {"smithy.api#documentation" => "<p>Specifies feature that is being customized. If no value is provided CUSTOM_LABELS is used as a default.</p>"}))
    CreateProjectRequest.add_member(:auto_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectAutoUpdate, location_name: 'AutoUpdate', traits: {"smithy.api#documentation" => "<p>Specifies whether automatic retraining should be attempted for the versions of the\n         project. Automatic retraining is done as a best effort. Required argument for Content\n         Moderation. Applicable only to adapters.</p>"}))
    CreateProjectRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A set of tags (key-value pairs) that you want to attach to the project.</p>"}))
    CreateProjectRequest.type = Types::CreateProjectRequest
    CreateProjectResponse.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'ProjectArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the new project. You can use the ARN to \n      configure IAM access to the project. </p>"}))
    CreateProjectResponse.type = Types::CreateProjectResponse
    CreateProjectVersionRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'ProjectArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Rekognition project that will manage the project version you want to\n         train.</p>", "smithy.api#required" => {}}))
    CreateProjectVersionRequest.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'VersionName', traits: {"smithy.api#documentation" => "<p>A name for the version of the project version. This value must be unique.</p>", "smithy.api#required" => {}}))
    CreateProjectVersionRequest.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket location to store the results of training. The bucket can be any S3\n         bucket in your AWS account. You need <code>s3:PutObject</code> permission on the bucket.\n      </p>", "smithy.api#required" => {}}))
    CreateProjectVersionRequest.add_member(:training_data, Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingData, location_name: 'TrainingData', traits: {"smithy.api#documentation" => "<p>Specifies an external manifest that the services uses to train the project version.\n         If you specify <code>TrainingData</code> you must also specify <code>TestingData</code>.\n         The project must not have any associated datasets. </p>"}))
    CreateProjectVersionRequest.add_member(:testing_data, Smithy::Schema::Shapes::ShapeRef.new(shape: TestingData, location_name: 'TestingData', traits: {"smithy.api#documentation" => "<p>Specifies an external manifest that the service uses to test the project version. If\n         you specify <code>TestingData</code> you must also specify <code>TrainingData</code>. The\n         project must not have any associated datasets.</p>"}))
    CreateProjectVersionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> A set of tags (key-value pairs) that you want to attach to the project version. </p>"}))
    CreateProjectVersionRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The identifier for your AWS Key Management Service key (AWS KMS key). You can supply\n         the Amazon Resource Name (ARN) of your KMS key, the ID of your KMS key, an alias for\n         your KMS key, or an alias ARN. The key is used to encrypt training images, test images, and manifest files copied\n         into the service for the project version. Your source images are unaffected. The\n         key is also used to encrypt training results and manifest files written to the output Amazon S3\n         bucket (<code>OutputConfig</code>).</p>\n         <p>If you choose to use your own KMS key, you need the following permissions on the KMS key.</p>\n         <ul>\n            <li>\n               <p>kms:CreateGrant</p>\n            </li>\n            <li>\n               <p>kms:DescribeKey</p>\n            </li>\n            <li>\n               <p>kms:GenerateDataKey</p>\n            </li>\n            <li>\n               <p>kms:Decrypt</p>\n            </li>\n         </ul>\n         <p>If you don't specify a value for <code>KmsKeyId</code>, images copied into the service are encrypted\n         using a key that AWS owns and manages.</p>"}))
    CreateProjectVersionRequest.add_member(:version_description, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionDescription, location_name: 'VersionDescription', traits: {"smithy.api#documentation" => "<p>A description applied to the project version being created.</p>"}))
    CreateProjectVersionRequest.add_member(:feature_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeatureConfig, location_name: 'FeatureConfig', traits: {"smithy.api#documentation" => "<p>Feature-specific configuration of the training job. If the job configuration does not match the feature type associated with the project, an InvalidParameterException is returned.</p>"}))
    CreateProjectVersionRequest.type = Types::CreateProjectVersionRequest
    CreateProjectVersionResponse.add_member(:project_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: 'ProjectVersionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the model or the project version that was created. Use\n            <code>DescribeProjectVersion</code> to get the current status of the training\n         operation.</p>"}))
    CreateProjectVersionResponse.type = Types::CreateProjectVersionResponse
    CreateStreamProcessorRequest.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorInput, location_name: 'Input', traits: {"smithy.api#documentation" => "<p>Kinesis video stream stream that provides the source streaming video. If you are using the AWS CLI, the parameter name is <code>StreamProcessorInput</code>. This is required for both face search and label detection stream processors.</p>", "smithy.api#required" => {}}))
    CreateStreamProcessorRequest.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorOutput, location_name: 'Output', traits: {"smithy.api#documentation" => "<p>Kinesis data stream stream or Amazon S3 bucket location to which Amazon Rekognition Video puts the analysis results. If you are using the AWS CLI, the parameter name is <code>StreamProcessorOutput</code>. \n            This must be a <a>S3Destination</a> of an Amazon S3 bucket that you own for a label detection stream processor or a Kinesis data stream ARN for a face search stream processor.</p>", "smithy.api#required" => {}}))
    CreateStreamProcessorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>An identifier you assign to the stream processor. You can use <code>Name</code> to\n            manage the stream processor. For example, you can get the current status of the stream processor by calling <a>DescribeStreamProcessor</a>.\n            <code>Name</code> is idempotent. This is required for both face search and label detection stream processors.\n       </p>", "smithy.api#required" => {}}))
    CreateStreamProcessorRequest.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorSettings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>Input parameters used in a streaming video analyzed by a stream processor. You can use <code>FaceSearch</code> to recognize faces in a streaming video, or you can use <code>ConnectedHome</code> to detect labels.</p>", "smithy.api#required" => {}}))
    CreateStreamProcessorRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the IAM role that allows access to the stream processor. \n            The IAM role provides Rekognition read permissions for a Kinesis stream. \n            It also provides write permissions to an Amazon S3 bucket and Amazon Simple Notification Service topic for a label detection stream processor. This is required for both face search and label detection stream processors.</p>", "smithy.api#required" => {}}))
    CreateStreamProcessorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> A set of tags (key-value pairs) that you want to attach to the stream processor. </p>"}))
    CreateStreamProcessorRequest.add_member(:notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorNotificationChannel, location_name: 'NotificationChannel'))
    CreateStreamProcessorRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>\n            The identifier for your AWS Key Management Service key (AWS KMS key). This is an optional parameter for label detection stream processors and should not be used to create a face search stream processor.\n            You can supply the Amazon Resource Name (ARN) of your KMS key, the ID of your KMS key, an alias for your KMS key, or an alias ARN. \n            The key is used to encrypt results and data published to your Amazon S3 bucket, which includes  image frames and hero images. Your source images are unaffected. \n        </p>\n         <p>\n            </p>"}))
    CreateStreamProcessorRequest.add_member(:regions_of_interest, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: 'RegionsOfInterest', traits: {"smithy.api#documentation" => "<p>\n            Specifies locations in the frames where Amazon Rekognition checks for objects or people. You can specify up to 10 regions of interest, and each region has either a polygon or a bounding box. This is an optional parameter for label detection stream processors and should not be used to create a face search stream processor.\n        </p>"}))
    CreateStreamProcessorRequest.add_member(:data_sharing_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorDataSharingPreference, location_name: 'DataSharingPreference', traits: {"smithy.api#documentation" => "<p>\n            Shows whether you are sharing data with Rekognition to improve model performance. You can choose this option at the account level or on a per-stream basis.\n            Note that if you opt out at the account level this setting is ignored on individual streams.\n        </p>"}))
    CreateStreamProcessorRequest.type = Types::CreateStreamProcessorRequest
    CreateStreamProcessorResponse.add_member(:stream_processor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorArn, location_name: 'StreamProcessorArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Number for the newly created stream processor.</p>"}))
    CreateStreamProcessorResponse.type = Types::CreateStreamProcessorResponse
    CreateUserRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>The ID of an existing collection to which the new UserID needs to be created.</p>", "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>ID for the UserID to be created. This ID needs to be unique within the collection.</p>", "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token used to identify the request to <code>CreateUser</code>. If you use the\n      same token with multiple <code>CreateUser</code> requests, the same response is returned. Use\n      ClientRequestToken to prevent the same request from being processed more than once.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.type = Types::CreateUserResponse
    CustomLabel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the custom label.</p>"}))
    CustomLabel.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence that the model has in the detection of the custom label. The \n      range is 0-100. A higher value indicates a higher confidence.</p>"}))
    CustomLabel.add_member(:geometry, Smithy::Schema::Shapes::ShapeRef.new(shape: Geometry, location_name: 'Geometry', traits: {"smithy.api#documentation" => "<p>The location of the detected object on the image that corresponds to the custom label. \n         Includes an axis aligned coarse bounding box surrounding the object and a finer grain polygon\n         for more accurate spatial information.</p>"}))
    CustomLabel.type = Types::CustomLabel
    CustomLabels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLabel)
    CustomizationFeature.add_member(:content_moderation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTENT_MODERATION', traits: {"smithy.api#enumValue" => "CONTENT_MODERATION"}))
    CustomizationFeature.add_member(:custom_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_LABELS', traits: {"smithy.api#enumValue" => "CUSTOM_LABELS"}))
    CustomizationFeatureConfig.add_member(:content_moderation, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeatureContentModerationConfig, location_name: 'ContentModeration', traits: {"smithy.api#documentation" => "<p>Configuration options for Custom Moderation training.</p>"}))
    CustomizationFeatureConfig.type = Types::CustomizationFeatureConfig
    CustomizationFeatureContentModerationConfig.add_member(:confidence_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'ConfidenceThreshold', traits: {"smithy.api#documentation" => "<p>The confidence level you plan to use to identify if unsafe content is present during inference.</p>"}))
    CustomizationFeatureContentModerationConfig.type = Types::CustomizationFeatureContentModerationConfig
    CustomizationFeatures.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeature)
    DatasetChanges.add_member(:ground_truth, Smithy::Schema::Shapes::ShapeRef.new(shape: GroundTruthBlob, location_name: 'GroundTruth', traits: {"smithy.api#documentation" => "<p>A Base64-encoded binary data object\n   containing one or JSON lines that either update the dataset or are additions to the dataset.  You change a dataset by calling <a>UpdateDatasetEntries</a>.\n   If you are using an AWS SDK to call <code>UpdateDatasetEntries</code>, you don't need to encode <code>Changes</code> as the SDK encodes the data for you.\n\n</p>\n         <p>For example JSON lines,\n      see Image-Level labels in manifest files and \n      and Object localization in manifest files in the <i>Amazon Rekognition Custom Labels Developer Guide</i>.\n   </p>", "smithy.api#required" => {}}))
    DatasetChanges.type = Types::DatasetChanges
    DatasetDescription.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>\nThe Unix timestamp for the time and date that the dataset was created.\n</p>"}))
    DatasetDescription.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>\n   The Unix timestamp for the date and time that the dataset was last updated.\n</p>"}))
    DatasetDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\n   The status of the dataset.\n</p>"}))
    DatasetDescription.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>\n   The status message for the dataset. \n</p>"}))
    DatasetDescription.add_member(:status_message_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatusMessageCode, location_name: 'StatusMessageCode', traits: {"smithy.api#documentation" => "<p>\n   The status message code for the dataset operation. If a service error occurs, try the \n   API call again later. If a client error occurs, check the input parameters to the dataset\n   API call that failed.\n</p>"}))
    DatasetDescription.add_member(:dataset_stats, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStats, location_name: 'DatasetStats', traits: {"smithy.api#documentation" => "<p>\nThe status message code for the dataset.\n</p>"}))
    DatasetDescription.type = Types::DatasetDescription
    DatasetEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetEntry)
    DatasetLabelDescription.add_member(:label_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetLabel, location_name: 'LabelName', traits: {"smithy.api#documentation" => "<p>\nThe name of the label.\n</p>"}))
    DatasetLabelDescription.add_member(:label_stats, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetLabelStats, location_name: 'LabelStats', traits: {"smithy.api#documentation" => "<p>\nStatistics about the label.\n</p>"}))
    DatasetLabelDescription.type = Types::DatasetLabelDescription
    DatasetLabelDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetLabelDescription)
    DatasetLabelStats.add_member(:entry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'EntryCount', traits: {"smithy.api#documentation" => "<p>\nThe total number of images that use the label.\n</p>"}))
    DatasetLabelStats.add_member(:bounding_box_count, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'BoundingBoxCount', traits: {"smithy.api#documentation" => "<p>\nThe total number of images that have the label assigned to a bounding box.\n</p>"}))
    DatasetLabelStats.type = Types::DatasetLabelStats
    DatasetLabels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetLabel)
    DatasetMetadata.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>\n   The Unix timestamp for the date and time that the dataset was created. \n</p>"}))
    DatasetMetadata.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'DatasetType', traits: {"smithy.api#documentation" => "<p>\n   The type of the dataset.\n</p>"}))
    DatasetMetadata.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>\nThe Amazon Resource Name (ARN) for the dataset.\n</p>"}))
    DatasetMetadata.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\n   The status for the dataset.\n</p>"}))
    DatasetMetadata.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>\n   The status message for the dataset.\n</p>"}))
    DatasetMetadata.add_member(:status_message_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatusMessageCode, location_name: 'StatusMessageCode', traits: {"smithy.api#documentation" => "<p>\n   The status message code for the dataset operation. If a service error occurs, try the \n   API call again later. If a client error occurs, check the input parameters to the dataset\n   API call that failed.\n</p>"}))
    DatasetMetadata.type = Types::DatasetMetadata
    DatasetMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetMetadata)
    DatasetSource.add_member(:ground_truth_manifest, Smithy::Schema::Shapes::ShapeRef.new(shape: GroundTruthManifest, location_name: 'GroundTruthManifest'))
    DatasetSource.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>\nThe ARN of an Amazon Rekognition Custom Labels dataset that you want to copy.\n</p>"}))
    DatasetSource.type = Types::DatasetSource
    DatasetStats.add_member(:labeled_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'LabeledEntries', traits: {"smithy.api#documentation" => "<p>\nThe total number of images in the dataset that have labels.\n</p>"}))
    DatasetStats.add_member(:total_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'TotalEntries', traits: {"smithy.api#documentation" => "<p>\nThe total number of images in the dataset.\n</p>"}))
    DatasetStats.add_member(:total_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'TotalLabels', traits: {"smithy.api#documentation" => "<p>\nThe total number of labels declared in the dataset.\n</p>"}))
    DatasetStats.add_member(:error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'ErrorEntries', traits: {"smithy.api#documentation" => "<p>\n         The total number of entries that contain at least one error.\n      </p>"}))
    DatasetStats.type = Types::DatasetStats
    DatasetStatus.add_member(:create_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    DatasetStatus.add_member(:create_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_COMPLETE', traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    DatasetStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    DatasetStatus.add_member(:update_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    DatasetStatus.add_member(:update_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_COMPLETE', traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    DatasetStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    DatasetStatus.add_member(:delete_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    DatasetStatusMessageCode.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DatasetStatusMessageCode.add_member(:service_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_ERROR', traits: {"smithy.api#enumValue" => "SERVICE_ERROR"}))
    DatasetStatusMessageCode.add_member(:client_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLIENT_ERROR', traits: {"smithy.api#enumValue" => "CLIENT_ERROR"}))
    DatasetType.add_member(:train, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAIN', traits: {"smithy.api#enumValue" => "TRAIN"}))
    DatasetType.add_member(:test, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEST', traits: {"smithy.api#enumValue" => "TEST"}))
    DeleteCollectionRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>ID of the collection to delete.</p>", "smithy.api#required" => {}}))
    DeleteCollectionRequest.type = Types::DeleteCollectionRequest
    DeleteCollectionResponse.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>HTTP status code that indicates the result of the operation.</p>"}))
    DeleteCollectionResponse.type = Types::DeleteCollectionResponse
    DeleteDatasetRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>\nThe ARN of the Amazon Rekognition Custom Labels dataset that you want to delete. \n</p>", "smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteDatasetResponse.type = Types::DeleteDatasetResponse
    DeleteFacesRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>Collection from which to remove the specific faces.</p>", "smithy.api#required" => {}}))
    DeleteFacesRequest.add_member(:face_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceIdList, location_name: 'FaceIds', traits: {"smithy.api#documentation" => "<p>An array of face IDs to delete.</p>", "smithy.api#required" => {}}))
    DeleteFacesRequest.type = Types::DeleteFacesRequest
    DeleteFacesResponse.add_member(:deleted_faces, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceIdList, location_name: 'DeletedFaces', traits: {"smithy.api#documentation" => "<p>An array of strings (face IDs) of the faces that were deleted.</p>"}))
    DeleteFacesResponse.add_member(:unsuccessful_face_deletions, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDeletionsList, location_name: 'UnsuccessfulFaceDeletions', traits: {"smithy.api#documentation" => "<p>An array of any faces that weren't deleted.</p>"}))
    DeleteFacesResponse.type = Types::DeleteFacesResponse
    DeleteProjectPolicyRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'ProjectArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project that the project policy you want to delete is attached to.</p>", "smithy.api#required" => {}}))
    DeleteProjectPolicyRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyName, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p>The name of the policy that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteProjectPolicyRequest.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>The ID of the project policy revision that you want to delete.</p>"}))
    DeleteProjectPolicyRequest.type = Types::DeleteProjectPolicyRequest
    DeleteProjectPolicyResponse.type = Types::DeleteProjectPolicyResponse
    DeleteProjectRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'ProjectArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteProjectRequest.type = Types::DeleteProjectRequest
    DeleteProjectResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the delete project operation.</p>"}))
    DeleteProjectResponse.type = Types::DeleteProjectResponse
    DeleteProjectVersionRequest.add_member(:project_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: 'ProjectVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project version that you want to\n         delete.</p>", "smithy.api#required" => {}}))
    DeleteProjectVersionRequest.type = Types::DeleteProjectVersionRequest
    DeleteProjectVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the deletion operation.</p>"}))
    DeleteProjectVersionResponse.type = Types::DeleteProjectVersionResponse
    DeleteStreamProcessorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the stream processor you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteStreamProcessorRequest.type = Types::DeleteStreamProcessorRequest
    DeleteStreamProcessorResponse.type = Types::DeleteStreamProcessorResponse
    DeleteUserRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>The ID of an existing collection from which the UserID needs to be deleted. </p>", "smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>ID for the UserID to be deleted. </p>", "smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token used to identify the request to <code>DeleteUser</code>. If you use the\n      same token with multiple <code>DeleteUser </code>requests, the same response is returned. Use\n      ClientRequestToken to prevent the same request from being processed more than once.</p>", "smithy.api#idempotencyToken" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteUserResponse.type = Types::DeleteUserResponse
    DescribeCollectionRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>The ID of the collection to describe.</p>", "smithy.api#required" => {}}))
    DescribeCollectionRequest.type = Types::DescribeCollectionRequest
    DescribeCollectionResponse.add_member(:face_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'FaceCount', traits: {"smithy.api#documentation" => "<p>The number of faces that are indexed into the collection. To index faces into a\n         collection, use <a>IndexFaces</a>.</p>"}))
    DescribeCollectionResponse.add_member(:face_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FaceModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the face model that's used by the collection for face detection.</p>\n         <p>For more information, see Model versioning in the \n     Amazon Rekognition Developer Guide.</p>"}))
    DescribeCollectionResponse.add_member(:collection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CollectionARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the collection.</p>"}))
    DescribeCollectionResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>The number of milliseconds since the Unix epoch time until the creation of the collection.\n         The Unix epoch time is 00:00:00 Coordinated Universal Time (UTC), Thursday, 1 January 1970.</p>"}))
    DescribeCollectionResponse.add_member(:user_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'UserCount', traits: {"smithy.api#documentation" => "<p>The number of UserIDs assigned to the specified colleciton.</p>"}))
    DescribeCollectionResponse.type = Types::DescribeCollectionResponse
    DescribeDatasetRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>\nThe Amazon Resource Name (ARN) of the dataset that you want to describe.\n</p>", "smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetDescription, location_name: 'DatasetDescription', traits: {"smithy.api#documentation" => "<p>\nThe description for the dataset.\n</p>"}))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeProjectVersionsRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'ProjectArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project that contains the model/adapter you want\n         to describe.</p>", "smithy.api#required" => {}}))
    DescribeProjectVersionsRequest.add_member(:version_names, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionNames, location_name: 'VersionNames', traits: {"smithy.api#documentation" => "<p>A list of model or project version names that you want to describe. You can add\n         up to 10 model or project version names to the list. If you don't specify a value, all\n         project version descriptions are returned. A version name is part of a project version ARN. For example, <code>my-model.2020-01-21T09.10.15</code> is\n         the version name in the following ARN.\n               <code>arn:aws:rekognition:us-east-1:123456789012:project/getting-started/version/<i>my-model.2020-01-21T09.10.15</i>/1234567890123</code>.</p>"}))
    DescribeProjectVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more\n           results to retrieve), Amazon Rekognition returns a pagination token in the response. \n           You can use this pagination token to retrieve the next set of results. </p>"}))
    DescribeProjectVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionsPageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per paginated call. \n          The largest value you can specify is 100. If you specify a value greater than 100, a ValidationException\n          error occurs. The default value is 100. </p>"}))
    DescribeProjectVersionsRequest.type = Types::DescribeProjectVersionsRequest
    DescribeProjectVersionsResponse.add_member(:project_version_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionDescriptions, location_name: 'ProjectVersionDescriptions', traits: {"smithy.api#documentation" => "<p>A list of project version descriptions. The list is sorted by the creation date and\n         time of the project versions, latest to earliest.</p>"}))
    DescribeProjectVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more\n         results to retrieve), Amazon Rekognition returns a pagination token in the response. \n         You can use this pagination token to retrieve the next set of results. </p>"}))
    DescribeProjectVersionsResponse.type = Types::DescribeProjectVersionsResponse
    DescribeProjectsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more\n         results to retrieve), Rekognition returns a pagination token in the response. You can use this pagination \n         token to retrieve the next set of results. </p>"}))
    DescribeProjectsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectsPageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per paginated call. The largest value you can specify is 100. \n         If you specify a value greater than 100, a ValidationException\n         error occurs. The default value is 100. </p>"}))
    DescribeProjectsRequest.add_member(:project_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectNames, location_name: 'ProjectNames', traits: {"smithy.api#documentation" => "<p>A list of the projects that you want Rekognition to describe. If you don't specify a value, \n      the response includes descriptions for all the projects in your AWS account.</p>"}))
    DescribeProjectsRequest.add_member(:features, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeatures, location_name: 'Features', traits: {"smithy.api#documentation" => "<p>Specifies the type of customization to filter projects by. If no value is specified, \n         CUSTOM_LABELS is used as a default.</p>"}))
    DescribeProjectsRequest.type = Types::DescribeProjectsRequest
    DescribeProjectsResponse.add_member(:project_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDescriptions, location_name: 'ProjectDescriptions', traits: {"smithy.api#documentation" => "<p>A list of project descriptions. The list is sorted by the date and time the projects are created.</p>"}))
    DescribeProjectsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more\n         results to retrieve), Amazon Rekognition returns a pagination token in the response. \n         You can use this pagination token to retrieve the next set of results. </p>"}))
    DescribeProjectsResponse.type = Types::DescribeProjectsResponse
    DescribeStreamProcessorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the stream processor for which you want information.</p>", "smithy.api#required" => {}}))
    DescribeStreamProcessorRequest.type = Types::DescribeStreamProcessorRequest
    DescribeStreamProcessorResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the stream processor. </p>"}))
    DescribeStreamProcessorResponse.add_member(:stream_processor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorArn, location_name: 'StreamProcessorArn', traits: {"smithy.api#documentation" => "<p>ARN of the stream processor.</p>"}))
    DescribeStreamProcessorResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Current status of the stream processor.</p>"}))
    DescribeStreamProcessorResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Detailed status message about the stream processor.</p>"}))
    DescribeStreamProcessorResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>Date and time the stream processor was created</p>"}))
    DescribeStreamProcessorResponse.add_member(:last_update_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastUpdateTimestamp', traits: {"smithy.api#documentation" => "<p>The time, in Unix format, the stream processor was last updated. For example, when the stream\n        processor moves from a running state to a failed state, or when the user starts or stops the stream processor.</p>"}))
    DescribeStreamProcessorResponse.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorInput, location_name: 'Input', traits: {"smithy.api#documentation" => "<p>Kinesis video stream that provides the source streaming video.</p>"}))
    DescribeStreamProcessorResponse.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorOutput, location_name: 'Output', traits: {"smithy.api#documentation" => "<p>Kinesis data stream to which Amazon Rekognition Video puts the analysis results.</p>"}))
    DescribeStreamProcessorResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>ARN of the IAM role that allows access to the stream processor.</p>"}))
    DescribeStreamProcessorResponse.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorSettings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>Input parameters used in a streaming video analyzed by a stream processor. You can use <code>FaceSearch</code> to recognize faces\n            in a streaming video, or you can use <code>ConnectedHome</code> to detect labels.</p>"}))
    DescribeStreamProcessorResponse.add_member(:notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorNotificationChannel, location_name: 'NotificationChannel'))
    DescribeStreamProcessorResponse.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>\n            The identifier for your AWS Key Management Service key (AWS KMS key). This is an optional parameter for label detection stream processors.\n        </p>"}))
    DescribeStreamProcessorResponse.add_member(:regions_of_interest, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: 'RegionsOfInterest', traits: {"smithy.api#documentation" => "<p>\n            Specifies locations in the frames where Amazon Rekognition checks for objects or people. This is an optional parameter for label detection stream processors.\n        </p>"}))
    DescribeStreamProcessorResponse.add_member(:data_sharing_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorDataSharingPreference, location_name: 'DataSharingPreference', traits: {"smithy.api#documentation" => "<p>\n            Shows whether you are sharing data with Rekognition to improve model performance. You can choose this option at the account level or on a per-stream basis.\n            Note that if you opt out at the account level this setting is ignored on individual streams.\n        </p>"}))
    DescribeStreamProcessorResponse.type = Types::DescribeStreamProcessorResponse
    DetectCustomLabelsRequest.add_member(:project_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: 'ProjectVersionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the model version that you want to use. Only models associated with Custom\n         Labels projects accepted by the operation. If a provided ARN refers to a model version\n         associated with a project for a different feature type, then an InvalidParameterException\n         is returned.</p>", "smithy.api#required" => {}}))
    DetectCustomLabelsRequest.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'Image', traits: {"smithy.api#required" => {}}))
    DetectCustomLabelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results you want the service to return in the response. \n         The service returns the specified number of highest confidence labels ranked from highest confidence \n      to lowest.</p>"}))
    DetectCustomLabelsRequest.add_member(:min_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'MinConfidence', traits: {"smithy.api#documentation" => "<p>Specifies the minimum confidence level for the labels to return. \n         <code>DetectCustomLabels</code> doesn't return any labels with a confidence value that's lower than\n         this specified value. If you specify a\n      value of 0, <code>DetectCustomLabels</code> returns all labels, regardless of the assumed \n         threshold applied to each label.\n      If you don't specify a value for <code>MinConfidence</code>,  <code>DetectCustomLabels</code>\n         returns labels based on the assumed threshold of each label.</p>"}))
    DetectCustomLabelsRequest.type = Types::DetectCustomLabelsRequest
    DetectCustomLabelsResponse.add_member(:custom_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLabels, location_name: 'CustomLabels', traits: {"smithy.api#documentation" => "<p>An array of custom labels detected in the input image.</p>"}))
    DetectCustomLabelsResponse.type = Types::DetectCustomLabelsResponse
    DetectFacesRequest.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'Image', traits: {"smithy.api#documentation" => "<p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to\n      call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>\n         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to\n      base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see\n      Images in the Amazon Rekognition developer guide.</p>", "smithy.api#required" => {}}))
    DetectFacesRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>An array of facial attributes you want to be returned. A <code>DEFAULT</code> subset of\n      facial attributes - <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>,\n        <code>Quality</code>, and <code>Landmarks</code> - will always be returned. You can request\n      for specific facial attributes (in addition to the default list) - by using [<code>\"DEFAULT\",\n        \"FACE_OCCLUDED\"</code>] or just [<code>\"FACE_OCCLUDED\"</code>]. You can request for all\n      facial attributes by using [<code>\"ALL\"]</code>. Requesting more attributes may increase\n      response time.</p>\n         <p>If you provide both, <code>[\"ALL\", \"DEFAULT\"]</code>, the service uses a logical \"AND\"\n      operator to determine which attributes to return (in this case, all attributes). </p>\n         <p>Note that while the FaceOccluded and EyeDirection attributes are supported when using\n        <code>DetectFaces</code>, they aren't supported when analyzing videos with\n        <code>StartFaceDetection</code> and <code>GetFaceDetection</code>.</p>"}))
    DetectFacesRequest.type = Types::DetectFacesRequest
    DetectFacesResponse.add_member(:face_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetailList, location_name: 'FaceDetails', traits: {"smithy.api#documentation" => "<p>Details of each face found in the image. </p>"}))
    DetectFacesResponse.add_member(:orientation_correction, Smithy::Schema::Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: 'OrientationCorrection', traits: {"smithy.api#documentation" => "<p>The value of <code>OrientationCorrection</code> is always null.</p>\n         <p>If the input image is in .jpeg format, it might contain exchangeable image file format\n      (Exif) metadata that includes the image's orientation. Amazon Rekognition uses this orientation\n      information to perform image correction. The bounding box coordinates are translated to\n      represent object locations after the orientation information in the Exif metadata is used to\n      correct the image orientation. Images in .png format don't contain Exif metadata.</p>\n         <p>Amazon Rekognition doesn’t perform image correction for images in .png format and .jpeg images\n      without orientation information in the image Exif metadata. The bounding box coordinates\n      aren't translated and represent the object locations before the image is rotated. </p>"}))
    DetectFacesResponse.type = Types::DetectFacesResponse
    DetectLabelsFeatureList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsFeatureName)
    DetectLabelsFeatureName.add_member(:general_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERAL_LABELS', traits: {"smithy.api#enumValue" => "GENERAL_LABELS"}))
    DetectLabelsFeatureName.add_member(:image_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMAGE_PROPERTIES', traits: {"smithy.api#enumValue" => "IMAGE_PROPERTIES"}))
    DetectLabelsImageBackground.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsImageQuality, location_name: 'Quality', traits: {"smithy.api#documentation" => "<p>The quality of the image background as defined by brightness and sharpness.</p>"}))
    DetectLabelsImageBackground.add_member(:dominant_colors, Smithy::Schema::Shapes::ShapeRef.new(shape: DominantColors, location_name: 'DominantColors', traits: {"smithy.api#documentation" => "<p>The dominant colors found in the background of an image, defined with RGB values, CSS\n      color name, simplified color name, and PixelPercentage (the percentage of image pixels that\n      have a particular color).</p>"}))
    DetectLabelsImageBackground.type = Types::DetectLabelsImageBackground
    DetectLabelsImageForeground.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsImageQuality, location_name: 'Quality', traits: {"smithy.api#documentation" => "<p>The quality of the image foreground as defined by brightness and sharpness.</p>"}))
    DetectLabelsImageForeground.add_member(:dominant_colors, Smithy::Schema::Shapes::ShapeRef.new(shape: DominantColors, location_name: 'DominantColors', traits: {"smithy.api#documentation" => "<p>The dominant colors found in the foreground of an image, defined with RGB values, CSS\n      color name, simplified color name, and PixelPercentage (the percentage of image pixels that\n      have a particular color).</p>"}))
    DetectLabelsImageForeground.type = Types::DetectLabelsImageForeground
    DetectLabelsImageProperties.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsImageQuality, location_name: 'Quality', traits: {"smithy.api#documentation" => "<p>Information about the quality of the image foreground as defined by brightness, sharpness,\n      and contrast. The higher the value the greater the brightness, sharpness, and contrast\n      respectively.</p>"}))
    DetectLabelsImageProperties.add_member(:dominant_colors, Smithy::Schema::Shapes::ShapeRef.new(shape: DominantColors, location_name: 'DominantColors', traits: {"smithy.api#documentation" => "<p>Information about the dominant colors found in an image, described with RGB values, CSS\n      color name, simplified color name, and PixelPercentage (the percentage of image pixels that\n      have a particular color).</p>"}))
    DetectLabelsImageProperties.add_member(:foreground, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsImageForeground, location_name: 'Foreground', traits: {"smithy.api#documentation" => "<p>Information about the properties of an image’s foreground, including the foreground’s\n      quality and dominant colors, including the quality and dominant colors of the image.</p>"}))
    DetectLabelsImageProperties.add_member(:background, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsImageBackground, location_name: 'Background', traits: {"smithy.api#documentation" => "<p>Information about the properties of an image’s background, including the background’s\n      quality and dominant colors, including the quality and dominant colors of the image.</p>"}))
    DetectLabelsImageProperties.type = Types::DetectLabelsImageProperties
    DetectLabelsImagePropertiesSettings.add_member(:max_dominant_colors, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsMaxDominantColors, location_name: 'MaxDominantColors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of dominant colors to return when detecting labels in an image. The\n      default value is 10.</p>"}))
    DetectLabelsImagePropertiesSettings.type = Types::DetectLabelsImagePropertiesSettings
    DetectLabelsImageQuality.add_member(:brightness, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Brightness', traits: {"smithy.api#documentation" => "<p>The brightness of an image provided for label detection.</p>"}))
    DetectLabelsImageQuality.add_member(:sharpness, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Sharpness', traits: {"smithy.api#documentation" => "<p>The sharpness of an image provided for label detection.</p>"}))
    DetectLabelsImageQuality.add_member(:contrast, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Contrast', traits: {"smithy.api#documentation" => "<p>The contrast of an image provided for label detection.</p>"}))
    DetectLabelsImageQuality.type = Types::DetectLabelsImageQuality
    DetectLabelsRequest.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'Image', traits: {"smithy.api#documentation" => "<p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to\n      call Amazon Rekognition operations, passing image bytes is not supported. Images stored in an\n      S3 Bucket do not need to be base64-encoded.</p>\n         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to\n      base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see\n      Images in the Amazon Rekognition developer guide.</p>", "smithy.api#required" => {}}))
    DetectLabelsRequest.add_member(:max_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'MaxLabels', traits: {"smithy.api#documentation" => "<p>Maximum number of labels you want the service to return in the response. The service\n      returns the specified number of highest confidence labels. Only valid when GENERAL_LABELS is\n      specified as a feature type in the Feature input parameter.</p>"}))
    DetectLabelsRequest.add_member(:min_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'MinConfidence', traits: {"smithy.api#documentation" => "<p>Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't\n      return any labels with confidence lower than this specified value.</p>\n         <p>If <code>MinConfidence</code> is not specified, the operation returns labels with a\n      confidence values greater than or equal to 55 percent. Only valid when GENERAL_LABELS is\n      specified as a feature type in the Feature input parameter.</p>"}))
    DetectLabelsRequest.add_member(:features, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsFeatureList, location_name: 'Features', traits: {"smithy.api#documentation" => "<p>A list of the types of analysis to perform. Specifying GENERAL_LABELS uses the label\n      detection feature, while specifying IMAGE_PROPERTIES returns information regarding image color\n      and quality. If no option is specified GENERAL_LABELS is used by default.</p>"}))
    DetectLabelsRequest.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsSettings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>A list of the filters to be applied to returned detected labels and image properties.\n      Specified filters can be inclusive, exclusive, or a combination of both. Filters can be used\n      for individual labels or label categories. The exact label names or label categories must be\n      supplied. For a full list of labels and label categories, see <a href=\"https://docs.aws.amazon.com/rekognition/latest/dg/labels.html\">Detecting labels</a>.</p>"}))
    DetectLabelsRequest.type = Types::DetectLabelsRequest
    DetectLabelsResponse.add_member(:labels, Smithy::Schema::Shapes::ShapeRef.new(shape: Labels, location_name: 'Labels', traits: {"smithy.api#documentation" => "<p>An array of labels for the real-world objects detected. </p>"}))
    DetectLabelsResponse.add_member(:orientation_correction, Smithy::Schema::Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: 'OrientationCorrection', traits: {"smithy.api#documentation" => "<p>The value of <code>OrientationCorrection</code> is always null.</p>\n         <p>If the input image is in .jpeg format, it might contain exchangeable image file format\n      (Exif) metadata that includes the image's orientation. Amazon Rekognition uses this orientation\n      information to perform image correction. The bounding box coordinates are translated to\n      represent object locations after the orientation information in the Exif metadata is used to\n      correct the image orientation. Images in .png format don't contain Exif metadata.</p>\n         <p>Amazon Rekognition doesn’t perform image correction for images in .png format and .jpeg images\n      without orientation information in the image Exif metadata. The bounding box coordinates\n      aren't translated and represent the object locations before the image is rotated. </p>"}))
    DetectLabelsResponse.add_member(:label_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LabelModelVersion', traits: {"smithy.api#documentation" => "<p>Version number of the label detection model that was used to detect labels.</p>"}))
    DetectLabelsResponse.add_member(:image_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsImageProperties, location_name: 'ImageProperties', traits: {"smithy.api#documentation" => "<p>Information about the properties of the input image, such as brightness, sharpness,\n      contrast, and dominant colors.</p>"}))
    DetectLabelsResponse.type = Types::DetectLabelsResponse
    DetectLabelsSettings.add_member(:general_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralLabelsSettings, location_name: 'GeneralLabels', traits: {"smithy.api#documentation" => "<p>Contains the specified filters for GENERAL_LABELS.</p>"}))
    DetectLabelsSettings.add_member(:image_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsImagePropertiesSettings, location_name: 'ImageProperties', traits: {"smithy.api#documentation" => "<p>Contains the chosen number of maximum dominant colors in an image.</p>"}))
    DetectLabelsSettings.type = Types::DetectLabelsSettings
    DetectModerationLabelsRequest.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'Image', traits: {"smithy.api#documentation" => "<p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to\n      call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>\n         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to\n      base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see\n      Images in the Amazon Rekognition developer guide.</p>", "smithy.api#required" => {}}))
    DetectModerationLabelsRequest.add_member(:min_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'MinConfidence', traits: {"smithy.api#documentation" => "<p>Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't\n      return any labels with a confidence level lower than this specified value.</p>\n         <p>If you don't specify <code>MinConfidence</code>, the operation returns labels with\n      confidence values greater than or equal to 50 percent.</p>"}))
    DetectModerationLabelsRequest.add_member(:human_loop_config, Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopConfig, location_name: 'HumanLoopConfig', traits: {"smithy.api#documentation" => "<p>Sets up the configuration for human evaluation, including the FlowDefinition the image\n      will be sent to.</p>"}))
    DetectModerationLabelsRequest.add_member(:project_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionId, location_name: 'ProjectVersion', traits: {"smithy.api#documentation" => "<p>Identifier for the custom adapter. Expects the ProjectVersionArn as a value. \n         Use the CreateProject or CreateProjectVersion APIs to create a custom adapter.</p>"}))
    DetectModerationLabelsRequest.type = Types::DetectModerationLabelsRequest
    DetectModerationLabelsResponse.add_member(:moderation_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: ModerationLabels, location_name: 'ModerationLabels', traits: {"smithy.api#documentation" => "<p>Array of detected Moderation labels. For video operations, this includes the time, \n      in milliseconds from the start of the video, they were detected.</p>"}))
    DetectModerationLabelsResponse.add_member(:moderation_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ModerationModelVersion', traits: {"smithy.api#documentation" => "<p>Version number of the base moderation detection model that was used to detect unsafe\n      content.</p>"}))
    DetectModerationLabelsResponse.add_member(:human_loop_activation_output, Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopActivationOutput, location_name: 'HumanLoopActivationOutput', traits: {"smithy.api#documentation" => "<p>Shows the results of the human in the loop evaluation.</p>"}))
    DetectModerationLabelsResponse.add_member(:project_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionId, location_name: 'ProjectVersion', traits: {"smithy.api#documentation" => "<p>Identifier of the custom adapter that was used during inference. If\n         during inference the adapter was EXPIRED, then the parameter will not be returned,\n         indicating that a base moderation detection project version was used.</p>"}))
    DetectModerationLabelsResponse.add_member(:content_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTypes, location_name: 'ContentTypes', traits: {"smithy.api#documentation" => "<p>A list of predicted results for the type of content an image contains. For example, \n      the image content might be from animation, sports, or a video game.</p>"}))
    DetectModerationLabelsResponse.type = Types::DetectModerationLabelsResponse
    DetectProtectiveEquipmentRequest.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'Image', traits: {"smithy.api#documentation" => "<p>The image in which you want to detect PPE on detected persons. The image can be passed as image bytes or you can \n         reference an image stored in an Amazon S3 bucket. </p>", "smithy.api#required" => {}}))
    DetectProtectiveEquipmentRequest.add_member(:summarization_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentSummarizationAttributes, location_name: 'SummarizationAttributes', traits: {"smithy.api#documentation" => "<p>An array of PPE types that you want to summarize.</p>"}))
    DetectProtectiveEquipmentRequest.type = Types::DetectProtectiveEquipmentRequest
    DetectProtectiveEquipmentResponse.add_member(:protective_equipment_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProtectiveEquipmentModelVersion', traits: {"smithy.api#documentation" => "<p>The version number of the PPE detection model used to detect PPE in the image.</p>"}))
    DetectProtectiveEquipmentResponse.add_member(:persons, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentPersons, location_name: 'Persons', traits: {"smithy.api#documentation" => "<p>An array of persons detected in the image (including persons not wearing PPE).</p>"}))
    DetectProtectiveEquipmentResponse.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentSummary, location_name: 'Summary', traits: {"smithy.api#documentation" => "<p>Summary information for the types of PPE specified in the <code>SummarizationAttributes</code> input\n      parameter.</p>"}))
    DetectProtectiveEquipmentResponse.type = Types::DetectProtectiveEquipmentResponse
    DetectTextFilters.add_member(:word_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectionFilter, location_name: 'WordFilter'))
    DetectTextFilters.add_member(:regions_of_interest, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: 'RegionsOfInterest', traits: {"smithy.api#documentation" => "<p> A Filter focusing on a certain area of the image. Uses a <code>BoundingBox</code> object\n      to set the region of the image.</p>"}))
    DetectTextFilters.type = Types::DetectTextFilters
    DetectTextRequest.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'Image', traits: {"smithy.api#documentation" => "<p>The input image as base64-encoded bytes or an Amazon S3 object. If you use the AWS\n      CLI to call Amazon Rekognition operations, you can't pass image bytes. </p>\n         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to\n      base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see\n      Images in the Amazon Rekognition developer guide.</p>", "smithy.api#required" => {}}))
    DetectTextRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectTextFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Optional parameters that let you set the criteria that the text must meet to be included\n      in your response.</p>"}))
    DetectTextRequest.type = Types::DetectTextRequest
    DetectTextResponse.add_member(:text_detections, Smithy::Schema::Shapes::ShapeRef.new(shape: TextDetectionList, location_name: 'TextDetections', traits: {"smithy.api#documentation" => "<p>An array of text that was detected in the input image.</p>"}))
    DetectTextResponse.add_member(:text_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TextModelVersion', traits: {"smithy.api#documentation" => "<p>The model version used to detect text.</p>"}))
    DetectTextResponse.type = Types::DetectTextResponse
    DetectionFilter.add_member(:min_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'MinConfidence', traits: {"smithy.api#documentation" => "<p>Sets the confidence of word detection. Words with detection confidence below this will be\n      excluded from the result. Values should be between 0 and 100. The default MinConfidence is\n      80.</p>"}))
    DetectionFilter.add_member(:min_bounding_box_height, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBoxHeight, location_name: 'MinBoundingBoxHeight', traits: {"smithy.api#documentation" => "<p>Sets the minimum height of the word bounding box. Words with bounding box heights lesser than \n      this value will be excluded from the result. Value is relative to the video frame height.</p>"}))
    DetectionFilter.add_member(:min_bounding_box_width, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBoxWidth, location_name: 'MinBoundingBoxWidth', traits: {"smithy.api#documentation" => "<p>Sets the minimum width of the word bounding box. Words with bounding boxes widths lesser than \n      this value will be excluded from the result. Value is relative to the video frame width.</p>"}))
    DetectionFilter.type = Types::DetectionFilter
    DisassociateFacesRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>The ID of an existing collection containing the UserID.</p>", "smithy.api#required" => {}}))
    DisassociateFacesRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>ID for the existing UserID.</p>", "smithy.api#required" => {}}))
    DisassociateFacesRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token used to identify the request to <code>DisassociateFaces</code>. If you\n      use the same token with multiple <code>DisassociateFaces</code> requests, the same response is\n      returned. Use ClientRequestToken to prevent the same request from being processed more than\n      once.</p>", "smithy.api#idempotencyToken" => {}}))
    DisassociateFacesRequest.add_member(:face_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: UserFaceIdList, location_name: 'FaceIds', traits: {"smithy.api#documentation" => "<p>An array of face IDs to disassociate from the UserID. </p>", "smithy.api#required" => {}}))
    DisassociateFacesRequest.type = Types::DisassociateFacesRequest
    DisassociateFacesResponse.add_member(:disassociated_faces, Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatedFacesList, location_name: 'DisassociatedFaces', traits: {"smithy.api#documentation" => "<p>An array of DissociatedFace objects containing FaceIds that are successfully disassociated\n      with the UserID is returned. Returned if the DisassociatedFaces action is successful.</p>"}))
    DisassociateFacesResponse.add_member(:unsuccessful_face_disassociations, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDisassociationList, location_name: 'UnsuccessfulFaceDisassociations', traits: {"smithy.api#documentation" => "<p>An array of UnsuccessfulDisassociation objects containing FaceIds that are not\n      successfully associated, along with the reasons for the failure to associate. Returned if the\n      DisassociateFaces action is successful.</p>"}))
    DisassociateFacesResponse.add_member(:user_status, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStatus, location_name: 'UserStatus', traits: {"smithy.api#documentation" => "<p>The status of an update made to a User. Reflects if the User has been updated for every\n      requested change.</p>"}))
    DisassociateFacesResponse.type = Types::DisassociateFacesResponse
    DisassociatedFace.add_member(:face_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: 'FaceId', traits: {"smithy.api#documentation" => "<p>Unique identifier assigned to the face.</p>"}))
    DisassociatedFace.type = Types::DisassociatedFace
    DisassociatedFacesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatedFace)
    DistributeDataset.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset that you want to use.\n      </p>", "smithy.api#required" => {}}))
    DistributeDataset.type = Types::DistributeDataset
    DistributeDatasetEntriesRequest.add_member(:datasets, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributeDatasetMetadataList, location_name: 'Datasets', traits: {"smithy.api#documentation" => "<p>The ARNS for the training dataset and test dataset that you want to use. The datasets must belong to\n         the same project. The test dataset must be empty.\n         </p>", "smithy.api#required" => {}}))
    DistributeDatasetEntriesRequest.type = Types::DistributeDatasetEntriesRequest
    DistributeDatasetEntriesResponse.type = Types::DistributeDatasetEntriesResponse
    DistributeDatasetMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DistributeDataset)
    DominantColor.add_member(:red, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'Red', traits: {"smithy.api#documentation" => "<p>The Red RGB value for a dominant color.</p>"}))
    DominantColor.add_member(:blue, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'Blue', traits: {"smithy.api#documentation" => "<p>The Blue RGB value for a dominant color.</p>"}))
    DominantColor.add_member(:green, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'Green', traits: {"smithy.api#documentation" => "<p>The Green RGB value for a dominant color.</p>"}))
    DominantColor.add_member(:hex_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HexCode', traits: {"smithy.api#documentation" => "<p>The Hex code equivalent of the RGB values for a dominant color.</p>"}))
    DominantColor.add_member(:css_color, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CSSColor', traits: {"smithy.api#documentation" => "<p>The CSS color name of a dominant color.</p>"}))
    DominantColor.add_member(:simplified_color, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SimplifiedColor', traits: {"smithy.api#documentation" => "<p>One of 12 simplified color names applied to a dominant color.</p>"}))
    DominantColor.add_member(:pixel_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'PixelPercent', traits: {"smithy.api#documentation" => "<p>The percentage of image pixels that have a given dominant color.</p>"}))
    DominantColor.type = Types::DominantColor
    DominantColors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DominantColor)
    Emotion.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EmotionName, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Type of emotion detected.</p>"}))
    Emotion.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Level of confidence in the determination.</p>"}))
    Emotion.type = Types::Emotion
    EmotionName.add_member(:happy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HAPPY', traits: {"smithy.api#enumValue" => "HAPPY"}))
    EmotionName.add_member(:sad, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAD', traits: {"smithy.api#enumValue" => "SAD"}))
    EmotionName.add_member(:angry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANGRY', traits: {"smithy.api#enumValue" => "ANGRY"}))
    EmotionName.add_member(:confused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFUSED', traits: {"smithy.api#enumValue" => "CONFUSED"}))
    EmotionName.add_member(:disgusted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISGUSTED', traits: {"smithy.api#enumValue" => "DISGUSTED"}))
    EmotionName.add_member(:surprised, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SURPRISED', traits: {"smithy.api#enumValue" => "SURPRISED"}))
    EmotionName.add_member(:calm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALM', traits: {"smithy.api#enumValue" => "CALM"}))
    EmotionName.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    EmotionName.add_member(:fear, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FEAR', traits: {"smithy.api#enumValue" => "FEAR"}))
    Emotions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Emotion)
    EquipmentDetection.add_member(:bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'BoundingBox', traits: {"smithy.api#documentation" => "<p>A bounding box surrounding the item of detected PPE.</p>"}))
    EquipmentDetection.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence that Amazon Rekognition has that the bounding box (<code>BoundingBox</code>) contains an item of PPE.</p>"}))
    EquipmentDetection.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of detected PPE.</p>"}))
    EquipmentDetection.add_member(:covers_body_part, Smithy::Schema::Shapes::ShapeRef.new(shape: CoversBodyPart, location_name: 'CoversBodyPart', traits: {"smithy.api#documentation" => "<p>Information about the body part covered by the detected PPE.</p>"}))
    EquipmentDetection.type = Types::EquipmentDetection
    EquipmentDetections.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EquipmentDetection)
    EvaluationResult.add_member(:f1_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'F1Score', traits: {"smithy.api#documentation" => "<p>The F1 score for the evaluation of all labels. The F1 score metric evaluates the overall precision\n         and recall performance of the model as a single value. A higher value indicates better precision\n         and recall performance. A lower score indicates that precision, recall, or both are performing poorly.\n         \n  </p>"}))
    EvaluationResult.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: Summary, location_name: 'Summary', traits: {"smithy.api#documentation" => "<p>The S3 bucket that contains the training summary.</p>"}))
    EvaluationResult.type = Types::EvaluationResult
    EyeDirection.add_member(:yaw, Smithy::Schema::Shapes::ShapeRef.new(shape: Degree, location_name: 'Yaw', traits: {"smithy.api#documentation" => "<p>Value representing eye direction on the yaw axis.</p>"}))
    EyeDirection.add_member(:pitch, Smithy::Schema::Shapes::ShapeRef.new(shape: Degree, location_name: 'Pitch', traits: {"smithy.api#documentation" => "<p>Value representing eye direction on the pitch axis.</p>"}))
    EyeDirection.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence that the service has in its predicted eye direction.</p>"}))
    EyeDirection.type = Types::EyeDirection
    EyeOpen.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Value', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Boolean value that indicates whether the eyes on the face are open.</p>"}))
    EyeOpen.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Level of confidence in the determination.</p>"}))
    EyeOpen.type = Types::EyeOpen
    Eyeglasses.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Value', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Boolean value that indicates whether the face is wearing eye glasses or not.</p>"}))
    Eyeglasses.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Level of confidence in the determination.</p>"}))
    Eyeglasses.type = Types::Eyeglasses
    Face.add_member(:face_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: 'FaceId', traits: {"smithy.api#documentation" => "<p>Unique identifier that Amazon Rekognition assigns to the face.</p>"}))
    Face.add_member(:bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'BoundingBox', traits: {"smithy.api#documentation" => "<p>Bounding box of the face.</p>"}))
    Face.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>Unique identifier that Amazon Rekognition assigns to the input image.</p>"}))
    Face.add_member(:external_image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalImageId, location_name: 'ExternalImageId', traits: {"smithy.api#documentation" => "<p>Identifier that you assign to all the faces in the input image.</p>"}))
    Face.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Confidence level that the bounding box contains a face (and not a different object such\n      as a tree).</p>"}))
    Face.add_member(:index_faces_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexFacesModelVersion, location_name: 'IndexFacesModelVersion', traits: {"smithy.api#documentation" => "<p> The version of the face detect and storage model that was used when indexing the face\n      vector. </p>"}))
    Face.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>Unique identifier assigned to the user.</p>"}))
    Face.type = Types::Face
    FaceAttributes.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    FaceAttributes.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    FaceDetail.add_member(:bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'BoundingBox', traits: {"smithy.api#documentation" => "<p>Bounding box of the face. Default attribute.</p>"}))
    FaceDetail.add_member(:age_range, Smithy::Schema::Shapes::ShapeRef.new(shape: AgeRange, location_name: 'AgeRange', traits: {"smithy.api#documentation" => "<p>The estimated age range, in years, for the face. Low represents the lowest estimated\n      age and High represents the highest estimated age.</p>"}))
    FaceDetail.add_member(:smile, Smithy::Schema::Shapes::ShapeRef.new(shape: Smile, location_name: 'Smile', traits: {"smithy.api#documentation" => "<p>Indicates whether or not the face is smiling, and the confidence level in the\n      determination.</p>"}))
    FaceDetail.add_member(:eyeglasses, Smithy::Schema::Shapes::ShapeRef.new(shape: Eyeglasses, location_name: 'Eyeglasses', traits: {"smithy.api#documentation" => "<p>Indicates whether or not the face is wearing eye glasses, and the confidence level in\n      the determination.</p>"}))
    FaceDetail.add_member(:sunglasses, Smithy::Schema::Shapes::ShapeRef.new(shape: Sunglasses, location_name: 'Sunglasses', traits: {"smithy.api#documentation" => "<p>Indicates whether or not the face is wearing sunglasses, and the confidence level in\n      the determination.</p>"}))
    FaceDetail.add_member(:gender, Smithy::Schema::Shapes::ShapeRef.new(shape: Gender, location_name: 'Gender', traits: {"smithy.api#documentation" => "<p>The predicted gender of a detected face. </p>"}))
    FaceDetail.add_member(:beard, Smithy::Schema::Shapes::ShapeRef.new(shape: Beard, location_name: 'Beard', traits: {"smithy.api#documentation" => "<p>Indicates whether or not the face has a beard, and the confidence level in the\n      determination.</p>"}))
    FaceDetail.add_member(:mustache, Smithy::Schema::Shapes::ShapeRef.new(shape: Mustache, location_name: 'Mustache', traits: {"smithy.api#documentation" => "<p>Indicates whether or not the face has a mustache, and the confidence level in the\n      determination.</p>"}))
    FaceDetail.add_member(:eyes_open, Smithy::Schema::Shapes::ShapeRef.new(shape: EyeOpen, location_name: 'EyesOpen', traits: {"smithy.api#documentation" => "<p>Indicates whether or not the eyes on the face are open, and the confidence level in the\n      determination.</p>"}))
    FaceDetail.add_member(:mouth_open, Smithy::Schema::Shapes::ShapeRef.new(shape: MouthOpen, location_name: 'MouthOpen', traits: {"smithy.api#documentation" => "<p>Indicates whether or not the mouth on the face is open, and the confidence level in the\n      determination.</p>"}))
    FaceDetail.add_member(:emotions, Smithy::Schema::Shapes::ShapeRef.new(shape: Emotions, location_name: 'Emotions', traits: {"smithy.api#documentation" => "<p>The emotions that appear to be expressed on the face, and the confidence level in the\n      determination. The API is only making a determination of the physical appearance of a person's\n      face. It is not a determination of the person’s internal emotional state and should not be\n      used in such a way. For example, a person pretending to have a sad face might not be sad\n      emotionally.</p>"}))
    FaceDetail.add_member(:landmarks, Smithy::Schema::Shapes::ShapeRef.new(shape: Landmarks, location_name: 'Landmarks', traits: {"smithy.api#documentation" => "<p>Indicates the location of landmarks on the face. Default attribute.</p>"}))
    FaceDetail.add_member(:pose, Smithy::Schema::Shapes::ShapeRef.new(shape: Pose, location_name: 'Pose', traits: {"smithy.api#documentation" => "<p>Indicates the pose of the face as determined by its pitch, roll, and yaw. Default\n      attribute.</p>"}))
    FaceDetail.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageQuality, location_name: 'Quality', traits: {"smithy.api#documentation" => "<p>Identifies image brightness and sharpness. Default attribute.</p>"}))
    FaceDetail.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Confidence level that the bounding box contains a face (and not a different object such\n      as a tree). Default attribute.</p>"}))
    FaceDetail.add_member(:face_occluded, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceOccluded, location_name: 'FaceOccluded', traits: {"smithy.api#documentation" => "<p>\n            <code>FaceOccluded</code> should return \"true\" with a high confidence score if a detected\n      face’s eyes, nose, and mouth are partially captured or if they are covered by masks, dark\n      sunglasses, cell phones, hands, or other objects. <code>FaceOccluded</code> should return\n      \"false\" with a high confidence score if common occurrences that do not impact face\n      verification are detected, such as eye glasses, lightly tinted sunglasses, strands of hair,\n      and others. </p>"}))
    FaceDetail.add_member(:eye_direction, Smithy::Schema::Shapes::ShapeRef.new(shape: EyeDirection, location_name: 'EyeDirection', traits: {"smithy.api#documentation" => "<p>Indicates the direction the eyes are gazing in, as defined by pitch and yaw.</p>"}))
    FaceDetail.type = Types::FaceDetail
    FaceDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail)
    FaceDetection.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Time, in milliseconds from the start of the video, that the face was detected.\n          Note that <code>Timestamp</code> is not guaranteed to be accurate to the individual frame where the face first appears.</p>"}))
    FaceDetection.add_member(:face, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail, location_name: 'Face', traits: {"smithy.api#documentation" => "<p>The face properties for the detected face.</p>"}))
    FaceDetection.type = Types::FaceDetection
    FaceDetections.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetection)
    FaceIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId)
    FaceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Face)
    FaceMatch.add_member(:similarity, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Similarity', traits: {"smithy.api#documentation" => "<p>Confidence in the match of this face with the input face.</p>"}))
    FaceMatch.add_member(:face, Smithy::Schema::Shapes::ShapeRef.new(shape: Face, location_name: 'Face', traits: {"smithy.api#documentation" => "<p>Describes the face properties such as the bounding box, face ID, image ID of the source\n      image, and external image ID that you assigned.</p>"}))
    FaceMatch.type = Types::FaceMatch
    FaceMatchList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FaceMatch)
    FaceModelVersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    FaceOccluded.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Value', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>True if a detected face’s eyes, nose, and mouth are partially captured or if they are\n      covered by masks, dark sunglasses, cell phones, hands, or other objects. False if common\n      occurrences that do not impact face verification are detected, such as eye glasses, lightly\n      tinted sunglasses, strands of hair, and others.</p>"}))
    FaceOccluded.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence that the service has detected the presence of a face occlusion.</p>"}))
    FaceOccluded.type = Types::FaceOccluded
    FaceRecord.add_member(:face, Smithy::Schema::Shapes::ShapeRef.new(shape: Face, location_name: 'Face', traits: {"smithy.api#documentation" => "<p>Describes the face properties such as the bounding box, face ID, image ID of the input\n      image, and external image ID that you assigned. </p>"}))
    FaceRecord.add_member(:face_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail, location_name: 'FaceDetail', traits: {"smithy.api#documentation" => "<p>Structure containing attributes of the face that the algorithm detected.</p>"}))
    FaceRecord.type = Types::FaceRecord
    FaceRecordList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FaceRecord)
    FaceSearchSettings.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>The ID of a collection that contains faces that you want to search for.</p>"}))
    FaceSearchSettings.add_member(:face_match_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'FaceMatchThreshold', traits: {"smithy.api#documentation" => "<p>Minimum face match confidence score that must be met to return a result for a recognized face. The default is 80.\n        0 is the lowest confidence. 100 is the highest confidence. Values between 0 and 100 are accepted, and values lower than 80 are set to 80.</p>"}))
    FaceSearchSettings.type = Types::FaceSearchSettings
    FaceSearchSortBy.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDEX', traits: {"smithy.api#enumValue" => "INDEX"}))
    FaceSearchSortBy.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    Gender.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: GenderType, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The predicted gender of the face.</p>"}))
    Gender.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Level of confidence in the prediction.</p>"}))
    Gender.type = Types::Gender
    GenderType.add_member(:male, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Male', traits: {"smithy.api#enumValue" => "Male"}))
    GenderType.add_member(:female, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Female', traits: {"smithy.api#enumValue" => "Female"}))
    GeneralLabelsFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralLabelsFilterValue)
    GeneralLabelsSettings.add_member(:label_inclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralLabelsFilterList, location_name: 'LabelInclusionFilters', traits: {"smithy.api#documentation" => "<p>The labels that should be included in the return from DetectLabels.</p>"}))
    GeneralLabelsSettings.add_member(:label_exclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralLabelsFilterList, location_name: 'LabelExclusionFilters', traits: {"smithy.api#documentation" => "<p>The labels that should be excluded from the return from DetectLabels.</p>"}))
    GeneralLabelsSettings.add_member(:label_category_inclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralLabelsFilterList, location_name: 'LabelCategoryInclusionFilters', traits: {"smithy.api#documentation" => "<p>The label categories that should be included in the return from DetectLabels.</p>"}))
    GeneralLabelsSettings.add_member(:label_category_exclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralLabelsFilterList, location_name: 'LabelCategoryExclusionFilters', traits: {"smithy.api#documentation" => "<p>The label categories that should be excluded from the return from DetectLabels.</p>"}))
    GeneralLabelsSettings.type = Types::GeneralLabelsSettings
    Geometry.add_member(:bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'BoundingBox', traits: {"smithy.api#documentation" => "<p>An axis-aligned coarse representation of the detected item's location on the\n      image.</p>"}))
    Geometry.add_member(:polygon, Smithy::Schema::Shapes::ShapeRef.new(shape: Polygon, location_name: 'Polygon', traits: {"smithy.api#documentation" => "<p>Within the bounding box, a fine-grained polygon around the detected item.</p>"}))
    Geometry.type = Types::Geometry
    GetCelebrityInfoRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RekognitionUniqueId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID for the celebrity. You get the celebrity ID from a call to the <a>RecognizeCelebrities</a> operation, which recognizes celebrities in an image.\n    </p>", "smithy.api#required" => {}}))
    GetCelebrityInfoRequest.type = Types::GetCelebrityInfoRequest
    GetCelebrityInfoResponse.add_member(:urls, Smithy::Schema::Shapes::ShapeRef.new(shape: Urls, location_name: 'Urls', traits: {"smithy.api#documentation" => "<p>An array of URLs pointing to additional celebrity information. </p>"}))
    GetCelebrityInfoResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the celebrity.</p>"}))
    GetCelebrityInfoResponse.add_member(:known_gender, Smithy::Schema::Shapes::ShapeRef.new(shape: KnownGender, location_name: 'KnownGender', traits: {"smithy.api#documentation" => "<p>Retrieves the known gender for the celebrity.</p>"}))
    GetCelebrityInfoResponse.type = Types::GetCelebrityInfoResponse
    GetCelebrityRecognitionRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Job identifier for the required celebrity recognition analysis. You can get the job identifer from\n      a call to <code>StartCelebrityRecognition</code>.</p>", "smithy.api#required" => {}}))
    GetCelebrityRecognitionRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. \n      If you specify a value greater than 1000, a maximum of 1000 results is returned.\n      The default value is 1000.</p>"}))
    GetCelebrityRecognitionRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more recognized celebrities to retrieve), Amazon Rekognition Video returns a pagination\n      token in the response. You can use this pagination token to retrieve the next set of celebrities. </p>"}))
    GetCelebrityRecognitionRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CelebrityRecognitionSortBy, location_name: 'SortBy', traits: {"smithy.api#documentation" => "<p>Sort to use for celebrities returned in <code>Celebrities</code> field. Specify <code>ID</code> to sort by the celebrity identifier,\n        specify <code>TIMESTAMP</code> to sort by the time the celebrity was recognized.</p>"}))
    GetCelebrityRecognitionRequest.type = Types::GetCelebrityRecognitionRequest
    GetCelebrityRecognitionResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the celebrity recognition job.</p>"}))
    GetCelebrityRecognitionResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"}))
    GetCelebrityRecognitionResponse.add_member(:video_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata, location_name: 'VideoMetadata', traits: {"smithy.api#documentation" => "<p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in\n      every page of paginated responses from a Amazon Rekognition Video operation.</p>"}))
    GetCelebrityRecognitionResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request\n      to retrieve the next set of celebrities.</p>"}))
    GetCelebrityRecognitionResponse.add_member(:celebrities, Smithy::Schema::Shapes::ShapeRef.new(shape: CelebrityRecognitions, location_name: 'Celebrities', traits: {"smithy.api#documentation" => "<p>Array of celebrities recognized in the video.</p>"}))
    GetCelebrityRecognitionResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Job identifier for the celebrity recognition operation for which you want to obtain\n      results. The job identifer is returned by an initial call to StartCelebrityRecognition.</p>"}))
    GetCelebrityRecognitionResponse.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video'))
    GetCelebrityRecognitionResponse.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>A job identifier specified in the call to StartCelebrityRecognition and returned in the\n      job completion notification sent to your Amazon Simple Notification Service topic.</p>"}))
    GetCelebrityRecognitionResponse.type = Types::GetCelebrityRecognitionResponse
    GetContentModerationRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier for the inappropriate, unwanted, or offensive content moderation job. Use <code>JobId</code> to identify the job in\n       a subsequent call to <code>GetContentModeration</code>.</p>", "smithy.api#required" => {}}))
    GetContentModerationRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. \n    If you specify a value greater than 1000, a maximum of 1000 results is returned.\n    The default value is 1000.</p>"}))
    GetContentModerationRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more data to retrieve), Amazon Rekognition\n        returns a pagination token in the response. You can use this pagination token\n        to retrieve the next set of content moderation labels.</p>"}))
    GetContentModerationRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentModerationSortBy, location_name: 'SortBy', traits: {"smithy.api#documentation" => "<p>Sort to use for elements in the <code>ModerationLabelDetections</code> array.\n       Use <code>TIMESTAMP</code> to sort array elements by the time labels are detected.\n       Use <code>NAME</code> to alphabetically group elements for a label together.\n       Within each label group, the array element are sorted by detection confidence.\n       The default sort is by <code>TIMESTAMP</code>.</p>"}))
    GetContentModerationRequest.add_member(:aggregate_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentModerationAggregateBy, location_name: 'AggregateBy', traits: {"smithy.api#documentation" => "<p>Defines how to aggregate results of the StartContentModeration request. Default\n      aggregation option is TIMESTAMPS. SEGMENTS mode aggregates moderation labels over time.</p>"}))
    GetContentModerationRequest.type = Types::GetContentModerationRequest
    GetContentModerationRequestMetadata.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentModerationSortBy, location_name: 'SortBy', traits: {"smithy.api#documentation" => "<p>The sorting method chosen for a GetContentModeration request.</p>"}))
    GetContentModerationRequestMetadata.add_member(:aggregate_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentModerationAggregateBy, location_name: 'AggregateBy', traits: {"smithy.api#documentation" => "<p>The aggregation method chosen for a GetContentModeration request.</p>"}))
    GetContentModerationRequestMetadata.type = Types::GetContentModerationRequestMetadata
    GetContentModerationResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the content moderation analysis job.</p>"}))
    GetContentModerationResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"}))
    GetContentModerationResponse.add_member(:video_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata, location_name: 'VideoMetadata', traits: {"smithy.api#documentation" => "<p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code>\n     is returned in every page of paginated responses from <code>GetContentModeration</code>. </p>"}))
    GetContentModerationResponse.add_member(:moderation_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentModerationDetections, location_name: 'ModerationLabels', traits: {"smithy.api#documentation" => "<p>The detected inappropriate, unwanted, or offensive content moderation labels and the time(s) they were detected.</p>"}))
    GetContentModerationResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent\n     request to retrieve the next set of content moderation labels. </p>"}))
    GetContentModerationResponse.add_member(:moderation_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ModerationModelVersion', traits: {"smithy.api#documentation" => "<p>Version number of the moderation detection model that was used to detect inappropriate, unwanted, or offensive content.</p>"}))
    GetContentModerationResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Job identifier for the content moderation operation for which you want to obtain results.\n      The job identifer is returned by an initial call to StartContentModeration.</p>"}))
    GetContentModerationResponse.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video'))
    GetContentModerationResponse.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>A job identifier specified in the call to StartContentModeration and returned in the job\n      completion notification sent to your Amazon Simple Notification Service topic.</p>"}))
    GetContentModerationResponse.add_member(:get_request_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentModerationRequestMetadata, location_name: 'GetRequestMetadata', traits: {"smithy.api#documentation" => "<p>Information about the paramters used when getting a response. Includes information on\n      aggregation and sorting methods.</p>"}))
    GetContentModerationResponse.type = Types::GetContentModerationResponse
    GetFaceDetectionRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Unique identifier for the face detection job. The <code>JobId</code> is returned from <code>StartFaceDetection</code>.</p>", "smithy.api#required" => {}}))
    GetFaceDetectionRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. \n       If you specify a value greater than 1000, a maximum of 1000 results is returned.\n       The default value is 1000.</p>"}))
    GetFaceDetectionRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there are more faces to retrieve), Amazon Rekognition Video returns a pagination\n       token in the response. You can use this pagination token to retrieve the next set of faces.</p>"}))
    GetFaceDetectionRequest.type = Types::GetFaceDetectionRequest
    GetFaceDetectionResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the face detection job.</p>"}))
    GetFaceDetectionResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"}))
    GetFaceDetectionResponse.add_member(:video_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata, location_name: 'VideoMetadata', traits: {"smithy.api#documentation" => "<p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in\n       every page of paginated responses from a Amazon Rekognition video operation.</p>"}))
    GetFaceDetectionResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Rekognition returns this token that you can use in the subsequent request to retrieve the next set of faces. </p>"}))
    GetFaceDetectionResponse.add_member(:faces, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetections, location_name: 'Faces', traits: {"smithy.api#documentation" => "<p>An array of faces detected in the video. Each element contains a detected face's details and the time,\n       in milliseconds from the start of the video, the face was detected. </p>"}))
    GetFaceDetectionResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Job identifier for the face detection operation for which you want to obtain results. The\n      job identifer is returned by an initial call to StartFaceDetection.</p>"}))
    GetFaceDetectionResponse.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video'))
    GetFaceDetectionResponse.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>A job identifier specified in the call to StartFaceDetection and returned in the job\n      completion notification sent to your Amazon Simple Notification Service topic.</p>"}))
    GetFaceDetectionResponse.type = Types::GetFaceDetectionResponse
    GetFaceLivenessSessionResultsRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LivenessSessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>A unique 128-bit UUID. This is used to uniquely identify the session and also acts as an\n      idempotency token for all operations associated with the session.</p>", "smithy.api#required" => {}}))
    GetFaceLivenessSessionResultsRequest.type = Types::GetFaceLivenessSessionResultsRequest
    GetFaceLivenessSessionResultsResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LivenessSessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The sessionId for which this request was called.</p>", "smithy.api#required" => {}}))
    GetFaceLivenessSessionResultsResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LivenessSessionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Represents a status corresponding to the state of the session. Possible statuses are:\n      CREATED, IN_PROGRESS, SUCCEEDED, FAILED, EXPIRED.</p>", "smithy.api#required" => {}}))
    GetFaceLivenessSessionResultsResponse.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Probabalistic confidence score for if the person in the given video was live, represented\n      as a float value between 0 to 100.</p>"}))
    GetFaceLivenessSessionResultsResponse.add_member(:reference_image, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditImage, location_name: 'ReferenceImage', traits: {"smithy.api#documentation" => "<p>A high-quality image from the Face Liveness video that can be used for face comparison or\n      search. It includes a bounding box of the face and the Base64-encoded bytes that return an\n      image. If the CreateFaceLivenessSession request included an OutputConfig argument, the image\n      will be uploaded to an S3Object specified in the output configuration. In case the reference\n      image is not returned, it's recommended to retry the Liveness check.</p>"}))
    GetFaceLivenessSessionResultsResponse.add_member(:audit_images, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditImages, location_name: 'AuditImages', traits: {"smithy.api#documentation" => "<p>A set of images from the Face Liveness video that can be used for audit purposes. It\n      includes a bounding box of the face and the Base64-encoded bytes that return an image. If the\n      CreateFaceLivenessSession request included an OutputConfig argument, the image will be\n      uploaded to an S3Object specified in the output configuration. If no Amazon S3 bucket is defined,\n      raw bytes are sent instead.</p>"}))
    GetFaceLivenessSessionResultsResponse.add_member(:challenge, Smithy::Schema::Shapes::ShapeRef.new(shape: Challenge, location_name: 'Challenge', traits: {"smithy.api#documentation" => "<p>Contains information regarding the challenge type used for the Face Liveness check.</p>"}))
    GetFaceLivenessSessionResultsResponse.type = Types::GetFaceLivenessSessionResultsResponse
    GetFaceSearchRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job identifer for the search request. You get the job identifier from an initial call to <code>StartFaceSearch</code>.</p>", "smithy.api#required" => {}}))
    GetFaceSearchRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. \n      If you specify a value greater than 1000, a maximum of 1000 results is returned.\n      The default value is 1000.</p>"}))
    GetFaceSearchRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more search results to retrieve), Amazon Rekognition Video returns a pagination\n      token in the response. You can use this pagination token to retrieve the next set of search results. </p>"}))
    GetFaceSearchRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceSearchSortBy, location_name: 'SortBy', traits: {"smithy.api#documentation" => "<p>Sort to use for grouping faces in the response. Use <code>TIMESTAMP</code> to group faces by the time\n      that they are recognized. Use <code>INDEX</code> to sort by recognized faces. </p>"}))
    GetFaceSearchRequest.type = Types::GetFaceSearchRequest
    GetFaceSearchResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the face search job.</p>"}))
    GetFaceSearchResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"}))
    GetFaceSearchResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of search results. </p>"}))
    GetFaceSearchResponse.add_member(:video_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata, location_name: 'VideoMetadata', traits: {"smithy.api#documentation" => "<p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code> is returned in every page of paginated responses\n      from a Amazon Rekognition Video operation. </p>"}))
    GetFaceSearchResponse.add_member(:persons, Smithy::Schema::Shapes::ShapeRef.new(shape: PersonMatches, location_name: 'Persons', traits: {"smithy.api#documentation" => "<p>An array of persons,  <a>PersonMatch</a>,\n      in the video whose face(s) match the face(s) in an Amazon Rekognition collection. It also includes time information\n       for when persons are matched in the video.\n      You specify the input collection in an initial call to <code>StartFaceSearch</code>.\n      Each  <code>Persons</code> element includes a time the person was matched,\n      face match details (<code>FaceMatches</code>) for matching faces in the collection,\n       and person information (<code>Person</code>) for the matched person. </p>"}))
    GetFaceSearchResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Job identifier for the face search operation for which you want to obtain results. The job\n      identifer is returned by an initial call to StartFaceSearch.</p>"}))
    GetFaceSearchResponse.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video'))
    GetFaceSearchResponse.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>A job identifier specified in the call to StartFaceSearch and returned in the job\n      completion notification sent to your Amazon Simple Notification Service topic.</p>"}))
    GetFaceSearchResponse.type = Types::GetFaceSearchResponse
    GetLabelDetectionRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Job identifier for the label detection operation for which you want results returned. You get the job identifer from\n      an initial call to <code>StartlabelDetection</code>.</p>", "smithy.api#required" => {}}))
    GetLabelDetectionRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. \n       If you specify a value greater than 1000, a maximum of 1000 results is returned.\n       The default value is 1000.</p>"}))
    GetLabelDetectionRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns a pagination\n         token in the response. You can use this pagination token to retrieve the next set of labels. </p>"}))
    GetLabelDetectionRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetectionSortBy, location_name: 'SortBy', traits: {"smithy.api#documentation" => "<p>Sort to use for elements in the <code>Labels</code> array.\n      Use <code>TIMESTAMP</code> to sort array elements by the time labels are detected.\n      Use <code>NAME</code> to alphabetically group elements for a label together.\n      Within each label group, the array element are sorted by detection confidence.\n      The default sort is by <code>TIMESTAMP</code>.</p>"}))
    GetLabelDetectionRequest.add_member(:aggregate_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetectionAggregateBy, location_name: 'AggregateBy', traits: {"smithy.api#documentation" => "<p>Defines how to aggregate the returned results. Results can be aggregated by timestamps or segments.</p>"}))
    GetLabelDetectionRequest.type = Types::GetLabelDetectionRequest
    GetLabelDetectionRequestMetadata.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetectionSortBy, location_name: 'SortBy', traits: {"smithy.api#documentation" => "<p>The sorting method chosen for a GetLabelDetection request.</p>"}))
    GetLabelDetectionRequestMetadata.add_member(:aggregate_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetectionAggregateBy, location_name: 'AggregateBy', traits: {"smithy.api#documentation" => "<p>The aggregation method chosen for a GetLabelDetection request.</p>"}))
    GetLabelDetectionRequestMetadata.type = Types::GetLabelDetectionRequestMetadata
    GetLabelDetectionResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the label detection job.</p>"}))
    GetLabelDetectionResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"}))
    GetLabelDetectionResponse.add_member(:video_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata, location_name: 'VideoMetadata', traits: {"smithy.api#documentation" => "<p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in\n       every page of paginated responses from a Amazon Rekognition video operation.</p>"}))
    GetLabelDetectionResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request\n        to retrieve the next set of labels.</p>"}))
    GetLabelDetectionResponse.add_member(:labels, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetections, location_name: 'Labels', traits: {"smithy.api#documentation" => "<p>An array of labels detected in the video. Each element contains the detected label and the time,\n        in milliseconds from the start of the video, that the label was detected. </p>"}))
    GetLabelDetectionResponse.add_member(:label_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LabelModelVersion', traits: {"smithy.api#documentation" => "<p>Version number of the label detection model that was used to detect labels.</p>"}))
    GetLabelDetectionResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Job identifier for the label detection operation for which you want to obtain results. The\n      job identifer is returned by an initial call to StartLabelDetection.</p>"}))
    GetLabelDetectionResponse.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video'))
    GetLabelDetectionResponse.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>A job identifier specified in the call to StartLabelDetection and returned in the job\n      completion notification sent to your Amazon Simple Notification Service topic.</p>"}))
    GetLabelDetectionResponse.add_member(:get_request_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: GetLabelDetectionRequestMetadata, location_name: 'GetRequestMetadata', traits: {"smithy.api#documentation" => "<p>Information about the paramters used when getting a response. Includes information on\n      aggregation and sorting methods.</p>"}))
    GetLabelDetectionResponse.type = Types::GetLabelDetectionResponse
    GetMediaAnalysisJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Unique identifier for the media analysis job for which you want to retrieve results.</p>", "smithy.api#required" => {}}))
    GetMediaAnalysisJobRequest.type = Types::GetMediaAnalysisJobRequest
    GetMediaAnalysisJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier for the media analysis job.</p>", "smithy.api#required" => {}}))
    GetMediaAnalysisJobResponse.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name of the media analysis job.</p>"}))
    GetMediaAnalysisJobResponse.add_member(:operations_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisOperationsConfig, location_name: 'OperationsConfig', traits: {"smithy.api#documentation" => "<p>Operation configurations that were provided during job creation.</p>", "smithy.api#required" => {}}))
    GetMediaAnalysisJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the media analysis job.</p>", "smithy.api#required" => {}}))
    GetMediaAnalysisJobResponse.add_member(:failure_details, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobFailureDetails, location_name: 'FailureDetails', traits: {"smithy.api#documentation" => "<p>Details about the error that resulted in failure of the job.</p>"}))
    GetMediaAnalysisJobResponse.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>The Unix date and time when the job was started.</p>", "smithy.api#required" => {}}))
    GetMediaAnalysisJobResponse.add_member(:completion_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CompletionTimestamp', traits: {"smithy.api#documentation" => "<p>The Unix date and time when the job finished.</p>"}))
    GetMediaAnalysisJobResponse.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisInput, location_name: 'Input', traits: {"smithy.api#documentation" => "<p>Reference to the input manifest that was provided in the job creation request.</p>", "smithy.api#required" => {}}))
    GetMediaAnalysisJobResponse.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisOutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#documentation" => "<p>Output configuration that was provided in the creation request.</p>", "smithy.api#required" => {}}))
    GetMediaAnalysisJobResponse.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>KMS Key that was provided in the creation request.</p>"}))
    GetMediaAnalysisJobResponse.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisResults, location_name: 'Results', traits: {"smithy.api#documentation" => "<p>Output manifest that contains prediction results.</p>"}))
    GetMediaAnalysisJobResponse.add_member(:manifest_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisManifestSummary, location_name: 'ManifestSummary', traits: {"smithy.api#documentation" => "<p>The summary manifest provides statistics on input manifest and errors identified in the input manifest.</p>"}))
    GetMediaAnalysisJobResponse.type = Types::GetMediaAnalysisJobResponse
    GetPersonTrackingRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier for a job that tracks persons in a video. You get the <code>JobId</code> from a call to <code>StartPersonTracking</code>.\n        </p>", "smithy.api#required" => {}}))
    GetPersonTrackingRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. \n      If you specify a value greater than 1000, a maximum of 1000 results is returned.\n      The default value is 1000.</p>"}))
    GetPersonTrackingRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there are more persons to retrieve), Amazon Rekognition Video returns a pagination\n       token in the response. You can use this pagination token to retrieve the next set of persons. </p>"}))
    GetPersonTrackingRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: PersonTrackingSortBy, location_name: 'SortBy', traits: {"smithy.api#documentation" => "<p>Sort to use for elements in the <code>Persons</code> array. Use <code>TIMESTAMP</code> to sort array elements\n       by the time persons are detected. Use <code>INDEX</code> to sort by the tracked persons.\n       If you sort by <code>INDEX</code>, the array elements for each person are sorted by detection confidence.\n       The default sort is by <code>TIMESTAMP</code>.</p>"}))
    GetPersonTrackingRequest.type = Types::GetPersonTrackingRequest
    GetPersonTrackingResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the person tracking job.</p>"}))
    GetPersonTrackingResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"}))
    GetPersonTrackingResponse.add_member(:video_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata, location_name: 'VideoMetadata', traits: {"smithy.api#documentation" => "<p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in\n       every page of paginated responses from a Amazon Rekognition Video operation.</p>"}))
    GetPersonTrackingResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of persons. </p>"}))
    GetPersonTrackingResponse.add_member(:persons, Smithy::Schema::Shapes::ShapeRef.new(shape: PersonDetections, location_name: 'Persons', traits: {"smithy.api#documentation" => "<p>An array of the persons detected in the video and the time(s) their path was tracked throughout the video.\n        An array element will exist for each time a person's path is tracked. </p>"}))
    GetPersonTrackingResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Job identifier for the person tracking operation for which you want to obtain results. The\n      job identifer is returned by an initial call to StartPersonTracking.</p>"}))
    GetPersonTrackingResponse.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video'))
    GetPersonTrackingResponse.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>A job identifier specified in the call to StartCelebrityRecognition and returned in the\n      job completion notification sent to your Amazon Simple Notification Service topic.</p>"}))
    GetPersonTrackingResponse.type = Types::GetPersonTrackingResponse
    GetSegmentDetectionRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Job identifier for the text detection operation for which you want results returned. \n      You get the job identifer from an initial call to <code>StartSegmentDetection</code>.</p>", "smithy.api#required" => {}}))
    GetSegmentDetectionRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.</p>"}))
    GetSegmentDetectionRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent \n      request to retrieve the next set of text.</p>"}))
    GetSegmentDetectionRequest.type = Types::GetSegmentDetectionRequest
    GetSegmentDetectionResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Current status of the segment detection job.</p>"}))
    GetSegmentDetectionResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"}))
    GetSegmentDetectionResponse.add_member(:video_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadataList, location_name: 'VideoMetadata', traits: {"smithy.api#documentation" => "<p>Currently, Amazon Rekognition Video returns a single   object in the\n      <code>VideoMetadata</code> array. The object\n      contains information about the video stream in the input file that Amazon Rekognition Video chose to analyze.  \n      The <code>VideoMetadata</code> object includes the video codec, video format and other information.\n      Video metadata is returned in each page of information returned by <code>GetSegmentDetection</code>.</p>"}))
    GetSegmentDetectionResponse.add_member(:audio_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioMetadataList, location_name: 'AudioMetadata', traits: {"smithy.api#documentation" => "<p>An array of \n       objects. There can be multiple audio streams. \n      Each <code>AudioMetadata</code> object contains metadata for a single audio stream.\n      Audio information in an <code>AudioMetadata</code> objects includes \n      the audio codec, the number of audio channels, the duration of the audio stream,\n      and the sample rate. Audio metadata is returned in each page of information returned\n      by <code>GetSegmentDetection</code>.</p>"}))
    GetSegmentDetectionResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns \n      a pagination token in the response. You can use this pagination token to retrieve the next set of text.</p>"}))
    GetSegmentDetectionResponse.add_member(:segments, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDetections, location_name: 'Segments', traits: {"smithy.api#documentation" => "<p>An array of segments detected in a video.  The array is sorted by the segment types (TECHNICAL_CUE or SHOT) \n      specified in the <code>SegmentTypes</code> input parameter of <code>StartSegmentDetection</code>. Within\n      each segment type the array is sorted by timestamp values.</p>"}))
    GetSegmentDetectionResponse.add_member(:selected_segment_types, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentTypesInfo, location_name: 'SelectedSegmentTypes', traits: {"smithy.api#documentation" => "<p>An array containing the segment types requested in the call to <code>StartSegmentDetection</code>.\n    </p>"}))
    GetSegmentDetectionResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Job identifier for the segment detection operation for which you want to obtain results.\n      The job identifer is returned by an initial call to StartSegmentDetection.</p>"}))
    GetSegmentDetectionResponse.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video'))
    GetSegmentDetectionResponse.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>A job identifier specified in the call to StartSegmentDetection and returned in the job\n      completion notification sent to your Amazon Simple Notification Service topic.</p>"}))
    GetSegmentDetectionResponse.type = Types::GetSegmentDetectionResponse
    GetTextDetectionRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Job identifier for the text detection operation for which you want results returned. \n        You get the job identifer from an initial call to <code>StartTextDetection</code>.</p>", "smithy.api#required" => {}}))
    GetTextDetectionRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.</p>"}))
    GetTextDetectionRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns \n      a pagination token in the response. You can use this pagination token to retrieve the next set of text.</p>"}))
    GetTextDetectionRequest.type = Types::GetTextDetectionRequest
    GetTextDetectionResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Current status of the text detection job.</p>"}))
    GetTextDetectionResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"}))
    GetTextDetectionResponse.add_member(:video_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata, location_name: 'VideoMetadata'))
    GetTextDetectionResponse.add_member(:text_detections, Smithy::Schema::Shapes::ShapeRef.new(shape: TextDetectionResults, location_name: 'TextDetections', traits: {"smithy.api#documentation" => "<p>An array of text detected in the video. Each element contains the detected text, the time in milliseconds\n      from the start of the video that the text was detected, and where it was detected on the screen.</p>"}))
    GetTextDetectionResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent \n        request to retrieve the next set of text.</p>"}))
    GetTextDetectionResponse.add_member(:text_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TextModelVersion', traits: {"smithy.api#documentation" => "<p>Version number of the text detection model that was used to detect text.</p>"}))
    GetTextDetectionResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Job identifier for the text detection operation for which you want to obtain results. The\n      job identifer is returned by an initial call to StartTextDetection.</p>"}))
    GetTextDetectionResponse.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video'))
    GetTextDetectionResponse.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>A job identifier specified in the call to StartTextDetection and returned in the job\n      completion notification sent to your Amazon Simple Notification Service topic.</p>"}))
    GetTextDetectionResponse.type = Types::GetTextDetectionResponse
    GroundTruthManifest.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'S3Object'))
    GroundTruthManifest.type = Types::GroundTruthManifest
    HumanLoopActivationOutput.add_member(:human_loop_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopArn, location_name: 'HumanLoopArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the HumanLoop created.</p>"}))
    HumanLoopActivationOutput.add_member(:human_loop_activation_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopActivationReasons, location_name: 'HumanLoopActivationReasons', traits: {"smithy.api#documentation" => "<p>Shows if and why human review was needed.</p>"}))
    HumanLoopActivationOutput.add_member(:human_loop_activation_conditions_evaluation_results, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonHumanLoopActivationConditionsEvaluationResults, location_name: 'HumanLoopActivationConditionsEvaluationResults', traits: {"smithy.api#documentation" => "<p>Shows the result of condition evaluations, including those conditions which activated a\n      human review.</p>"}))
    HumanLoopActivationOutput.type = Types::HumanLoopActivationOutput
    HumanLoopActivationReasons.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopActivationReason)
    HumanLoopConfig.add_member(:human_loop_name, Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopName, location_name: 'HumanLoopName', traits: {"smithy.api#documentation" => "<p>The name of the human review used for this image. This should be kept unique within a\n      region.</p>", "smithy.api#required" => {}}))
    HumanLoopConfig.add_member(:flow_definition_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinitionArn, location_name: 'FlowDefinitionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the flow definition. You can create a flow definition by\n      using the Amazon Sagemaker <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateFlowDefinition.html\">CreateFlowDefinition</a> Operation. </p>", "smithy.api#required" => {}}))
    HumanLoopConfig.add_member(:data_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopDataAttributes, location_name: 'DataAttributes', traits: {"smithy.api#documentation" => "<p>Sets attributes of the input data.</p>"}))
    HumanLoopConfig.type = Types::HumanLoopConfig
    HumanLoopDataAttributes.add_member(:content_classifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentClassifiers, location_name: 'ContentClassifiers', traits: {"smithy.api#documentation" => "<p>Sets whether the input image is free of personally identifiable information.</p>"}))
    HumanLoopDataAttributes.type = Types::HumanLoopDataAttributes
    HumanLoopQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>"}))
    HumanLoopQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>The quota code.</p>"}))
    HumanLoopQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>The service code.</p>"}))
    HumanLoopQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    HumanLoopQuotaExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    HumanLoopQuotaExceededException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    HumanLoopQuotaExceededException.type = Types::HumanLoopQuotaExceededException
    IdempotentParameterMismatchException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    IdempotentParameterMismatchException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    IdempotentParameterMismatchException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    Image.add_member(:bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageBlob, location_name: 'Bytes', traits: {"smithy.api#documentation" => "<p>Blob of image bytes up to 5 MBs. Note that the maximum image size you can\n      pass to <code>DetectCustomLabels</code> is 4MB. </p>"}))
    Image.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'S3Object', traits: {"smithy.api#documentation" => "<p>Identifies an S3 object as the image source.</p>"}))
    Image.type = Types::Image
    ImageQuality.add_member(:brightness, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Brightness', traits: {"smithy.api#documentation" => "<p>Value representing brightness of the face. The service returns a value between 0 and\n      100 (inclusive). A higher value indicates a brighter face image.</p>"}))
    ImageQuality.add_member(:sharpness, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Sharpness', traits: {"smithy.api#documentation" => "<p>Value representing sharpness of the face. The service returns a value between 0 and 100\n      (inclusive). A higher value indicates a sharper face image.</p>"}))
    ImageQuality.type = Types::ImageQuality
    ImageTooLargeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ImageTooLargeException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ImageTooLargeException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    ImageTooLargeException.type = Types::ImageTooLargeException
    IndexFacesRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>The ID of an existing collection to which you want to add the faces that are detected\n      in the input images.</p>", "smithy.api#required" => {}}))
    IndexFacesRequest.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'Image', traits: {"smithy.api#documentation" => "<p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to\n      call Amazon Rekognition operations, passing base64-encoded image bytes isn't supported. </p>\n         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to\n      base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see\n      Images in the Amazon Rekognition developer guide.</p>", "smithy.api#required" => {}}))
    IndexFacesRequest.add_member(:external_image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalImageId, location_name: 'ExternalImageId', traits: {"smithy.api#documentation" => "<p>The ID you want to assign to all the faces detected in the image.</p>"}))
    IndexFacesRequest.add_member(:detection_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'DetectionAttributes', traits: {"smithy.api#documentation" => "<p>An array of facial attributes you want to be returned. A <code>DEFAULT</code> subset of\n      facial attributes - <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>,\n        <code>Quality</code>, and <code>Landmarks</code> - will always be returned. You can request\n      for specific facial attributes (in addition to the default list) - by using <code>[\"DEFAULT\",\n        \"FACE_OCCLUDED\"]</code> or just <code>[\"FACE_OCCLUDED\"]</code>. You can request for all\n      facial attributes by using <code>[\"ALL\"]</code>. Requesting more attributes may increase\n      response time.</p>\n         <p>If you provide both, <code>[\"ALL\", \"DEFAULT\"]</code>, the service uses a logical AND\n      operator to determine which attributes to return (in this case, all attributes). </p>"}))
    IndexFacesRequest.add_member(:max_faces, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFacesToIndex, location_name: 'MaxFaces', traits: {"smithy.api#documentation" => "<p>The maximum number of faces to index. The value of <code>MaxFaces</code> must be greater\n      than or equal to 1. <code>IndexFaces</code> returns no more than 100 detected faces in an\n      image, even if you specify a larger value for <code>MaxFaces</code>.</p>\n         <p>If <code>IndexFaces</code> detects more faces than the value of <code>MaxFaces</code>, the\n      faces with the lowest quality are filtered out first. If there are still more faces than the\n      value of <code>MaxFaces</code>, the faces with the smallest bounding boxes are filtered out\n      (up to the number that's needed to satisfy the value of <code>MaxFaces</code>). Information\n      about the unindexed faces is available in the <code>UnindexedFaces</code> array. </p>\n         <p>The faces that are returned by <code>IndexFaces</code> are sorted by the largest face\n      bounding box size to the smallest size, in descending order.</p>\n         <p>\n            <code>MaxFaces</code> can be used with a collection associated with any version of the\n      face model.</p>"}))
    IndexFacesRequest.add_member(:quality_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: QualityFilter, location_name: 'QualityFilter', traits: {"smithy.api#documentation" => "<p>A filter that specifies a quality bar for how much filtering is done to identify faces.\n      Filtered faces aren't indexed. If you specify <code>AUTO</code>, Amazon Rekognition chooses the quality\n      bar. If you specify <code>LOW</code>, <code>MEDIUM</code>, or <code>HIGH</code>, filtering\n      removes all faces that don’t meet the chosen quality bar. The default value is\n        <code>AUTO</code>. \n      The quality bar is based on a variety of common use cases. Low-quality detections can occur\n      for a number of reasons. Some examples are an object that's misidentified as a face, a face\n      that's too blurry, or a face with a pose that's too extreme to use. If you specify\n        <code>NONE</code>, no filtering is performed. </p>\n         <p>To use quality filtering, the collection you are using must be associated with version 3\n      of the face model or higher.</p>"}))
    IndexFacesRequest.type = Types::IndexFacesRequest
    IndexFacesResponse.add_member(:face_records, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceRecordList, location_name: 'FaceRecords', traits: {"smithy.api#documentation" => "<p>An array of faces detected and added to the collection. For more information,\n      see Searching Faces in a Collection in the Amazon Rekognition Developer Guide. </p>"}))
    IndexFacesResponse.add_member(:orientation_correction, Smithy::Schema::Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: 'OrientationCorrection', traits: {"smithy.api#documentation" => "<p>If your collection is associated with a face detection model that's later than version\n      3.0, the value of <code>OrientationCorrection</code> is always null and no orientation\n      information is returned.</p>\n         <p>If your collection is associated with a face detection model that's version 3.0 or\n      earlier, the following applies:</p>\n         <ul>\n            <li>\n               <p>If the input image is in .jpeg format, it might contain exchangeable image file format\n          (Exif) metadata that includes the image's orientation. Amazon Rekognition uses this orientation\n          information to perform image correction - the bounding box coordinates are translated to\n          represent object locations after the orientation information in the Exif metadata is used\n          to correct the image orientation. Images in .png format don't contain Exif metadata. The\n          value of <code>OrientationCorrection</code> is null.</p>\n            </li>\n            <li>\n               <p>If the image doesn't contain orientation information in its Exif metadata, Amazon Rekognition\n          returns an estimated orientation (ROTATE_0, ROTATE_90, ROTATE_180, ROTATE_270). Amazon Rekognition\n          doesn’t perform image correction for images. The bounding box coordinates aren't\n          translated and represent the object locations before the image is rotated.</p>\n            </li>\n         </ul>\n         <p>Bounding box information is returned in the <code>FaceRecords</code> array. You can get\n      the version of the face detection model by calling <a>DescribeCollection</a>. </p>"}))
    IndexFacesResponse.add_member(:face_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FaceModelVersion', traits: {"smithy.api#documentation" => "<p>The version number of the face detection model that's associated with the input\n      collection (<code>CollectionId</code>).</p>"}))
    IndexFacesResponse.add_member(:unindexed_faces, Smithy::Schema::Shapes::ShapeRef.new(shape: UnindexedFaces, location_name: 'UnindexedFaces', traits: {"smithy.api#documentation" => "<p>An array of faces that were detected in the image but weren't indexed. They weren't\n      indexed because the quality filter identified them as low quality, or the\n        <code>MaxFaces</code> request parameter filtered them out. To use the quality filter, you\n      specify the <code>QualityFilter</code> request parameter.</p>"}))
    IndexFacesResponse.type = Types::IndexFacesResponse
    Instance.add_member(:bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'BoundingBox', traits: {"smithy.api#documentation" => "<p>The position of the label instance on the image.</p>"}))
    Instance.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence that Amazon Rekognition has in the accuracy of the bounding box.</p>"}))
    Instance.add_member(:dominant_colors, Smithy::Schema::Shapes::ShapeRef.new(shape: DominantColors, location_name: 'DominantColors', traits: {"smithy.api#documentation" => "<p>The dominant colors found in an individual instance of a label.</p>"}))
    Instance.type = Types::Instance
    Instances.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Instance)
    InternalServerError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InternalServerError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InternalServerError.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    InternalServerError.type = Types::InternalServerError
    InvalidImageFormatException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidImageFormatException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InvalidImageFormatException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    InvalidImageFormatException.type = Types::InvalidImageFormatException
    InvalidManifestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidManifestException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InvalidManifestException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    InvalidManifestException.type = Types::InvalidManifestException
    InvalidPaginationTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidPaginationTokenException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InvalidPaginationTokenException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    InvalidPaginationTokenException.type = Types::InvalidPaginationTokenException
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidParameterException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InvalidParameterException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidPolicyRevisionIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidPolicyRevisionIdException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InvalidPolicyRevisionIdException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    InvalidPolicyRevisionIdException.type = Types::InvalidPolicyRevisionIdException
    InvalidS3ObjectException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidS3ObjectException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InvalidS3ObjectException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    InvalidS3ObjectException.type = Types::InvalidS3ObjectException
    KinesisDataStream.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisDataArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>ARN of the output Amazon Kinesis Data Streams stream.</p>"}))
    KinesisDataStream.type = Types::KinesisDataStream
    KinesisVideoStream.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>ARN of the Kinesis video stream stream that streams the source video.</p>"}))
    KinesisVideoStream.type = Types::KinesisVideoStream
    KinesisVideoStreamStartSelector.add_member(:producer_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'ProducerTimestamp', traits: {"smithy.api#documentation" => "<p> The timestamp from the producer corresponding to the fragment, in milliseconds,\n            expressed in unix time format. </p>"}))
    KinesisVideoStreamStartSelector.add_member(:fragment_number, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamFragmentNumber, location_name: 'FragmentNumber', traits: {"smithy.api#documentation" => "<p>\n            The unique identifier of the fragment. This value monotonically increases based on the ingestion order.\n        </p>"}))
    KinesisVideoStreamStartSelector.type = Types::KinesisVideoStreamStartSelector
    KnownGender.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: KnownGenderType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>A string value of the KnownGender info about the Celebrity.</p>"}))
    KnownGender.type = Types::KnownGender
    KnownGenderType.add_member(:male, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Male', traits: {"smithy.api#enumValue" => "Male"}))
    KnownGenderType.add_member(:female, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Female', traits: {"smithy.api#enumValue" => "Female"}))
    KnownGenderType.add_member(:nonbinary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Nonbinary', traits: {"smithy.api#enumValue" => "Nonbinary"}))
    KnownGenderType.add_member(:unlisted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unlisted', traits: {"smithy.api#enumValue" => "Unlisted"}))
    Label.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name (label) of the object or scene.</p>"}))
    Label.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Level of confidence.</p>"}))
    Label.add_member(:instances, Smithy::Schema::Shapes::ShapeRef.new(shape: Instances, location_name: 'Instances', traits: {"smithy.api#documentation" => "<p>If <code>Label</code> represents an object, <code>Instances</code> contains the bounding\n      boxes for each instance of the detected object. Bounding boxes are returned for common object\n      labels such as people, cars, furniture, apparel or pets.</p>"}))
    Label.add_member(:parents, Smithy::Schema::Shapes::ShapeRef.new(shape: Parents, location_name: 'Parents', traits: {"smithy.api#documentation" => "<p>The parent labels for a label. The response includes all ancestor labels.</p>"}))
    Label.add_member(:aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelAliases, location_name: 'Aliases', traits: {"smithy.api#documentation" => "<p>A list of potential aliases for a given label.</p>"}))
    Label.add_member(:categories, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelCategories, location_name: 'Categories', traits: {"smithy.api#documentation" => "<p>A list of the categories associated with a given label.</p>"}))
    Label.type = Types::Label
    LabelAlias.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of an alias for a given label.</p>"}))
    LabelAlias.type = Types::LabelAlias
    LabelAliases.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LabelAlias)
    LabelCategories.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LabelCategory)
    LabelCategory.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a category that applies to a given label.</p>"}))
    LabelCategory.type = Types::LabelCategory
    LabelDetection.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Time, in milliseconds from the start of the video, that the label was detected.\n          Note that <code>Timestamp</code> is not guaranteed to be accurate to the individual frame where the label first appears.</p>"}))
    LabelDetection.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: Label, location_name: 'Label', traits: {"smithy.api#documentation" => "<p>Details about the detected label.</p>"}))
    LabelDetection.add_member(:start_timestamp_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'StartTimestampMillis', traits: {"smithy.api#documentation" => "<p>The time in milliseconds defining the start of the timeline segment containing a continuously detected label.</p>"}))
    LabelDetection.add_member(:end_timestamp_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'EndTimestampMillis', traits: {"smithy.api#documentation" => "<p>The time in milliseconds defining the end of the timeline segment containing a continuously detected label.</p>"}))
    LabelDetection.add_member(:duration_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'DurationMillis', traits: {"smithy.api#documentation" => "<p>The time duration of a segment in milliseconds, I.e. time elapsed from StartTimestampMillis to EndTimestampMillis.</p>"}))
    LabelDetection.type = Types::LabelDetection
    LabelDetectionAggregateBy.add_member(:timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMPS', traits: {"smithy.api#enumValue" => "TIMESTAMPS"}))
    LabelDetectionAggregateBy.add_member(:segments, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEGMENTS', traits: {"smithy.api#enumValue" => "SEGMENTS"}))
    LabelDetectionFeatureList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetectionFeatureName)
    LabelDetectionFeatureName.add_member(:general_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERAL_LABELS', traits: {"smithy.api#enumValue" => "GENERAL_LABELS"}))
    LabelDetectionSettings.add_member(:general_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralLabelsSettings, location_name: 'GeneralLabels'))
    LabelDetectionSettings.type = Types::LabelDetectionSettings
    LabelDetectionSortBy.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAME', traits: {"smithy.api#enumValue" => "NAME"}))
    LabelDetectionSortBy.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    LabelDetections.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetection)
    Labels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Label)
    Landmark.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LandmarkType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Type of landmark.</p>"}))
    Landmark.add_member(:x, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'X', traits: {"smithy.api#documentation" => "<p>The x-coordinate of the landmark expressed as a ratio of the width of the image. The\n      x-coordinate is measured from the left-side of the image. For example, if the image is 700\n      pixels wide and the x-coordinate of the landmark is at 350 pixels, this value is 0.5.\n    </p>"}))
    Landmark.add_member(:y, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Y', traits: {"smithy.api#documentation" => "<p>The y-coordinate of the landmark expressed as a ratio of the height of the image. The\n      y-coordinate is measured from the top of the image. For example, if the image height is 200\n      pixels and the y-coordinate of the landmark is at 50 pixels, this value is 0.25.</p>"}))
    Landmark.type = Types::Landmark
    LandmarkType.add_member(:eye_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eyeLeft', traits: {"smithy.api#enumValue" => "eyeLeft"}))
    LandmarkType.add_member(:eye_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eyeRight', traits: {"smithy.api#enumValue" => "eyeRight"}))
    LandmarkType.add_member(:nose, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'nose', traits: {"smithy.api#enumValue" => "nose"}))
    LandmarkType.add_member(:mouth_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mouthLeft', traits: {"smithy.api#enumValue" => "mouthLeft"}))
    LandmarkType.add_member(:mouth_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mouthRight', traits: {"smithy.api#enumValue" => "mouthRight"}))
    LandmarkType.add_member(:left_eye_brow_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'leftEyeBrowLeft', traits: {"smithy.api#enumValue" => "leftEyeBrowLeft"}))
    LandmarkType.add_member(:left_eye_brow_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'leftEyeBrowRight', traits: {"smithy.api#enumValue" => "leftEyeBrowRight"}))
    LandmarkType.add_member(:left_eye_brow_up, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'leftEyeBrowUp', traits: {"smithy.api#enumValue" => "leftEyeBrowUp"}))
    LandmarkType.add_member(:right_eye_brow_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rightEyeBrowLeft', traits: {"smithy.api#enumValue" => "rightEyeBrowLeft"}))
    LandmarkType.add_member(:right_eye_brow_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rightEyeBrowRight', traits: {"smithy.api#enumValue" => "rightEyeBrowRight"}))
    LandmarkType.add_member(:right_eye_brow_up, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rightEyeBrowUp', traits: {"smithy.api#enumValue" => "rightEyeBrowUp"}))
    LandmarkType.add_member(:left_eye_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'leftEyeLeft', traits: {"smithy.api#enumValue" => "leftEyeLeft"}))
    LandmarkType.add_member(:left_eye_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'leftEyeRight', traits: {"smithy.api#enumValue" => "leftEyeRight"}))
    LandmarkType.add_member(:left_eye_up, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'leftEyeUp', traits: {"smithy.api#enumValue" => "leftEyeUp"}))
    LandmarkType.add_member(:left_eye_down, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'leftEyeDown', traits: {"smithy.api#enumValue" => "leftEyeDown"}))
    LandmarkType.add_member(:right_eye_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rightEyeLeft', traits: {"smithy.api#enumValue" => "rightEyeLeft"}))
    LandmarkType.add_member(:right_eye_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rightEyeRight', traits: {"smithy.api#enumValue" => "rightEyeRight"}))
    LandmarkType.add_member(:right_eye_up, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rightEyeUp', traits: {"smithy.api#enumValue" => "rightEyeUp"}))
    LandmarkType.add_member(:right_eye_down, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rightEyeDown', traits: {"smithy.api#enumValue" => "rightEyeDown"}))
    LandmarkType.add_member(:nose_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'noseLeft', traits: {"smithy.api#enumValue" => "noseLeft"}))
    LandmarkType.add_member(:nose_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'noseRight', traits: {"smithy.api#enumValue" => "noseRight"}))
    LandmarkType.add_member(:mouth_up, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mouthUp', traits: {"smithy.api#enumValue" => "mouthUp"}))
    LandmarkType.add_member(:mouth_down, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mouthDown', traits: {"smithy.api#enumValue" => "mouthDown"}))
    LandmarkType.add_member(:left_pupil, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'leftPupil', traits: {"smithy.api#enumValue" => "leftPupil"}))
    LandmarkType.add_member(:right_pupil, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rightPupil', traits: {"smithy.api#enumValue" => "rightPupil"}))
    LandmarkType.add_member(:upper_jawline_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'upperJawlineLeft', traits: {"smithy.api#enumValue" => "upperJawlineLeft"}))
    LandmarkType.add_member(:mid_jawline_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'midJawlineLeft', traits: {"smithy.api#enumValue" => "midJawlineLeft"}))
    LandmarkType.add_member(:chin_bottom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'chinBottom', traits: {"smithy.api#enumValue" => "chinBottom"}))
    LandmarkType.add_member(:mid_jawline_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'midJawlineRight', traits: {"smithy.api#enumValue" => "midJawlineRight"}))
    LandmarkType.add_member(:upper_jawline_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'upperJawlineRight', traits: {"smithy.api#enumValue" => "upperJawlineRight"}))
    Landmarks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Landmark)
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    LimitExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    LimitExceededException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    LimitExceededException.type = Types::LimitExceededException
    ListCollectionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token from the previous response.</p>"}))
    ListCollectionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of collection IDs to return. </p>"}))
    ListCollectionsRequest.type = Types::ListCollectionsRequest
    ListCollectionsResponse.add_member(:collection_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionIdList, location_name: 'CollectionIds', traits: {"smithy.api#documentation" => "<p>An array of collection IDs.</p>"}))
    ListCollectionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the result is truncated, the response provides a <code>NextToken</code> that you can\n      use in the subsequent request to fetch the next set of collection IDs.</p>"}))
    ListCollectionsResponse.add_member(:face_model_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceModelVersionList, location_name: 'FaceModelVersions', traits: {"smithy.api#documentation" => "<p>Version numbers of the face detection models associated with the collections in the\n      array <code>CollectionIds</code>. For example, the value of <code>FaceModelVersions[2]</code>\n      is the version number for the face detection model used by the collection in\n        <code>CollectionId[2]</code>.</p>"}))
    ListCollectionsResponse.type = Types::ListCollectionsResponse
    ListDatasetEntriesRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>\nThe Amazon Resource Name (ARN) for the dataset that you want to use. \n</p>", "smithy.api#required" => {}}))
    ListDatasetEntriesRequest.add_member(:contains_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetLabels, location_name: 'ContainsLabels', traits: {"smithy.api#documentation" => "<p>Specifies a label filter for the response. The response includes an entry only if one or more of the labels in <code>ContainsLabels</code> exist in the entry.       \n      </p>"}))
    ListDatasetEntriesRequest.add_member(:labeled, Smithy::Schema::Shapes::ShapeRef.new(shape: IsLabeled, location_name: 'Labeled', traits: {"smithy.api#documentation" => "<p>\n   Specify <code>true</code> to get only the JSON Lines where the image is labeled. \n   Specify <code>false</code> to get only the JSON Lines where the image isn't labeled. If you\n   don't specify <code>Labeled</code>, <code>ListDatasetEntries</code> returns JSON Lines for labeled and unlabeled \n   images.\n</p>"}))
    ListDatasetEntriesRequest.add_member(:source_ref_contains, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'SourceRefContains', traits: {"smithy.api#documentation" => "<p>If specified, <code>ListDatasetEntries</code> only returns JSON Lines where the value of <code>SourceRefContains</code> is\n   part of the <code>source-ref</code> field. The <code>source-ref</code> field contains the Amazon S3 location of the image.\n   You can use <code>SouceRefContains</code> for tasks such as getting the JSON Line for a single image, or gettting JSON Lines for all images within a specific folder.</p>"}))
    ListDatasetEntriesRequest.add_member(:has_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: HasErrors, location_name: 'HasErrors', traits: {"smithy.api#documentation" => "<p>Specifies an error filter for the response. Specify <code>True</code> to only include entries that have errors.\n      </p>"}))
    ListDatasetEntriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more\n      results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination \n      token to retrieve the next set of results. </p>"}))
    ListDatasetEntriesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetEntriesPageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per paginated call. The largest value you can specify is 100. \n      If you specify a value greater than 100, a ValidationException\n      error occurs. The default value is 100. </p>"}))
    ListDatasetEntriesRequest.type = Types::ListDatasetEntriesRequest
    ListDatasetEntriesResponse.add_member(:dataset_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetEntries, location_name: 'DatasetEntries', traits: {"smithy.api#documentation" => "<p>\nA list of entries (images) in the dataset.\n</p>"}))
    ListDatasetEntriesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more\n      results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination \n      token to retrieve the next set of results. </p>"}))
    ListDatasetEntriesResponse.type = Types::ListDatasetEntriesResponse
    ListDatasetLabelsRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>\nThe Amazon Resource Name (ARN) of the dataset that you want to use.\n</p>", "smithy.api#required" => {}}))
    ListDatasetLabelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more\n      results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination \n      token to retrieve the next set of results. </p>"}))
    ListDatasetLabelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetLabelsPageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per paginated call. The largest value you can specify is 100. \n      If you specify a value greater than 100, a ValidationException\n      error occurs. The default value is 100. </p>"}))
    ListDatasetLabelsRequest.type = Types::ListDatasetLabelsRequest
    ListDatasetLabelsResponse.add_member(:dataset_label_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetLabelDescriptions, location_name: 'DatasetLabelDescriptions', traits: {"smithy.api#documentation" => "<p>\nA list of the labels in the dataset.\n</p>"}))
    ListDatasetLabelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more\n      results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination \n      token to retrieve the next set of results. </p>"}))
    ListDatasetLabelsResponse.type = Types::ListDatasetLabelsResponse
    ListFacesRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>ID of the collection from which to list the faces.</p>", "smithy.api#required" => {}}))
    ListFacesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more data to retrieve),\n      Amazon Rekognition returns a pagination token in the response. You can use this pagination token to\n      retrieve the next set of faces.</p>"}))
    ListFacesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of faces to return.</p>"}))
    ListFacesRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>An array of user IDs to filter results with when listing faces in a collection.</p>"}))
    ListFacesRequest.add_member(:face_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceIdList, location_name: 'FaceIds', traits: {"smithy.api#documentation" => "<p>An array of face IDs to filter results with when listing faces in a collection.</p>"}))
    ListFacesRequest.type = Types::ListFacesRequest
    ListFacesResponse.add_member(:faces, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceList, location_name: 'Faces', traits: {"smithy.api#documentation" => "<p>An array of <code>Face</code> objects. </p>"}))
    ListFacesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Rekognition returns this token that you can use in the\n      subsequent request to retrieve the next set of faces.</p>"}))
    ListFacesResponse.add_member(:face_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FaceModelVersion', traits: {"smithy.api#documentation" => "<p>Version number of the face detection model associated with the input collection\n        (<code>CollectionId</code>).</p>"}))
    ListFacesResponse.type = Types::ListFacesResponse
    ListMediaAnalysisJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token, if the previous response was incomplete.</p>"}))
    ListMediaAnalysisJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListMediaAnalysisJobsPageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per paginated call. The largest value user can specify is 100. \n        If user specifies a value greater than 100, an <code>InvalidParameterException</code> error occurs. The default value is 100.</p>"}))
    ListMediaAnalysisJobsRequest.type = Types::ListMediaAnalysisJobsRequest
    ListMediaAnalysisJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token, if the previous response was incomplete.</p>"}))
    ListMediaAnalysisJobsResponse.add_member(:media_analysis_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobDescriptions, location_name: 'MediaAnalysisJobs', traits: {"smithy.api#documentation" => "<p>Contains a list of all media analysis jobs.</p>", "smithy.api#required" => {}}))
    ListMediaAnalysisJobsResponse.type = Types::ListMediaAnalysisJobsResponse
    ListProjectPoliciesRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'ProjectArn', traits: {"smithy.api#documentation" => "<p>The ARN of the project for which you want to list the project policies.</p>", "smithy.api#required" => {}}))
    ListProjectPoliciesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more results to retrieve),\n         Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination token\n         to retrieve the next set of results. </p>"}))
    ListProjectPoliciesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectPoliciesPageSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per paginated call. The largest value you can\n         specify is 5. If you specify a value greater than 5, a ValidationException error\n         occurs. The default value is 5. </p>"}))
    ListProjectPoliciesRequest.type = Types::ListProjectPoliciesRequest
    ListProjectPoliciesResponse.add_member(:project_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicies, location_name: 'ProjectPolicies', traits: {"smithy.api#documentation" => "<p>A list of project policies attached to the project.</p>"}))
    ListProjectPoliciesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Rekognition returns this token that you can use in the\n      subsequent request to retrieve the next set of project policies.</p>"}))
    ListProjectPoliciesResponse.type = Types::ListProjectPoliciesResponse
    ListStreamProcessorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there are more stream processors to retrieve), Amazon Rekognition Video\n            returns a pagination token in the response. You can use this pagination token to retrieve the next set of stream processors. </p>"}))
    ListStreamProcessorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of stream processors you want Amazon Rekognition Video to return in the response. The default is 1000. </p>"}))
    ListStreamProcessorsRequest.type = Types::ListStreamProcessorsRequest
    ListStreamProcessorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent\n            request to retrieve the next set of stream processors. </p>"}))
    ListStreamProcessorsResponse.add_member(:stream_processors, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorList, location_name: 'StreamProcessors', traits: {"smithy.api#documentation" => "<p>List of stream processors that you have created.</p>"}))
    ListStreamProcessorsResponse.type = Types::ListStreamProcessorsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p> Amazon Resource Name (ARN) of the model, collection, or stream processor that contains\n      the tags that you want a list of. </p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> A list of key-value tags assigned to the resource. </p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListUsersRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>The ID of an existing collection.</p>", "smithy.api#required" => {}}))
    ListUsersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxUserResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of UsersID to return. </p>"}))
    ListUsersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagingation token to receive the next set of UsersID.</p>"}))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResponse.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'Users', traits: {"smithy.api#documentation" => "<p>List of UsersID associated with the specified collection.</p>"}))
    ListUsersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token to be used with the subsequent request if the response is\n      truncated.</p>"}))
    ListUsersResponse.type = Types::ListUsersResponse
    LivenessOutputConfig.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'S3Bucket', traits: {"smithy.api#documentation" => "<p>The path to an AWS Amazon S3 bucket used to store Face Liveness session results.</p>", "smithy.api#required" => {}}))
    LivenessOutputConfig.add_member(:s3_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: LivenessS3KeyPrefix, location_name: 'S3KeyPrefix', traits: {"smithy.api#documentation" => "<p>The prefix prepended to the output files for the Face Liveness session results.</p>"}))
    LivenessOutputConfig.type = Types::LivenessOutputConfig
    LivenessSessionStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    LivenessSessionStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    LivenessSessionStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    LivenessSessionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    LivenessSessionStatus.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    MalformedPolicyDocumentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    MalformedPolicyDocumentException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    MalformedPolicyDocumentException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    MatchedUser.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>A provided ID for the UserID. Unique within the collection.</p>"}))
    MatchedUser.add_member(:user_status, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStatus, location_name: 'UserStatus', traits: {"smithy.api#documentation" => "<p>The status of the user matched to a provided FaceID.</p>"}))
    MatchedUser.type = Types::MatchedUser
    MediaAnalysisDetectModerationLabelsConfig.add_member(:min_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'MinConfidence', traits: {"smithy.api#documentation" => "<p>Specifies the minimum confidence level for the moderation labels to return. Amazon Rekognition\n            doesn't return any labels with a confidence level lower than this specified value.\n        </p>"}))
    MediaAnalysisDetectModerationLabelsConfig.add_member(:project_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionId, location_name: 'ProjectVersion', traits: {"smithy.api#documentation" => "<p>Specifies the custom moderation model to be used during the label detection job. \n        If not provided the pre-trained model is used.</p>"}))
    MediaAnalysisDetectModerationLabelsConfig.type = Types::MediaAnalysisDetectModerationLabelsConfig
    MediaAnalysisInput.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'S3Object', traits: {"smithy.api#required" => {}}))
    MediaAnalysisInput.type = Types::MediaAnalysisInput
    MediaAnalysisJobDescription.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier for a media analysis job.</p>", "smithy.api#required" => {}}))
    MediaAnalysisJobDescription.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name of a media analysis job.</p>"}))
    MediaAnalysisJobDescription.add_member(:operations_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisOperationsConfig, location_name: 'OperationsConfig', traits: {"smithy.api#documentation" => "<p>Operation configurations that were provided during job creation.</p>", "smithy.api#required" => {}}))
    MediaAnalysisJobDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the media analysis job being retrieved.</p>", "smithy.api#required" => {}}))
    MediaAnalysisJobDescription.add_member(:failure_details, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobFailureDetails, location_name: 'FailureDetails', traits: {"smithy.api#documentation" => "<p>Details about the error that resulted in failure of the job.</p>"}))
    MediaAnalysisJobDescription.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>The Unix date and time when the job was started.</p>", "smithy.api#required" => {}}))
    MediaAnalysisJobDescription.add_member(:completion_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CompletionTimestamp', traits: {"smithy.api#documentation" => "<p>The Unix date and time when the job finished.</p>"}))
    MediaAnalysisJobDescription.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisInput, location_name: 'Input', traits: {"smithy.api#documentation" => "<p>Reference to the input manifest that was provided in the job creation request.</p>", "smithy.api#required" => {}}))
    MediaAnalysisJobDescription.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisOutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#documentation" => "<p>Output configuration that was provided in the creation request.</p>", "smithy.api#required" => {}}))
    MediaAnalysisJobDescription.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>KMS Key that was provided in the creation request.</p>"}))
    MediaAnalysisJobDescription.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisResults, location_name: 'Results', traits: {"smithy.api#documentation" => "<p>Output manifest that contains prediction results.</p>"}))
    MediaAnalysisJobDescription.add_member(:manifest_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisManifestSummary, location_name: 'ManifestSummary', traits: {"smithy.api#documentation" => "<p>Provides statistics on input manifest and errors identified in the input manifest.</p>"}))
    MediaAnalysisJobDescription.type = Types::MediaAnalysisJobDescription
    MediaAnalysisJobDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobDescription)
    MediaAnalysisJobFailureCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    MediaAnalysisJobFailureCode.add_member(:invalid_s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_S3_OBJECT', traits: {"smithy.api#enumValue" => "INVALID_S3_OBJECT"}))
    MediaAnalysisJobFailureCode.add_member(:invalid_manifest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_MANIFEST', traits: {"smithy.api#enumValue" => "INVALID_MANIFEST"}))
    MediaAnalysisJobFailureCode.add_member(:invalid_output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_OUTPUT_CONFIG', traits: {"smithy.api#enumValue" => "INVALID_OUTPUT_CONFIG"}))
    MediaAnalysisJobFailureCode.add_member(:invalid_kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_KMS_KEY', traits: {"smithy.api#enumValue" => "INVALID_KMS_KEY"}))
    MediaAnalysisJobFailureCode.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    MediaAnalysisJobFailureCode.add_member(:resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    MediaAnalysisJobFailureCode.add_member(:resource_not_ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_NOT_READY', traits: {"smithy.api#enumValue" => "RESOURCE_NOT_READY"}))
    MediaAnalysisJobFailureCode.add_member(:throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THROTTLED', traits: {"smithy.api#enumValue" => "THROTTLED"}))
    MediaAnalysisJobFailureDetails.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobFailureCode, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>Error code for the failed job.</p>"}))
    MediaAnalysisJobFailureDetails.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Human readable error message.</p>"}))
    MediaAnalysisJobFailureDetails.type = Types::MediaAnalysisJobFailureDetails
    MediaAnalysisJobStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    MediaAnalysisJobStatus.add_member(:queued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    MediaAnalysisJobStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    MediaAnalysisJobStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    MediaAnalysisJobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    MediaAnalysisManifestSummary.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'S3Object'))
    MediaAnalysisManifestSummary.type = Types::MediaAnalysisManifestSummary
    MediaAnalysisModelVersions.add_member(:moderation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Moderation', traits: {"smithy.api#documentation" => "<p>The Moderation base model version.</p>"}))
    MediaAnalysisModelVersions.type = Types::MediaAnalysisModelVersions
    MediaAnalysisOperationsConfig.add_member(:detect_moderation_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisDetectModerationLabelsConfig, location_name: 'DetectModerationLabels', traits: {"smithy.api#documentation" => "<p>Contains configuration options for a DetectModerationLabels job.</p>"}))
    MediaAnalysisOperationsConfig.type = Types::MediaAnalysisOperationsConfig
    MediaAnalysisOutputConfig.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'S3Bucket', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon S3 bucket to contain the output of the media analysis job.</p>", "smithy.api#required" => {}}))
    MediaAnalysisOutputConfig.add_member(:s3_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisS3KeyPrefix, location_name: 'S3KeyPrefix', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have\n            designated for storage.</p>"}))
    MediaAnalysisOutputConfig.type = Types::MediaAnalysisOutputConfig
    MediaAnalysisResults.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'S3Object'))
    MediaAnalysisResults.add_member(:model_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisModelVersions, location_name: 'ModelVersions', traits: {"smithy.api#documentation" => "<p>Information about the model versions for the features selected in a given job.</p>"}))
    MediaAnalysisResults.type = Types::MediaAnalysisResults
    ModerationLabel.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Specifies the confidence that Amazon Rekognition has that the label has been correctly\n      identified.</p>\n         <p>If you don't specify the <code>MinConfidence</code> parameter in the call to\n        <code>DetectModerationLabels</code>, the operation returns labels with a confidence value\n      greater than or equal to 50 percent.</p>"}))
    ModerationLabel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The label name for the type of unsafe content detected in the image.</p>"}))
    ModerationLabel.add_member(:parent_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParentName', traits: {"smithy.api#documentation" => "<p>The name for the parent label. Labels at the top level of the hierarchy have the parent\n      label <code>\"\"</code>.</p>"}))
    ModerationLabel.add_member(:taxonomy_level, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'TaxonomyLevel', traits: {"smithy.api#documentation" => "<p>The level of the moderation label with regard to its taxonomy, from 1 to 3.</p>"}))
    ModerationLabel.type = Types::ModerationLabel
    ModerationLabels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ModerationLabel)
    MouthOpen.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Value', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Boolean value that indicates whether the mouth on the face is open or not.</p>"}))
    MouthOpen.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Level of confidence in the determination.</p>"}))
    MouthOpen.type = Types::MouthOpen
    Mustache.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Value', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Boolean value that indicates whether the face has mustache or not.</p>"}))
    Mustache.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Level of confidence in the determination.</p>"}))
    Mustache.type = Types::Mustache
    NotificationChannel.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicArn, location_name: 'SNSTopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon SNS topic to which Amazon Rekognition posts the completion status.</p>", "smithy.api#required" => {}}))
    NotificationChannel.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role that gives Amazon Rekognition publishing permissions to the Amazon SNS topic. </p>", "smithy.api#required" => {}}))
    NotificationChannel.type = Types::NotificationChannel
    OrientationCorrection.add_member(:rotate_0, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROTATE_0', traits: {"smithy.api#enumValue" => "ROTATE_0"}))
    OrientationCorrection.add_member(:rotate_90, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROTATE_90', traits: {"smithy.api#enumValue" => "ROTATE_90"}))
    OrientationCorrection.add_member(:rotate_180, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROTATE_180', traits: {"smithy.api#enumValue" => "ROTATE_180"}))
    OrientationCorrection.add_member(:rotate_270, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROTATE_270', traits: {"smithy.api#enumValue" => "ROTATE_270"}))
    OutputConfig.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'S3Bucket', traits: {"smithy.api#documentation" => "<p>The S3 bucket where training output is placed.</p>"}))
    OutputConfig.add_member(:s3_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: 'S3KeyPrefix', traits: {"smithy.api#documentation" => "<p>The prefix applied to the training output files. </p>"}))
    OutputConfig.type = Types::OutputConfig
    Parent.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the parent label.</p>"}))
    Parent.type = Types::Parent
    Parents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Parent)
    PersonDetail.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: PersonIndex, location_name: 'Index', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Identifier for the person detected person within a video. Use to keep track of the person throughout the video. The identifier is not stored by Amazon Rekognition.</p>"}))
    PersonDetail.add_member(:bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'BoundingBox', traits: {"smithy.api#documentation" => "<p>Bounding box around the detected person.</p>"}))
    PersonDetail.add_member(:face, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail, location_name: 'Face', traits: {"smithy.api#documentation" => "<p>Face details for the detected person.</p>"}))
    PersonDetail.type = Types::PersonDetail
    PersonDetection.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time, in milliseconds from the start of the video, that the person's path was tracked.\n          Note that <code>Timestamp</code> is not guaranteed to be accurate to the individual frame where the person's path first appears.</p>"}))
    PersonDetection.add_member(:person, Smithy::Schema::Shapes::ShapeRef.new(shape: PersonDetail, location_name: 'Person', traits: {"smithy.api#documentation" => "<p>Details about a person whose path was tracked in a video.</p>"}))
    PersonDetection.type = Types::PersonDetection
    PersonDetections.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PersonDetection)
    PersonMatch.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time, in milliseconds from the beginning of the video, that the person was matched in\n      the video.</p>"}))
    PersonMatch.add_member(:person, Smithy::Schema::Shapes::ShapeRef.new(shape: PersonDetail, location_name: 'Person', traits: {"smithy.api#documentation" => "<p>Information about the matched person.</p>"}))
    PersonMatch.add_member(:face_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceMatchList, location_name: 'FaceMatches', traits: {"smithy.api#documentation" => "<p>Information about the faces in the input collection that match the face of a person in the\n      video.</p>"}))
    PersonMatch.type = Types::PersonMatch
    PersonMatches.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PersonMatch)
    PersonTrackingSortBy.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDEX', traits: {"smithy.api#enumValue" => "INDEX"}))
    PersonTrackingSortBy.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    Point.add_member(:x, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'X', traits: {"smithy.api#documentation" => "<p>The value of the X coordinate for a point on a <code>Polygon</code>.</p>"}))
    Point.add_member(:y, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Y', traits: {"smithy.api#documentation" => "<p>The value of the Y coordinate for a point on a <code>Polygon</code>.</p>"}))
    Point.type = Types::Point
    Polygon.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Point)
    Pose.add_member(:roll, Smithy::Schema::Shapes::ShapeRef.new(shape: Degree, location_name: 'Roll', traits: {"smithy.api#documentation" => "<p>Value representing the face rotation on the roll axis.</p>"}))
    Pose.add_member(:yaw, Smithy::Schema::Shapes::ShapeRef.new(shape: Degree, location_name: 'Yaw', traits: {"smithy.api#documentation" => "<p>Value representing the face rotation on the yaw axis.</p>"}))
    Pose.add_member(:pitch, Smithy::Schema::Shapes::ShapeRef.new(shape: Degree, location_name: 'Pitch', traits: {"smithy.api#documentation" => "<p>Value representing the face rotation on the pitch axis.</p>"}))
    Pose.type = Types::Pose
    ProjectAutoUpdate.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ProjectAutoUpdate.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ProjectDescription.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'ProjectArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project.</p>"}))
    ProjectDescription.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>The Unix timestamp for the date and time that the project was created.</p>"}))
    ProjectDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the project.</p>"}))
    ProjectDescription.add_member(:datasets, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetMetadataList, location_name: 'Datasets', traits: {"smithy.api#documentation" => "<p>\n         Information about the training and test datasets in the project.\n      </p>"}))
    ProjectDescription.add_member(:feature, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeature, location_name: 'Feature', traits: {"smithy.api#documentation" => "<p>Specifies the project that is being customized.</p>"}))
    ProjectDescription.add_member(:auto_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectAutoUpdate, location_name: 'AutoUpdate', traits: {"smithy.api#documentation" => "<p>Indicates whether automatic retraining will be attempted for the versions of the project. Applies only to adapters. </p>"}))
    ProjectDescription.type = Types::ProjectDescription
    ProjectDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDescription)
    ProjectNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName)
    ProjectPolicies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicy)
    ProjectPolicy.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'ProjectArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project to which the project policy is attached.</p>"}))
    ProjectPolicy.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyName, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p>The name of the project policy.</p>"}))
    ProjectPolicy.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>The revision ID of the project policy.</p>"}))
    ProjectPolicy.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyDocument, location_name: 'PolicyDocument', traits: {"smithy.api#documentation" => "<p>The JSON document for the project policy.</p>"}))
    ProjectPolicy.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>The Unix datetime for the creation of the project policy.</p>"}))
    ProjectPolicy.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The Unix datetime for when the project policy was last updated. </p>"}))
    ProjectPolicy.type = Types::ProjectPolicy
    ProjectStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ProjectStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    ProjectStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ProjectVersionDescription.add_member(:project_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: 'ProjectVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project version. </p>"}))
    ProjectVersionDescription.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTimestamp', traits: {"smithy.api#documentation" => "<p>The Unix datetime for the date and time that training started.</p>"}))
    ProjectVersionDescription.add_member(:min_inference_units, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnits, location_name: 'MinInferenceUnits', traits: {"smithy.api#documentation" => "<p>The minimum number of inference units used by the model. Applies only to Custom Labels\n         projects. For more information, see <a>StartProjectVersion</a>.</p>"}))
    ProjectVersionDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the model version.</p>"}))
    ProjectVersionDescription.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A descriptive message for an error or warning that occurred.</p>"}))
    ProjectVersionDescription.add_member(:billable_training_time_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'BillableTrainingTimeInSeconds', traits: {"smithy.api#documentation" => "<p>The duration, in seconds, that you were billed for a successful training of the model version. \n      This value is only returned if the model version has been successfully trained.</p>"}))
    ProjectVersionDescription.add_member(:training_end_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'TrainingEndTimestamp', traits: {"smithy.api#documentation" => "<p>The Unix date and time that training of the model ended.</p>"}))
    ProjectVersionDescription.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#documentation" => "<p>The location where training results are saved.</p>"}))
    ProjectVersionDescription.add_member(:training_data_result, Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDataResult, location_name: 'TrainingDataResult', traits: {"smithy.api#documentation" => "<p>Contains information about the training results.</p>"}))
    ProjectVersionDescription.add_member(:testing_data_result, Smithy::Schema::Shapes::ShapeRef.new(shape: TestingDataResult, location_name: 'TestingDataResult', traits: {"smithy.api#documentation" => "<p>Contains information about the testing results.</p>"}))
    ProjectVersionDescription.add_member(:evaluation_result, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationResult, location_name: 'EvaluationResult', traits: {"smithy.api#documentation" => "<p>The training results. <code>EvaluationResult</code> is only returned if training is successful.</p>"}))
    ProjectVersionDescription.add_member(:manifest_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: GroundTruthManifest, location_name: 'ManifestSummary', traits: {"smithy.api#documentation" => "<p>The location of the summary manifest. The summary manifest provides aggregate data validation results for the training\n         and test datasets.</p>"}))
    ProjectVersionDescription.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The identifer for the AWS Key Management Service key (AWS KMS key) that was used to encrypt the model during training. </p>"}))
    ProjectVersionDescription.add_member(:max_inference_units, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnits, location_name: 'MaxInferenceUnits', traits: {"smithy.api#documentation" => "<p>The maximum number of inference units Amazon Rekognition uses to auto-scale the model. Applies\n         only to Custom Labels projects. For more information, see <a>StartProjectVersion</a>.</p>"}))
    ProjectVersionDescription.add_member(:source_project_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: 'SourceProjectVersionArn', traits: {"smithy.api#documentation" => "<p>If the model version was copied from a different project, <code>SourceProjectVersionArn</code> contains the ARN of the source model version. </p>"}))
    ProjectVersionDescription.add_member(:version_description, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionDescription, location_name: 'VersionDescription', traits: {"smithy.api#documentation" => "<p>A user-provided description of the project version.</p>"}))
    ProjectVersionDescription.add_member(:feature, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeature, location_name: 'Feature', traits: {"smithy.api#documentation" => "<p>The feature that was customized.</p>"}))
    ProjectVersionDescription.add_member(:base_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BaseModelVersion', traits: {"smithy.api#documentation" => "<p>The base detection model version used to create the project version.</p>"}))
    ProjectVersionDescription.add_member(:feature_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeatureConfig, location_name: 'FeatureConfig', traits: {"smithy.api#documentation" => "<p>Feature specific configuration that was applied during training.</p>"}))
    ProjectVersionDescription.type = Types::ProjectVersionDescription
    ProjectVersionDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionDescription)
    ProjectVersionStatus.add_member(:training_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINING_IN_PROGRESS', traits: {"smithy.api#enumValue" => "TRAINING_IN_PROGRESS"}))
    ProjectVersionStatus.add_member(:training_completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINING_COMPLETED', traits: {"smithy.api#enumValue" => "TRAINING_COMPLETED"}))
    ProjectVersionStatus.add_member(:training_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINING_FAILED', traits: {"smithy.api#enumValue" => "TRAINING_FAILED"}))
    ProjectVersionStatus.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    ProjectVersionStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ProjectVersionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ProjectVersionStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    ProjectVersionStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    ProjectVersionStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ProjectVersionStatus.add_member(:copying_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPYING_IN_PROGRESS', traits: {"smithy.api#enumValue" => "COPYING_IN_PROGRESS"}))
    ProjectVersionStatus.add_member(:copying_completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPYING_COMPLETED', traits: {"smithy.api#enumValue" => "COPYING_COMPLETED"}))
    ProjectVersionStatus.add_member(:copying_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPYING_FAILED', traits: {"smithy.api#enumValue" => "COPYING_FAILED"}))
    ProjectVersionStatus.add_member(:deprecated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPRECATED', traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    ProjectVersionStatus.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ProtectiveEquipmentBodyPart.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BodyPart, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The detected body part.</p>"}))
    ProtectiveEquipmentBodyPart.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence that Amazon Rekognition has in the detection accuracy of the detected body part.\n      </p>"}))
    ProtectiveEquipmentBodyPart.add_member(:equipment_detections, Smithy::Schema::Shapes::ShapeRef.new(shape: EquipmentDetections, location_name: 'EquipmentDetections', traits: {"smithy.api#documentation" => "<p>An array of Personal Protective Equipment items detected around a body part.</p>"}))
    ProtectiveEquipmentBodyPart.type = Types::ProtectiveEquipmentBodyPart
    ProtectiveEquipmentPerson.add_member(:body_parts, Smithy::Schema::Shapes::ShapeRef.new(shape: BodyParts, location_name: 'BodyParts', traits: {"smithy.api#documentation" => "<p>An array of body parts detected on a person's body (including body parts without PPE). </p>"}))
    ProtectiveEquipmentPerson.add_member(:bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'BoundingBox', traits: {"smithy.api#documentation" => "<p>A bounding box around the detected person.</p>"}))
    ProtectiveEquipmentPerson.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence that Amazon Rekognition has that the bounding box contains a person.</p>"}))
    ProtectiveEquipmentPerson.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the detected person. The identifier is only unique for a single call to\n         <code>DetectProtectiveEquipment</code>.</p>"}))
    ProtectiveEquipmentPerson.type = Types::ProtectiveEquipmentPerson
    ProtectiveEquipmentPersonIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger)
    ProtectiveEquipmentPersons.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentPerson)
    ProtectiveEquipmentSummarizationAttributes.add_member(:min_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'MinConfidence', traits: {"smithy.api#documentation" => "<p>The minimum confidence level for which you want summary information. \n         The confidence level applies to person detection, body part detection, equipment detection, and body part coverage.\n         Amazon Rekognition doesn't return summary information with a confidence than this specified value. There isn't a\n         default value.</p>\n         <p>Specify a <code>MinConfidence</code> value that is between 50-100% as <code>DetectProtectiveEquipment</code>\n         returns predictions only where the detection confidence is between 50% - 100%.  \n         If you specify a value that is less than 50%, the results are the same specifying a value of 50%.</p>\n         <p> \n      </p>", "smithy.api#required" => {}}))
    ProtectiveEquipmentSummarizationAttributes.add_member(:required_equipment_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentTypes, location_name: 'RequiredEquipmentTypes', traits: {"smithy.api#documentation" => "<p>An array of personal protective equipment types for which you want summary information. \n         If a person is detected wearing a required requipment type, the person's ID is added to the\n         <code>PersonsWithRequiredEquipment</code> array field returned in <a>ProtectiveEquipmentSummary</a>\n         by <code>DetectProtectiveEquipment</code>.  </p>", "smithy.api#required" => {}}))
    ProtectiveEquipmentSummarizationAttributes.type = Types::ProtectiveEquipmentSummarizationAttributes
    ProtectiveEquipmentSummary.add_member(:persons_with_required_equipment, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentPersonIds, location_name: 'PersonsWithRequiredEquipment', traits: {"smithy.api#documentation" => "<p>An array of IDs for persons who are wearing detected personal protective equipment.\n      </p>"}))
    ProtectiveEquipmentSummary.add_member(:persons_without_required_equipment, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentPersonIds, location_name: 'PersonsWithoutRequiredEquipment', traits: {"smithy.api#documentation" => "<p>An array of IDs for persons who are not wearing all of the types of PPE specified in the <code>RequiredEquipmentTypes</code> field of\n         the detected personal protective equipment.\n      </p>"}))
    ProtectiveEquipmentSummary.add_member(:persons_indeterminate, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentPersonIds, location_name: 'PersonsIndeterminate', traits: {"smithy.api#documentation" => "<p>An array of IDs for persons where it was not possible to determine if they are wearing personal protective equipment.\n      </p>"}))
    ProtectiveEquipmentSummary.type = Types::ProtectiveEquipmentSummary
    ProtectiveEquipmentType.add_member(:face_cover, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FACE_COVER', traits: {"smithy.api#enumValue" => "FACE_COVER"}))
    ProtectiveEquipmentType.add_member(:hand_cover, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HAND_COVER', traits: {"smithy.api#enumValue" => "HAND_COVER"}))
    ProtectiveEquipmentType.add_member(:head_cover, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEAD_COVER', traits: {"smithy.api#enumValue" => "HEAD_COVER"}))
    ProtectiveEquipmentTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentType)
    ProvisionedThroughputExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ProvisionedThroughputExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ProvisionedThroughputExceededException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    ProvisionedThroughputExceededException.type = Types::ProvisionedThroughputExceededException
    PutProjectPolicyRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: 'ProjectArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project that the project policy is attached to.</p>", "smithy.api#required" => {}}))
    PutProjectPolicyRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyName, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p>A name for the policy.</p>", "smithy.api#required" => {}}))
    PutProjectPolicyRequest.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>The revision ID for the Project Policy. Each time you modify a policy, Amazon Rekognition Custom Labels\n         generates and assigns a new <code>PolicyRevisionId</code> and then deletes the previous version of the\n         policy.</p>"}))
    PutProjectPolicyRequest.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyDocument, location_name: 'PolicyDocument', traits: {"smithy.api#documentation" => "<p>A resource policy to add to the model. The policy is a JSON structure that contains\n         one or more statements that define the policy. \n         The policy must follow the IAM syntax. For\n         more information about the contents of a JSON policy document, see \n         <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html\">IAM JSON policy reference</a>. </p>", "smithy.api#required" => {}}))
    PutProjectPolicyRequest.type = Types::PutProjectPolicyRequest
    PutProjectPolicyResponse.add_member(:policy_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyRevisionId, location_name: 'PolicyRevisionId', traits: {"smithy.api#documentation" => "<p>The ID of the project policy.</p>"}))
    PutProjectPolicyResponse.type = Types::PutProjectPolicyResponse
    QualityFilter.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    QualityFilter.add_member(:auto, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO', traits: {"smithy.api#enumValue" => "AUTO"}))
    QualityFilter.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    QualityFilter.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    QualityFilter.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    Reason.add_member(:exceeds_max_faces, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXCEEDS_MAX_FACES', traits: {"smithy.api#enumValue" => "EXCEEDS_MAX_FACES"}))
    Reason.add_member(:extreme_pose, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTREME_POSE', traits: {"smithy.api#enumValue" => "EXTREME_POSE"}))
    Reason.add_member(:low_brightness, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW_BRIGHTNESS', traits: {"smithy.api#enumValue" => "LOW_BRIGHTNESS"}))
    Reason.add_member(:low_sharpness, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW_SHARPNESS', traits: {"smithy.api#enumValue" => "LOW_SHARPNESS"}))
    Reason.add_member(:low_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW_CONFIDENCE', traits: {"smithy.api#enumValue" => "LOW_CONFIDENCE"}))
    Reason.add_member(:small_bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMALL_BOUNDING_BOX', traits: {"smithy.api#enumValue" => "SMALL_BOUNDING_BOX"}))
    Reason.add_member(:low_face_quality, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW_FACE_QUALITY', traits: {"smithy.api#enumValue" => "LOW_FACE_QUALITY"}))
    Reasons.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Reason)
    RecognizeCelebritiesRequest.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'Image', traits: {"smithy.api#documentation" => "<p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to\n      call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>\n         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to\n      base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see\n      Images in the Amazon Rekognition developer guide.</p>", "smithy.api#required" => {}}))
    RecognizeCelebritiesRequest.type = Types::RecognizeCelebritiesRequest
    RecognizeCelebritiesResponse.add_member(:celebrity_faces, Smithy::Schema::Shapes::ShapeRef.new(shape: CelebrityList, location_name: 'CelebrityFaces', traits: {"smithy.api#documentation" => "<p>Details about each celebrity found in the image. Amazon Rekognition can detect a maximum of 64\n      celebrities in an image. Each celebrity object includes the following attributes:\n        <code>Face</code>, <code>Confidence</code>, <code>Emotions</code>, <code>Landmarks</code>,\n        <code>Pose</code>, <code>Quality</code>, <code>Smile</code>, <code>Id</code>,\n        <code>KnownGender</code>, <code>MatchConfidence</code>, <code>Name</code>,\n      <code>Urls</code>.</p>"}))
    RecognizeCelebritiesResponse.add_member(:unrecognized_faces, Smithy::Schema::Shapes::ShapeRef.new(shape: ComparedFaceList, location_name: 'UnrecognizedFaces', traits: {"smithy.api#documentation" => "<p>Details about each unrecognized face in the image.</p>"}))
    RecognizeCelebritiesResponse.add_member(:orientation_correction, Smithy::Schema::Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: 'OrientationCorrection', traits: {"smithy.api#documentation" => "<note>\n            <p>Support for estimating image orientation using the the OrientationCorrection field\n        has ceased as of August 2021. Any returned values for this field included in an API response\n        will always be NULL.</p>\n         </note>\n         <p>The orientation of the input image (counterclockwise direction). If your application\n      displays the image, you can use this value to correct the orientation. The bounding box\n      coordinates returned in <code>CelebrityFaces</code> and <code>UnrecognizedFaces</code>\n      represent face locations before the image orientation is corrected. </p>\n         <note>\n            <p>If the input image is in .jpeg format, it might contain exchangeable image (Exif)\n        metadata that includes the image's orientation. If so, and the Exif metadata for the input\n        image populates the orientation field, the value of <code>OrientationCorrection</code> is\n        null. The <code>CelebrityFaces</code> and <code>UnrecognizedFaces</code> bounding box\n        coordinates represent face locations after Exif metadata is used to correct the image\n        orientation. Images in .png format don't contain Exif metadata. </p>\n         </note>"}))
    RecognizeCelebritiesResponse.type = Types::RecognizeCelebritiesResponse
    RegionOfInterest.add_member(:bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'BoundingBox', traits: {"smithy.api#documentation" => "<p>The box representing a region of interest on screen.</p>"}))
    RegionOfInterest.add_member(:polygon, Smithy::Schema::Shapes::ShapeRef.new(shape: Polygon, location_name: 'Polygon', traits: {"smithy.api#documentation" => "<p>\n            Specifies a shape made up of up to 10 <code>Point</code> objects to define a region of interest.\n        </p>"}))
    RegionOfInterest.type = Types::RegionOfInterest
    RegionsOfInterest.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegionOfInterest)
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceAlreadyExistsException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ResourceAlreadyExistsException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceInUseException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ResourceInUseException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ResourceNotFoundException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotReadyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotReadyException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ResourceNotReadyException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    ResourceNotReadyException.type = Types::ResourceNotReadyException
    S3Destination.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>\n            The name of the Amazon S3 bucket you want to associate with the streaming video project. You must be the owner of the Amazon S3 bucket.\n        </p>"}))
    S3Destination.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: 'KeyPrefix', traits: {"smithy.api#documentation" => "<p>\n            The prefix value of the location within the bucket that you want the information to be published to. \n            For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html\">Using prefixes</a>.\n        </p>"}))
    S3Destination.type = Types::S3Destination
    S3Object.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>Name of the S3 bucket.</p>"}))
    S3Object.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>S3 object key name.</p>"}))
    S3Object.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>If the bucket is versioning enabled, you can specify the object version. </p>"}))
    S3Object.type = Types::S3Object
    SearchFacesByImageRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>ID of the collection to search.</p>", "smithy.api#required" => {}}))
    SearchFacesByImageRequest.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'Image', traits: {"smithy.api#documentation" => "<p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to\n      call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>\n         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to\n      base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see\n      Images in the Amazon Rekognition developer guide.</p>", "smithy.api#required" => {}}))
    SearchFacesByImageRequest.add_member(:max_faces, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFaces, location_name: 'MaxFaces', traits: {"smithy.api#documentation" => "<p>Maximum number of faces to return. The operation returns the maximum number of faces\n      with the highest confidence in the match.</p>"}))
    SearchFacesByImageRequest.add_member(:face_match_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'FaceMatchThreshold', traits: {"smithy.api#documentation" => "<p>(Optional) Specifies the minimum confidence in the face match to return. For example,\n      don't return any matches where confidence in matches is less than 70%. The default value is\n      80%.</p>"}))
    SearchFacesByImageRequest.add_member(:quality_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: QualityFilter, location_name: 'QualityFilter', traits: {"smithy.api#documentation" => "<p>A filter that specifies a quality bar for how much filtering is done to identify faces.\n      Filtered faces aren't searched for in the collection. If you specify <code>AUTO</code>,\n      Amazon Rekognition chooses the quality bar. If you specify <code>LOW</code>, <code>MEDIUM</code>, or\n        <code>HIGH</code>, filtering removes all faces that don’t meet the chosen quality bar.\n       The quality bar is\n      based on a variety of common use cases. Low-quality detections can occur for a number of\n      reasons. Some examples are an object that's misidentified as a face, a face that's too blurry,\n      or a face with a pose that's too extreme to use. If you specify <code>NONE</code>, no\n      filtering is performed. The default value is <code>NONE</code>. </p>\n         <p>To use quality filtering, the collection you are using must be associated with version 3\n      of the face model or higher.</p>"}))
    SearchFacesByImageRequest.type = Types::SearchFacesByImageRequest
    SearchFacesByImageResponse.add_member(:searched_face_bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'SearchedFaceBoundingBox', traits: {"smithy.api#documentation" => "<p>The bounding box around the face in the input image that Amazon Rekognition used for the\n      search.</p>"}))
    SearchFacesByImageResponse.add_member(:searched_face_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'SearchedFaceConfidence', traits: {"smithy.api#documentation" => "<p>The level of confidence that the <code>searchedFaceBoundingBox</code>, contains a\n      face.</p>"}))
    SearchFacesByImageResponse.add_member(:face_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceMatchList, location_name: 'FaceMatches', traits: {"smithy.api#documentation" => "<p>An array of faces that match the input face, along with the confidence in the\n      match.</p>"}))
    SearchFacesByImageResponse.add_member(:face_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FaceModelVersion', traits: {"smithy.api#documentation" => "<p>Version number of the face detection model associated with the input collection\n        (<code>CollectionId</code>).</p>"}))
    SearchFacesByImageResponse.type = Types::SearchFacesByImageResponse
    SearchFacesRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>ID of the collection the face belongs to.</p>", "smithy.api#required" => {}}))
    SearchFacesRequest.add_member(:face_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: 'FaceId', traits: {"smithy.api#documentation" => "<p>ID of a face to find matches for in the collection.</p>", "smithy.api#required" => {}}))
    SearchFacesRequest.add_member(:max_faces, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFaces, location_name: 'MaxFaces', traits: {"smithy.api#documentation" => "<p>Maximum number of faces to return. The operation returns the maximum number of faces\n      with the highest confidence in the match.</p>"}))
    SearchFacesRequest.add_member(:face_match_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'FaceMatchThreshold', traits: {"smithy.api#documentation" => "<p>Optional value specifying the minimum confidence in the face match to return. For\n      example, don't return any matches where confidence in matches is less than 70%. The default\n      value is 80%. </p>"}))
    SearchFacesRequest.type = Types::SearchFacesRequest
    SearchFacesResponse.add_member(:searched_face_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: 'SearchedFaceId', traits: {"smithy.api#documentation" => "<p>ID of the face that was searched for matches in a collection.</p>"}))
    SearchFacesResponse.add_member(:face_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceMatchList, location_name: 'FaceMatches', traits: {"smithy.api#documentation" => "<p>An array of faces that matched the input face, along with the confidence in the\n      match.</p>"}))
    SearchFacesResponse.add_member(:face_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FaceModelVersion', traits: {"smithy.api#documentation" => "<p>Version number of the face detection model associated with the input collection\n        (<code>CollectionId</code>).</p>"}))
    SearchFacesResponse.type = Types::SearchFacesResponse
    SearchUsersByImageRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>The ID of an existing collection containing the UserID.</p>", "smithy.api#required" => {}}))
    SearchUsersByImageRequest.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'Image', traits: {"smithy.api#required" => {}}))
    SearchUsersByImageRequest.add_member(:user_match_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'UserMatchThreshold', traits: {"smithy.api#documentation" => "<p>Specifies the minimum confidence in the UserID match to return. Default value is\n      80.</p>"}))
    SearchUsersByImageRequest.add_member(:max_users, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxUserResults, location_name: 'MaxUsers', traits: {"smithy.api#documentation" => "<p>Maximum number of UserIDs to return.</p>"}))
    SearchUsersByImageRequest.add_member(:quality_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: QualityFilter, location_name: 'QualityFilter', traits: {"smithy.api#documentation" => "<p>A filter that specifies a quality bar for how much filtering is done to identify faces.\n      Filtered faces aren't searched for in the collection. The default value is NONE.</p>"}))
    SearchUsersByImageRequest.type = Types::SearchUsersByImageRequest
    SearchUsersByImageResponse.add_member(:user_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: UserMatchList, location_name: 'UserMatches', traits: {"smithy.api#documentation" => "<p>An array of UserID objects that matched the input face, along with the confidence in the\n      match. The returned structure will be empty if there are no matches. Returned if the\n      SearchUsersByImageResponse action is successful.</p>"}))
    SearchUsersByImageResponse.add_member(:face_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FaceModelVersion', traits: {"smithy.api#documentation" => "<p>Version number of the face detection model associated with the input collection\n      CollectionId.</p>"}))
    SearchUsersByImageResponse.add_member(:searched_face, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchedFaceDetails, location_name: 'SearchedFace', traits: {"smithy.api#documentation" => "<p>A list of FaceDetail objects containing the BoundingBox for the largest face in image, as\n      well as the confidence in the bounding box, that was searched for matches. If no valid face is\n      detected in the image the response will contain no SearchedFace object.</p>"}))
    SearchUsersByImageResponse.add_member(:unsearched_faces, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsearchedFacesList, location_name: 'UnsearchedFaces', traits: {"smithy.api#documentation" => "<p>List of UnsearchedFace objects. Contains the face details infered from the specified image\n      but not used for search. Contains reasons that describe why a face wasn't used for Search.\n    </p>"}))
    SearchUsersByImageResponse.type = Types::SearchUsersByImageResponse
    SearchUsersRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>The ID of an existing collection containing the UserID, used with a UserId or FaceId. If a\n      FaceId is provided, UserId isn’t required to be present in the Collection.</p>", "smithy.api#required" => {}}))
    SearchUsersRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>ID for the existing User.</p>"}))
    SearchUsersRequest.add_member(:face_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: 'FaceId', traits: {"smithy.api#documentation" => "<p>ID for the existing face.</p>"}))
    SearchUsersRequest.add_member(:user_match_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'UserMatchThreshold', traits: {"smithy.api#documentation" => "<p>Optional value that specifies the minimum confidence in the matched UserID to return.\n      Default value of 80.</p>"}))
    SearchUsersRequest.add_member(:max_users, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxUserResults, location_name: 'MaxUsers', traits: {"smithy.api#documentation" => "<p>Maximum number of identities to return.</p>"}))
    SearchUsersRequest.type = Types::SearchUsersRequest
    SearchUsersResponse.add_member(:user_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: UserMatchList, location_name: 'UserMatches', traits: {"smithy.api#documentation" => "<p>An array of UserMatch objects that matched the input face along with the confidence in the\n      match. Array will be empty if there are no matches.</p>"}))
    SearchUsersResponse.add_member(:face_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FaceModelVersion', traits: {"smithy.api#documentation" => "<p>Version number of the face detection model associated with the input CollectionId.</p>"}))
    SearchUsersResponse.add_member(:searched_face, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchedFace, location_name: 'SearchedFace', traits: {"smithy.api#documentation" => "<p>Contains the ID of a face that was used to search for matches in a collection.</p>"}))
    SearchUsersResponse.add_member(:searched_user, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchedUser, location_name: 'SearchedUser', traits: {"smithy.api#documentation" => "<p>Contains the ID of the UserID that was used to search for matches in a collection.</p>"}))
    SearchUsersResponse.type = Types::SearchUsersResponse
    SearchedFace.add_member(:face_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: 'FaceId', traits: {"smithy.api#documentation" => "<p> Unique identifier assigned to the face.</p>"}))
    SearchedFace.type = Types::SearchedFace
    SearchedFaceDetails.add_member(:face_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail, location_name: 'FaceDetail'))
    SearchedFaceDetails.type = Types::SearchedFaceDetails
    SearchedUser.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p> A provided ID for the UserID. Unique within the collection. </p>"}))
    SearchedUser.type = Types::SearchedUser
    SegmentDetection.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the  segment. Valid values are <code>TECHNICAL_CUE</code> and <code>SHOT</code>.</p>"}))
    SegmentDetection.add_member(:start_timestamp_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTimestampMillis', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The start time of the detected segment in milliseconds from the start of the video. This value\n      is rounded down. For example, if the actual timestamp is 100.6667 milliseconds, Amazon Rekognition Video returns a value of\n      100 millis.</p>"}))
    SegmentDetection.add_member(:end_timestamp_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTimestampMillis', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The end time of the detected segment, in milliseconds, from the start of the video.\n    This value is rounded down.</p>"}))
    SegmentDetection.add_member(:duration_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'DurationMillis', traits: {"smithy.api#documentation" => "<p>The duration of the detected segment in milliseconds. </p>"}))
    SegmentDetection.add_member(:start_timecode_smpte, Smithy::Schema::Shapes::ShapeRef.new(shape: Timecode, location_name: 'StartTimecodeSMPTE', traits: {"smithy.api#documentation" => "<p>The frame-accurate SMPTE timecode, from the start of a video, for the start of a detected segment.\n      <code>StartTimecode</code> is in <i>HH:MM:SS:fr</i> format\n      (and <i>;fr</i> for drop frame-rates). </p>"}))
    SegmentDetection.add_member(:end_timecode_smpte, Smithy::Schema::Shapes::ShapeRef.new(shape: Timecode, location_name: 'EndTimecodeSMPTE', traits: {"smithy.api#documentation" => "<p>The frame-accurate SMPTE timecode, from the start of a video, for the end of a detected segment. \n      <code>EndTimecode</code> is in <i>HH:MM:SS:fr</i> format\n      (and <i>;fr</i> for drop frame-rates).</p>"}))
    SegmentDetection.add_member(:duration_smpte, Smithy::Schema::Shapes::ShapeRef.new(shape: Timecode, location_name: 'DurationSMPTE', traits: {"smithy.api#documentation" => "<p>The duration of the timecode for the detected segment in SMPTE format.</p>"}))
    SegmentDetection.add_member(:technical_cue_segment, Smithy::Schema::Shapes::ShapeRef.new(shape: TechnicalCueSegment, location_name: 'TechnicalCueSegment', traits: {"smithy.api#documentation" => "<p>If the segment is a technical cue, contains information about the technical cue.</p>"}))
    SegmentDetection.add_member(:shot_segment, Smithy::Schema::Shapes::ShapeRef.new(shape: ShotSegment, location_name: 'ShotSegment', traits: {"smithy.api#documentation" => "<p>If the segment is a shot detection, contains information about the shot detection.</p>"}))
    SegmentDetection.add_member(:start_frame_number, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'StartFrameNumber', traits: {"smithy.api#documentation" => "<p>\n      The frame number of the start of a video segment, using a frame index that starts with 0.\n    </p>"}))
    SegmentDetection.add_member(:end_frame_number, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'EndFrameNumber', traits: {"smithy.api#documentation" => "<p>\n      The frame number at the end of a video segment, using a frame index that starts with 0.\n    </p>"}))
    SegmentDetection.add_member(:duration_frames, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'DurationFrames', traits: {"smithy.api#documentation" => "<p>\n      The duration of a video segment, expressed in frames.\n    </p>"}))
    SegmentDetection.type = Types::SegmentDetection
    SegmentDetections.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDetection)
    SegmentType.add_member(:technical_cue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TECHNICAL_CUE', traits: {"smithy.api#enumValue" => "TECHNICAL_CUE"}))
    SegmentType.add_member(:shot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHOT', traits: {"smithy.api#enumValue" => "SHOT"}))
    SegmentTypeInfo.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of a segment (technical cue or shot detection).</p>"}))
    SegmentTypeInfo.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model used to detect segments.</p>"}))
    SegmentTypeInfo.type = Types::SegmentTypeInfo
    SegmentTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentType)
    SegmentTypesInfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentTypeInfo)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceQuotaExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ServiceQuotaExceededException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    SessionNotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    SessionNotFoundException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    SessionNotFoundException.type = Types::SessionNotFoundException
    ShotSegment.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'Index', traits: {"smithy.api#documentation" => "<p>An Identifier for a shot detection segment detected in a video. </p>"}))
    ShotSegment.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentConfidence, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence that Amazon Rekognition Video has in the accuracy of the detected segment.</p>"}))
    ShotSegment.type = Types::ShotSegment
    Smile.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Value', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Boolean value that indicates whether the face is smiling or not.</p>"}))
    Smile.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Level of confidence in the determination.</p>"}))
    Smile.type = Types::Smile
    StartCelebrityRecognitionRequest.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video', traits: {"smithy.api#documentation" => "<p>The video in which you want to recognize celebrities. The video must be stored\n      in an Amazon S3 bucket.</p>", "smithy.api#required" => {}}))
    StartCelebrityRecognitionRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token used to identify the start request. If you use the same token with multiple\n    <code>StartCelebrityRecognition</code> requests, the same <code>JobId</code> is returned. Use\n      <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>"}))
    StartCelebrityRecognitionRequest.add_member(:notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'NotificationChannel', traits: {"smithy.api#documentation" => "<p>The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the\n      celebrity recognition analysis to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>"}))
    StartCelebrityRecognitionRequest.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.\n      For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>"}))
    StartCelebrityRecognitionRequest.type = Types::StartCelebrityRecognitionRequest
    StartCelebrityRecognitionResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier for the celebrity recognition analysis job. Use <code>JobId</code> to identify the job in\n      a subsequent call to <code>GetCelebrityRecognition</code>.</p>"}))
    StartCelebrityRecognitionResponse.type = Types::StartCelebrityRecognitionResponse
    StartContentModerationRequest.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video', traits: {"smithy.api#documentation" => "<p>The video in which you want to detect inappropriate, unwanted, or offensive content. The video must be stored\n      in an Amazon S3 bucket.</p>", "smithy.api#required" => {}}))
    StartContentModerationRequest.add_member(:min_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'MinConfidence', traits: {"smithy.api#documentation" => "<p>Specifies the minimum confidence that Amazon Rekognition must have in order to return a moderated content label. Confidence\n      represents how certain Amazon Rekognition is that the moderated content is correctly identified. 0 is the lowest confidence.\n      100 is the highest confidence.  Amazon Rekognition doesn't return any moderated content labels with a confidence level\n      lower than this specified value. If you don't specify <code>MinConfidence</code>, <code>GetContentModeration</code>\n       returns labels with confidence values greater than or equal to 50 percent.</p>"}))
    StartContentModerationRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token used to identify the start request. If you use the same token with multiple\n      <code>StartContentModeration</code> requests, the same <code>JobId</code> is returned. Use\n      <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>"}))
    StartContentModerationRequest.add_member(:notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'NotificationChannel', traits: {"smithy.api#documentation" => "<p>The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the\n      content analysis to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.</p>"}))
    StartContentModerationRequest.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.\n      For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>"}))
    StartContentModerationRequest.type = Types::StartContentModerationRequest
    StartContentModerationResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier for the content analysis job. Use <code>JobId</code> to identify the job in\n      a subsequent call to <code>GetContentModeration</code>.</p>"}))
    StartContentModerationResponse.type = Types::StartContentModerationResponse
    StartFaceDetectionRequest.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video', traits: {"smithy.api#documentation" => "<p>The video in which you want to detect faces. The video must be stored\n      in an Amazon S3 bucket.</p>", "smithy.api#required" => {}}))
    StartFaceDetectionRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token used to identify the start request. If you use the same token with multiple\n      <code>StartFaceDetection</code> requests, the same <code>JobId</code> is returned. Use\n      <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>"}))
    StartFaceDetectionRequest.add_member(:notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'NotificationChannel', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the\n         face detection operation. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>"}))
    StartFaceDetectionRequest.add_member(:face_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceAttributes, location_name: 'FaceAttributes', traits: {"smithy.api#documentation" => "<p>The face attributes you want returned.</p>\n         <p>\n            <code>DEFAULT</code> - The following subset of facial attributes are returned: BoundingBox, Confidence, Pose, Quality and Landmarks. </p>\n         <p>\n            <code>ALL</code> - All facial attributes are returned.</p>"}))
    StartFaceDetectionRequest.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.\n      For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>"}))
    StartFaceDetectionRequest.type = Types::StartFaceDetectionRequest
    StartFaceDetectionResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier for the face detection job. Use <code>JobId</code> to identify the job in\n    a subsequent call to <code>GetFaceDetection</code>.</p>"}))
    StartFaceDetectionResponse.type = Types::StartFaceDetectionResponse
    StartFaceSearchRequest.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video', traits: {"smithy.api#documentation" => "<p>The video you want to search. The video must be stored in an Amazon S3 bucket. </p>", "smithy.api#required" => {}}))
    StartFaceSearchRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token used to identify the start request. If you use the same token with multiple\n      <code>StartFaceSearch</code> requests, the same <code>JobId</code> is returned. Use\n      <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>"}))
    StartFaceSearchRequest.add_member(:face_match_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'FaceMatchThreshold', traits: {"smithy.api#documentation" => "<p>The minimum confidence in the person match to return. For example, don't return any matches where confidence in matches is less than 70%.\n      The default value is 80%.</p>"}))
    StartFaceSearchRequest.add_member(:collection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'CollectionId', traits: {"smithy.api#documentation" => "<p>ID of the collection that contains the faces you want to search for.</p>", "smithy.api#required" => {}}))
    StartFaceSearchRequest.add_member(:notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'NotificationChannel', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the search. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.</p>"}))
    StartFaceSearchRequest.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.\n      For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>"}))
    StartFaceSearchRequest.type = Types::StartFaceSearchRequest
    StartFaceSearchResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier for the search job. Use <code>JobId</code> to identify the job in a subsequent call to <code>GetFaceSearch</code>. </p>"}))
    StartFaceSearchResponse.type = Types::StartFaceSearchResponse
    StartLabelDetectionRequest.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video', traits: {"smithy.api#documentation" => "<p>The video in which you want to detect labels. The video must be stored\n      in an Amazon S3 bucket.</p>", "smithy.api#required" => {}}))
    StartLabelDetectionRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token used to identify the start request. If you use the same token with multiple\n      <code>StartLabelDetection</code> requests, the same <code>JobId</code> is returned. Use\n      <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>"}))
    StartLabelDetectionRequest.add_member(:min_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'MinConfidence', traits: {"smithy.api#documentation" => "<p>Specifies the minimum confidence that Amazon Rekognition Video must have in order to return a detected label. Confidence\n       represents how certain Amazon Rekognition is that a label is correctly identified.0 is the lowest confidence.\n       100 is the highest confidence.  Amazon Rekognition Video doesn't return any labels with a confidence level\n       lower than this specified value.</p>\n         <p>If you don't specify <code>MinConfidence</code>, the operation returns labels and\n      bounding boxes (if detected)  with confidence values greater than or equal to 50\n      percent.</p>"}))
    StartLabelDetectionRequest.add_member(:notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'NotificationChannel', traits: {"smithy.api#documentation" => "<p>The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the label detection\n        operation to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>"}))
    StartLabelDetectionRequest.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.\n      For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>"}))
    StartLabelDetectionRequest.add_member(:features, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetectionFeatureList, location_name: 'Features', traits: {"smithy.api#documentation" => "<p>The features to return after video analysis. You can specify that GENERAL_LABELS are returned.</p>"}))
    StartLabelDetectionRequest.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetectionSettings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>The settings for a StartLabelDetection request.Contains the specified parameters for the label detection request of an asynchronous label analysis operation. \n      Settings can include filters for GENERAL_LABELS.</p>"}))
    StartLabelDetectionRequest.type = Types::StartLabelDetectionRequest
    StartLabelDetectionResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier for the label detection job. Use <code>JobId</code> to identify the job in\n    a subsequent call to <code>GetLabelDetection</code>. </p>"}))
    StartLabelDetectionResponse.type = Types::StartLabelDetectionResponse
    StartMediaAnalysisJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotency token used to prevent the accidental creation of duplicate versions. If\n            you use the same token with multiple <code>StartMediaAnalysisJobRequest</code> requests, the same\n            response is returned. Use <code>ClientRequestToken</code> to prevent the same request from being\n            processed more than once.</p>", "smithy.api#idempotencyToken" => {}}))
    StartMediaAnalysisJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name of the job. Does not have to be unique.</p>"}))
    StartMediaAnalysisJobRequest.add_member(:operations_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisOperationsConfig, location_name: 'OperationsConfig', traits: {"smithy.api#documentation" => "<p>Configuration options for the media analysis job to be created.</p>", "smithy.api#required" => {}}))
    StartMediaAnalysisJobRequest.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisInput, location_name: 'Input', traits: {"smithy.api#documentation" => "<p>Input data to be analyzed by the job.</p>", "smithy.api#required" => {}}))
    StartMediaAnalysisJobRequest.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisOutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket location to store the results.</p>", "smithy.api#required" => {}}))
    StartMediaAnalysisJobRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The identifier of customer managed AWS KMS key (name or ARN). The key \n        is used to encrypt images copied into the service. The key is also used \n        to encrypt results and manifest files written to the output Amazon S3 bucket.</p>"}))
    StartMediaAnalysisJobRequest.type = Types::StartMediaAnalysisJobRequest
    StartMediaAnalysisJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Identifier for the created job.</p>", "smithy.api#required" => {}}))
    StartMediaAnalysisJobResponse.type = Types::StartMediaAnalysisJobResponse
    StartPersonTrackingRequest.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video', traits: {"smithy.api#documentation" => "<p>The video in which you want to detect people. The video must be stored\n      in an Amazon S3 bucket.</p>", "smithy.api#required" => {}}))
    StartPersonTrackingRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token used to identify the start request. If you use the same token with multiple\n      <code>StartPersonTracking</code> requests, the same <code>JobId</code> is returned. Use\n      <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>"}))
    StartPersonTrackingRequest.add_member(:notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'NotificationChannel', traits: {"smithy.api#documentation" => "<p>The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the people detection\n        operation to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>"}))
    StartPersonTrackingRequest.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.\n      For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>"}))
    StartPersonTrackingRequest.type = Types::StartPersonTrackingRequest
    StartPersonTrackingResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier for the person detection job. Use <code>JobId</code> to identify the job in\n    a subsequent call to <code>GetPersonTracking</code>.</p>"}))
    StartPersonTrackingResponse.type = Types::StartPersonTrackingResponse
    StartProjectVersionRequest.add_member(:project_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: 'ProjectVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name(ARN) of the model version that you want to start.</p>", "smithy.api#required" => {}}))
    StartProjectVersionRequest.add_member(:min_inference_units, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnits, location_name: 'MinInferenceUnits', traits: {"smithy.api#documentation" => "<p>The minimum number of inference units to use. A single\n      inference unit represents 1 hour of processing. </p>\n         <p>Use a higher number to increase the TPS throughput of your model. You are charged for the number\n      of inference units that you use.\n    </p>", "smithy.api#required" => {}}))
    StartProjectVersionRequest.add_member(:max_inference_units, Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnits, location_name: 'MaxInferenceUnits', traits: {"smithy.api#documentation" => "<p>The maximum number of inference units to use for auto-scaling the model. If you don't\n         specify a value, Amazon Rekognition Custom Labels doesn't auto-scale the model.</p>"}))
    StartProjectVersionRequest.type = Types::StartProjectVersionRequest
    StartProjectVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current running status of the model. </p>"}))
    StartProjectVersionResponse.type = Types::StartProjectVersionResponse
    StartSegmentDetectionFilters.add_member(:technical_cue_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTechnicalCueDetectionFilter, location_name: 'TechnicalCueFilter', traits: {"smithy.api#documentation" => "<p>Filters that are specific to technical cues.</p>"}))
    StartSegmentDetectionFilters.add_member(:shot_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: StartShotDetectionFilter, location_name: 'ShotFilter', traits: {"smithy.api#documentation" => "<p>Filters that are specific to shot detections.</p>"}))
    StartSegmentDetectionFilters.type = Types::StartSegmentDetectionFilters
    StartSegmentDetectionRequest.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video', traits: {"smithy.api#required" => {}}))
    StartSegmentDetectionRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token used to identify the start request. If you use the same token with multiple\n      <code>StartSegmentDetection</code> requests, the same <code>JobId</code> is returned. Use\n      <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>"}))
    StartSegmentDetectionRequest.add_member(:notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'NotificationChannel', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the\n      segment detection operation. Note that the Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.</p>"}))
    StartSegmentDetectionRequest.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.\n      For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>"}))
    StartSegmentDetectionRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: StartSegmentDetectionFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filters for technical cue or shot detection.</p>"}))
    StartSegmentDetectionRequest.add_member(:segment_types, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentTypes, location_name: 'SegmentTypes', traits: {"smithy.api#documentation" => "<p>An array of segment types to detect in the video. Valid values are TECHNICAL_CUE and SHOT.</p>", "smithy.api#required" => {}}))
    StartSegmentDetectionRequest.type = Types::StartSegmentDetectionRequest
    StartSegmentDetectionResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Unique identifier for the segment detection job. The <code>JobId</code> is returned from <code>StartSegmentDetection</code>.\n    </p>"}))
    StartSegmentDetectionResponse.type = Types::StartSegmentDetectionResponse
    StartShotDetectionFilter.add_member(:min_segment_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentConfidence, location_name: 'MinSegmentConfidence', traits: {"smithy.api#documentation" => "<p>Specifies the minimum confidence that Amazon Rekognition Video must have in order to return a detected segment. Confidence\n      represents how certain Amazon Rekognition is that a segment is correctly identified. 0 is the lowest confidence.\n      100 is the highest confidence.  Amazon Rekognition Video doesn't return any segments with a confidence level\n      lower than this specified value.</p>\n         <p>If you don't specify <code>MinSegmentConfidence</code>, the <code>GetSegmentDetection</code> returns \n        segments with confidence values greater than or equal to 50 percent.</p>"}))
    StartShotDetectionFilter.type = Types::StartShotDetectionFilter
    StartStreamProcessorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the stream processor to start processing.</p>", "smithy.api#required" => {}}))
    StartStreamProcessorRequest.add_member(:start_selector, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessingStartSelector, location_name: 'StartSelector', traits: {"smithy.api#documentation" => "<p>\n            Specifies the starting point in the Kinesis stream to start processing. \n            You can use the producer timestamp or the fragment number. If you use the producer timestamp, you must put the time in milliseconds.\n            For more information about fragment numbers, see <a href=\"https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_reader_Fragment.html\">Fragment</a>. \n        </p>\n         <p>This is a required parameter for label detection stream processors and should not be used to start a face search stream processor.</p>"}))
    StartStreamProcessorRequest.add_member(:stop_selector, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessingStopSelector, location_name: 'StopSelector', traits: {"smithy.api#documentation" => "<p>\n            Specifies when to stop processing the stream. You can specify a \n            maximum amount of time to process the video. \n        </p>\n         <p>This is a required parameter for label detection stream processors and should not be used to start a face search stream processor.</p>"}))
    StartStreamProcessorRequest.type = Types::StartStreamProcessorRequest
    StartStreamProcessorResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StartStreamProcessorSessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>\n            A unique identifier for the stream processing session. \n        </p>"}))
    StartStreamProcessorResponse.type = Types::StartStreamProcessorResponse
    StartTechnicalCueDetectionFilter.add_member(:min_segment_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentConfidence, location_name: 'MinSegmentConfidence', traits: {"smithy.api#documentation" => "<p>Specifies the minimum confidence that Amazon Rekognition Video must have in order to return a detected segment. Confidence\n      represents how certain Amazon Rekognition is that a segment is correctly identified. 0 is the lowest confidence.\n      100 is the highest confidence.  Amazon Rekognition Video doesn't return any segments with a confidence level\n      lower than this specified value.</p>\n         <p>If you don't specify <code>MinSegmentConfidence</code>, <code>GetSegmentDetection</code> returns \n      segments with confidence values greater than or equal to 50 percent.</p>"}))
    StartTechnicalCueDetectionFilter.add_member(:black_frame, Smithy::Schema::Shapes::ShapeRef.new(shape: BlackFrame, location_name: 'BlackFrame', traits: {"smithy.api#documentation" => "<p>\n      A filter that allows you to control the black frame detection by specifying the black levels and pixel coverage of black pixels in a frame.\n      Videos can come from multiple sources, formats, and time periods, with different standards and varying noise levels for black frames that need to be accounted for.\n    </p>"}))
    StartTechnicalCueDetectionFilter.type = Types::StartTechnicalCueDetectionFilter
    StartTextDetectionFilters.add_member(:word_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectionFilter, location_name: 'WordFilter', traits: {"smithy.api#documentation" => "<p>Filters focusing on qualities of the text, such as confidence or size.</p>"}))
    StartTextDetectionFilters.add_member(:regions_of_interest, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: 'RegionsOfInterest', traits: {"smithy.api#documentation" => "<p>Filter focusing on a certain area of the frame. Uses a <code>BoundingBox</code> object to set the region\n      of the screen.</p>"}))
    StartTextDetectionFilters.type = Types::StartTextDetectionFilters
    StartTextDetectionRequest.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'Video', traits: {"smithy.api#required" => {}}))
    StartTextDetectionRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token used to identify the start request. If you use the same token with multiple <code>StartTextDetection</code>\n      requests, the same <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same job \n        from being accidentaly started more than once.</p>"}))
    StartTextDetectionRequest.add_member(:notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'NotificationChannel'))
    StartTextDetectionRequest.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>An identifier returned in the completion status published by your Amazon Simple Notification Service topic.  For example, you can use <code>JobTag</code> to group related jobs\n      and identify them in the completion notification.</p>"}))
    StartTextDetectionRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTextDetectionFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Optional parameters that let you set criteria the text must meet to be included in your response.</p>"}))
    StartTextDetectionRequest.type = Types::StartTextDetectionRequest
    StartTextDetectionResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>Identifier for the text detection job.  Use <code>JobId</code> to identify the job in a subsequent call to <code>GetTextDetection</code>.</p>"}))
    StartTextDetectionResponse.type = Types::StartTextDetectionResponse
    StopProjectVersionRequest.add_member(:project_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: 'ProjectVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the model version that you want to stop.</p>\n         <p>This operation requires permissions to perform the <code>rekognition:StopProjectVersion</code> action.</p>", "smithy.api#required" => {}}))
    StopProjectVersionRequest.type = Types::StopProjectVersionRequest
    StopProjectVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the stop operation. </p>"}))
    StopProjectVersionResponse.type = Types::StopProjectVersionResponse
    StopStreamProcessorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a stream processor created by <a>CreateStreamProcessor</a>.</p>", "smithy.api#required" => {}}))
    StopStreamProcessorRequest.type = Types::StopStreamProcessorRequest
    StopStreamProcessorResponse.type = Types::StopStreamProcessorResponse
    StreamProcessingStartSelector.add_member(:kvs_stream_start_selector, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamStartSelector, location_name: 'KVSStreamStartSelector', traits: {"smithy.api#documentation" => "<p>\n            Specifies the starting point in the stream to start processing. This can be done with a producer timestamp or a fragment number in a Kinesis stream.\n        </p>"}))
    StreamProcessingStartSelector.type = Types::StreamProcessingStartSelector
    StreamProcessingStopSelector.add_member(:max_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxDurationInSecondsULong, location_name: 'MaxDurationInSeconds', traits: {"smithy.api#documentation" => "<p>\n            Specifies the maximum amount of time in seconds that you want the stream to be processed. The largest amount of time is 2 minutes. The default is 10 seconds.\n        </p>"}))
    StreamProcessingStopSelector.type = Types::StreamProcessingStopSelector
    StreamProcessor.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the Amazon Rekognition stream processor. </p>"}))
    StreamProcessor.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Current status of the Amazon Rekognition stream processor.</p>"}))
    StreamProcessor.type = Types::StreamProcessor
    StreamProcessorDataSharingPreference.add_member(:opt_in, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OptIn', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>\n            If this option is set to true, you choose to share data with Rekognition to improve model performance.\n        </p>", "smithy.api#required" => {}}))
    StreamProcessorDataSharingPreference.type = Types::StreamProcessorDataSharingPreference
    StreamProcessorInput.add_member(:kinesis_video_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStream, location_name: 'KinesisVideoStream', traits: {"smithy.api#documentation" => "<p>The Kinesis video stream input stream for the source streaming video.</p>"}))
    StreamProcessorInput.type = Types::StreamProcessorInput
    StreamProcessorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessor)
    StreamProcessorNotificationChannel.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicArn, location_name: 'SNSTopicArn', traits: {"smithy.api#documentation" => "<p>\n            The Amazon Resource Number (ARN) of the Amazon Amazon Simple Notification Service topic to which Amazon Rekognition posts the completion status.\n        </p>", "smithy.api#required" => {}}))
    StreamProcessorNotificationChannel.type = Types::StreamProcessorNotificationChannel
    StreamProcessorOutput.add_member(:kinesis_data_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisDataStream, location_name: 'KinesisDataStream', traits: {"smithy.api#documentation" => "<p>The Amazon Kinesis Data Streams stream to which the Amazon Rekognition stream processor streams the analysis results.</p>"}))
    StreamProcessorOutput.add_member(:s3_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 'S3Destination', traits: {"smithy.api#documentation" => "<p>\n            The Amazon S3 bucket location to which Amazon Rekognition publishes the detailed inference results of a video analysis operation.\n        </p>"}))
    StreamProcessorOutput.type = Types::StreamProcessorOutput
    StreamProcessorParameterToDelete.add_member(:connected_home_min_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConnectedHomeMinConfidence', traits: {"smithy.api#enumValue" => "ConnectedHomeMinConfidence"}))
    StreamProcessorParameterToDelete.add_member(:regions_of_interest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RegionsOfInterest', traits: {"smithy.api#enumValue" => "RegionsOfInterest"}))
    StreamProcessorParametersToDelete.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorParameterToDelete)
    StreamProcessorSettings.add_member(:face_search, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceSearchSettings, location_name: 'FaceSearch', traits: {"smithy.api#documentation" => "<p>Face search settings to use on a streaming video. </p>"}))
    StreamProcessorSettings.add_member(:connected_home, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectedHomeSettings, location_name: 'ConnectedHome'))
    StreamProcessorSettings.type = Types::StreamProcessorSettings
    StreamProcessorSettingsForUpdate.add_member(:connected_home_for_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectedHomeSettingsForUpdate, location_name: 'ConnectedHomeForUpdate', traits: {"smithy.api#documentation" => "<p>\n            The label detection settings you want to use for your stream processor.\n        </p>"}))
    StreamProcessorSettingsForUpdate.type = Types::StreamProcessorSettingsForUpdate
    StreamProcessorStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    StreamProcessorStatus.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    StreamProcessorStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    StreamProcessorStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    StreamProcessorStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    StreamProcessorStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    Summary.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'S3Object'))
    Summary.type = Types::Summary
    Sunglasses.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Value', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Boolean value that indicates whether the face is wearing sunglasses or not.</p>"}))
    Sunglasses.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Level of confidence in the determination.</p>"}))
    Sunglasses.type = Types::Sunglasses
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p> Amazon Resource Name (ARN) of the model, collection, or stream processor that you want to\n      assign the tags to. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> The key-value tags to assign to the resource. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TechnicalCueSegment.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TechnicalCueType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the technical cue.</p>"}))
    TechnicalCueSegment.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentConfidence, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence that Amazon Rekognition Video has in the accuracy of the detected segment.</p>"}))
    TechnicalCueSegment.type = Types::TechnicalCueSegment
    TechnicalCueType.add_member(:color_bars, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COLOR_BARS', traits: {"smithy.api#enumValue" => "ColorBars"}))
    TechnicalCueType.add_member(:end_credits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'END_CREDITS', traits: {"smithy.api#enumValue" => "EndCredits"}))
    TechnicalCueType.add_member(:black_frames, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLACK_FRAMES', traits: {"smithy.api#enumValue" => "BlackFrames"}))
    TechnicalCueType.add_member(:opening_credits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENING_CREDITS', traits: {"smithy.api#enumValue" => "OpeningCredits"}))
    TechnicalCueType.add_member(:studio_logo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STUDIO_LOGO', traits: {"smithy.api#enumValue" => "StudioLogo"}))
    TechnicalCueType.add_member(:slate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SLATE', traits: {"smithy.api#enumValue" => "Slate"}))
    TechnicalCueType.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTENT', traits: {"smithy.api#enumValue" => "Content"}))
    TestingData.add_member(:assets, Smithy::Schema::Shapes::ShapeRef.new(shape: Assets, location_name: 'Assets', traits: {"smithy.api#documentation" => "<p>The assets used for testing.</p>"}))
    TestingData.add_member(:auto_create, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoCreate', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If specified, Rekognition splits training dataset to create a test dataset for\n         the training job.</p>"}))
    TestingData.type = Types::TestingData
    TestingDataResult.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: TestingData, location_name: 'Input', traits: {"smithy.api#documentation" => "<p>The testing dataset that was supplied for training.</p>"}))
    TestingDataResult.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: TestingData, location_name: 'Output', traits: {"smithy.api#documentation" => "<p>The subset of the dataset that was actually tested. Some images (assets) might not be tested due to \n         file formatting and other issues. </p>"}))
    TestingDataResult.add_member(:validation, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationData, location_name: 'Validation', traits: {"smithy.api#documentation" => "<p>The location of the data validation manifest. The data validation manifest is created for the test dataset during model training.</p>"}))
    TestingDataResult.type = Types::TestingDataResult
    TextDetection.add_member(:detected_text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DetectedText', traits: {"smithy.api#documentation" => "<p>The word or line of text recognized by Amazon Rekognition. </p>"}))
    TextDetection.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TextTypes, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of text that was detected.</p>"}))
    TextDetection.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the detected text. The identifier is only unique for a single call\n      to <code>DetectText</code>. </p>"}))
    TextDetection.add_member(:parent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'ParentId', traits: {"smithy.api#documentation" => "<p>The Parent identifier for the detected text identified by the value of <code>ID</code>.\n      If the type of detected text is <code>LINE</code>, the value of <code>ParentId</code> is\n        <code>Null</code>. </p>"}))
    TextDetection.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence that Amazon Rekognition has in the accuracy of the detected text and the accuracy\n      of the geometry points around the detected text.</p>"}))
    TextDetection.add_member(:geometry, Smithy::Schema::Shapes::ShapeRef.new(shape: Geometry, location_name: 'Geometry', traits: {"smithy.api#documentation" => "<p>The location of the detected text on the image. Includes an axis aligned coarse\n      bounding box surrounding the text and a finer grain polygon for more accurate spatial\n      information.</p>"}))
    TextDetection.type = Types::TextDetection
    TextDetectionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TextDetection)
    TextDetectionResult.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time, in milliseconds from the start of the video, that the text was detected.\n       Note that <code>Timestamp</code> is not guaranteed to be accurate to the individual frame where the text first appears.</p>"}))
    TextDetectionResult.add_member(:text_detection, Smithy::Schema::Shapes::ShapeRef.new(shape: TextDetection, location_name: 'TextDetection', traits: {"smithy.api#documentation" => "<p>Details about text detected in a video.</p>"}))
    TextDetectionResult.type = Types::TextDetectionResult
    TextDetectionResults.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TextDetectionResult)
    TextTypes.add_member(:line, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINE', traits: {"smithy.api#enumValue" => "LINE"}))
    TextTypes.add_member(:word, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORD', traits: {"smithy.api#enumValue" => "WORD"}))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ThrottlingException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ThrottlingException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    ThrottlingException.type = Types::ThrottlingException
    TrainingData.add_member(:assets, Smithy::Schema::Shapes::ShapeRef.new(shape: Assets, location_name: 'Assets', traits: {"smithy.api#documentation" => "<p>A manifest file that contains references to the training images and ground-truth\n         annotations.</p>"}))
    TrainingData.type = Types::TrainingData
    TrainingDataResult.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingData, location_name: 'Input', traits: {"smithy.api#documentation" => "<p>The training data that you supplied.</p>"}))
    TrainingDataResult.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingData, location_name: 'Output', traits: {"smithy.api#documentation" => "<p>Reference to images (assets) that were actually used during training with trained model\n         predictions.</p>"}))
    TrainingDataResult.add_member(:validation, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationData, location_name: 'Validation', traits: {"smithy.api#documentation" => "<p>A manifest that you supplied for training, with validation results for each\n         line.</p>"}))
    TrainingDataResult.type = Types::TrainingDataResult
    UnindexedFace.add_member(:reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: Reasons, location_name: 'Reasons', traits: {"smithy.api#documentation" => "<p>An array of reasons that specify why a face wasn't indexed. </p>\n         <ul>\n            <li>\n               <p>EXTREME_POSE - The face is at a pose that can't be detected. For example, the head is\n          turned too far away from the camera.</p>\n            </li>\n            <li>\n               <p>EXCEEDS_MAX_FACES - The number of faces detected is already higher than that specified\n          by the <code>MaxFaces</code> input parameter for <code>IndexFaces</code>.</p>\n            </li>\n            <li>\n               <p>LOW_BRIGHTNESS - The image is too dark.</p>\n            </li>\n            <li>\n               <p>LOW_SHARPNESS - The image is too blurry.</p>\n            </li>\n            <li>\n               <p>LOW_CONFIDENCE - The face was detected with a low confidence.</p>\n            </li>\n            <li>\n               <p>SMALL_BOUNDING_BOX - The bounding box around the face is too small.</p>\n            </li>\n         </ul>"}))
    UnindexedFace.add_member(:face_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail, location_name: 'FaceDetail', traits: {"smithy.api#documentation" => "<p>The\n      structure that contains attributes of a face that\n      <code>IndexFaces</code>detected, but didn't index. </p>"}))
    UnindexedFace.type = Types::UnindexedFace
    UnindexedFaces.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnindexedFace)
    UnsearchedFace.add_member(:face_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail, location_name: 'FaceDetails'))
    UnsearchedFace.add_member(:reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsearchedFaceReasons, location_name: 'Reasons', traits: {"smithy.api#documentation" => "<p> Reasons why a face wasn't used for Search. </p>"}))
    UnsearchedFace.type = Types::UnsearchedFace
    UnsearchedFaceReason.add_member(:face_not_largest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FACE_NOT_LARGEST', traits: {"smithy.api#enumValue" => "FACE_NOT_LARGEST"}))
    UnsearchedFaceReason.add_member(:exceeds_max_faces, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXCEEDS_MAX_FACES', traits: {"smithy.api#enumValue" => "EXCEEDS_MAX_FACES"}))
    UnsearchedFaceReason.add_member(:extreme_pose, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTREME_POSE', traits: {"smithy.api#enumValue" => "EXTREME_POSE"}))
    UnsearchedFaceReason.add_member(:low_brightness, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW_BRIGHTNESS', traits: {"smithy.api#enumValue" => "LOW_BRIGHTNESS"}))
    UnsearchedFaceReason.add_member(:low_sharpness, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW_SHARPNESS', traits: {"smithy.api#enumValue" => "LOW_SHARPNESS"}))
    UnsearchedFaceReason.add_member(:low_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW_CONFIDENCE', traits: {"smithy.api#enumValue" => "LOW_CONFIDENCE"}))
    UnsearchedFaceReason.add_member(:small_bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMALL_BOUNDING_BOX', traits: {"smithy.api#enumValue" => "SMALL_BOUNDING_BOX"}))
    UnsearchedFaceReason.add_member(:low_face_quality, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW_FACE_QUALITY', traits: {"smithy.api#enumValue" => "LOW_FACE_QUALITY"}))
    UnsearchedFaceReasons.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnsearchedFaceReason)
    UnsearchedFacesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnsearchedFace)
    UnsuccessfulFaceAssociation.add_member(:face_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: 'FaceId', traits: {"smithy.api#documentation" => "<p>A unique identifier assigned to the face. </p>"}))
    UnsuccessfulFaceAssociation.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>A provided ID for the UserID. Unique within the collection. </p>"}))
    UnsuccessfulFaceAssociation.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Match confidence with the UserID, provides information regarding if a face association was\n      unsuccessful because it didn't meet UserMatchThreshold.</p>"}))
    UnsuccessfulFaceAssociation.add_member(:reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceAssociationReasons, location_name: 'Reasons', traits: {"smithy.api#documentation" => "<p> The reason why the association was unsuccessful. </p>"}))
    UnsuccessfulFaceAssociation.type = Types::UnsuccessfulFaceAssociation
    UnsuccessfulFaceAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceAssociation)
    UnsuccessfulFaceAssociationReason.add_member(:face_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FACE_NOT_FOUND', traits: {"smithy.api#enumValue" => "FACE_NOT_FOUND"}))
    UnsuccessfulFaceAssociationReason.add_member(:associated_to_a_different_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATED_TO_A_DIFFERENT_USER', traits: {"smithy.api#enumValue" => "ASSOCIATED_TO_A_DIFFERENT_USER"}))
    UnsuccessfulFaceAssociationReason.add_member(:low_match_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW_MATCH_CONFIDENCE', traits: {"smithy.api#enumValue" => "LOW_MATCH_CONFIDENCE"}))
    UnsuccessfulFaceAssociationReasons.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceAssociationReason)
    UnsuccessfulFaceDeletion.add_member(:face_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: 'FaceId', traits: {"smithy.api#documentation" => "<p> A unique identifier assigned to the face.</p>"}))
    UnsuccessfulFaceDeletion.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p> A provided ID for the UserID. Unique within the collection. </p>"}))
    UnsuccessfulFaceDeletion.add_member(:reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDeletionReasons, location_name: 'Reasons', traits: {"smithy.api#documentation" => "<p>The reason why the deletion was unsuccessful. </p>"}))
    UnsuccessfulFaceDeletion.type = Types::UnsuccessfulFaceDeletion
    UnsuccessfulFaceDeletionReason.add_member(:associated_to_an_existing_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATED_TO_AN_EXISTING_USER', traits: {"smithy.api#enumValue" => "ASSOCIATED_TO_AN_EXISTING_USER"}))
    UnsuccessfulFaceDeletionReason.add_member(:face_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FACE_NOT_FOUND', traits: {"smithy.api#enumValue" => "FACE_NOT_FOUND"}))
    UnsuccessfulFaceDeletionReasons.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDeletionReason)
    UnsuccessfulFaceDeletionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDeletion)
    UnsuccessfulFaceDisassociation.add_member(:face_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: 'FaceId', traits: {"smithy.api#documentation" => "<p>A unique identifier assigned to the face. </p>"}))
    UnsuccessfulFaceDisassociation.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>A provided ID for the UserID. Unique within the collection. </p>"}))
    UnsuccessfulFaceDisassociation.add_member(:reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDisassociationReasons, location_name: 'Reasons', traits: {"smithy.api#documentation" => "<p>The reason why the deletion was unsuccessful. </p>"}))
    UnsuccessfulFaceDisassociation.type = Types::UnsuccessfulFaceDisassociation
    UnsuccessfulFaceDisassociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDisassociation)
    UnsuccessfulFaceDisassociationReason.add_member(:face_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FACE_NOT_FOUND', traits: {"smithy.api#enumValue" => "FACE_NOT_FOUND"}))
    UnsuccessfulFaceDisassociationReason.add_member(:associated_to_a_different_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATED_TO_A_DIFFERENT_USER', traits: {"smithy.api#enumValue" => "ASSOCIATED_TO_A_DIFFERENT_USER"}))
    UnsuccessfulFaceDisassociationReasons.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDisassociationReason)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p> Amazon Resource Name (ARN) of the model, collection, or stream processor that you want to\n      remove the tags from. </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p> A list of the tags that you want to remove. </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDatasetEntriesRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'DatasetArn', traits: {"smithy.api#documentation" => "<p>\nThe Amazon Resource Name (ARN) of the dataset that you want to update.\n</p>", "smithy.api#required" => {}}))
    UpdateDatasetEntriesRequest.add_member(:changes, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetChanges, location_name: 'Changes', traits: {"smithy.api#documentation" => "<p>\n   The changes that you want to make to the dataset. \n</p>", "smithy.api#required" => {}}))
    UpdateDatasetEntriesRequest.type = Types::UpdateDatasetEntriesRequest
    UpdateDatasetEntriesResponse.type = Types::UpdateDatasetEntriesResponse
    UpdateStreamProcessorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n            Name of the stream processor that you want to update.\n        </p>", "smithy.api#required" => {}}))
    UpdateStreamProcessorRequest.add_member(:settings_for_update, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorSettingsForUpdate, location_name: 'SettingsForUpdate', traits: {"smithy.api#documentation" => "<p>\n            The stream processor settings that you want to update. Label detection settings can be updated to detect different labels with a different minimum confidence.\n        </p>"}))
    UpdateStreamProcessorRequest.add_member(:regions_of_interest_for_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: 'RegionsOfInterestForUpdate', traits: {"smithy.api#documentation" => "<p>\n            Specifies locations in the frames where Amazon Rekognition checks for objects or people. This is an optional parameter for label detection stream processors.\n        </p>"}))
    UpdateStreamProcessorRequest.add_member(:data_sharing_preference_for_update, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorDataSharingPreference, location_name: 'DataSharingPreferenceForUpdate', traits: {"smithy.api#documentation" => "<p>\n            Shows whether you are sharing data with Rekognition to improve model performance. You can choose this option at the account level or on a per-stream basis.\n            Note that if you opt out at the account level this setting is ignored on individual streams.\n        </p>"}))
    UpdateStreamProcessorRequest.add_member(:parameters_to_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorParametersToDelete, location_name: 'ParametersToDelete', traits: {"smithy.api#documentation" => "<p>\n            A list of parameters you want to delete from the stream processor.\n        </p>"}))
    UpdateStreamProcessorRequest.type = Types::UpdateStreamProcessorRequest
    UpdateStreamProcessorResponse.type = Types::UpdateStreamProcessorResponse
    Urls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Url)
    User.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p> A provided ID for the User. Unique within the collection.</p>"}))
    User.add_member(:user_status, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStatus, location_name: 'UserStatus', traits: {"smithy.api#documentation" => "<p> Communicates if the UserID has been updated with latest set of faces to be associated\n      with the UserID. </p>"}))
    User.type = Types::User
    UserFaceIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId)
    UserList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: User)
    UserMatch.add_member(:similarity, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Similarity', traits: {"smithy.api#documentation" => "<p> Describes the UserID metadata.</p>"}))
    UserMatch.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: MatchedUser, location_name: 'User', traits: {"smithy.api#documentation" => "<p> Confidence in the match of this UserID with the input face. </p>"}))
    UserMatch.type = Types::UserMatch
    UserMatchList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserMatch)
    UserStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    UserStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    UserStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    UserStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    ValidationData.add_member(:assets, Smithy::Schema::Shapes::ShapeRef.new(shape: Assets, location_name: 'Assets', traits: {"smithy.api#documentation" => "<p>The assets that comprise the validation data. </p>"}))
    ValidationData.type = Types::ValidationData
    VersionNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName)
    Versions.add_member(:minimum, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'Minimum', traits: {"smithy.api#documentation" => "<p>The desired minimum version for the challenge.</p>"}))
    Versions.add_member(:maximum, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'Maximum', traits: {"smithy.api#documentation" => "<p>The desired maximum version for the challenge.</p>"}))
    Versions.type = Types::Versions
    Video.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'S3Object', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket name and file name for the video.</p>"}))
    Video.type = Types::Video
    VideoColorRange.add_member(:full, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL', traits: {"smithy.api#enumValue" => "FULL"}))
    VideoColorRange.add_member(:limited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIMITED', traits: {"smithy.api#enumValue" => "LIMITED"}))
    VideoJobStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    VideoJobStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    VideoJobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    VideoMetadata.add_member(:codec, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Codec', traits: {"smithy.api#documentation" => "<p>Type of compression used in the analyzed video. </p>"}))
    VideoMetadata.add_member(:duration_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'DurationMillis', traits: {"smithy.api#documentation" => "<p>Length of the video in milliseconds.</p>"}))
    VideoMetadata.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>Format of the analyzed video. Possible values are MP4, MOV and AVI. </p>"}))
    VideoMetadata.add_member(:frame_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'FrameRate', traits: {"smithy.api#documentation" => "<p>Number of frames per second in the video.</p>"}))
    VideoMetadata.add_member(:frame_height, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'FrameHeight', traits: {"smithy.api#documentation" => "<p>Vertical pixel dimension of the video.</p>"}))
    VideoMetadata.add_member(:frame_width, Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: 'FrameWidth', traits: {"smithy.api#documentation" => "<p>Horizontal pixel dimension of the video.</p>"}))
    VideoMetadata.add_member(:color_range, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoColorRange, location_name: 'ColorRange', traits: {"smithy.api#documentation" => "<p>\n      A description of the range of luminance values in a video, either LIMITED (16 to 235) or FULL (0 to 255).\n    </p>"}))
    VideoMetadata.type = Types::VideoMetadata
    VideoMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata)
    VideoTooLargeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    VideoTooLargeException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    VideoTooLargeException.add_member(:logref, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Logref', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) for the request.</p>"}))
    VideoTooLargeException.type = Types::VideoTooLargeException

    RekognitionService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rekognition#RekognitionService"
      service.name = "RekognitionService"
      service.version = "2016-06-27"
      service.traits = {"aws.api#service" => {"sdkId" => "Rekognition", "arnNamespace" => "rekognition", "cloudFormationName" => "Rekognition", "cloudTrailEventSource" => "rekognition.amazonaws.com", "endpointPrefix" => "rekognition"}, "aws.auth#sigv4" => {"name" => "rekognition"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Rekognition"}
      service.add_operation(:associate_faces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#AssociateFaces"
        operation.name = "AssociateFaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFacesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:compare_faces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CompareFaces"
        operation.name = "CompareFaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CompareFacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CompareFacesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:copy_project_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CopyProjectVersion"
        operation.name = "CopyProjectVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyProjectVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyProjectVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_collection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CreateCollection"
        operation.name = "CreateCollection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCollectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCollectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_face_liveness_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CreateFaceLivenessSession"
        operation.name = "CreateFaceLivenessSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFaceLivenessSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFaceLivenessSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CreateProject"
        operation.name = "CreateProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_project_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CreateProjectVersion"
        operation.name = "CreateProjectVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_stream_processor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CreateStreamProcessor"
        operation.name = "CreateStreamProcessor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamProcessorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamProcessorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CreateUser"
        operation.name = "CreateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_collection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteCollection"
        operation.name = "DeleteCollection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCollectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCollectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_faces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteFaces"
        operation.name = "DeleteFaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFacesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_project_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteProjectPolicy"
        operation.name = "DeleteProjectPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyRevisionIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_project_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteProjectVersion"
        operation.name = "DeleteProjectVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_stream_processor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteStreamProcessor"
        operation.name = "DeleteStreamProcessor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStreamProcessorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStreamProcessorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_collection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DescribeCollection"
        operation.name = "DescribeCollection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCollectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCollectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_project_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DescribeProjectVersions"
        operation.name = "DescribeProjectVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProjectVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProjectVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeProjectVersions.new
      end)
      service.add_operation(:describe_projects, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DescribeProjects"
        operation.name = "DescribeProjects"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProjectsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProjectsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeProjects.new
      end)
      service.add_operation(:describe_stream_processor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DescribeStreamProcessor"
        operation.name = "DescribeStreamProcessor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStreamProcessorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStreamProcessorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:detect_custom_labels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DetectCustomLabels"
        operation.name = "DetectCustomLabels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectCustomLabelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectCustomLabelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:detect_faces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DetectFaces"
        operation.name = "DetectFaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectFacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectFacesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:detect_labels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DetectLabels"
        operation.name = "DetectLabels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:detect_moderation_labels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DetectModerationLabels"
        operation.name = "DetectModerationLabels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectModerationLabelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectModerationLabelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:detect_protective_equipment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DetectProtectiveEquipment"
        operation.name = "DetectProtectiveEquipment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectProtectiveEquipmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectProtectiveEquipmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:detect_text, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DetectText"
        operation.name = "DetectText"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectTextRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectTextResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_faces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DisassociateFaces"
        operation.name = "DisassociateFaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFacesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:distribute_dataset_entries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DistributeDatasetEntries"
        operation.name = "DistributeDatasetEntries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DistributeDatasetEntriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DistributeDatasetEntriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_celebrity_info, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetCelebrityInfo"
        operation.name = "GetCelebrityInfo"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCelebrityInfoRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCelebrityInfoResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_celebrity_recognition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetCelebrityRecognition"
        operation.name = "GetCelebrityRecognition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCelebrityRecognitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCelebrityRecognitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetCelebrityRecognition.new
      end)
      service.add_operation(:get_content_moderation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetContentModeration"
        operation.name = "GetContentModeration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentModerationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentModerationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetContentModeration.new
      end)
      service.add_operation(:get_face_detection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetFaceDetection"
        operation.name = "GetFaceDetection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFaceDetectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFaceDetectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetFaceDetection.new
      end)
      service.add_operation(:get_face_liveness_session_results, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetFaceLivenessSessionResults"
        operation.name = "GetFaceLivenessSessionResults"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFaceLivenessSessionResultsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFaceLivenessSessionResultsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SessionNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_face_search, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetFaceSearch"
        operation.name = "GetFaceSearch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFaceSearchRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFaceSearchResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetFaceSearch.new
      end)
      service.add_operation(:get_label_detection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetLabelDetection"
        operation.name = "GetLabelDetection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLabelDetectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLabelDetectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetLabelDetection.new
      end)
      service.add_operation(:get_media_analysis_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetMediaAnalysisJob"
        operation.name = "GetMediaAnalysisJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaAnalysisJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaAnalysisJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_person_tracking, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetPersonTracking"
        operation.name = "GetPersonTracking"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPersonTrackingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPersonTrackingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetPersonTracking.new
      end)
      service.add_operation(:get_segment_detection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetSegmentDetection"
        operation.name = "GetSegmentDetection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentDetectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentDetectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetSegmentDetection.new
      end)
      service.add_operation(:get_text_detection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetTextDetection"
        operation.name = "GetTextDetection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTextDetectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTextDetectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetTextDetection.new
      end)
      service.add_operation(:index_faces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#IndexFaces"
        operation.name = "IndexFaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: IndexFacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: IndexFacesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:list_collections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListCollections"
        operation.name = "ListCollections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollectionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollectionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListCollectionsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListCollections.new
      end)
      service.add_operation(:list_dataset_entries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListDatasetEntries"
        operation.name = "ListDatasetEntries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetEntriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetEntriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDatasetEntries.new
      end)
      service.add_operation(:list_dataset_labels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListDatasetLabels"
        operation.name = "ListDatasetLabels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetLabelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetLabelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDatasetLabels.new
      end)
      service.add_operation(:list_faces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListFaces"
        operation.name = "ListFaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFacesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFaces.new
      end)
      service.add_operation(:list_media_analysis_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListMediaAnalysisJobs"
        operation.name = "ListMediaAnalysisJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMediaAnalysisJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMediaAnalysisJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListMediaAnalysisJobs.new
      end)
      service.add_operation(:list_project_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListProjectPolicies"
        operation.name = "ListProjectPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectPoliciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListProjectPolicies.new
      end)
      service.add_operation(:list_stream_processors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListStreamProcessors"
        operation.name = "ListStreamProcessors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamProcessorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamProcessorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListStreamProcessors.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:list_users, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListUsers"
        operation.name = "ListUsers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:put_project_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#PutProjectPolicy"
        operation.name = "PutProjectPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutProjectPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutProjectPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyRevisionIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:recognize_celebrities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#RecognizeCelebrities"
        operation.name = "RecognizeCelebrities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RecognizeCelebritiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RecognizeCelebritiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:search_faces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#SearchFaces"
        operation.name = "SearchFaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFacesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:search_faces_by_image, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#SearchFacesByImage"
        operation.name = "SearchFacesByImage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFacesByImageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFacesByImageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:search_users, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#SearchUsers"
        operation.name = "SearchUsers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchUsersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchUsersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:search_users_by_image, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#SearchUsersByImage"
        operation.name = "SearchUsersByImage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchUsersByImageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchUsersByImageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:start_celebrity_recognition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartCelebrityRecognition"
        operation.name = "StartCelebrityRecognition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCelebrityRecognitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCelebrityRecognitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_content_moderation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartContentModeration"
        operation.name = "StartContentModeration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartContentModerationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartContentModerationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_face_detection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartFaceDetection"
        operation.name = "StartFaceDetection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartFaceDetectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartFaceDetectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_face_search, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartFaceSearch"
        operation.name = "StartFaceSearch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartFaceSearchRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartFaceSearchResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_label_detection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartLabelDetection"
        operation.name = "StartLabelDetection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartLabelDetectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartLabelDetectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_media_analysis_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartMediaAnalysisJob"
        operation.name = "StartMediaAnalysisJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartMediaAnalysisJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartMediaAnalysisJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidManifestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_person_tracking, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartPersonTracking"
        operation.name = "StartPersonTracking"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartPersonTrackingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartPersonTrackingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_project_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartProjectVersion"
        operation.name = "StartProjectVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartProjectVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartProjectVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:start_segment_detection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartSegmentDetection"
        operation.name = "StartSegmentDetection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSegmentDetectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSegmentDetectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_stream_processor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartStreamProcessor"
        operation.name = "StartStreamProcessor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartStreamProcessorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartStreamProcessorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:start_text_detection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartTextDetection"
        operation.name = "StartTextDetection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTextDetectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTextDetectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_project_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StopProjectVersion"
        operation.name = "StopProjectVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopProjectVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopProjectVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:stop_stream_processor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StopStreamProcessor"
        operation.name = "StopStreamProcessor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopStreamProcessorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopStreamProcessorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_dataset_entries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#UpdateDatasetEntries"
        operation.name = "UpdateDatasetEntries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetEntriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetEntriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_stream_processor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#UpdateStreamProcessor"
        operation.name = "UpdateStreamProcessor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStreamProcessorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStreamProcessorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
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
