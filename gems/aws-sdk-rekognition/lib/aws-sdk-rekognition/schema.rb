# frozen_string_literal: true

# This is generated code!

module Aws::Rekognition
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    AgeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#AgeRange", name: "AgeRange")
    Asset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Asset", name: "Asset")
    Assets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#Assets", name: "Assets")
    AssociateFacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#AssociateFacesRequest", name: "AssociateFacesRequest")
    AssociateFacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#AssociateFacesResponse", name: "AssociateFacesResponse")
    AssociatedFace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#AssociatedFace", name: "AssociatedFace")
    AssociatedFacesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#AssociatedFacesList", name: "AssociatedFacesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Attribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#Attribute", name: "Attribute")
    Attributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#Attributes", name: "Attributes")
    AudioMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#AudioMetadata", name: "AudioMetadata")
    AudioMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#AudioMetadataList", name: "AudioMetadataList")
    AuditImage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#AuditImage", name: "AuditImage")
    AuditImages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#AuditImages", name: "AuditImages")
    AuditImagesLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#AuditImagesLimit", name: "AuditImagesLimit", traits: {"smithy.api#range" => {"min" => 0, "max" => 4}})
    Beard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Beard", name: "Beard")
    BlackFrame = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#BlackFrame", name: "BlackFrame")
    BodyPart = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#BodyPart", name: "BodyPart")
    BodyParts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#BodyParts", name: "BodyParts")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.rekognition#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BoundingBox = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#BoundingBox", name: "BoundingBox")
    BoundingBoxHeight = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.rekognition#BoundingBoxHeight", name: "BoundingBoxHeight", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    BoundingBoxWidth = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.rekognition#BoundingBoxWidth", name: "BoundingBoxWidth", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    Celebrity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Celebrity", name: "Celebrity")
    CelebrityDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CelebrityDetail", name: "CelebrityDetail")
    CelebrityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#CelebrityList", name: "CelebrityList")
    CelebrityRecognition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CelebrityRecognition", name: "CelebrityRecognition")
    CelebrityRecognitionSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#CelebrityRecognitionSortBy", name: "CelebrityRecognitionSortBy")
    CelebrityRecognitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#CelebrityRecognitions", name: "CelebrityRecognitions")
    Challenge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Challenge", name: "Challenge")
    ChallengePreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ChallengePreference", name: "ChallengePreference")
    ChallengePreferences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#ChallengePreferences", name: "ChallengePreferences")
    ChallengeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#ChallengeType", name: "ChallengeType")
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    CollectionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#CollectionId", name: "CollectionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]+$"})
    CollectionIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#CollectionIdList", name: "CollectionIdList")
    CompareFacesMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CompareFacesMatch", name: "CompareFacesMatch")
    CompareFacesMatchList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#CompareFacesMatchList", name: "CompareFacesMatchList")
    CompareFacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CompareFacesRequest", name: "CompareFacesRequest")
    CompareFacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CompareFacesResponse", name: "CompareFacesResponse")
    CompareFacesUnmatchList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#CompareFacesUnmatchList", name: "CompareFacesUnmatchList")
    ComparedFace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ComparedFace", name: "ComparedFace")
    ComparedFaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#ComparedFaceList", name: "ComparedFaceList")
    ComparedSourceImageFace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ComparedSourceImageFace", name: "ComparedSourceImageFace")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client"})
    ConnectedHomeLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#ConnectedHomeLabel", name: "ConnectedHomeLabel")
    ConnectedHomeLabels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#ConnectedHomeLabels", name: "ConnectedHomeLabels", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ConnectedHomeSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ConnectedHomeSettings", name: "ConnectedHomeSettings")
    ConnectedHomeSettingsForUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ConnectedHomeSettingsForUpdate", name: "ConnectedHomeSettingsForUpdate")
    ContentClassifier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#ContentClassifier", name: "ContentClassifier")
    ContentClassifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#ContentClassifiers", name: "ContentClassifiers", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ContentModerationAggregateBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#ContentModerationAggregateBy", name: "ContentModerationAggregateBy")
    ContentModerationDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ContentModerationDetection", name: "ContentModerationDetection")
    ContentModerationDetections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#ContentModerationDetections", name: "ContentModerationDetections")
    ContentModerationSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#ContentModerationSortBy", name: "ContentModerationSortBy")
    ContentType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ContentType", name: "ContentType")
    ContentTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#ContentTypes", name: "ContentTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    CopyProjectVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CopyProjectVersionRequest", name: "CopyProjectVersionRequest")
    CopyProjectVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CopyProjectVersionResponse", name: "CopyProjectVersionResponse")
    CoversBodyPart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CoversBodyPart", name: "CoversBodyPart")
    CreateCollectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateCollectionRequest", name: "CreateCollectionRequest")
    CreateCollectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateCollectionResponse", name: "CreateCollectionResponse")
    CreateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateDatasetRequest", name: "CreateDatasetRequest")
    CreateDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateDatasetResponse", name: "CreateDatasetResponse")
    CreateFaceLivenessSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateFaceLivenessSessionRequest", name: "CreateFaceLivenessSessionRequest")
    CreateFaceLivenessSessionRequestSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateFaceLivenessSessionRequestSettings", name: "CreateFaceLivenessSessionRequestSettings")
    CreateFaceLivenessSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateFaceLivenessSessionResponse", name: "CreateFaceLivenessSessionResponse")
    CreateProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateProjectRequest", name: "CreateProjectRequest")
    CreateProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateProjectResponse", name: "CreateProjectResponse")
    CreateProjectVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateProjectVersionRequest", name: "CreateProjectVersionRequest")
    CreateProjectVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateProjectVersionResponse", name: "CreateProjectVersionResponse")
    CreateStreamProcessorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateStreamProcessorRequest", name: "CreateStreamProcessorRequest")
    CreateStreamProcessorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateStreamProcessorResponse", name: "CreateStreamProcessorResponse")
    CreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateUserRequest", name: "CreateUserRequest")
    CreateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CreateUserResponse", name: "CreateUserResponse")
    CustomLabel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CustomLabel", name: "CustomLabel")
    CustomLabels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#CustomLabels", name: "CustomLabels")
    CustomizationFeature = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#CustomizationFeature", name: "CustomizationFeature")
    CustomizationFeatureConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CustomizationFeatureConfig", name: "CustomizationFeatureConfig")
    CustomizationFeatureContentModerationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#CustomizationFeatureContentModerationConfig", name: "CustomizationFeatureContentModerationConfig")
    CustomizationFeatures = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#CustomizationFeatures", name: "CustomizationFeatures", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    DatasetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#DatasetArn", name: "DatasetArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^(^arn:[a-z\\d-]+:rekognition:[a-z\\d-]+:\\d{12}:project\\/[a-zA-Z0-9_.\\-]{1,255}\\/dataset\\/(train|test)\\/[0-9]+$)$"})
    DatasetChanges = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DatasetChanges", name: "DatasetChanges")
    DatasetDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DatasetDescription", name: "DatasetDescription")
    DatasetEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#DatasetEntries", name: "DatasetEntries")
    DatasetEntry = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#DatasetEntry", name: "DatasetEntry", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#pattern" => "^\\{.*\\}$"})
    DatasetLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#DatasetLabel", name: "DatasetLabel", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.{1,}$"})
    DatasetLabelDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DatasetLabelDescription", name: "DatasetLabelDescription")
    DatasetLabelDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#DatasetLabelDescriptions", name: "DatasetLabelDescriptions")
    DatasetLabelStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DatasetLabelStats", name: "DatasetLabelStats")
    DatasetLabels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#DatasetLabels", name: "DatasetLabels", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DatasetMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DatasetMetadata", name: "DatasetMetadata")
    DatasetMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#DatasetMetadataList", name: "DatasetMetadataList")
    DatasetSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DatasetSource", name: "DatasetSource")
    DatasetStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DatasetStats", name: "DatasetStats")
    DatasetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#DatasetStatus", name: "DatasetStatus")
    DatasetStatusMessageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#DatasetStatusMessageCode", name: "DatasetStatusMessageCode")
    DatasetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#DatasetType", name: "DatasetType")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.rekognition#DateTime", name: "DateTime")
    Degree = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.rekognition#Degree", name: "Degree", traits: {"smithy.api#range" => {"min" => -180, "max" => 180}})
    DeleteCollectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteCollectionRequest", name: "DeleteCollectionRequest")
    DeleteCollectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteCollectionResponse", name: "DeleteCollectionResponse")
    DeleteDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteDatasetRequest", name: "DeleteDatasetRequest")
    DeleteDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteDatasetResponse", name: "DeleteDatasetResponse")
    DeleteFacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteFacesRequest", name: "DeleteFacesRequest")
    DeleteFacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteFacesResponse", name: "DeleteFacesResponse")
    DeleteProjectPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteProjectPolicyRequest", name: "DeleteProjectPolicyRequest")
    DeleteProjectPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteProjectPolicyResponse", name: "DeleteProjectPolicyResponse")
    DeleteProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteProjectRequest", name: "DeleteProjectRequest")
    DeleteProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteProjectResponse", name: "DeleteProjectResponse")
    DeleteProjectVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteProjectVersionRequest", name: "DeleteProjectVersionRequest")
    DeleteProjectVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteProjectVersionResponse", name: "DeleteProjectVersionResponse")
    DeleteStreamProcessorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteStreamProcessorRequest", name: "DeleteStreamProcessorRequest")
    DeleteStreamProcessorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteStreamProcessorResponse", name: "DeleteStreamProcessorResponse")
    DeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteUserRequest", name: "DeleteUserRequest")
    DeleteUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DeleteUserResponse", name: "DeleteUserResponse")
    DescribeCollectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DescribeCollectionRequest", name: "DescribeCollectionRequest")
    DescribeCollectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DescribeCollectionResponse", name: "DescribeCollectionResponse")
    DescribeDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DescribeDatasetRequest", name: "DescribeDatasetRequest")
    DescribeDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DescribeDatasetResponse", name: "DescribeDatasetResponse")
    DescribeProjectVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DescribeProjectVersionsRequest", name: "DescribeProjectVersionsRequest")
    DescribeProjectVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DescribeProjectVersionsResponse", name: "DescribeProjectVersionsResponse")
    DescribeProjectsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DescribeProjectsRequest", name: "DescribeProjectsRequest")
    DescribeProjectsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DescribeProjectsResponse", name: "DescribeProjectsResponse")
    DescribeStreamProcessorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DescribeStreamProcessorRequest", name: "DescribeStreamProcessorRequest")
    DescribeStreamProcessorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DescribeStreamProcessorResponse", name: "DescribeStreamProcessorResponse")
    DetectCustomLabelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectCustomLabelsRequest", name: "DetectCustomLabelsRequest")
    DetectCustomLabelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectCustomLabelsResponse", name: "DetectCustomLabelsResponse")
    DetectFacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectFacesRequest", name: "DetectFacesRequest")
    DetectFacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectFacesResponse", name: "DetectFacesResponse")
    DetectLabelsFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#DetectLabelsFeatureList", name: "DetectLabelsFeatureList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    DetectLabelsFeatureName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#DetectLabelsFeatureName", name: "DetectLabelsFeatureName")
    DetectLabelsImageBackground = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectLabelsImageBackground", name: "DetectLabelsImageBackground")
    DetectLabelsImageForeground = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectLabelsImageForeground", name: "DetectLabelsImageForeground")
    DetectLabelsImageProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectLabelsImageProperties", name: "DetectLabelsImageProperties")
    DetectLabelsImagePropertiesSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectLabelsImagePropertiesSettings", name: "DetectLabelsImagePropertiesSettings")
    DetectLabelsImageQuality = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectLabelsImageQuality", name: "DetectLabelsImageQuality")
    DetectLabelsMaxDominantColors = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#DetectLabelsMaxDominantColors", name: "DetectLabelsMaxDominantColors", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 20}})
    DetectLabelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectLabelsRequest", name: "DetectLabelsRequest")
    DetectLabelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectLabelsResponse", name: "DetectLabelsResponse")
    DetectLabelsSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectLabelsSettings", name: "DetectLabelsSettings")
    DetectModerationLabelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectModerationLabelsRequest", name: "DetectModerationLabelsRequest")
    DetectModerationLabelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectModerationLabelsResponse", name: "DetectModerationLabelsResponse")
    DetectProtectiveEquipmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectProtectiveEquipmentRequest", name: "DetectProtectiveEquipmentRequest")
    DetectProtectiveEquipmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectProtectiveEquipmentResponse", name: "DetectProtectiveEquipmentResponse")
    DetectTextFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectTextFilters", name: "DetectTextFilters")
    DetectTextRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectTextRequest", name: "DetectTextRequest")
    DetectTextResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectTextResponse", name: "DetectTextResponse")
    DetectionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DetectionFilter", name: "DetectionFilter")
    DisassociateFacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DisassociateFacesRequest", name: "DisassociateFacesRequest")
    DisassociateFacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DisassociateFacesResponse", name: "DisassociateFacesResponse")
    DisassociatedFace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DisassociatedFace", name: "DisassociatedFace")
    DisassociatedFacesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#DisassociatedFacesList", name: "DisassociatedFacesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DistributeDataset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DistributeDataset", name: "DistributeDataset")
    DistributeDatasetEntriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DistributeDatasetEntriesRequest", name: "DistributeDatasetEntriesRequest")
    DistributeDatasetEntriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DistributeDatasetEntriesResponse", name: "DistributeDatasetEntriesResponse")
    DistributeDatasetMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#DistributeDatasetMetadataList", name: "DistributeDatasetMetadataList", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    DominantColor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#DominantColor", name: "DominantColor")
    DominantColors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#DominantColors", name: "DominantColors")
    Emotion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Emotion", name: "Emotion")
    EmotionName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#EmotionName", name: "EmotionName")
    Emotions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#Emotions", name: "Emotions")
    EquipmentDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#EquipmentDetection", name: "EquipmentDetection")
    EquipmentDetections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#EquipmentDetections", name: "EquipmentDetections")
    EvaluationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#EvaluationResult", name: "EvaluationResult")
    ExtendedPaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#ExtendedPaginationToken", name: "ExtendedPaginationToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ExternalImageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#ExternalImageId", name: "ExternalImageId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-:]+$"})
    EyeDirection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#EyeDirection", name: "EyeDirection")
    EyeOpen = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#EyeOpen", name: "EyeOpen")
    Eyeglasses = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Eyeglasses", name: "Eyeglasses")
    Face = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Face", name: "Face")
    FaceAttributes = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#FaceAttributes", name: "FaceAttributes")
    FaceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#FaceDetail", name: "FaceDetail")
    FaceDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#FaceDetailList", name: "FaceDetailList")
    FaceDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#FaceDetection", name: "FaceDetection")
    FaceDetections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#FaceDetections", name: "FaceDetections")
    FaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#FaceId", name: "FaceId", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    FaceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#FaceIdList", name: "FaceIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    FaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#FaceList", name: "FaceList")
    FaceMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#FaceMatch", name: "FaceMatch")
    FaceMatchList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#FaceMatchList", name: "FaceMatchList")
    FaceModelVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#FaceModelVersionList", name: "FaceModelVersionList")
    FaceOccluded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#FaceOccluded", name: "FaceOccluded")
    FaceRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#FaceRecord", name: "FaceRecord")
    FaceRecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#FaceRecordList", name: "FaceRecordList")
    FaceSearchSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#FaceSearchSettings", name: "FaceSearchSettings")
    FaceSearchSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#FaceSearchSortBy", name: "FaceSearchSortBy")
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.rekognition#Float", name: "Float")
    FlowDefinitionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#FlowDefinitionArn", name: "FlowDefinitionArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Gender = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Gender", name: "Gender")
    GenderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#GenderType", name: "GenderType")
    GeneralLabelsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#GeneralLabelsFilterList", name: "GeneralLabelsFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    GeneralLabelsFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#GeneralLabelsFilterValue", name: "GeneralLabelsFilterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9àâèçñó'-_(). ]*$"})
    GeneralLabelsSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GeneralLabelsSettings", name: "GeneralLabelsSettings")
    Geometry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Geometry", name: "Geometry")
    GetCelebrityInfoRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetCelebrityInfoRequest", name: "GetCelebrityInfoRequest")
    GetCelebrityInfoResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetCelebrityInfoResponse", name: "GetCelebrityInfoResponse")
    GetCelebrityRecognitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetCelebrityRecognitionRequest", name: "GetCelebrityRecognitionRequest")
    GetCelebrityRecognitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetCelebrityRecognitionResponse", name: "GetCelebrityRecognitionResponse")
    GetContentModerationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetContentModerationRequest", name: "GetContentModerationRequest")
    GetContentModerationRequestMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetContentModerationRequestMetadata", name: "GetContentModerationRequestMetadata")
    GetContentModerationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetContentModerationResponse", name: "GetContentModerationResponse")
    GetFaceDetectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetFaceDetectionRequest", name: "GetFaceDetectionRequest")
    GetFaceDetectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetFaceDetectionResponse", name: "GetFaceDetectionResponse")
    GetFaceLivenessSessionResultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetFaceLivenessSessionResultsRequest", name: "GetFaceLivenessSessionResultsRequest")
    GetFaceLivenessSessionResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetFaceLivenessSessionResultsResponse", name: "GetFaceLivenessSessionResultsResponse")
    GetFaceSearchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetFaceSearchRequest", name: "GetFaceSearchRequest")
    GetFaceSearchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetFaceSearchResponse", name: "GetFaceSearchResponse")
    GetLabelDetectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetLabelDetectionRequest", name: "GetLabelDetectionRequest")
    GetLabelDetectionRequestMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetLabelDetectionRequestMetadata", name: "GetLabelDetectionRequestMetadata")
    GetLabelDetectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetLabelDetectionResponse", name: "GetLabelDetectionResponse")
    GetMediaAnalysisJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetMediaAnalysisJobRequest", name: "GetMediaAnalysisJobRequest")
    GetMediaAnalysisJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetMediaAnalysisJobResponse", name: "GetMediaAnalysisJobResponse")
    GetPersonTrackingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetPersonTrackingRequest", name: "GetPersonTrackingRequest")
    GetPersonTrackingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetPersonTrackingResponse", name: "GetPersonTrackingResponse")
    GetSegmentDetectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetSegmentDetectionRequest", name: "GetSegmentDetectionRequest")
    GetSegmentDetectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetSegmentDetectionResponse", name: "GetSegmentDetectionResponse")
    GetTextDetectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetTextDetectionRequest", name: "GetTextDetectionRequest")
    GetTextDetectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GetTextDetectionResponse", name: "GetTextDetectionResponse")
    GroundTruthBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.rekognition#GroundTruthBlob", name: "GroundTruthBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 5242880}})
    GroundTruthManifest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#GroundTruthManifest", name: "GroundTruthManifest")
    HasErrors = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.rekognition#HasErrors", name: "HasErrors")
    HumanLoopActivationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#HumanLoopActivationOutput", name: "HumanLoopActivationOutput")
    HumanLoopActivationReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#HumanLoopActivationReason", name: "HumanLoopActivationReason")
    HumanLoopActivationReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#HumanLoopActivationReasons", name: "HumanLoopActivationReasons", traits: {"smithy.api#length" => {"min" => 1}})
    HumanLoopArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#HumanLoopArn", name: "HumanLoopArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    HumanLoopConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#HumanLoopConfig", name: "HumanLoopConfig")
    HumanLoopDataAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#HumanLoopDataAttributes", name: "HumanLoopDataAttributes")
    HumanLoopName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#HumanLoopName", name: "HumanLoopName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9](-*[a-z0-9])*$"})
    HumanLoopQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#HumanLoopQuotaExceededException", name: "HumanLoopQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    IdempotentParameterMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#IdempotentParameterMismatchException", name: "IdempotentParameterMismatchException", traits: {"smithy.api#error" => "client"})
    Image = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Image", name: "Image")
    ImageBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.rekognition#ImageBlob", name: "ImageBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 5242880}})
    ImageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#ImageId", name: "ImageId", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ImageQuality = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ImageQuality", name: "ImageQuality")
    ImageTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ImageTooLargeException", name: "ImageTooLargeException", traits: {"smithy.api#error" => "client"})
    IndexFacesModelVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#IndexFacesModelVersion", name: "IndexFacesModelVersion", traits: {"smithy.api#pattern" => "^[0-9\\.]+$"})
    IndexFacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#IndexFacesRequest", name: "IndexFacesRequest")
    IndexFacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#IndexFacesResponse", name: "IndexFacesResponse")
    InferenceUnits = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#InferenceUnits", name: "InferenceUnits", traits: {"smithy.api#range" => {"min" => 1}})
    Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Instance", name: "Instance")
    Instances = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#Instances", name: "Instances")
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#InternalServerError", name: "InternalServerError", traits: {"smithy.api#error" => "server"})
    InvalidImageFormatException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#InvalidImageFormatException", name: "InvalidImageFormatException", traits: {"smithy.api#error" => "client"})
    InvalidManifestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#InvalidManifestException", name: "InvalidManifestException", traits: {"smithy.api#error" => "client"})
    InvalidPaginationTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#InvalidPaginationTokenException", name: "InvalidPaginationTokenException", traits: {"smithy.api#error" => "client"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client"})
    InvalidPolicyRevisionIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#InvalidPolicyRevisionIdException", name: "InvalidPolicyRevisionIdException", traits: {"smithy.api#error" => "client"})
    InvalidS3ObjectException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#InvalidS3ObjectException", name: "InvalidS3ObjectException", traits: {"smithy.api#error" => "client"})
    IsLabeled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.rekognition#IsLabeled", name: "IsLabeled")
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    JobTag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#JobTag", name: "JobTag", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-:+=\\/]+$"})
    KinesisDataArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#KinesisDataArn", name: "KinesisDataArn", traits: {"smithy.api#pattern" => "^(^arn:([a-z\\d-]+):kinesis:([a-z\\d-]+):\\d{12}:.+$)$"})
    KinesisDataStream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#KinesisDataStream", name: "KinesisDataStream")
    KinesisVideoArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#KinesisVideoArn", name: "KinesisVideoArn", traits: {"smithy.api#pattern" => "^(^arn:([a-z\\d-]+):kinesisvideo:([a-z\\d-]+):\\d{12}:.+$)$"})
    KinesisVideoStream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#KinesisVideoStream", name: "KinesisVideoStream")
    KinesisVideoStreamFragmentNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#KinesisVideoStreamFragmentNumber", name: "KinesisVideoStreamFragmentNumber", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9]+$"})
    KinesisVideoStreamStartSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#KinesisVideoStreamStartSelector", name: "KinesisVideoStreamStartSelector")
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,2048}$"})
    KnownGender = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#KnownGender", name: "KnownGender")
    KnownGenderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#KnownGenderType", name: "KnownGenderType")
    Label = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Label", name: "Label")
    LabelAlias = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#LabelAlias", name: "LabelAlias")
    LabelAliases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#LabelAliases", name: "LabelAliases")
    LabelCategories = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#LabelCategories", name: "LabelCategories")
    LabelCategory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#LabelCategory", name: "LabelCategory")
    LabelDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#LabelDetection", name: "LabelDetection")
    LabelDetectionAggregateBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#LabelDetectionAggregateBy", name: "LabelDetectionAggregateBy")
    LabelDetectionFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#LabelDetectionFeatureList", name: "LabelDetectionFeatureList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    LabelDetectionFeatureName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#LabelDetectionFeatureName", name: "LabelDetectionFeatureName")
    LabelDetectionSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#LabelDetectionSettings", name: "LabelDetectionSettings")
    LabelDetectionSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#LabelDetectionSortBy", name: "LabelDetectionSortBy")
    LabelDetections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#LabelDetections", name: "LabelDetections")
    Labels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#Labels", name: "Labels")
    Landmark = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Landmark", name: "Landmark")
    LandmarkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#LandmarkType", name: "LandmarkType")
    Landmarks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#Landmarks", name: "Landmarks")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListCollectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListCollectionsRequest", name: "ListCollectionsRequest")
    ListCollectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListCollectionsResponse", name: "ListCollectionsResponse")
    ListDatasetEntriesPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#ListDatasetEntriesPageSize", name: "ListDatasetEntriesPageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListDatasetEntriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListDatasetEntriesRequest", name: "ListDatasetEntriesRequest")
    ListDatasetEntriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListDatasetEntriesResponse", name: "ListDatasetEntriesResponse")
    ListDatasetLabelsPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#ListDatasetLabelsPageSize", name: "ListDatasetLabelsPageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListDatasetLabelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListDatasetLabelsRequest", name: "ListDatasetLabelsRequest")
    ListDatasetLabelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListDatasetLabelsResponse", name: "ListDatasetLabelsResponse")
    ListFacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListFacesRequest", name: "ListFacesRequest")
    ListFacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListFacesResponse", name: "ListFacesResponse")
    ListMediaAnalysisJobsPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#ListMediaAnalysisJobsPageSize", name: "ListMediaAnalysisJobsPageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListMediaAnalysisJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListMediaAnalysisJobsRequest", name: "ListMediaAnalysisJobsRequest")
    ListMediaAnalysisJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListMediaAnalysisJobsResponse", name: "ListMediaAnalysisJobsResponse")
    ListProjectPoliciesPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#ListProjectPoliciesPageSize", name: "ListProjectPoliciesPageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    ListProjectPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListProjectPoliciesRequest", name: "ListProjectPoliciesRequest")
    ListProjectPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListProjectPoliciesResponse", name: "ListProjectPoliciesResponse")
    ListStreamProcessorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListStreamProcessorsRequest", name: "ListStreamProcessorsRequest")
    ListStreamProcessorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListStreamProcessorsResponse", name: "ListStreamProcessorsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListUsersRequest", name: "ListUsersRequest")
    ListUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ListUsersResponse", name: "ListUsersResponse")
    LivenessImageBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.rekognition#LivenessImageBlob", name: "LivenessImageBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 204800}, "smithy.api#sensitive" => {}})
    LivenessOutputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#LivenessOutputConfig", name: "LivenessOutputConfig")
    LivenessS3KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#LivenessS3KeyPrefix", name: "LivenessS3KeyPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 950}, "smithy.api#pattern" => "^\\S*$"})
    LivenessSessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#LivenessSessionId", name: "LivenessSessionId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    LivenessSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#LivenessSessionStatus", name: "LivenessSessionStatus")
    MalformedPolicyDocumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#MalformedPolicyDocumentException", name: "MalformedPolicyDocumentException", traits: {"smithy.api#error" => "client"})
    MatchedUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#MatchedUser", name: "MatchedUser")
    MaxDurationInSecondsULong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#MaxDurationInSecondsULong", name: "MaxDurationInSecondsULong", traits: {"smithy.api#range" => {"min" => 1, "max" => 120}})
    MaxFaces = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#MaxFaces", name: "MaxFaces", traits: {"smithy.api#range" => {"min" => 1, "max" => 4096}})
    MaxFacesToIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#MaxFacesToIndex", name: "MaxFacesToIndex", traits: {"smithy.api#range" => {"min" => 1}})
    MaxPixelThreshold = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.rekognition#MaxPixelThreshold", name: "MaxPixelThreshold", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    MaxUserResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#MaxUserResults", name: "MaxUserResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    MediaAnalysisDetectModerationLabelsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#MediaAnalysisDetectModerationLabelsConfig", name: "MediaAnalysisDetectModerationLabelsConfig")
    MediaAnalysisInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#MediaAnalysisInput", name: "MediaAnalysisInput")
    MediaAnalysisJobDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#MediaAnalysisJobDescription", name: "MediaAnalysisJobDescription")
    MediaAnalysisJobDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#MediaAnalysisJobDescriptions", name: "MediaAnalysisJobDescriptions")
    MediaAnalysisJobFailureCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#MediaAnalysisJobFailureCode", name: "MediaAnalysisJobFailureCode")
    MediaAnalysisJobFailureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#MediaAnalysisJobFailureDetails", name: "MediaAnalysisJobFailureDetails")
    MediaAnalysisJobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#MediaAnalysisJobId", name: "MediaAnalysisJobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    MediaAnalysisJobName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#MediaAnalysisJobName", name: "MediaAnalysisJobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]+$"})
    MediaAnalysisJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#MediaAnalysisJobStatus", name: "MediaAnalysisJobStatus")
    MediaAnalysisManifestSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#MediaAnalysisManifestSummary", name: "MediaAnalysisManifestSummary")
    MediaAnalysisModelVersions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#MediaAnalysisModelVersions", name: "MediaAnalysisModelVersions")
    MediaAnalysisOperationsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#MediaAnalysisOperationsConfig", name: "MediaAnalysisOperationsConfig")
    MediaAnalysisOutputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#MediaAnalysisOutputConfig", name: "MediaAnalysisOutputConfig")
    MediaAnalysisResults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#MediaAnalysisResults", name: "MediaAnalysisResults")
    MediaAnalysisS3KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#MediaAnalysisS3KeyPrefix", name: "MediaAnalysisS3KeyPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 800}, "smithy.api#pattern" => "^\\S*$"})
    MinCoveragePercentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.rekognition#MinCoveragePercentage", name: "MinCoveragePercentage", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ModerationLabel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ModerationLabel", name: "ModerationLabel")
    ModerationLabels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#ModerationLabels", name: "ModerationLabels")
    MouthOpen = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#MouthOpen", name: "MouthOpen")
    Mustache = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Mustache", name: "Mustache")
    NotificationChannel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#NotificationChannel", name: "NotificationChannel")
    OrientationCorrection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#OrientationCorrection", name: "OrientationCorrection")
    OutputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#OutputConfig", name: "OutputConfig")
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#PageSize", name: "PageSize", traits: {"smithy.api#range" => {"min" => 0, "max" => 4096}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    Parent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Parent", name: "Parent")
    Parents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#Parents", name: "Parents")
    Percent = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.rekognition#Percent", name: "Percent", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    PersonDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#PersonDetail", name: "PersonDetail")
    PersonDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#PersonDetection", name: "PersonDetection")
    PersonDetections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#PersonDetections", name: "PersonDetections")
    PersonIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#PersonIndex", name: "PersonIndex", traits: {"smithy.api#default" => 0})
    PersonMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#PersonMatch", name: "PersonMatch")
    PersonMatches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#PersonMatches", name: "PersonMatches")
    PersonTrackingSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#PersonTrackingSortBy", name: "PersonTrackingSortBy")
    Point = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Point", name: "Point")
    Polygon = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#Polygon", name: "Polygon")
    Pose = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Pose", name: "Pose")
    ProjectArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#ProjectArn", name: "ProjectArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^(^arn:[a-z\\d-]+:rekognition:[a-z\\d-]+:\\d{12}:project\\/[a-zA-Z0-9_.\\-]{1,255}\\/[0-9]+$)$"})
    ProjectAutoUpdate = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#ProjectAutoUpdate", name: "ProjectAutoUpdate")
    ProjectDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ProjectDescription", name: "ProjectDescription")
    ProjectDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#ProjectDescriptions", name: "ProjectDescriptions")
    ProjectName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#ProjectName", name: "ProjectName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]+$"})
    ProjectNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#ProjectNames", name: "ProjectNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ProjectPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#ProjectPolicies", name: "ProjectPolicies")
    ProjectPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ProjectPolicy", name: "ProjectPolicy")
    ProjectPolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#ProjectPolicyDocument", name: "ProjectPolicyDocument", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    ProjectPolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#ProjectPolicyName", name: "ProjectPolicyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]+$"})
    ProjectPolicyRevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#ProjectPolicyRevisionId", name: "ProjectPolicyRevisionId", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Fa-f]+$"})
    ProjectStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#ProjectStatus", name: "ProjectStatus")
    ProjectVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#ProjectVersionArn", name: "ProjectVersionArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^(^arn:[a-z\\d-]+:rekognition:[a-z\\d-]+:\\d{12}:project\\/[a-zA-Z0-9_.\\-]{1,255}\\/version\\/[a-zA-Z0-9_.\\-]{1,255}\\/[0-9]+$)$"})
    ProjectVersionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ProjectVersionDescription", name: "ProjectVersionDescription")
    ProjectVersionDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#ProjectVersionDescriptions", name: "ProjectVersionDescriptions")
    ProjectVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#ProjectVersionId", name: "ProjectVersionId", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^(^arn:[a-z\\d-]+:rekognition:[a-z\\d-]+:\\d{12}:project\\/[a-zA-Z0-9_.\\-]{1,255}\\/version\\/[a-zA-Z0-9_.\\-]{1,255}\\/[0-9]+$)$"})
    ProjectVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#ProjectVersionStatus", name: "ProjectVersionStatus")
    ProjectVersionsPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#ProjectVersionsPageSize", name: "ProjectVersionsPageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ProjectsPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#ProjectsPageSize", name: "ProjectsPageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ProtectiveEquipmentBodyPart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ProtectiveEquipmentBodyPart", name: "ProtectiveEquipmentBodyPart")
    ProtectiveEquipmentPerson = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ProtectiveEquipmentPerson", name: "ProtectiveEquipmentPerson")
    ProtectiveEquipmentPersonIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#ProtectiveEquipmentPersonIds", name: "ProtectiveEquipmentPersonIds")
    ProtectiveEquipmentPersons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#ProtectiveEquipmentPersons", name: "ProtectiveEquipmentPersons")
    ProtectiveEquipmentSummarizationAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ProtectiveEquipmentSummarizationAttributes", name: "ProtectiveEquipmentSummarizationAttributes")
    ProtectiveEquipmentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ProtectiveEquipmentSummary", name: "ProtectiveEquipmentSummary")
    ProtectiveEquipmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#ProtectiveEquipmentType", name: "ProtectiveEquipmentType")
    ProtectiveEquipmentTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#ProtectiveEquipmentTypes", name: "ProtectiveEquipmentTypes")
    ProvisionedThroughputExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ProvisionedThroughputExceededException", name: "ProvisionedThroughputExceededException", traits: {"smithy.api#error" => "client"})
    PutProjectPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#PutProjectPolicyRequest", name: "PutProjectPolicyRequest")
    PutProjectPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#PutProjectPolicyResponse", name: "PutProjectPolicyResponse")
    QualityFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#QualityFilter", name: "QualityFilter")
    QueryString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#QueryString", name: "QueryString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    Reason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#Reason", name: "Reason")
    Reasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#Reasons", name: "Reasons")
    RecognizeCelebritiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#RecognizeCelebritiesRequest", name: "RecognizeCelebritiesRequest")
    RecognizeCelebritiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#RecognizeCelebritiesResponse", name: "RecognizeCelebritiesResponse")
    RegionOfInterest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#RegionOfInterest", name: "RegionOfInterest")
    RegionsOfInterest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#RegionsOfInterest", name: "RegionsOfInterest", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    RekognitionUniqueId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#RekognitionUniqueId", name: "RekognitionUniqueId", traits: {"smithy.api#pattern" => "^[0-9A-Za-z]*$"})
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceNotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ResourceNotReadyException", name: "ResourceNotReadyException", traits: {"smithy.api#error" => "client"})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#RoleArn", name: "RoleArn", traits: {"smithy.api#pattern" => "^arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]*$"})
    S3Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#S3Destination", name: "S3Destination")
    S3KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#S3KeyPrefix", name: "S3KeyPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    S3Object = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#S3Object", name: "S3Object")
    S3ObjectName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#S3ObjectName", name: "S3ObjectName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    S3ObjectVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#S3ObjectVersion", name: "S3ObjectVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    SNSTopicArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#SNSTopicArn", name: "SNSTopicArn", traits: {"smithy.api#pattern" => "^(^arn:aws:sns:.*:\\w{12}:.+$)$"})
    SearchFacesByImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#SearchFacesByImageRequest", name: "SearchFacesByImageRequest")
    SearchFacesByImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#SearchFacesByImageResponse", name: "SearchFacesByImageResponse")
    SearchFacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#SearchFacesRequest", name: "SearchFacesRequest")
    SearchFacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#SearchFacesResponse", name: "SearchFacesResponse")
    SearchUsersByImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#SearchUsersByImageRequest", name: "SearchUsersByImageRequest")
    SearchUsersByImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#SearchUsersByImageResponse", name: "SearchUsersByImageResponse")
    SearchUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#SearchUsersRequest", name: "SearchUsersRequest")
    SearchUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#SearchUsersResponse", name: "SearchUsersResponse")
    SearchedFace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#SearchedFace", name: "SearchedFace")
    SearchedFaceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#SearchedFaceDetails", name: "SearchedFaceDetails")
    SearchedUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#SearchedUser", name: "SearchedUser")
    SegmentConfidence = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.rekognition#SegmentConfidence", name: "SegmentConfidence", traits: {"smithy.api#range" => {"min" => 50, "max" => 100}})
    SegmentDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#SegmentDetection", name: "SegmentDetection")
    SegmentDetections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#SegmentDetections", name: "SegmentDetections")
    SegmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#SegmentType", name: "SegmentType")
    SegmentTypeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#SegmentTypeInfo", name: "SegmentTypeInfo")
    SegmentTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#SegmentTypes", name: "SegmentTypes", traits: {"smithy.api#length" => {"min" => 1}})
    SegmentTypesInfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#SegmentTypesInfo", name: "SegmentTypesInfo")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client"})
    SessionNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#SessionNotFoundException", name: "SessionNotFoundException", traits: {"smithy.api#error" => "client"})
    ShotSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ShotSegment", name: "ShotSegment")
    Smile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Smile", name: "Smile")
    StartCelebrityRecognitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartCelebrityRecognitionRequest", name: "StartCelebrityRecognitionRequest")
    StartCelebrityRecognitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartCelebrityRecognitionResponse", name: "StartCelebrityRecognitionResponse")
    StartContentModerationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartContentModerationRequest", name: "StartContentModerationRequest")
    StartContentModerationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartContentModerationResponse", name: "StartContentModerationResponse")
    StartFaceDetectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartFaceDetectionRequest", name: "StartFaceDetectionRequest")
    StartFaceDetectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartFaceDetectionResponse", name: "StartFaceDetectionResponse")
    StartFaceSearchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartFaceSearchRequest", name: "StartFaceSearchRequest")
    StartFaceSearchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartFaceSearchResponse", name: "StartFaceSearchResponse")
    StartLabelDetectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartLabelDetectionRequest", name: "StartLabelDetectionRequest")
    StartLabelDetectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartLabelDetectionResponse", name: "StartLabelDetectionResponse")
    StartMediaAnalysisJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartMediaAnalysisJobRequest", name: "StartMediaAnalysisJobRequest")
    StartMediaAnalysisJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartMediaAnalysisJobResponse", name: "StartMediaAnalysisJobResponse")
    StartPersonTrackingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartPersonTrackingRequest", name: "StartPersonTrackingRequest")
    StartPersonTrackingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartPersonTrackingResponse", name: "StartPersonTrackingResponse")
    StartProjectVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartProjectVersionRequest", name: "StartProjectVersionRequest")
    StartProjectVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartProjectVersionResponse", name: "StartProjectVersionResponse")
    StartSegmentDetectionFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartSegmentDetectionFilters", name: "StartSegmentDetectionFilters")
    StartSegmentDetectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartSegmentDetectionRequest", name: "StartSegmentDetectionRequest")
    StartSegmentDetectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartSegmentDetectionResponse", name: "StartSegmentDetectionResponse")
    StartShotDetectionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartShotDetectionFilter", name: "StartShotDetectionFilter")
    StartStreamProcessorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartStreamProcessorRequest", name: "StartStreamProcessorRequest")
    StartStreamProcessorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartStreamProcessorResponse", name: "StartStreamProcessorResponse")
    StartStreamProcessorSessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#StartStreamProcessorSessionId", name: "StartStreamProcessorSessionId")
    StartTechnicalCueDetectionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartTechnicalCueDetectionFilter", name: "StartTechnicalCueDetectionFilter")
    StartTextDetectionFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartTextDetectionFilters", name: "StartTextDetectionFilters")
    StartTextDetectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartTextDetectionRequest", name: "StartTextDetectionRequest")
    StartTextDetectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StartTextDetectionResponse", name: "StartTextDetectionResponse")
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#StatusMessage", name: "StatusMessage")
    StopProjectVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StopProjectVersionRequest", name: "StopProjectVersionRequest")
    StopProjectVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StopProjectVersionResponse", name: "StopProjectVersionResponse")
    StopStreamProcessorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StopStreamProcessorRequest", name: "StopStreamProcessorRequest")
    StopStreamProcessorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StopStreamProcessorResponse", name: "StopStreamProcessorResponse")
    StreamProcessingStartSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StreamProcessingStartSelector", name: "StreamProcessingStartSelector")
    StreamProcessingStopSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StreamProcessingStopSelector", name: "StreamProcessingStopSelector")
    StreamProcessor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StreamProcessor", name: "StreamProcessor")
    StreamProcessorArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#StreamProcessorArn", name: "StreamProcessorArn", traits: {"smithy.api#pattern" => "^(^arn:[a-z\\d-]+:rekognition:[a-z\\d-]+:\\d{12}:streamprocessor\\/.+$)$"})
    StreamProcessorDataSharingPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StreamProcessorDataSharingPreference", name: "StreamProcessorDataSharingPreference")
    StreamProcessorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StreamProcessorInput", name: "StreamProcessorInput")
    StreamProcessorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#StreamProcessorList", name: "StreamProcessorList")
    StreamProcessorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#StreamProcessorName", name: "StreamProcessorName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]+$"})
    StreamProcessorNotificationChannel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StreamProcessorNotificationChannel", name: "StreamProcessorNotificationChannel")
    StreamProcessorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StreamProcessorOutput", name: "StreamProcessorOutput")
    StreamProcessorParameterToDelete = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#StreamProcessorParameterToDelete", name: "StreamProcessorParameterToDelete")
    StreamProcessorParametersToDelete = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#StreamProcessorParametersToDelete", name: "StreamProcessorParametersToDelete")
    StreamProcessorSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StreamProcessorSettings", name: "StreamProcessorSettings")
    StreamProcessorSettingsForUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#StreamProcessorSettingsForUpdate", name: "StreamProcessorSettingsForUpdate")
    StreamProcessorStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#StreamProcessorStatus", name: "StreamProcessorStatus")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#String", name: "String")
    Summary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Summary", name: "Summary")
    Sunglasses = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Sunglasses", name: "Sunglasses")
    SynthesizedJsonHumanLoopActivationConditionsEvaluationResults = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#SynthesizedJsonHumanLoopActivationConditionsEvaluationResults", name: "SynthesizedJsonHumanLoopActivationConditionsEvaluationResults", traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}, "smithy.api#mediaType" => "application/json"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.rekognition#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TechnicalCueSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#TechnicalCueSegment", name: "TechnicalCueSegment")
    TechnicalCueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#TechnicalCueType", name: "TechnicalCueType")
    TestingData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#TestingData", name: "TestingData")
    TestingDataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#TestingDataResult", name: "TestingDataResult")
    TextDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#TextDetection", name: "TextDetection")
    TextDetectionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#TextDetectionList", name: "TextDetectionList")
    TextDetectionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#TextDetectionResult", name: "TextDetectionResult")
    TextDetectionResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#TextDetectionResults", name: "TextDetectionResults")
    TextTypes = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#TextTypes", name: "TextTypes")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "server"})
    Timecode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#Timecode", name: "Timecode")
    Timestamp = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#Timestamp", name: "Timestamp", traits: {"smithy.api#default" => 0})
    TrainingData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#TrainingData", name: "TrainingData")
    TrainingDataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#TrainingDataResult", name: "TrainingDataResult")
    UInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#UInteger", name: "UInteger", traits: {"smithy.api#range" => {"min" => 0}})
    ULong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rekognition#ULong", name: "ULong", traits: {"smithy.api#range" => {"min" => 0}})
    UnindexedFace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#UnindexedFace", name: "UnindexedFace")
    UnindexedFaces = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#UnindexedFaces", name: "UnindexedFaces")
    UnsearchedFace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#UnsearchedFace", name: "UnsearchedFace")
    UnsearchedFaceReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#UnsearchedFaceReason", name: "UnsearchedFaceReason")
    UnsearchedFaceReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#UnsearchedFaceReasons", name: "UnsearchedFaceReasons")
    UnsearchedFacesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#UnsearchedFacesList", name: "UnsearchedFacesList")
    UnsuccessfulFaceAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#UnsuccessfulFaceAssociation", name: "UnsuccessfulFaceAssociation")
    UnsuccessfulFaceAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#UnsuccessfulFaceAssociationList", name: "UnsuccessfulFaceAssociationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    UnsuccessfulFaceAssociationReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#UnsuccessfulFaceAssociationReason", name: "UnsuccessfulFaceAssociationReason")
    UnsuccessfulFaceAssociationReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#UnsuccessfulFaceAssociationReasons", name: "UnsuccessfulFaceAssociationReasons")
    UnsuccessfulFaceDeletion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#UnsuccessfulFaceDeletion", name: "UnsuccessfulFaceDeletion")
    UnsuccessfulFaceDeletionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#UnsuccessfulFaceDeletionReason", name: "UnsuccessfulFaceDeletionReason")
    UnsuccessfulFaceDeletionReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#UnsuccessfulFaceDeletionReasons", name: "UnsuccessfulFaceDeletionReasons")
    UnsuccessfulFaceDeletionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#UnsuccessfulFaceDeletionsList", name: "UnsuccessfulFaceDeletionsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    UnsuccessfulFaceDisassociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#UnsuccessfulFaceDisassociation", name: "UnsuccessfulFaceDisassociation")
    UnsuccessfulFaceDisassociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#UnsuccessfulFaceDisassociationList", name: "UnsuccessfulFaceDisassociationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    UnsuccessfulFaceDisassociationReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#UnsuccessfulFaceDisassociationReason", name: "UnsuccessfulFaceDisassociationReason")
    UnsuccessfulFaceDisassociationReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#UnsuccessfulFaceDisassociationReasons", name: "UnsuccessfulFaceDisassociationReasons")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateDatasetEntriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#UpdateDatasetEntriesRequest", name: "UpdateDatasetEntriesRequest")
    UpdateDatasetEntriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#UpdateDatasetEntriesResponse", name: "UpdateDatasetEntriesResponse")
    UpdateStreamProcessorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#UpdateStreamProcessorRequest", name: "UpdateStreamProcessorRequest")
    UpdateStreamProcessorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#UpdateStreamProcessorResponse", name: "UpdateStreamProcessorResponse")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#Url", name: "Url")
    Urls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#Urls", name: "Urls", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#User", name: "User")
    UserFaceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#UserFaceIdList", name: "UserFaceIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#UserId", name: "UserId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-:]+$"})
    UserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#UserList", name: "UserList", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    UserMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#UserMatch", name: "UserMatch")
    UserMatchList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#UserMatchList", name: "UserMatchList", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    UserStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#UserStatus", name: "UserStatus")
    ValidationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#ValidationData", name: "ValidationData")
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#Version", name: "Version", traits: {"smithy.api#length" => {"min" => 5, "max" => 11}, "smithy.api#pattern" => "^(0|[1-9]\\d{0,2})\\.(0|[1-9]\\d{0,2})\\.(0|[1-9]\\d{0,2})$"})
    VersionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#VersionDescription", name: "VersionDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-_. ()':,;?]+$"})
    VersionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rekognition#VersionName", name: "VersionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]+$"})
    VersionNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#VersionNames", name: "VersionNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Versions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Versions", name: "Versions")
    Video = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#Video", name: "Video")
    VideoColorRange = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#VideoColorRange", name: "VideoColorRange")
    VideoJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rekognition#VideoJobStatus", name: "VideoJobStatus")
    VideoMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#VideoMetadata", name: "VideoMetadata")
    VideoMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rekognition#VideoMetadataList", name: "VideoMetadataList")
    VideoTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rekognition#VideoTooLargeException", name: "VideoTooLargeException", traits: {"smithy.api#error" => "client"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    AccessDeniedException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    AccessDeniedException.type = Types::AccessDeniedException
    AgeRange.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "Low"))
    AgeRange.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "High"))
    AgeRange.type = Types::AgeRange
    Asset.add_member(:ground_truth_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroundTruthManifest, location_name: "GroundTruthManifest"))
    Asset.type = Types::Asset
    Assets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Asset)
    AssociateFacesRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    AssociateFacesRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: "UserId", traits: {"smithy.api#required" => {}}))
    AssociateFacesRequest.add_member(:face_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserFaceIdList, location_name: "FaceIds", traits: {"smithy.api#required" => {}}))
    AssociateFacesRequest.add_member(:user_match_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "UserMatchThreshold"))
    AssociateFacesRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateFacesRequest.type = Types::AssociateFacesRequest
    AssociateFacesResponse.add_member(:associated_faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedFacesList, location_name: "AssociatedFaces"))
    AssociateFacesResponse.add_member(:unsuccessful_face_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceAssociationList, location_name: "UnsuccessfulFaceAssociations"))
    AssociateFacesResponse.add_member(:user_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserStatus, location_name: "UserStatus"))
    AssociateFacesResponse.type = Types::AssociateFacesResponse
    AssociatedFace.add_member(:face_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    AssociatedFace.type = Types::AssociatedFace
    AssociatedFacesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedFace)
    Attribute.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    Attribute.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    Attribute.add_member(:age_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AGE_RANGE", traits: {"smithy.api#enumValue" => "AGE_RANGE"}))
    Attribute.add_member(:beard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BEARD", traits: {"smithy.api#enumValue" => "BEARD"}))
    Attribute.add_member(:emotions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EMOTIONS", traits: {"smithy.api#enumValue" => "EMOTIONS"}))
    Attribute.add_member(:eye_direction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EYE_DIRECTION", traits: {"smithy.api#enumValue" => "EYE_DIRECTION"}))
    Attribute.add_member(:eyeglasses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EYEGLASSES", traits: {"smithy.api#enumValue" => "EYEGLASSES"}))
    Attribute.add_member(:eyes_open, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EYES_OPEN", traits: {"smithy.api#enumValue" => "EYES_OPEN"}))
    Attribute.add_member(:gender, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENDER", traits: {"smithy.api#enumValue" => "GENDER"}))
    Attribute.add_member(:mouth_open, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MOUTH_OPEN", traits: {"smithy.api#enumValue" => "MOUTH_OPEN"}))
    Attribute.add_member(:mustache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MUSTACHE", traits: {"smithy.api#enumValue" => "MUSTACHE"}))
    Attribute.add_member(:face_occluded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FACE_OCCLUDED", traits: {"smithy.api#enumValue" => "FACE_OCCLUDED"}))
    Attribute.add_member(:smile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SMILE", traits: {"smithy.api#enumValue" => "SMILE"}))
    Attribute.add_member(:sunglasses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUNGLASSES", traits: {"smithy.api#enumValue" => "SUNGLASSES"}))
    Attributes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute)
    AudioMetadata.add_member(:codec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Codec"))
    AudioMetadata.add_member(:duration_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "DurationMillis"))
    AudioMetadata.add_member(:sample_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "SampleRate"))
    AudioMetadata.add_member(:number_of_channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "NumberOfChannels"))
    AudioMetadata.type = Types::AudioMetadata
    AudioMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioMetadata)
    AuditImage.add_member(:bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LivenessImageBlob, location_name: "Bytes"))
    AuditImage.add_member(:s3_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    AuditImage.add_member(:bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    AuditImage.type = Types::AuditImage
    AuditImages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditImage)
    Beard.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Value", traits: {"smithy.api#default" => false}))
    Beard.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Beard.type = Types::Beard
    BlackFrame.add_member(:max_pixel_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPixelThreshold, location_name: "MaxPixelThreshold"))
    BlackFrame.add_member(:min_coverage_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinCoveragePercentage, location_name: "MinCoveragePercentage"))
    BlackFrame.type = Types::BlackFrame
    BodyPart.add_member(:face, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FACE", traits: {"smithy.api#enumValue" => "FACE"}))
    BodyPart.add_member(:head, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEAD", traits: {"smithy.api#enumValue" => "HEAD"}))
    BodyPart.add_member(:left_hand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LEFT_HAND", traits: {"smithy.api#enumValue" => "LEFT_HAND"}))
    BodyPart.add_member(:right_hand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RIGHT_HAND", traits: {"smithy.api#enumValue" => "RIGHT_HAND"}))
    BodyParts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentBodyPart)
    BoundingBox.add_member(:width, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "Width"))
    BoundingBox.add_member(:height, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "Height"))
    BoundingBox.add_member(:left, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "Left"))
    BoundingBox.add_member(:top, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "Top"))
    BoundingBox.type = Types::BoundingBox
    Celebrity.add_member(:urls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urls, location_name: "Urls"))
    Celebrity.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Celebrity.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RekognitionUniqueId, location_name: "Id"))
    Celebrity.add_member(:face, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparedFace, location_name: "Face"))
    Celebrity.add_member(:match_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "MatchConfidence"))
    Celebrity.add_member(:known_gender, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnownGender, location_name: "KnownGender"))
    Celebrity.type = Types::Celebrity
    CelebrityDetail.add_member(:urls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urls, location_name: "Urls"))
    CelebrityDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    CelebrityDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RekognitionUniqueId, location_name: "Id"))
    CelebrityDetail.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    CelebrityDetail.add_member(:bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    CelebrityDetail.add_member(:face, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail, location_name: "Face"))
    CelebrityDetail.add_member(:known_gender, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnownGender, location_name: "KnownGender"))
    CelebrityDetail.type = Types::CelebrityDetail
    CelebrityList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Celebrity)
    CelebrityRecognition.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp", traits: {"smithy.api#default" => 0}))
    CelebrityRecognition.add_member(:celebrity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CelebrityDetail, location_name: "Celebrity"))
    CelebrityRecognition.type = Types::CelebrityRecognition
    CelebrityRecognitionSortBy.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ID", traits: {"smithy.api#enumValue" => "ID"}))
    CelebrityRecognitionSortBy.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    CelebrityRecognitions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CelebrityRecognition)
    Challenge.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    Challenge.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "Version", traits: {"smithy.api#required" => {}}))
    Challenge.type = Types::Challenge
    ChallengePreference.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    ChallengePreference.add_member(:versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Versions, location_name: "Versions"))
    ChallengePreference.type = Types::ChallengePreference
    ChallengePreferences.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengePreference)
    ChallengeType.add_member(:face_movement_and_light_challenge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FACE_MOVEMENT_AND_LIGHT_CHALLENGE", traits: {"smithy.api#enumValue" => "FaceMovementAndLightChallenge"}))
    ChallengeType.add_member(:face_movement_challenge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FACE_MOVEMENT_CHALLENGE", traits: {"smithy.api#enumValue" => "FaceMovementChallenge"}))
    CollectionIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId)
    CompareFacesMatch.add_member(:similarity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Similarity"))
    CompareFacesMatch.add_member(:face, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparedFace, location_name: "Face"))
    CompareFacesMatch.type = Types::CompareFacesMatch
    CompareFacesMatchList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompareFacesMatch)
    CompareFacesRequest.add_member(:source_image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: "SourceImage", traits: {"smithy.api#required" => {}}))
    CompareFacesRequest.add_member(:target_image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: "TargetImage", traits: {"smithy.api#required" => {}}))
    CompareFacesRequest.add_member(:similarity_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "SimilarityThreshold"))
    CompareFacesRequest.add_member(:quality_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualityFilter, location_name: "QualityFilter"))
    CompareFacesRequest.type = Types::CompareFacesRequest
    CompareFacesResponse.add_member(:source_image_face, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparedSourceImageFace, location_name: "SourceImageFace"))
    CompareFacesResponse.add_member(:face_matches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompareFacesMatchList, location_name: "FaceMatches"))
    CompareFacesResponse.add_member(:unmatched_faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompareFacesUnmatchList, location_name: "UnmatchedFaces"))
    CompareFacesResponse.add_member(:source_image_orientation_correction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "SourceImageOrientationCorrection"))
    CompareFacesResponse.add_member(:target_image_orientation_correction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "TargetImageOrientationCorrection"))
    CompareFacesResponse.type = Types::CompareFacesResponse
    CompareFacesUnmatchList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparedFace)
    ComparedFace.add_member(:bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    ComparedFace.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ComparedFace.add_member(:landmarks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Landmarks, location_name: "Landmarks"))
    ComparedFace.add_member(:pose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pose, location_name: "Pose"))
    ComparedFace.add_member(:quality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageQuality, location_name: "Quality"))
    ComparedFace.add_member(:emotions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Emotions, location_name: "Emotions"))
    ComparedFace.add_member(:smile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Smile, location_name: "Smile"))
    ComparedFace.type = Types::ComparedFace
    ComparedFaceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparedFace)
    ComparedSourceImageFace.add_member(:bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    ComparedSourceImageFace.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ComparedSourceImageFace.type = Types::ComparedSourceImageFace
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ConflictException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    ConflictException.type = Types::ConflictException
    ConnectedHomeLabels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectedHomeLabel)
    ConnectedHomeSettings.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectedHomeLabels, location_name: "Labels", traits: {"smithy.api#required" => {}}))
    ConnectedHomeSettings.add_member(:min_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    ConnectedHomeSettings.type = Types::ConnectedHomeSettings
    ConnectedHomeSettingsForUpdate.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectedHomeLabels, location_name: "Labels"))
    ConnectedHomeSettingsForUpdate.add_member(:min_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    ConnectedHomeSettingsForUpdate.type = Types::ConnectedHomeSettingsForUpdate
    ContentClassifier.add_member(:free_of_personally_identifiable_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION", traits: {"smithy.api#enumValue" => "FreeOfPersonallyIdentifiableInformation"}))
    ContentClassifier.add_member(:free_of_adult_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FREE_OF_ADULT_CONTENT", traits: {"smithy.api#enumValue" => "FreeOfAdultContent"}))
    ContentClassifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentClassifier)
    ContentModerationAggregateBy.add_member(:timestamps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMESTAMPS", traits: {"smithy.api#enumValue" => "TIMESTAMPS"}))
    ContentModerationAggregateBy.add_member(:segments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEGMENTS", traits: {"smithy.api#enumValue" => "SEGMENTS"}))
    ContentModerationDetection.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp", traits: {"smithy.api#default" => 0}))
    ContentModerationDetection.add_member(:moderation_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModerationLabel, location_name: "ModerationLabel"))
    ContentModerationDetection.add_member(:start_timestamp_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "StartTimestampMillis"))
    ContentModerationDetection.add_member(:end_timestamp_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "EndTimestampMillis"))
    ContentModerationDetection.add_member(:duration_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "DurationMillis"))
    ContentModerationDetection.add_member(:content_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTypes, location_name: "ContentTypes"))
    ContentModerationDetection.type = Types::ContentModerationDetection
    ContentModerationDetections.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentModerationDetection)
    ContentModerationSortBy.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    ContentModerationSortBy.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    ContentType.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ContentType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ContentType.type = Types::ContentType
    ContentTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType)
    CopyProjectVersionRequest.add_member(:source_project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: "SourceProjectArn", traits: {"smithy.api#required" => {}}))
    CopyProjectVersionRequest.add_member(:source_project_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: "SourceProjectVersionArn", traits: {"smithy.api#required" => {}}))
    CopyProjectVersionRequest.add_member(:destination_project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: "DestinationProjectArn", traits: {"smithy.api#required" => {}}))
    CopyProjectVersionRequest.add_member(:version_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: "VersionName", traits: {"smithy.api#required" => {}}))
    CopyProjectVersionRequest.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfig, location_name: "OutputConfig", traits: {"smithy.api#required" => {}}))
    CopyProjectVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CopyProjectVersionRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CopyProjectVersionRequest.type = Types::CopyProjectVersionRequest
    CopyProjectVersionResponse.add_member(:project_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: "ProjectVersionArn"))
    CopyProjectVersionResponse.type = Types::CopyProjectVersionResponse
    CoversBodyPart.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    CoversBodyPart.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Value", traits: {"smithy.api#default" => false}))
    CoversBodyPart.type = Types::CoversBodyPart
    CreateCollectionRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    CreateCollectionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateCollectionRequest.type = Types::CreateCollectionRequest
    CreateCollectionResponse.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "StatusCode"))
    CreateCollectionResponse.add_member(:collection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CollectionArn"))
    CreateCollectionResponse.add_member(:face_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    CreateCollectionResponse.type = Types::CreateCollectionResponse
    CreateDatasetRequest.add_member(:dataset_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSource, location_name: "DatasetSource"))
    CreateDatasetRequest.add_member(:dataset_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: "DatasetType", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn"))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateFaceLivenessSessionRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateFaceLivenessSessionRequest.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFaceLivenessSessionRequestSettings, location_name: "Settings"))
    CreateFaceLivenessSessionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    CreateFaceLivenessSessionRequest.type = Types::CreateFaceLivenessSessionRequest
    CreateFaceLivenessSessionRequestSettings.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LivenessOutputConfig, location_name: "OutputConfig"))
    CreateFaceLivenessSessionRequestSettings.add_member(:audit_images_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditImagesLimit, location_name: "AuditImagesLimit"))
    CreateFaceLivenessSessionRequestSettings.add_member(:challenge_preferences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengePreferences, location_name: "ChallengePreferences"))
    CreateFaceLivenessSessionRequestSettings.type = Types::CreateFaceLivenessSessionRequestSettings
    CreateFaceLivenessSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LivenessSessionId, location_name: "SessionId", traits: {"smithy.api#required" => {}}))
    CreateFaceLivenessSessionResponse.type = Types::CreateFaceLivenessSessionResponse
    CreateProjectRequest.add_member(:project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: "ProjectName", traits: {"smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeature, location_name: "Feature"))
    CreateProjectRequest.add_member(:auto_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectAutoUpdate, location_name: "AutoUpdate"))
    CreateProjectRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateProjectRequest.type = Types::CreateProjectRequest
    CreateProjectResponse.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn"))
    CreateProjectResponse.type = Types::CreateProjectResponse
    CreateProjectVersionRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn", traits: {"smithy.api#required" => {}}))
    CreateProjectVersionRequest.add_member(:version_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: "VersionName", traits: {"smithy.api#required" => {}}))
    CreateProjectVersionRequest.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfig, location_name: "OutputConfig", traits: {"smithy.api#required" => {}}))
    CreateProjectVersionRequest.add_member(:training_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingData, location_name: "TrainingData"))
    CreateProjectVersionRequest.add_member(:testing_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestingData, location_name: "TestingData"))
    CreateProjectVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateProjectVersionRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateProjectVersionRequest.add_member(:version_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionDescription, location_name: "VersionDescription"))
    CreateProjectVersionRequest.add_member(:feature_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeatureConfig, location_name: "FeatureConfig"))
    CreateProjectVersionRequest.type = Types::CreateProjectVersionRequest
    CreateProjectVersionResponse.add_member(:project_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: "ProjectVersionArn"))
    CreateProjectVersionResponse.type = Types::CreateProjectVersionResponse
    CreateStreamProcessorRequest.add_member(:input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorInput, location_name: "Input", traits: {"smithy.api#required" => {}}))
    CreateStreamProcessorRequest.add_member(:output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorOutput, location_name: "Output", traits: {"smithy.api#required" => {}}))
    CreateStreamProcessorRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateStreamProcessorRequest.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorSettings, location_name: "Settings", traits: {"smithy.api#required" => {}}))
    CreateStreamProcessorRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateStreamProcessorRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateStreamProcessorRequest.add_member(:notification_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorNotificationChannel, location_name: "NotificationChannel"))
    CreateStreamProcessorRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateStreamProcessorRequest.add_member(:regions_of_interest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: "RegionsOfInterest"))
    CreateStreamProcessorRequest.add_member(:data_sharing_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorDataSharingPreference, location_name: "DataSharingPreference"))
    CreateStreamProcessorRequest.type = Types::CreateStreamProcessorRequest
    CreateStreamProcessorResponse.add_member(:stream_processor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorArn, location_name: "StreamProcessorArn"))
    CreateStreamProcessorResponse.type = Types::CreateStreamProcessorResponse
    CreateUserRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: "UserId", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.type = Types::CreateUserResponse
    CustomLabel.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    CustomLabel.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    CustomLabel.add_member(:geometry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Geometry, location_name: "Geometry"))
    CustomLabel.type = Types::CustomLabel
    CustomLabels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLabel)
    CustomizationFeature.add_member(:content_moderation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTENT_MODERATION", traits: {"smithy.api#enumValue" => "CONTENT_MODERATION"}))
    CustomizationFeature.add_member(:custom_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM_LABELS", traits: {"smithy.api#enumValue" => "CUSTOM_LABELS"}))
    CustomizationFeatureConfig.add_member(:content_moderation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeatureContentModerationConfig, location_name: "ContentModeration"))
    CustomizationFeatureConfig.type = Types::CustomizationFeatureConfig
    CustomizationFeatureContentModerationConfig.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "ConfidenceThreshold"))
    CustomizationFeatureContentModerationConfig.type = Types::CustomizationFeatureContentModerationConfig
    CustomizationFeatures.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeature)
    DatasetChanges.add_member(:ground_truth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroundTruthBlob, location_name: "GroundTruth", traits: {"smithy.api#required" => {}}))
    DatasetChanges.type = Types::DatasetChanges
    DatasetDescription.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    DatasetDescription.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdatedTimestamp"))
    DatasetDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "Status"))
    DatasetDescription.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    DatasetDescription.add_member(:status_message_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatusMessageCode, location_name: "StatusMessageCode"))
    DatasetDescription.add_member(:dataset_stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStats, location_name: "DatasetStats"))
    DatasetDescription.type = Types::DatasetDescription
    DatasetEntries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetEntry)
    DatasetLabelDescription.add_member(:label_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetLabel, location_name: "LabelName"))
    DatasetLabelDescription.add_member(:label_stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetLabelStats, location_name: "LabelStats"))
    DatasetLabelDescription.type = Types::DatasetLabelDescription
    DatasetLabelDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetLabelDescription)
    DatasetLabelStats.add_member(:entry_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "EntryCount"))
    DatasetLabelStats.add_member(:bounding_box_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "BoundingBoxCount"))
    DatasetLabelStats.type = Types::DatasetLabelStats
    DatasetLabels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetLabel)
    DatasetMetadata.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    DatasetMetadata.add_member(:dataset_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: "DatasetType"))
    DatasetMetadata.add_member(:dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn"))
    DatasetMetadata.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "Status"))
    DatasetMetadata.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    DatasetMetadata.add_member(:status_message_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatusMessageCode, location_name: "StatusMessageCode"))
    DatasetMetadata.type = Types::DatasetMetadata
    DatasetMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetMetadata)
    DatasetSource.add_member(:ground_truth_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroundTruthManifest, location_name: "GroundTruthManifest"))
    DatasetSource.add_member(:dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn"))
    DatasetSource.type = Types::DatasetSource
    DatasetStats.add_member(:labeled_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "LabeledEntries"))
    DatasetStats.add_member(:total_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "TotalEntries"))
    DatasetStats.add_member(:total_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "TotalLabels"))
    DatasetStats.add_member(:error_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "ErrorEntries"))
    DatasetStats.type = Types::DatasetStats
    DatasetStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    DatasetStatus.add_member(:create_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    DatasetStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    DatasetStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    DatasetStatus.add_member(:update_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_COMPLETE", traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    DatasetStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    DatasetStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    DatasetStatusMessageCode.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DatasetStatusMessageCode.add_member(:service_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE_ERROR", traits: {"smithy.api#enumValue" => "SERVICE_ERROR"}))
    DatasetStatusMessageCode.add_member(:client_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLIENT_ERROR", traits: {"smithy.api#enumValue" => "CLIENT_ERROR"}))
    DatasetType.add_member(:train, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRAIN", traits: {"smithy.api#enumValue" => "TRAIN"}))
    DatasetType.add_member(:test, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST", traits: {"smithy.api#enumValue" => "TEST"}))
    DeleteCollectionRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    DeleteCollectionRequest.type = Types::DeleteCollectionRequest
    DeleteCollectionResponse.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "StatusCode"))
    DeleteCollectionResponse.type = Types::DeleteCollectionResponse
    DeleteDatasetRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn", traits: {"smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteDatasetResponse.type = Types::DeleteDatasetResponse
    DeleteFacesRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    DeleteFacesRequest.add_member(:face_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceIdList, location_name: "FaceIds", traits: {"smithy.api#required" => {}}))
    DeleteFacesRequest.type = Types::DeleteFacesRequest
    DeleteFacesResponse.add_member(:deleted_faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceIdList, location_name: "DeletedFaces"))
    DeleteFacesResponse.add_member(:unsuccessful_face_deletions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDeletionsList, location_name: "UnsuccessfulFaceDeletions"))
    DeleteFacesResponse.type = Types::DeleteFacesResponse
    DeleteProjectPolicyRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn", traits: {"smithy.api#required" => {}}))
    DeleteProjectPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyName, location_name: "PolicyName", traits: {"smithy.api#required" => {}}))
    DeleteProjectPolicyRequest.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyRevisionId, location_name: "PolicyRevisionId"))
    DeleteProjectPolicyRequest.type = Types::DeleteProjectPolicyRequest
    DeleteProjectPolicyResponse.type = Types::DeleteProjectPolicyResponse
    DeleteProjectRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn", traits: {"smithy.api#required" => {}}))
    DeleteProjectRequest.type = Types::DeleteProjectRequest
    DeleteProjectResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectStatus, location_name: "Status"))
    DeleteProjectResponse.type = Types::DeleteProjectResponse
    DeleteProjectVersionRequest.add_member(:project_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: "ProjectVersionArn", traits: {"smithy.api#required" => {}}))
    DeleteProjectVersionRequest.type = Types::DeleteProjectVersionRequest
    DeleteProjectVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionStatus, location_name: "Status"))
    DeleteProjectVersionResponse.type = Types::DeleteProjectVersionResponse
    DeleteStreamProcessorRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteStreamProcessorRequest.type = Types::DeleteStreamProcessorRequest
    DeleteStreamProcessorResponse.type = Types::DeleteStreamProcessorResponse
    DeleteUserRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: "UserId", traits: {"smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteUserResponse.type = Types::DeleteUserResponse
    DescribeCollectionRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    DescribeCollectionRequest.type = Types::DescribeCollectionRequest
    DescribeCollectionResponse.add_member(:face_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "FaceCount"))
    DescribeCollectionResponse.add_member(:face_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    DescribeCollectionResponse.add_member(:collection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CollectionARN"))
    DescribeCollectionResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    DescribeCollectionResponse.add_member(:user_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "UserCount"))
    DescribeCollectionResponse.type = Types::DescribeCollectionResponse
    DescribeDatasetRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn", traits: {"smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetDescription, location_name: "DatasetDescription"))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeProjectVersionsRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn", traits: {"smithy.api#required" => {}}))
    DescribeProjectVersionsRequest.add_member(:version_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionNames, location_name: "VersionNames"))
    DescribeProjectVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    DescribeProjectVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionsPageSize, location_name: "MaxResults"))
    DescribeProjectVersionsRequest.type = Types::DescribeProjectVersionsRequest
    DescribeProjectVersionsResponse.add_member(:project_version_descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionDescriptions, location_name: "ProjectVersionDescriptions"))
    DescribeProjectVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    DescribeProjectVersionsResponse.type = Types::DescribeProjectVersionsResponse
    DescribeProjectsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    DescribeProjectsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectsPageSize, location_name: "MaxResults"))
    DescribeProjectsRequest.add_member(:project_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectNames, location_name: "ProjectNames"))
    DescribeProjectsRequest.add_member(:features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeatures, location_name: "Features"))
    DescribeProjectsRequest.type = Types::DescribeProjectsRequest
    DescribeProjectsResponse.add_member(:project_descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDescriptions, location_name: "ProjectDescriptions"))
    DescribeProjectsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    DescribeProjectsResponse.type = Types::DescribeProjectsResponse
    DescribeStreamProcessorRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeStreamProcessorRequest.type = Types::DescribeStreamProcessorRequest
    DescribeStreamProcessorResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: "Name"))
    DescribeStreamProcessorResponse.add_member(:stream_processor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorArn, location_name: "StreamProcessorArn"))
    DescribeStreamProcessorResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorStatus, location_name: "Status"))
    DescribeStreamProcessorResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    DescribeStreamProcessorResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    DescribeStreamProcessorResponse.add_member(:last_update_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdateTimestamp"))
    DescribeStreamProcessorResponse.add_member(:input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorInput, location_name: "Input"))
    DescribeStreamProcessorResponse.add_member(:output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorOutput, location_name: "Output"))
    DescribeStreamProcessorResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeStreamProcessorResponse.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorSettings, location_name: "Settings"))
    DescribeStreamProcessorResponse.add_member(:notification_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorNotificationChannel, location_name: "NotificationChannel"))
    DescribeStreamProcessorResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    DescribeStreamProcessorResponse.add_member(:regions_of_interest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: "RegionsOfInterest"))
    DescribeStreamProcessorResponse.add_member(:data_sharing_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorDataSharingPreference, location_name: "DataSharingPreference"))
    DescribeStreamProcessorResponse.type = Types::DescribeStreamProcessorResponse
    DetectCustomLabelsRequest.add_member(:project_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: "ProjectVersionArn", traits: {"smithy.api#required" => {}}))
    DetectCustomLabelsRequest.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: "Image", traits: {"smithy.api#required" => {}}))
    DetectCustomLabelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "MaxResults"))
    DetectCustomLabelsRequest.add_member(:min_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    DetectCustomLabelsRequest.type = Types::DetectCustomLabelsRequest
    DetectCustomLabelsResponse.add_member(:custom_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLabels, location_name: "CustomLabels"))
    DetectCustomLabelsResponse.type = Types::DetectCustomLabelsResponse
    DetectFacesRequest.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: "Image", traits: {"smithy.api#required" => {}}))
    DetectFacesRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    DetectFacesRequest.type = Types::DetectFacesRequest
    DetectFacesResponse.add_member(:face_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetailList, location_name: "FaceDetails"))
    DetectFacesResponse.add_member(:orientation_correction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "OrientationCorrection"))
    DetectFacesResponse.type = Types::DetectFacesResponse
    DetectLabelsFeatureList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsFeatureName)
    DetectLabelsFeatureName.add_member(:general_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENERAL_LABELS", traits: {"smithy.api#enumValue" => "GENERAL_LABELS"}))
    DetectLabelsFeatureName.add_member(:image_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMAGE_PROPERTIES", traits: {"smithy.api#enumValue" => "IMAGE_PROPERTIES"}))
    DetectLabelsImageBackground.add_member(:quality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsImageQuality, location_name: "Quality"))
    DetectLabelsImageBackground.add_member(:dominant_colors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DominantColors, location_name: "DominantColors"))
    DetectLabelsImageBackground.type = Types::DetectLabelsImageBackground
    DetectLabelsImageForeground.add_member(:quality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsImageQuality, location_name: "Quality"))
    DetectLabelsImageForeground.add_member(:dominant_colors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DominantColors, location_name: "DominantColors"))
    DetectLabelsImageForeground.type = Types::DetectLabelsImageForeground
    DetectLabelsImageProperties.add_member(:quality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsImageQuality, location_name: "Quality"))
    DetectLabelsImageProperties.add_member(:dominant_colors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DominantColors, location_name: "DominantColors"))
    DetectLabelsImageProperties.add_member(:foreground, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsImageForeground, location_name: "Foreground"))
    DetectLabelsImageProperties.add_member(:background, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsImageBackground, location_name: "Background"))
    DetectLabelsImageProperties.type = Types::DetectLabelsImageProperties
    DetectLabelsImagePropertiesSettings.add_member(:max_dominant_colors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsMaxDominantColors, location_name: "MaxDominantColors", traits: {"smithy.api#default" => 0}))
    DetectLabelsImagePropertiesSettings.type = Types::DetectLabelsImagePropertiesSettings
    DetectLabelsImageQuality.add_member(:brightness, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "Brightness"))
    DetectLabelsImageQuality.add_member(:sharpness, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "Sharpness"))
    DetectLabelsImageQuality.add_member(:contrast, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "Contrast"))
    DetectLabelsImageQuality.type = Types::DetectLabelsImageQuality
    DetectLabelsRequest.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: "Image", traits: {"smithy.api#required" => {}}))
    DetectLabelsRequest.add_member(:max_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "MaxLabels"))
    DetectLabelsRequest.add_member(:min_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    DetectLabelsRequest.add_member(:features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsFeatureList, location_name: "Features"))
    DetectLabelsRequest.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsSettings, location_name: "Settings"))
    DetectLabelsRequest.type = Types::DetectLabelsRequest
    DetectLabelsResponse.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Labels, location_name: "Labels"))
    DetectLabelsResponse.add_member(:orientation_correction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "OrientationCorrection"))
    DetectLabelsResponse.add_member(:label_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LabelModelVersion"))
    DetectLabelsResponse.add_member(:image_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsImageProperties, location_name: "ImageProperties"))
    DetectLabelsResponse.type = Types::DetectLabelsResponse
    DetectLabelsSettings.add_member(:general_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralLabelsSettings, location_name: "GeneralLabels"))
    DetectLabelsSettings.add_member(:image_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsImagePropertiesSettings, location_name: "ImageProperties"))
    DetectLabelsSettings.type = Types::DetectLabelsSettings
    DetectModerationLabelsRequest.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: "Image", traits: {"smithy.api#required" => {}}))
    DetectModerationLabelsRequest.add_member(:min_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    DetectModerationLabelsRequest.add_member(:human_loop_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopConfig, location_name: "HumanLoopConfig"))
    DetectModerationLabelsRequest.add_member(:project_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionId, location_name: "ProjectVersion"))
    DetectModerationLabelsRequest.type = Types::DetectModerationLabelsRequest
    DetectModerationLabelsResponse.add_member(:moderation_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModerationLabels, location_name: "ModerationLabels"))
    DetectModerationLabelsResponse.add_member(:moderation_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ModerationModelVersion"))
    DetectModerationLabelsResponse.add_member(:human_loop_activation_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopActivationOutput, location_name: "HumanLoopActivationOutput"))
    DetectModerationLabelsResponse.add_member(:project_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionId, location_name: "ProjectVersion"))
    DetectModerationLabelsResponse.add_member(:content_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTypes, location_name: "ContentTypes"))
    DetectModerationLabelsResponse.type = Types::DetectModerationLabelsResponse
    DetectProtectiveEquipmentRequest.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: "Image", traits: {"smithy.api#required" => {}}))
    DetectProtectiveEquipmentRequest.add_member(:summarization_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentSummarizationAttributes, location_name: "SummarizationAttributes"))
    DetectProtectiveEquipmentRequest.type = Types::DetectProtectiveEquipmentRequest
    DetectProtectiveEquipmentResponse.add_member(:protective_equipment_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ProtectiveEquipmentModelVersion"))
    DetectProtectiveEquipmentResponse.add_member(:persons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentPersons, location_name: "Persons"))
    DetectProtectiveEquipmentResponse.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentSummary, location_name: "Summary"))
    DetectProtectiveEquipmentResponse.type = Types::DetectProtectiveEquipmentResponse
    DetectTextFilters.add_member(:word_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectionFilter, location_name: "WordFilter"))
    DetectTextFilters.add_member(:regions_of_interest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: "RegionsOfInterest"))
    DetectTextFilters.type = Types::DetectTextFilters
    DetectTextRequest.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: "Image", traits: {"smithy.api#required" => {}}))
    DetectTextRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectTextFilters, location_name: "Filters"))
    DetectTextRequest.type = Types::DetectTextRequest
    DetectTextResponse.add_member(:text_detections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextDetectionList, location_name: "TextDetections"))
    DetectTextResponse.add_member(:text_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TextModelVersion"))
    DetectTextResponse.type = Types::DetectTextResponse
    DetectionFilter.add_member(:min_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    DetectionFilter.add_member(:min_bounding_box_height, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBoxHeight, location_name: "MinBoundingBoxHeight"))
    DetectionFilter.add_member(:min_bounding_box_width, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBoxWidth, location_name: "MinBoundingBoxWidth"))
    DetectionFilter.type = Types::DetectionFilter
    DisassociateFacesRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    DisassociateFacesRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: "UserId", traits: {"smithy.api#required" => {}}))
    DisassociateFacesRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DisassociateFacesRequest.add_member(:face_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserFaceIdList, location_name: "FaceIds", traits: {"smithy.api#required" => {}}))
    DisassociateFacesRequest.type = Types::DisassociateFacesRequest
    DisassociateFacesResponse.add_member(:disassociated_faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatedFacesList, location_name: "DisassociatedFaces"))
    DisassociateFacesResponse.add_member(:unsuccessful_face_disassociations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDisassociationList, location_name: "UnsuccessfulFaceDisassociations"))
    DisassociateFacesResponse.add_member(:user_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserStatus, location_name: "UserStatus"))
    DisassociateFacesResponse.type = Types::DisassociateFacesResponse
    DisassociatedFace.add_member(:face_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    DisassociatedFace.type = Types::DisassociatedFace
    DisassociatedFacesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatedFace)
    DistributeDataset.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    DistributeDataset.type = Types::DistributeDataset
    DistributeDatasetEntriesRequest.add_member(:datasets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistributeDatasetMetadataList, location_name: "Datasets", traits: {"smithy.api#required" => {}}))
    DistributeDatasetEntriesRequest.type = Types::DistributeDatasetEntriesRequest
    DistributeDatasetEntriesResponse.type = Types::DistributeDatasetEntriesResponse
    DistributeDatasetMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistributeDataset)
    DominantColor.add_member(:red, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "Red"))
    DominantColor.add_member(:blue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "Blue"))
    DominantColor.add_member(:green, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "Green"))
    DominantColor.add_member(:hex_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "HexCode"))
    DominantColor.add_member(:css_color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CSSColor"))
    DominantColor.add_member(:simplified_color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SimplifiedColor"))
    DominantColor.add_member(:pixel_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "PixelPercent"))
    DominantColor.type = Types::DominantColor
    DominantColors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DominantColor)
    Emotion.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmotionName, location_name: "Type"))
    Emotion.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Emotion.type = Types::Emotion
    EmotionName.add_member(:happy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HAPPY", traits: {"smithy.api#enumValue" => "HAPPY"}))
    EmotionName.add_member(:sad, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SAD", traits: {"smithy.api#enumValue" => "SAD"}))
    EmotionName.add_member(:angry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANGRY", traits: {"smithy.api#enumValue" => "ANGRY"}))
    EmotionName.add_member(:confused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFUSED", traits: {"smithy.api#enumValue" => "CONFUSED"}))
    EmotionName.add_member(:disgusted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISGUSTED", traits: {"smithy.api#enumValue" => "DISGUSTED"}))
    EmotionName.add_member(:surprised, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SURPRISED", traits: {"smithy.api#enumValue" => "SURPRISED"}))
    EmotionName.add_member(:calm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CALM", traits: {"smithy.api#enumValue" => "CALM"}))
    EmotionName.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    EmotionName.add_member(:fear, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FEAR", traits: {"smithy.api#enumValue" => "FEAR"}))
    Emotions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Emotion)
    EquipmentDetection.add_member(:bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    EquipmentDetection.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    EquipmentDetection.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentType, location_name: "Type"))
    EquipmentDetection.add_member(:covers_body_part, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoversBodyPart, location_name: "CoversBodyPart"))
    EquipmentDetection.type = Types::EquipmentDetection
    EquipmentDetections.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EquipmentDetection)
    EvaluationResult.add_member(:f1_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "F1Score"))
    EvaluationResult.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Summary, location_name: "Summary"))
    EvaluationResult.type = Types::EvaluationResult
    EyeDirection.add_member(:yaw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Degree, location_name: "Yaw"))
    EyeDirection.add_member(:pitch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Degree, location_name: "Pitch"))
    EyeDirection.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    EyeDirection.type = Types::EyeDirection
    EyeOpen.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Value", traits: {"smithy.api#default" => false}))
    EyeOpen.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    EyeOpen.type = Types::EyeOpen
    Eyeglasses.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Value", traits: {"smithy.api#default" => false}))
    Eyeglasses.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Eyeglasses.type = Types::Eyeglasses
    Face.add_member(:face_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    Face.add_member(:bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    Face.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageId, location_name: "ImageId"))
    Face.add_member(:external_image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalImageId, location_name: "ExternalImageId"))
    Face.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Face.add_member(:index_faces_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexFacesModelVersion, location_name: "IndexFacesModelVersion"))
    Face.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    Face.type = Types::Face
    FaceAttributes.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    FaceAttributes.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    FaceDetail.add_member(:bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    FaceDetail.add_member(:age_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgeRange, location_name: "AgeRange"))
    FaceDetail.add_member(:smile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Smile, location_name: "Smile"))
    FaceDetail.add_member(:eyeglasses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Eyeglasses, location_name: "Eyeglasses"))
    FaceDetail.add_member(:sunglasses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sunglasses, location_name: "Sunglasses"))
    FaceDetail.add_member(:gender, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Gender, location_name: "Gender"))
    FaceDetail.add_member(:beard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Beard, location_name: "Beard"))
    FaceDetail.add_member(:mustache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Mustache, location_name: "Mustache"))
    FaceDetail.add_member(:eyes_open, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EyeOpen, location_name: "EyesOpen"))
    FaceDetail.add_member(:mouth_open, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MouthOpen, location_name: "MouthOpen"))
    FaceDetail.add_member(:emotions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Emotions, location_name: "Emotions"))
    FaceDetail.add_member(:landmarks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Landmarks, location_name: "Landmarks"))
    FaceDetail.add_member(:pose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pose, location_name: "Pose"))
    FaceDetail.add_member(:quality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageQuality, location_name: "Quality"))
    FaceDetail.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    FaceDetail.add_member(:face_occluded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceOccluded, location_name: "FaceOccluded"))
    FaceDetail.add_member(:eye_direction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EyeDirection, location_name: "EyeDirection"))
    FaceDetail.type = Types::FaceDetail
    FaceDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail)
    FaceDetection.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp", traits: {"smithy.api#default" => 0}))
    FaceDetection.add_member(:face, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail, location_name: "Face"))
    FaceDetection.type = Types::FaceDetection
    FaceDetections.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetection)
    FaceIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId)
    FaceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Face)
    FaceMatch.add_member(:similarity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Similarity"))
    FaceMatch.add_member(:face, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Face, location_name: "Face"))
    FaceMatch.type = Types::FaceMatch
    FaceMatchList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceMatch)
    FaceModelVersionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    FaceOccluded.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Value", traits: {"smithy.api#default" => false}))
    FaceOccluded.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    FaceOccluded.type = Types::FaceOccluded
    FaceRecord.add_member(:face, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Face, location_name: "Face"))
    FaceRecord.add_member(:face_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail, location_name: "FaceDetail"))
    FaceRecord.type = Types::FaceRecord
    FaceRecordList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceRecord)
    FaceSearchSettings.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId"))
    FaceSearchSettings.add_member(:face_match_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "FaceMatchThreshold"))
    FaceSearchSettings.type = Types::FaceSearchSettings
    FaceSearchSortBy.add_member(:index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INDEX", traits: {"smithy.api#enumValue" => "INDEX"}))
    FaceSearchSortBy.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    Gender.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenderType, location_name: "Value"))
    Gender.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Gender.type = Types::Gender
    GenderType.add_member(:male, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Male", traits: {"smithy.api#enumValue" => "Male"}))
    GenderType.add_member(:female, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Female", traits: {"smithy.api#enumValue" => "Female"}))
    GeneralLabelsFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralLabelsFilterValue)
    GeneralLabelsSettings.add_member(:label_inclusion_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralLabelsFilterList, location_name: "LabelInclusionFilters"))
    GeneralLabelsSettings.add_member(:label_exclusion_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralLabelsFilterList, location_name: "LabelExclusionFilters"))
    GeneralLabelsSettings.add_member(:label_category_inclusion_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralLabelsFilterList, location_name: "LabelCategoryInclusionFilters"))
    GeneralLabelsSettings.add_member(:label_category_exclusion_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralLabelsFilterList, location_name: "LabelCategoryExclusionFilters"))
    GeneralLabelsSettings.type = Types::GeneralLabelsSettings
    Geometry.add_member(:bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    Geometry.add_member(:polygon, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Polygon, location_name: "Polygon"))
    Geometry.type = Types::Geometry
    GetCelebrityInfoRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RekognitionUniqueId, location_name: "Id", traits: {"smithy.api#required" => {}}))
    GetCelebrityInfoRequest.type = Types::GetCelebrityInfoRequest
    GetCelebrityInfoResponse.add_member(:urls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urls, location_name: "Urls"))
    GetCelebrityInfoResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    GetCelebrityInfoResponse.add_member(:known_gender, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnownGender, location_name: "KnownGender"))
    GetCelebrityInfoResponse.type = Types::GetCelebrityInfoResponse
    GetCelebrityRecognitionRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    GetCelebrityRecognitionRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetCelebrityRecognitionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetCelebrityRecognitionRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CelebrityRecognitionSortBy, location_name: "SortBy"))
    GetCelebrityRecognitionRequest.type = Types::GetCelebrityRecognitionRequest
    GetCelebrityRecognitionResponse.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetCelebrityRecognitionResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetCelebrityRecognitionResponse.add_member(:video_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetCelebrityRecognitionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetCelebrityRecognitionResponse.add_member(:celebrities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CelebrityRecognitions, location_name: "Celebrities"))
    GetCelebrityRecognitionResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetCelebrityRecognitionResponse.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetCelebrityRecognitionResponse.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetCelebrityRecognitionResponse.type = Types::GetCelebrityRecognitionResponse
    GetContentModerationRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    GetContentModerationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetContentModerationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetContentModerationRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentModerationSortBy, location_name: "SortBy"))
    GetContentModerationRequest.add_member(:aggregate_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentModerationAggregateBy, location_name: "AggregateBy"))
    GetContentModerationRequest.type = Types::GetContentModerationRequest
    GetContentModerationRequestMetadata.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentModerationSortBy, location_name: "SortBy"))
    GetContentModerationRequestMetadata.add_member(:aggregate_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentModerationAggregateBy, location_name: "AggregateBy"))
    GetContentModerationRequestMetadata.type = Types::GetContentModerationRequestMetadata
    GetContentModerationResponse.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetContentModerationResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetContentModerationResponse.add_member(:video_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetContentModerationResponse.add_member(:moderation_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentModerationDetections, location_name: "ModerationLabels"))
    GetContentModerationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetContentModerationResponse.add_member(:moderation_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ModerationModelVersion"))
    GetContentModerationResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetContentModerationResponse.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetContentModerationResponse.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetContentModerationResponse.add_member(:get_request_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentModerationRequestMetadata, location_name: "GetRequestMetadata"))
    GetContentModerationResponse.type = Types::GetContentModerationResponse
    GetFaceDetectionRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    GetFaceDetectionRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetFaceDetectionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetFaceDetectionRequest.type = Types::GetFaceDetectionRequest
    GetFaceDetectionResponse.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetFaceDetectionResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetFaceDetectionResponse.add_member(:video_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetFaceDetectionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetFaceDetectionResponse.add_member(:faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetections, location_name: "Faces"))
    GetFaceDetectionResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetFaceDetectionResponse.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetFaceDetectionResponse.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetFaceDetectionResponse.type = Types::GetFaceDetectionResponse
    GetFaceLivenessSessionResultsRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LivenessSessionId, location_name: "SessionId", traits: {"smithy.api#required" => {}}))
    GetFaceLivenessSessionResultsRequest.type = Types::GetFaceLivenessSessionResultsRequest
    GetFaceLivenessSessionResultsResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LivenessSessionId, location_name: "SessionId", traits: {"smithy.api#required" => {}}))
    GetFaceLivenessSessionResultsResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LivenessSessionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    GetFaceLivenessSessionResultsResponse.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    GetFaceLivenessSessionResultsResponse.add_member(:reference_image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditImage, location_name: "ReferenceImage"))
    GetFaceLivenessSessionResultsResponse.add_member(:audit_images, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditImages, location_name: "AuditImages"))
    GetFaceLivenessSessionResultsResponse.add_member(:challenge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Challenge, location_name: "Challenge"))
    GetFaceLivenessSessionResultsResponse.type = Types::GetFaceLivenessSessionResultsResponse
    GetFaceSearchRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    GetFaceSearchRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetFaceSearchRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetFaceSearchRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceSearchSortBy, location_name: "SortBy"))
    GetFaceSearchRequest.type = Types::GetFaceSearchRequest
    GetFaceSearchResponse.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetFaceSearchResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetFaceSearchResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetFaceSearchResponse.add_member(:video_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetFaceSearchResponse.add_member(:persons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonMatches, location_name: "Persons"))
    GetFaceSearchResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetFaceSearchResponse.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetFaceSearchResponse.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetFaceSearchResponse.type = Types::GetFaceSearchResponse
    GetLabelDetectionRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    GetLabelDetectionRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetLabelDetectionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetLabelDetectionRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetectionSortBy, location_name: "SortBy"))
    GetLabelDetectionRequest.add_member(:aggregate_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetectionAggregateBy, location_name: "AggregateBy"))
    GetLabelDetectionRequest.type = Types::GetLabelDetectionRequest
    GetLabelDetectionRequestMetadata.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetectionSortBy, location_name: "SortBy"))
    GetLabelDetectionRequestMetadata.add_member(:aggregate_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetectionAggregateBy, location_name: "AggregateBy"))
    GetLabelDetectionRequestMetadata.type = Types::GetLabelDetectionRequestMetadata
    GetLabelDetectionResponse.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetLabelDetectionResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetLabelDetectionResponse.add_member(:video_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetLabelDetectionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetLabelDetectionResponse.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetections, location_name: "Labels"))
    GetLabelDetectionResponse.add_member(:label_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LabelModelVersion"))
    GetLabelDetectionResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetLabelDetectionResponse.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetLabelDetectionResponse.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetLabelDetectionResponse.add_member(:get_request_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLabelDetectionRequestMetadata, location_name: "GetRequestMetadata"))
    GetLabelDetectionResponse.type = Types::GetLabelDetectionResponse
    GetMediaAnalysisJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    GetMediaAnalysisJobRequest.type = Types::GetMediaAnalysisJobRequest
    GetMediaAnalysisJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    GetMediaAnalysisJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobName, location_name: "JobName"))
    GetMediaAnalysisJobResponse.add_member(:operations_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisOperationsConfig, location_name: "OperationsConfig", traits: {"smithy.api#required" => {}}))
    GetMediaAnalysisJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    GetMediaAnalysisJobResponse.add_member(:failure_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobFailureDetails, location_name: "FailureDetails"))
    GetMediaAnalysisJobResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp", traits: {"smithy.api#required" => {}}))
    GetMediaAnalysisJobResponse.add_member(:completion_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletionTimestamp"))
    GetMediaAnalysisJobResponse.add_member(:input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisInput, location_name: "Input", traits: {"smithy.api#required" => {}}))
    GetMediaAnalysisJobResponse.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisOutputConfig, location_name: "OutputConfig", traits: {"smithy.api#required" => {}}))
    GetMediaAnalysisJobResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    GetMediaAnalysisJobResponse.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisResults, location_name: "Results"))
    GetMediaAnalysisJobResponse.add_member(:manifest_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisManifestSummary, location_name: "ManifestSummary"))
    GetMediaAnalysisJobResponse.type = Types::GetMediaAnalysisJobResponse
    GetPersonTrackingRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    GetPersonTrackingRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetPersonTrackingRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetPersonTrackingRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonTrackingSortBy, location_name: "SortBy"))
    GetPersonTrackingRequest.type = Types::GetPersonTrackingRequest
    GetPersonTrackingResponse.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetPersonTrackingResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetPersonTrackingResponse.add_member(:video_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetPersonTrackingResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetPersonTrackingResponse.add_member(:persons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonDetections, location_name: "Persons"))
    GetPersonTrackingResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetPersonTrackingResponse.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetPersonTrackingResponse.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetPersonTrackingResponse.type = Types::GetPersonTrackingResponse
    GetSegmentDetectionRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    GetSegmentDetectionRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetSegmentDetectionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetSegmentDetectionRequest.type = Types::GetSegmentDetectionRequest
    GetSegmentDetectionResponse.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetSegmentDetectionResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetSegmentDetectionResponse.add_member(:video_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadataList, location_name: "VideoMetadata"))
    GetSegmentDetectionResponse.add_member(:audio_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioMetadataList, location_name: "AudioMetadata"))
    GetSegmentDetectionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetSegmentDetectionResponse.add_member(:segments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDetections, location_name: "Segments"))
    GetSegmentDetectionResponse.add_member(:selected_segment_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentTypesInfo, location_name: "SelectedSegmentTypes"))
    GetSegmentDetectionResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetSegmentDetectionResponse.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetSegmentDetectionResponse.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetSegmentDetectionResponse.type = Types::GetSegmentDetectionResponse
    GetTextDetectionRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    GetTextDetectionRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetTextDetectionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetTextDetectionRequest.type = Types::GetTextDetectionRequest
    GetTextDetectionResponse.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetTextDetectionResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetTextDetectionResponse.add_member(:video_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetTextDetectionResponse.add_member(:text_detections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextDetectionResults, location_name: "TextDetections"))
    GetTextDetectionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetTextDetectionResponse.add_member(:text_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TextModelVersion"))
    GetTextDetectionResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetTextDetectionResponse.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetTextDetectionResponse.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetTextDetectionResponse.type = Types::GetTextDetectionResponse
    GroundTruthManifest.add_member(:s3_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    GroundTruthManifest.type = Types::GroundTruthManifest
    HumanLoopActivationOutput.add_member(:human_loop_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopArn, location_name: "HumanLoopArn"))
    HumanLoopActivationOutput.add_member(:human_loop_activation_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopActivationReasons, location_name: "HumanLoopActivationReasons"))
    HumanLoopActivationOutput.add_member(:human_loop_activation_conditions_evaluation_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonHumanLoopActivationConditionsEvaluationResults, location_name: "HumanLoopActivationConditionsEvaluationResults"))
    HumanLoopActivationOutput.type = Types::HumanLoopActivationOutput
    HumanLoopActivationReasons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopActivationReason)
    HumanLoopConfig.add_member(:human_loop_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopName, location_name: "HumanLoopName", traits: {"smithy.api#required" => {}}))
    HumanLoopConfig.add_member(:flow_definition_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinitionArn, location_name: "FlowDefinitionArn", traits: {"smithy.api#required" => {}}))
    HumanLoopConfig.add_member(:data_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopDataAttributes, location_name: "DataAttributes"))
    HumanLoopConfig.type = Types::HumanLoopConfig
    HumanLoopDataAttributes.add_member(:content_classifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentClassifiers, location_name: "ContentClassifiers"))
    HumanLoopDataAttributes.type = Types::HumanLoopDataAttributes
    HumanLoopQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    HumanLoopQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    HumanLoopQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    HumanLoopQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    HumanLoopQuotaExceededException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    HumanLoopQuotaExceededException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    HumanLoopQuotaExceededException.type = Types::HumanLoopQuotaExceededException
    IdempotentParameterMismatchException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    IdempotentParameterMismatchException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    IdempotentParameterMismatchException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    Image.add_member(:bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageBlob, location_name: "Bytes"))
    Image.add_member(:s3_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    Image.type = Types::Image
    ImageQuality.add_member(:brightness, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "Brightness"))
    ImageQuality.add_member(:sharpness, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "Sharpness"))
    ImageQuality.type = Types::ImageQuality
    ImageTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ImageTooLargeException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ImageTooLargeException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    ImageTooLargeException.type = Types::ImageTooLargeException
    IndexFacesRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    IndexFacesRequest.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: "Image", traits: {"smithy.api#required" => {}}))
    IndexFacesRequest.add_member(:external_image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalImageId, location_name: "ExternalImageId"))
    IndexFacesRequest.add_member(:detection_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: "DetectionAttributes"))
    IndexFacesRequest.add_member(:max_faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFacesToIndex, location_name: "MaxFaces"))
    IndexFacesRequest.add_member(:quality_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualityFilter, location_name: "QualityFilter"))
    IndexFacesRequest.type = Types::IndexFacesRequest
    IndexFacesResponse.add_member(:face_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceRecordList, location_name: "FaceRecords"))
    IndexFacesResponse.add_member(:orientation_correction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "OrientationCorrection"))
    IndexFacesResponse.add_member(:face_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    IndexFacesResponse.add_member(:unindexed_faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnindexedFaces, location_name: "UnindexedFaces"))
    IndexFacesResponse.type = Types::IndexFacesResponse
    Instance.add_member(:bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    Instance.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Instance.add_member(:dominant_colors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DominantColors, location_name: "DominantColors"))
    Instance.type = Types::Instance
    Instances.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instance)
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    InternalServerError.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    InternalServerError.type = Types::InternalServerError
    InvalidImageFormatException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidImageFormatException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    InvalidImageFormatException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    InvalidImageFormatException.type = Types::InvalidImageFormatException
    InvalidManifestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidManifestException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    InvalidManifestException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    InvalidManifestException.type = Types::InvalidManifestException
    InvalidPaginationTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidPaginationTokenException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    InvalidPaginationTokenException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    InvalidPaginationTokenException.type = Types::InvalidPaginationTokenException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidParameterException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    InvalidParameterException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidPolicyRevisionIdException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidPolicyRevisionIdException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    InvalidPolicyRevisionIdException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    InvalidPolicyRevisionIdException.type = Types::InvalidPolicyRevisionIdException
    InvalidS3ObjectException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidS3ObjectException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    InvalidS3ObjectException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    InvalidS3ObjectException.type = Types::InvalidS3ObjectException
    KinesisDataStream.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisDataArn, location_name: "Arn"))
    KinesisDataStream.type = Types::KinesisDataStream
    KinesisVideoStream.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoArn, location_name: "Arn"))
    KinesisVideoStream.type = Types::KinesisVideoStream
    KinesisVideoStreamStartSelector.add_member(:producer_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "ProducerTimestamp"))
    KinesisVideoStreamStartSelector.add_member(:fragment_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamFragmentNumber, location_name: "FragmentNumber"))
    KinesisVideoStreamStartSelector.type = Types::KinesisVideoStreamStartSelector
    KnownGender.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnownGenderType, location_name: "Type"))
    KnownGender.type = Types::KnownGender
    KnownGenderType.add_member(:male, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Male", traits: {"smithy.api#enumValue" => "Male"}))
    KnownGenderType.add_member(:female, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Female", traits: {"smithy.api#enumValue" => "Female"}))
    KnownGenderType.add_member(:nonbinary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Nonbinary", traits: {"smithy.api#enumValue" => "Nonbinary"}))
    KnownGenderType.add_member(:unlisted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Unlisted", traits: {"smithy.api#enumValue" => "Unlisted"}))
    Label.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Label.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Label.add_member(:instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instances, location_name: "Instances"))
    Label.add_member(:parents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Parents, location_name: "Parents"))
    Label.add_member(:aliases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelAliases, location_name: "Aliases"))
    Label.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelCategories, location_name: "Categories"))
    Label.type = Types::Label
    LabelAlias.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    LabelAlias.type = Types::LabelAlias
    LabelAliases.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelAlias)
    LabelCategories.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelCategory)
    LabelCategory.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    LabelCategory.type = Types::LabelCategory
    LabelDetection.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp", traits: {"smithy.api#default" => 0}))
    LabelDetection.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Label, location_name: "Label"))
    LabelDetection.add_member(:start_timestamp_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "StartTimestampMillis"))
    LabelDetection.add_member(:end_timestamp_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "EndTimestampMillis"))
    LabelDetection.add_member(:duration_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "DurationMillis"))
    LabelDetection.type = Types::LabelDetection
    LabelDetectionAggregateBy.add_member(:timestamps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMESTAMPS", traits: {"smithy.api#enumValue" => "TIMESTAMPS"}))
    LabelDetectionAggregateBy.add_member(:segments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEGMENTS", traits: {"smithy.api#enumValue" => "SEGMENTS"}))
    LabelDetectionFeatureList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetectionFeatureName)
    LabelDetectionFeatureName.add_member(:general_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENERAL_LABELS", traits: {"smithy.api#enumValue" => "GENERAL_LABELS"}))
    LabelDetectionSettings.add_member(:general_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralLabelsSettings, location_name: "GeneralLabels"))
    LabelDetectionSettings.type = Types::LabelDetectionSettings
    LabelDetectionSortBy.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    LabelDetectionSortBy.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    LabelDetections.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetection)
    Labels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Label)
    Landmark.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandmarkType, location_name: "Type"))
    Landmark.add_member(:x, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "X"))
    Landmark.add_member(:y, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "Y"))
    Landmark.type = Types::Landmark
    LandmarkType.add_member(:eye_left, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "eyeLeft", traits: {"smithy.api#enumValue" => "eyeLeft"}))
    LandmarkType.add_member(:eye_right, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "eyeRight", traits: {"smithy.api#enumValue" => "eyeRight"}))
    LandmarkType.add_member(:nose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "nose", traits: {"smithy.api#enumValue" => "nose"}))
    LandmarkType.add_member(:mouth_left, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "mouthLeft", traits: {"smithy.api#enumValue" => "mouthLeft"}))
    LandmarkType.add_member(:mouth_right, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "mouthRight", traits: {"smithy.api#enumValue" => "mouthRight"}))
    LandmarkType.add_member(:left_eye_brow_left, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "leftEyeBrowLeft", traits: {"smithy.api#enumValue" => "leftEyeBrowLeft"}))
    LandmarkType.add_member(:left_eye_brow_right, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "leftEyeBrowRight", traits: {"smithy.api#enumValue" => "leftEyeBrowRight"}))
    LandmarkType.add_member(:left_eye_brow_up, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "leftEyeBrowUp", traits: {"smithy.api#enumValue" => "leftEyeBrowUp"}))
    LandmarkType.add_member(:right_eye_brow_left, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "rightEyeBrowLeft", traits: {"smithy.api#enumValue" => "rightEyeBrowLeft"}))
    LandmarkType.add_member(:right_eye_brow_right, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "rightEyeBrowRight", traits: {"smithy.api#enumValue" => "rightEyeBrowRight"}))
    LandmarkType.add_member(:right_eye_brow_up, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "rightEyeBrowUp", traits: {"smithy.api#enumValue" => "rightEyeBrowUp"}))
    LandmarkType.add_member(:left_eye_left, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "leftEyeLeft", traits: {"smithy.api#enumValue" => "leftEyeLeft"}))
    LandmarkType.add_member(:left_eye_right, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "leftEyeRight", traits: {"smithy.api#enumValue" => "leftEyeRight"}))
    LandmarkType.add_member(:left_eye_up, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "leftEyeUp", traits: {"smithy.api#enumValue" => "leftEyeUp"}))
    LandmarkType.add_member(:left_eye_down, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "leftEyeDown", traits: {"smithy.api#enumValue" => "leftEyeDown"}))
    LandmarkType.add_member(:right_eye_left, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "rightEyeLeft", traits: {"smithy.api#enumValue" => "rightEyeLeft"}))
    LandmarkType.add_member(:right_eye_right, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "rightEyeRight", traits: {"smithy.api#enumValue" => "rightEyeRight"}))
    LandmarkType.add_member(:right_eye_up, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "rightEyeUp", traits: {"smithy.api#enumValue" => "rightEyeUp"}))
    LandmarkType.add_member(:right_eye_down, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "rightEyeDown", traits: {"smithy.api#enumValue" => "rightEyeDown"}))
    LandmarkType.add_member(:nose_left, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "noseLeft", traits: {"smithy.api#enumValue" => "noseLeft"}))
    LandmarkType.add_member(:nose_right, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "noseRight", traits: {"smithy.api#enumValue" => "noseRight"}))
    LandmarkType.add_member(:mouth_up, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "mouthUp", traits: {"smithy.api#enumValue" => "mouthUp"}))
    LandmarkType.add_member(:mouth_down, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "mouthDown", traits: {"smithy.api#enumValue" => "mouthDown"}))
    LandmarkType.add_member(:left_pupil, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "leftPupil", traits: {"smithy.api#enumValue" => "leftPupil"}))
    LandmarkType.add_member(:right_pupil, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "rightPupil", traits: {"smithy.api#enumValue" => "rightPupil"}))
    LandmarkType.add_member(:upper_jawline_left, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "upperJawlineLeft", traits: {"smithy.api#enumValue" => "upperJawlineLeft"}))
    LandmarkType.add_member(:mid_jawline_left, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "midJawlineLeft", traits: {"smithy.api#enumValue" => "midJawlineLeft"}))
    LandmarkType.add_member(:chin_bottom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "chinBottom", traits: {"smithy.api#enumValue" => "chinBottom"}))
    LandmarkType.add_member(:mid_jawline_right, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "midJawlineRight", traits: {"smithy.api#enumValue" => "midJawlineRight"}))
    LandmarkType.add_member(:upper_jawline_right, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "upperJawlineRight", traits: {"smithy.api#enumValue" => "upperJawlineRight"}))
    Landmarks.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Landmark)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    LimitExceededException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    LimitExceededException.type = Types::LimitExceededException
    ListCollectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListCollectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListCollectionsRequest.type = Types::ListCollectionsRequest
    ListCollectionsResponse.add_member(:collection_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionIdList, location_name: "CollectionIds"))
    ListCollectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListCollectionsResponse.add_member(:face_model_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceModelVersionList, location_name: "FaceModelVersions"))
    ListCollectionsResponse.type = Types::ListCollectionsResponse
    ListDatasetEntriesRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn", traits: {"smithy.api#required" => {}}))
    ListDatasetEntriesRequest.add_member(:contains_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetLabels, location_name: "ContainsLabels"))
    ListDatasetEntriesRequest.add_member(:labeled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsLabeled, location_name: "Labeled"))
    ListDatasetEntriesRequest.add_member(:source_ref_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: "SourceRefContains"))
    ListDatasetEntriesRequest.add_member(:has_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HasErrors, location_name: "HasErrors"))
    ListDatasetEntriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    ListDatasetEntriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetEntriesPageSize, location_name: "MaxResults"))
    ListDatasetEntriesRequest.type = Types::ListDatasetEntriesRequest
    ListDatasetEntriesResponse.add_member(:dataset_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetEntries, location_name: "DatasetEntries"))
    ListDatasetEntriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    ListDatasetEntriesResponse.type = Types::ListDatasetEntriesResponse
    ListDatasetLabelsRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn", traits: {"smithy.api#required" => {}}))
    ListDatasetLabelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    ListDatasetLabelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetLabelsPageSize, location_name: "MaxResults"))
    ListDatasetLabelsRequest.type = Types::ListDatasetLabelsRequest
    ListDatasetLabelsResponse.add_member(:dataset_label_descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetLabelDescriptions, location_name: "DatasetLabelDescriptions"))
    ListDatasetLabelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    ListDatasetLabelsResponse.type = Types::ListDatasetLabelsResponse
    ListFacesRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    ListFacesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFacesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListFacesRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    ListFacesRequest.add_member(:face_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceIdList, location_name: "FaceIds"))
    ListFacesRequest.type = Types::ListFacesRequest
    ListFacesResponse.add_member(:faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceList, location_name: "Faces"))
    ListFacesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListFacesResponse.add_member(:face_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    ListFacesResponse.type = Types::ListFacesResponse
    ListMediaAnalysisJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    ListMediaAnalysisJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMediaAnalysisJobsPageSize, location_name: "MaxResults"))
    ListMediaAnalysisJobsRequest.type = Types::ListMediaAnalysisJobsRequest
    ListMediaAnalysisJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    ListMediaAnalysisJobsResponse.add_member(:media_analysis_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobDescriptions, location_name: "MediaAnalysisJobs", traits: {"smithy.api#required" => {}}))
    ListMediaAnalysisJobsResponse.type = Types::ListMediaAnalysisJobsResponse
    ListProjectPoliciesRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn", traits: {"smithy.api#required" => {}}))
    ListProjectPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    ListProjectPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectPoliciesPageSize, location_name: "MaxResults"))
    ListProjectPoliciesRequest.type = Types::ListProjectPoliciesRequest
    ListProjectPoliciesResponse.add_member(:project_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicies, location_name: "ProjectPolicies"))
    ListProjectPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    ListProjectPoliciesResponse.type = Types::ListProjectPoliciesResponse
    ListStreamProcessorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListStreamProcessorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStreamProcessorsRequest.type = Types::ListStreamProcessorsRequest
    ListStreamProcessorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListStreamProcessorsResponse.add_member(:stream_processors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorList, location_name: "StreamProcessors"))
    ListStreamProcessorsResponse.type = Types::ListStreamProcessorsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListUsersRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    ListUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxUserResults, location_name: "MaxResults"))
    ListUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResponse.add_member(:users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: "Users"))
    ListUsersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListUsersResponse.type = Types::ListUsersResponse
    LivenessOutputConfig.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    LivenessOutputConfig.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LivenessS3KeyPrefix, location_name: "S3KeyPrefix"))
    LivenessOutputConfig.type = Types::LivenessOutputConfig
    LivenessSessionStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    LivenessSessionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    LivenessSessionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    LivenessSessionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    LivenessSessionStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    MalformedPolicyDocumentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    MalformedPolicyDocumentException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    MalformedPolicyDocumentException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    MatchedUser.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    MatchedUser.add_member(:user_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserStatus, location_name: "UserStatus"))
    MatchedUser.type = Types::MatchedUser
    MediaAnalysisDetectModerationLabelsConfig.add_member(:min_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    MediaAnalysisDetectModerationLabelsConfig.add_member(:project_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionId, location_name: "ProjectVersion"))
    MediaAnalysisDetectModerationLabelsConfig.type = Types::MediaAnalysisDetectModerationLabelsConfig
    MediaAnalysisInput.add_member(:s3_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object", traits: {"smithy.api#required" => {}}))
    MediaAnalysisInput.type = Types::MediaAnalysisInput
    MediaAnalysisJobDescription.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    MediaAnalysisJobDescription.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobName, location_name: "JobName"))
    MediaAnalysisJobDescription.add_member(:operations_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisOperationsConfig, location_name: "OperationsConfig", traits: {"smithy.api#required" => {}}))
    MediaAnalysisJobDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    MediaAnalysisJobDescription.add_member(:failure_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobFailureDetails, location_name: "FailureDetails"))
    MediaAnalysisJobDescription.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp", traits: {"smithy.api#required" => {}}))
    MediaAnalysisJobDescription.add_member(:completion_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletionTimestamp"))
    MediaAnalysisJobDescription.add_member(:input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisInput, location_name: "Input", traits: {"smithy.api#required" => {}}))
    MediaAnalysisJobDescription.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisOutputConfig, location_name: "OutputConfig", traits: {"smithy.api#required" => {}}))
    MediaAnalysisJobDescription.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    MediaAnalysisJobDescription.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisResults, location_name: "Results"))
    MediaAnalysisJobDescription.add_member(:manifest_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisManifestSummary, location_name: "ManifestSummary"))
    MediaAnalysisJobDescription.type = Types::MediaAnalysisJobDescription
    MediaAnalysisJobDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobDescription)
    MediaAnalysisJobFailureCode.add_member(:internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    MediaAnalysisJobFailureCode.add_member(:invalid_s3_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_S3_OBJECT", traits: {"smithy.api#enumValue" => "INVALID_S3_OBJECT"}))
    MediaAnalysisJobFailureCode.add_member(:invalid_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_MANIFEST", traits: {"smithy.api#enumValue" => "INVALID_MANIFEST"}))
    MediaAnalysisJobFailureCode.add_member(:invalid_output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_OUTPUT_CONFIG", traits: {"smithy.api#enumValue" => "INVALID_OUTPUT_CONFIG"}))
    MediaAnalysisJobFailureCode.add_member(:invalid_kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_KMS_KEY", traits: {"smithy.api#enumValue" => "INVALID_KMS_KEY"}))
    MediaAnalysisJobFailureCode.add_member(:access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    MediaAnalysisJobFailureCode.add_member(:resource_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    MediaAnalysisJobFailureCode.add_member(:resource_not_ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE_NOT_READY", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_READY"}))
    MediaAnalysisJobFailureCode.add_member(:throttled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THROTTLED", traits: {"smithy.api#enumValue" => "THROTTLED"}))
    MediaAnalysisJobFailureDetails.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobFailureCode, location_name: "Code"))
    MediaAnalysisJobFailureDetails.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    MediaAnalysisJobFailureDetails.type = Types::MediaAnalysisJobFailureDetails
    MediaAnalysisJobStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    MediaAnalysisJobStatus.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    MediaAnalysisJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    MediaAnalysisJobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    MediaAnalysisJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    MediaAnalysisManifestSummary.add_member(:s3_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    MediaAnalysisManifestSummary.type = Types::MediaAnalysisManifestSummary
    MediaAnalysisModelVersions.add_member(:moderation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Moderation"))
    MediaAnalysisModelVersions.type = Types::MediaAnalysisModelVersions
    MediaAnalysisOperationsConfig.add_member(:detect_moderation_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisDetectModerationLabelsConfig, location_name: "DetectModerationLabels"))
    MediaAnalysisOperationsConfig.type = Types::MediaAnalysisOperationsConfig
    MediaAnalysisOutputConfig.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    MediaAnalysisOutputConfig.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisS3KeyPrefix, location_name: "S3KeyPrefix"))
    MediaAnalysisOutputConfig.type = Types::MediaAnalysisOutputConfig
    MediaAnalysisResults.add_member(:s3_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    MediaAnalysisResults.add_member(:model_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisModelVersions, location_name: "ModelVersions"))
    MediaAnalysisResults.type = Types::MediaAnalysisResults
    ModerationLabel.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ModerationLabel.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ModerationLabel.add_member(:parent_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ParentName"))
    ModerationLabel.add_member(:taxonomy_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "TaxonomyLevel"))
    ModerationLabel.type = Types::ModerationLabel
    ModerationLabels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModerationLabel)
    MouthOpen.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Value", traits: {"smithy.api#default" => false}))
    MouthOpen.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    MouthOpen.type = Types::MouthOpen
    Mustache.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Value", traits: {"smithy.api#default" => false}))
    Mustache.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Mustache.type = Types::Mustache
    NotificationChannel.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicArn, location_name: "SNSTopicArn", traits: {"smithy.api#required" => {}}))
    NotificationChannel.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    NotificationChannel.type = Types::NotificationChannel
    OrientationCorrection.add_member(:rotate_0, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROTATE_0", traits: {"smithy.api#enumValue" => "ROTATE_0"}))
    OrientationCorrection.add_member(:rotate_90, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROTATE_90", traits: {"smithy.api#enumValue" => "ROTATE_90"}))
    OrientationCorrection.add_member(:rotate_180, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROTATE_180", traits: {"smithy.api#enumValue" => "ROTATE_180"}))
    OrientationCorrection.add_member(:rotate_270, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROTATE_270", traits: {"smithy.api#enumValue" => "ROTATE_270"}))
    OutputConfig.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket"))
    OutputConfig.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "S3KeyPrefix"))
    OutputConfig.type = Types::OutputConfig
    Parent.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Parent.type = Types::Parent
    Parents.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Parent)
    PersonDetail.add_member(:index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonIndex, location_name: "Index", traits: {"smithy.api#default" => 0}))
    PersonDetail.add_member(:bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    PersonDetail.add_member(:face, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail, location_name: "Face"))
    PersonDetail.type = Types::PersonDetail
    PersonDetection.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp", traits: {"smithy.api#default" => 0}))
    PersonDetection.add_member(:person, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonDetail, location_name: "Person"))
    PersonDetection.type = Types::PersonDetection
    PersonDetections.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonDetection)
    PersonMatch.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp", traits: {"smithy.api#default" => 0}))
    PersonMatch.add_member(:person, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonDetail, location_name: "Person"))
    PersonMatch.add_member(:face_matches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceMatchList, location_name: "FaceMatches"))
    PersonMatch.type = Types::PersonMatch
    PersonMatches.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonMatch)
    PersonTrackingSortBy.add_member(:index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INDEX", traits: {"smithy.api#enumValue" => "INDEX"}))
    PersonTrackingSortBy.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    Point.add_member(:x, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "X"))
    Point.add_member(:y, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "Y"))
    Point.type = Types::Point
    Polygon.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Point)
    Pose.add_member(:roll, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Degree, location_name: "Roll"))
    Pose.add_member(:yaw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Degree, location_name: "Yaw"))
    Pose.add_member(:pitch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Degree, location_name: "Pitch"))
    Pose.type = Types::Pose
    ProjectAutoUpdate.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ProjectAutoUpdate.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ProjectDescription.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn"))
    ProjectDescription.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    ProjectDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectStatus, location_name: "Status"))
    ProjectDescription.add_member(:datasets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetMetadataList, location_name: "Datasets"))
    ProjectDescription.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeature, location_name: "Feature"))
    ProjectDescription.add_member(:auto_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectAutoUpdate, location_name: "AutoUpdate"))
    ProjectDescription.type = Types::ProjectDescription
    ProjectDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDescription)
    ProjectNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName)
    ProjectPolicies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicy)
    ProjectPolicy.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn"))
    ProjectPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyName, location_name: "PolicyName"))
    ProjectPolicy.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyRevisionId, location_name: "PolicyRevisionId"))
    ProjectPolicy.add_member(:policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyDocument, location_name: "PolicyDocument"))
    ProjectPolicy.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    ProjectPolicy.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdatedTimestamp"))
    ProjectPolicy.type = Types::ProjectPolicy
    ProjectStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ProjectStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ProjectStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ProjectVersionDescription.add_member(:project_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: "ProjectVersionArn"))
    ProjectVersionDescription.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    ProjectVersionDescription.add_member(:min_inference_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnits, location_name: "MinInferenceUnits"))
    ProjectVersionDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionStatus, location_name: "Status"))
    ProjectVersionDescription.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    ProjectVersionDescription.add_member(:billable_training_time_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "BillableTrainingTimeInSeconds"))
    ProjectVersionDescription.add_member(:training_end_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "TrainingEndTimestamp"))
    ProjectVersionDescription.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfig, location_name: "OutputConfig"))
    ProjectVersionDescription.add_member(:training_data_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDataResult, location_name: "TrainingDataResult"))
    ProjectVersionDescription.add_member(:testing_data_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestingDataResult, location_name: "TestingDataResult"))
    ProjectVersionDescription.add_member(:evaluation_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationResult, location_name: "EvaluationResult"))
    ProjectVersionDescription.add_member(:manifest_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroundTruthManifest, location_name: "ManifestSummary"))
    ProjectVersionDescription.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    ProjectVersionDescription.add_member(:max_inference_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnits, location_name: "MaxInferenceUnits"))
    ProjectVersionDescription.add_member(:source_project_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: "SourceProjectVersionArn"))
    ProjectVersionDescription.add_member(:version_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionDescription, location_name: "VersionDescription"))
    ProjectVersionDescription.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeature, location_name: "Feature"))
    ProjectVersionDescription.add_member(:base_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "BaseModelVersion"))
    ProjectVersionDescription.add_member(:feature_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationFeatureConfig, location_name: "FeatureConfig"))
    ProjectVersionDescription.type = Types::ProjectVersionDescription
    ProjectVersionDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionDescription)
    ProjectVersionStatus.add_member(:training_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRAINING_IN_PROGRESS", traits: {"smithy.api#enumValue" => "TRAINING_IN_PROGRESS"}))
    ProjectVersionStatus.add_member(:training_completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRAINING_COMPLETED", traits: {"smithy.api#enumValue" => "TRAINING_COMPLETED"}))
    ProjectVersionStatus.add_member(:training_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRAINING_FAILED", traits: {"smithy.api#enumValue" => "TRAINING_FAILED"}))
    ProjectVersionStatus.add_member(:starting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    ProjectVersionStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ProjectVersionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ProjectVersionStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    ProjectVersionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    ProjectVersionStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ProjectVersionStatus.add_member(:copying_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COPYING_IN_PROGRESS", traits: {"smithy.api#enumValue" => "COPYING_IN_PROGRESS"}))
    ProjectVersionStatus.add_member(:copying_completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COPYING_COMPLETED", traits: {"smithy.api#enumValue" => "COPYING_COMPLETED"}))
    ProjectVersionStatus.add_member(:copying_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COPYING_FAILED", traits: {"smithy.api#enumValue" => "COPYING_FAILED"}))
    ProjectVersionStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    ProjectVersionStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ProtectiveEquipmentBodyPart.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BodyPart, location_name: "Name"))
    ProtectiveEquipmentBodyPart.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ProtectiveEquipmentBodyPart.add_member(:equipment_detections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EquipmentDetections, location_name: "EquipmentDetections"))
    ProtectiveEquipmentBodyPart.type = Types::ProtectiveEquipmentBodyPart
    ProtectiveEquipmentPerson.add_member(:body_parts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BodyParts, location_name: "BodyParts"))
    ProtectiveEquipmentPerson.add_member(:bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    ProtectiveEquipmentPerson.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ProtectiveEquipmentPerson.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "Id"))
    ProtectiveEquipmentPerson.type = Types::ProtectiveEquipmentPerson
    ProtectiveEquipmentPersonIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger)
    ProtectiveEquipmentPersons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentPerson)
    ProtectiveEquipmentSummarizationAttributes.add_member(:min_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence", traits: {"smithy.api#required" => {}}))
    ProtectiveEquipmentSummarizationAttributes.add_member(:required_equipment_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentTypes, location_name: "RequiredEquipmentTypes", traits: {"smithy.api#required" => {}}))
    ProtectiveEquipmentSummarizationAttributes.type = Types::ProtectiveEquipmentSummarizationAttributes
    ProtectiveEquipmentSummary.add_member(:persons_with_required_equipment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentPersonIds, location_name: "PersonsWithRequiredEquipment"))
    ProtectiveEquipmentSummary.add_member(:persons_without_required_equipment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentPersonIds, location_name: "PersonsWithoutRequiredEquipment"))
    ProtectiveEquipmentSummary.add_member(:persons_indeterminate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentPersonIds, location_name: "PersonsIndeterminate"))
    ProtectiveEquipmentSummary.type = Types::ProtectiveEquipmentSummary
    ProtectiveEquipmentType.add_member(:face_cover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FACE_COVER", traits: {"smithy.api#enumValue" => "FACE_COVER"}))
    ProtectiveEquipmentType.add_member(:hand_cover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HAND_COVER", traits: {"smithy.api#enumValue" => "HAND_COVER"}))
    ProtectiveEquipmentType.add_member(:head_cover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEAD_COVER", traits: {"smithy.api#enumValue" => "HEAD_COVER"}))
    ProtectiveEquipmentTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectiveEquipmentType)
    ProvisionedThroughputExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ProvisionedThroughputExceededException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ProvisionedThroughputExceededException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    ProvisionedThroughputExceededException.type = Types::ProvisionedThroughputExceededException
    PutProjectPolicyRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn", traits: {"smithy.api#required" => {}}))
    PutProjectPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyName, location_name: "PolicyName", traits: {"smithy.api#required" => {}}))
    PutProjectPolicyRequest.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyRevisionId, location_name: "PolicyRevisionId"))
    PutProjectPolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyDocument, location_name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    PutProjectPolicyRequest.type = Types::PutProjectPolicyRequest
    PutProjectPolicyResponse.add_member(:policy_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectPolicyRevisionId, location_name: "PolicyRevisionId"))
    PutProjectPolicyResponse.type = Types::PutProjectPolicyResponse
    QualityFilter.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    QualityFilter.add_member(:auto, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTO", traits: {"smithy.api#enumValue" => "AUTO"}))
    QualityFilter.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    QualityFilter.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    QualityFilter.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    Reason.add_member(:exceeds_max_faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXCEEDS_MAX_FACES", traits: {"smithy.api#enumValue" => "EXCEEDS_MAX_FACES"}))
    Reason.add_member(:extreme_pose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXTREME_POSE", traits: {"smithy.api#enumValue" => "EXTREME_POSE"}))
    Reason.add_member(:low_brightness, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW_BRIGHTNESS", traits: {"smithy.api#enumValue" => "LOW_BRIGHTNESS"}))
    Reason.add_member(:low_sharpness, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW_SHARPNESS", traits: {"smithy.api#enumValue" => "LOW_SHARPNESS"}))
    Reason.add_member(:low_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW_CONFIDENCE", traits: {"smithy.api#enumValue" => "LOW_CONFIDENCE"}))
    Reason.add_member(:small_bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SMALL_BOUNDING_BOX", traits: {"smithy.api#enumValue" => "SMALL_BOUNDING_BOX"}))
    Reason.add_member(:low_face_quality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW_FACE_QUALITY", traits: {"smithy.api#enumValue" => "LOW_FACE_QUALITY"}))
    Reasons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Reason)
    RecognizeCelebritiesRequest.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: "Image", traits: {"smithy.api#required" => {}}))
    RecognizeCelebritiesRequest.type = Types::RecognizeCelebritiesRequest
    RecognizeCelebritiesResponse.add_member(:celebrity_faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CelebrityList, location_name: "CelebrityFaces"))
    RecognizeCelebritiesResponse.add_member(:unrecognized_faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparedFaceList, location_name: "UnrecognizedFaces"))
    RecognizeCelebritiesResponse.add_member(:orientation_correction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "OrientationCorrection"))
    RecognizeCelebritiesResponse.type = Types::RecognizeCelebritiesResponse
    RegionOfInterest.add_member(:bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    RegionOfInterest.add_member(:polygon, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Polygon, location_name: "Polygon"))
    RegionOfInterest.type = Types::RegionOfInterest
    RegionsOfInterest.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionOfInterest)
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceAlreadyExistsException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ResourceAlreadyExistsException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceInUseException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ResourceInUseException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ResourceNotFoundException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotReadyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotReadyException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ResourceNotReadyException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    ResourceNotReadyException.type = Types::ResourceNotReadyException
    S3Destination.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: "Bucket"))
    S3Destination.add_member(:key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "KeyPrefix"))
    S3Destination.type = Types::S3Destination
    S3Object.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: "Bucket"))
    S3Object.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectName, location_name: "Name"))
    S3Object.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "Version"))
    S3Object.type = Types::S3Object
    SearchFacesByImageRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    SearchFacesByImageRequest.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: "Image", traits: {"smithy.api#required" => {}}))
    SearchFacesByImageRequest.add_member(:max_faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFaces, location_name: "MaxFaces"))
    SearchFacesByImageRequest.add_member(:face_match_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "FaceMatchThreshold"))
    SearchFacesByImageRequest.add_member(:quality_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualityFilter, location_name: "QualityFilter"))
    SearchFacesByImageRequest.type = Types::SearchFacesByImageRequest
    SearchFacesByImageResponse.add_member(:searched_face_bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: "SearchedFaceBoundingBox"))
    SearchFacesByImageResponse.add_member(:searched_face_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "SearchedFaceConfidence"))
    SearchFacesByImageResponse.add_member(:face_matches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceMatchList, location_name: "FaceMatches"))
    SearchFacesByImageResponse.add_member(:face_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    SearchFacesByImageResponse.type = Types::SearchFacesByImageResponse
    SearchFacesRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    SearchFacesRequest.add_member(:face_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId", traits: {"smithy.api#required" => {}}))
    SearchFacesRequest.add_member(:max_faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFaces, location_name: "MaxFaces"))
    SearchFacesRequest.add_member(:face_match_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "FaceMatchThreshold"))
    SearchFacesRequest.type = Types::SearchFacesRequest
    SearchFacesResponse.add_member(:searched_face_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: "SearchedFaceId"))
    SearchFacesResponse.add_member(:face_matches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceMatchList, location_name: "FaceMatches"))
    SearchFacesResponse.add_member(:face_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    SearchFacesResponse.type = Types::SearchFacesResponse
    SearchUsersByImageRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    SearchUsersByImageRequest.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: "Image", traits: {"smithy.api#required" => {}}))
    SearchUsersByImageRequest.add_member(:user_match_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "UserMatchThreshold"))
    SearchUsersByImageRequest.add_member(:max_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxUserResults, location_name: "MaxUsers"))
    SearchUsersByImageRequest.add_member(:quality_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualityFilter, location_name: "QualityFilter"))
    SearchUsersByImageRequest.type = Types::SearchUsersByImageRequest
    SearchUsersByImageResponse.add_member(:user_matches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserMatchList, location_name: "UserMatches"))
    SearchUsersByImageResponse.add_member(:face_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    SearchUsersByImageResponse.add_member(:searched_face, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchedFaceDetails, location_name: "SearchedFace"))
    SearchUsersByImageResponse.add_member(:unsearched_faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsearchedFacesList, location_name: "UnsearchedFaces"))
    SearchUsersByImageResponse.type = Types::SearchUsersByImageResponse
    SearchUsersRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    SearchUsersRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    SearchUsersRequest.add_member(:face_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    SearchUsersRequest.add_member(:user_match_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "UserMatchThreshold"))
    SearchUsersRequest.add_member(:max_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxUserResults, location_name: "MaxUsers"))
    SearchUsersRequest.type = Types::SearchUsersRequest
    SearchUsersResponse.add_member(:user_matches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserMatchList, location_name: "UserMatches"))
    SearchUsersResponse.add_member(:face_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    SearchUsersResponse.add_member(:searched_face, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchedFace, location_name: "SearchedFace"))
    SearchUsersResponse.add_member(:searched_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchedUser, location_name: "SearchedUser"))
    SearchUsersResponse.type = Types::SearchUsersResponse
    SearchedFace.add_member(:face_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    SearchedFace.type = Types::SearchedFace
    SearchedFaceDetails.add_member(:face_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail, location_name: "FaceDetail"))
    SearchedFaceDetails.type = Types::SearchedFaceDetails
    SearchedUser.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    SearchedUser.type = Types::SearchedUser
    SegmentDetection.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentType, location_name: "Type"))
    SegmentDetection.add_member(:start_timestamp_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTimestampMillis", traits: {"smithy.api#default" => 0}))
    SegmentDetection.add_member(:end_timestamp_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTimestampMillis", traits: {"smithy.api#default" => 0}))
    SegmentDetection.add_member(:duration_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "DurationMillis"))
    SegmentDetection.add_member(:start_timecode_smpte, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timecode, location_name: "StartTimecodeSMPTE"))
    SegmentDetection.add_member(:end_timecode_smpte, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timecode, location_name: "EndTimecodeSMPTE"))
    SegmentDetection.add_member(:duration_smpte, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timecode, location_name: "DurationSMPTE"))
    SegmentDetection.add_member(:technical_cue_segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TechnicalCueSegment, location_name: "TechnicalCueSegment"))
    SegmentDetection.add_member(:shot_segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShotSegment, location_name: "ShotSegment"))
    SegmentDetection.add_member(:start_frame_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "StartFrameNumber"))
    SegmentDetection.add_member(:end_frame_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "EndFrameNumber"))
    SegmentDetection.add_member(:duration_frames, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "DurationFrames"))
    SegmentDetection.type = Types::SegmentDetection
    SegmentDetections.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDetection)
    SegmentType.add_member(:technical_cue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TECHNICAL_CUE", traits: {"smithy.api#enumValue" => "TECHNICAL_CUE"}))
    SegmentType.add_member(:shot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHOT", traits: {"smithy.api#enumValue" => "SHOT"}))
    SegmentTypeInfo.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentType, location_name: "Type"))
    SegmentTypeInfo.add_member(:model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ModelVersion"))
    SegmentTypeInfo.type = Types::SegmentTypeInfo
    SegmentTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentType)
    SegmentTypesInfo.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentTypeInfo)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ServiceQuotaExceededException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SessionNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    SessionNotFoundException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    SessionNotFoundException.type = Types::SessionNotFoundException
    ShotSegment.add_member(:index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "Index"))
    ShotSegment.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentConfidence, location_name: "Confidence"))
    ShotSegment.type = Types::ShotSegment
    Smile.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Value", traits: {"smithy.api#default" => false}))
    Smile.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Smile.type = Types::Smile
    StartCelebrityRecognitionRequest.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video", traits: {"smithy.api#required" => {}}))
    StartCelebrityRecognitionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartCelebrityRecognitionRequest.add_member(:notification_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartCelebrityRecognitionRequest.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartCelebrityRecognitionRequest.type = Types::StartCelebrityRecognitionRequest
    StartCelebrityRecognitionResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartCelebrityRecognitionResponse.type = Types::StartCelebrityRecognitionResponse
    StartContentModerationRequest.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video", traits: {"smithy.api#required" => {}}))
    StartContentModerationRequest.add_member(:min_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    StartContentModerationRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartContentModerationRequest.add_member(:notification_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartContentModerationRequest.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartContentModerationRequest.type = Types::StartContentModerationRequest
    StartContentModerationResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartContentModerationResponse.type = Types::StartContentModerationResponse
    StartFaceDetectionRequest.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video", traits: {"smithy.api#required" => {}}))
    StartFaceDetectionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartFaceDetectionRequest.add_member(:notification_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartFaceDetectionRequest.add_member(:face_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceAttributes, location_name: "FaceAttributes"))
    StartFaceDetectionRequest.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartFaceDetectionRequest.type = Types::StartFaceDetectionRequest
    StartFaceDetectionResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartFaceDetectionResponse.type = Types::StartFaceDetectionResponse
    StartFaceSearchRequest.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video", traits: {"smithy.api#required" => {}}))
    StartFaceSearchRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartFaceSearchRequest.add_member(:face_match_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "FaceMatchThreshold"))
    StartFaceSearchRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId", traits: {"smithy.api#required" => {}}))
    StartFaceSearchRequest.add_member(:notification_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartFaceSearchRequest.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartFaceSearchRequest.type = Types::StartFaceSearchRequest
    StartFaceSearchResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartFaceSearchResponse.type = Types::StartFaceSearchResponse
    StartLabelDetectionRequest.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video", traits: {"smithy.api#required" => {}}))
    StartLabelDetectionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartLabelDetectionRequest.add_member(:min_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    StartLabelDetectionRequest.add_member(:notification_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartLabelDetectionRequest.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartLabelDetectionRequest.add_member(:features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetectionFeatureList, location_name: "Features"))
    StartLabelDetectionRequest.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDetectionSettings, location_name: "Settings"))
    StartLabelDetectionRequest.type = Types::StartLabelDetectionRequest
    StartLabelDetectionResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartLabelDetectionResponse.type = Types::StartLabelDetectionResponse
    StartMediaAnalysisJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartMediaAnalysisJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobName, location_name: "JobName"))
    StartMediaAnalysisJobRequest.add_member(:operations_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisOperationsConfig, location_name: "OperationsConfig", traits: {"smithy.api#required" => {}}))
    StartMediaAnalysisJobRequest.add_member(:input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisInput, location_name: "Input", traits: {"smithy.api#required" => {}}))
    StartMediaAnalysisJobRequest.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisOutputConfig, location_name: "OutputConfig", traits: {"smithy.api#required" => {}}))
    StartMediaAnalysisJobRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    StartMediaAnalysisJobRequest.type = Types::StartMediaAnalysisJobRequest
    StartMediaAnalysisJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaAnalysisJobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    StartMediaAnalysisJobResponse.type = Types::StartMediaAnalysisJobResponse
    StartPersonTrackingRequest.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video", traits: {"smithy.api#required" => {}}))
    StartPersonTrackingRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartPersonTrackingRequest.add_member(:notification_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartPersonTrackingRequest.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartPersonTrackingRequest.type = Types::StartPersonTrackingRequest
    StartPersonTrackingResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartPersonTrackingResponse.type = Types::StartPersonTrackingResponse
    StartProjectVersionRequest.add_member(:project_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: "ProjectVersionArn", traits: {"smithy.api#required" => {}}))
    StartProjectVersionRequest.add_member(:min_inference_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnits, location_name: "MinInferenceUnits", traits: {"smithy.api#required" => {}}))
    StartProjectVersionRequest.add_member(:max_inference_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceUnits, location_name: "MaxInferenceUnits"))
    StartProjectVersionRequest.type = Types::StartProjectVersionRequest
    StartProjectVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionStatus, location_name: "Status"))
    StartProjectVersionResponse.type = Types::StartProjectVersionResponse
    StartSegmentDetectionFilters.add_member(:technical_cue_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTechnicalCueDetectionFilter, location_name: "TechnicalCueFilter"))
    StartSegmentDetectionFilters.add_member(:shot_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartShotDetectionFilter, location_name: "ShotFilter"))
    StartSegmentDetectionFilters.type = Types::StartSegmentDetectionFilters
    StartSegmentDetectionRequest.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video", traits: {"smithy.api#required" => {}}))
    StartSegmentDetectionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartSegmentDetectionRequest.add_member(:notification_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartSegmentDetectionRequest.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartSegmentDetectionRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSegmentDetectionFilters, location_name: "Filters"))
    StartSegmentDetectionRequest.add_member(:segment_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentTypes, location_name: "SegmentTypes", traits: {"smithy.api#required" => {}}))
    StartSegmentDetectionRequest.type = Types::StartSegmentDetectionRequest
    StartSegmentDetectionResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartSegmentDetectionResponse.type = Types::StartSegmentDetectionResponse
    StartShotDetectionFilter.add_member(:min_segment_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentConfidence, location_name: "MinSegmentConfidence"))
    StartShotDetectionFilter.type = Types::StartShotDetectionFilter
    StartStreamProcessorRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    StartStreamProcessorRequest.add_member(:start_selector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessingStartSelector, location_name: "StartSelector"))
    StartStreamProcessorRequest.add_member(:stop_selector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessingStopSelector, location_name: "StopSelector"))
    StartStreamProcessorRequest.type = Types::StartStreamProcessorRequest
    StartStreamProcessorResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartStreamProcessorSessionId, location_name: "SessionId"))
    StartStreamProcessorResponse.type = Types::StartStreamProcessorResponse
    StartTechnicalCueDetectionFilter.add_member(:min_segment_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentConfidence, location_name: "MinSegmentConfidence"))
    StartTechnicalCueDetectionFilter.add_member(:black_frame, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlackFrame, location_name: "BlackFrame"))
    StartTechnicalCueDetectionFilter.type = Types::StartTechnicalCueDetectionFilter
    StartTextDetectionFilters.add_member(:word_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectionFilter, location_name: "WordFilter"))
    StartTextDetectionFilters.add_member(:regions_of_interest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: "RegionsOfInterest"))
    StartTextDetectionFilters.type = Types::StartTextDetectionFilters
    StartTextDetectionRequest.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: "Video", traits: {"smithy.api#required" => {}}))
    StartTextDetectionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartTextDetectionRequest.add_member(:notification_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartTextDetectionRequest.add_member(:job_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartTextDetectionRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTextDetectionFilters, location_name: "Filters"))
    StartTextDetectionRequest.type = Types::StartTextDetectionRequest
    StartTextDetectionResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartTextDetectionResponse.type = Types::StartTextDetectionResponse
    StopProjectVersionRequest.add_member(:project_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: "ProjectVersionArn", traits: {"smithy.api#required" => {}}))
    StopProjectVersionRequest.type = Types::StopProjectVersionRequest
    StopProjectVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVersionStatus, location_name: "Status"))
    StopProjectVersionResponse.type = Types::StopProjectVersionResponse
    StopStreamProcessorRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    StopStreamProcessorRequest.type = Types::StopStreamProcessorRequest
    StopStreamProcessorResponse.type = Types::StopStreamProcessorResponse
    StreamProcessingStartSelector.add_member(:kvs_stream_start_selector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamStartSelector, location_name: "KVSStreamStartSelector"))
    StreamProcessingStartSelector.type = Types::StreamProcessingStartSelector
    StreamProcessingStopSelector.add_member(:max_duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxDurationInSecondsULong, location_name: "MaxDurationInSeconds"))
    StreamProcessingStopSelector.type = Types::StreamProcessingStopSelector
    StreamProcessor.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: "Name"))
    StreamProcessor.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorStatus, location_name: "Status"))
    StreamProcessor.type = Types::StreamProcessor
    StreamProcessorDataSharingPreference.add_member(:opt_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "OptIn", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    StreamProcessorDataSharingPreference.type = Types::StreamProcessorDataSharingPreference
    StreamProcessorInput.add_member(:kinesis_video_stream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStream, location_name: "KinesisVideoStream"))
    StreamProcessorInput.type = Types::StreamProcessorInput
    StreamProcessorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessor)
    StreamProcessorNotificationChannel.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicArn, location_name: "SNSTopicArn", traits: {"smithy.api#required" => {}}))
    StreamProcessorNotificationChannel.type = Types::StreamProcessorNotificationChannel
    StreamProcessorOutput.add_member(:kinesis_data_stream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisDataStream, location_name: "KinesisDataStream"))
    StreamProcessorOutput.add_member(:s3_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: "S3Destination"))
    StreamProcessorOutput.type = Types::StreamProcessorOutput
    StreamProcessorParameterToDelete.add_member(:connected_home_min_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ConnectedHomeMinConfidence", traits: {"smithy.api#enumValue" => "ConnectedHomeMinConfidence"}))
    StreamProcessorParameterToDelete.add_member(:regions_of_interest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RegionsOfInterest", traits: {"smithy.api#enumValue" => "RegionsOfInterest"}))
    StreamProcessorParametersToDelete.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorParameterToDelete)
    StreamProcessorSettings.add_member(:face_search, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceSearchSettings, location_name: "FaceSearch"))
    StreamProcessorSettings.add_member(:connected_home, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectedHomeSettings, location_name: "ConnectedHome"))
    StreamProcessorSettings.type = Types::StreamProcessorSettings
    StreamProcessorSettingsForUpdate.add_member(:connected_home_for_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectedHomeSettingsForUpdate, location_name: "ConnectedHomeForUpdate"))
    StreamProcessorSettingsForUpdate.type = Types::StreamProcessorSettingsForUpdate
    StreamProcessorStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    StreamProcessorStatus.add_member(:starting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    StreamProcessorStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    StreamProcessorStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StreamProcessorStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    StreamProcessorStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    Summary.add_member(:s3_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    Summary.type = Types::Summary
    Sunglasses.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Value", traits: {"smithy.api#default" => false}))
    Sunglasses.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Sunglasses.type = Types::Sunglasses
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TechnicalCueSegment.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TechnicalCueType, location_name: "Type"))
    TechnicalCueSegment.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentConfidence, location_name: "Confidence"))
    TechnicalCueSegment.type = Types::TechnicalCueSegment
    TechnicalCueType.add_member(:color_bars, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COLOR_BARS", traits: {"smithy.api#enumValue" => "ColorBars"}))
    TechnicalCueType.add_member(:end_credits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "END_CREDITS", traits: {"smithy.api#enumValue" => "EndCredits"}))
    TechnicalCueType.add_member(:black_frames, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BLACK_FRAMES", traits: {"smithy.api#enumValue" => "BlackFrames"}))
    TechnicalCueType.add_member(:opening_credits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPENING_CREDITS", traits: {"smithy.api#enumValue" => "OpeningCredits"}))
    TechnicalCueType.add_member(:studio_logo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STUDIO_LOGO", traits: {"smithy.api#enumValue" => "StudioLogo"}))
    TechnicalCueType.add_member(:slate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SLATE", traits: {"smithy.api#enumValue" => "Slate"}))
    TechnicalCueType.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTENT", traits: {"smithy.api#enumValue" => "Content"}))
    TestingData.add_member(:assets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Assets, location_name: "Assets"))
    TestingData.add_member(:auto_create, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoCreate", traits: {"smithy.api#default" => false}))
    TestingData.type = Types::TestingData
    TestingDataResult.add_member(:input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestingData, location_name: "Input"))
    TestingDataResult.add_member(:output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestingData, location_name: "Output"))
    TestingDataResult.add_member(:validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationData, location_name: "Validation"))
    TestingDataResult.type = Types::TestingDataResult
    TextDetection.add_member(:detected_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DetectedText"))
    TextDetection.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextTypes, location_name: "Type"))
    TextDetection.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "Id"))
    TextDetection.add_member(:parent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: "ParentId"))
    TextDetection.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    TextDetection.add_member(:geometry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Geometry, location_name: "Geometry"))
    TextDetection.type = Types::TextDetection
    TextDetectionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextDetection)
    TextDetectionResult.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp", traits: {"smithy.api#default" => 0}))
    TextDetectionResult.add_member(:text_detection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextDetection, location_name: "TextDetection"))
    TextDetectionResult.type = Types::TextDetectionResult
    TextDetectionResults.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextDetectionResult)
    TextTypes.add_member(:line, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINE", traits: {"smithy.api#enumValue" => "LINE"}))
    TextTypes.add_member(:word, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WORD", traits: {"smithy.api#enumValue" => "WORD"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ThrottlingException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    ThrottlingException.type = Types::ThrottlingException
    TrainingData.add_member(:assets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Assets, location_name: "Assets"))
    TrainingData.type = Types::TrainingData
    TrainingDataResult.add_member(:input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingData, location_name: "Input"))
    TrainingDataResult.add_member(:output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingData, location_name: "Output"))
    TrainingDataResult.add_member(:validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationData, location_name: "Validation"))
    TrainingDataResult.type = Types::TrainingDataResult
    UnindexedFace.add_member(:reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Reasons, location_name: "Reasons"))
    UnindexedFace.add_member(:face_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail, location_name: "FaceDetail"))
    UnindexedFace.type = Types::UnindexedFace
    UnindexedFaces.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnindexedFace)
    UnsearchedFace.add_member(:face_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceDetail, location_name: "FaceDetails"))
    UnsearchedFace.add_member(:reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsearchedFaceReasons, location_name: "Reasons"))
    UnsearchedFace.type = Types::UnsearchedFace
    UnsearchedFaceReason.add_member(:face_not_largest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FACE_NOT_LARGEST", traits: {"smithy.api#enumValue" => "FACE_NOT_LARGEST"}))
    UnsearchedFaceReason.add_member(:exceeds_max_faces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXCEEDS_MAX_FACES", traits: {"smithy.api#enumValue" => "EXCEEDS_MAX_FACES"}))
    UnsearchedFaceReason.add_member(:extreme_pose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXTREME_POSE", traits: {"smithy.api#enumValue" => "EXTREME_POSE"}))
    UnsearchedFaceReason.add_member(:low_brightness, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW_BRIGHTNESS", traits: {"smithy.api#enumValue" => "LOW_BRIGHTNESS"}))
    UnsearchedFaceReason.add_member(:low_sharpness, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW_SHARPNESS", traits: {"smithy.api#enumValue" => "LOW_SHARPNESS"}))
    UnsearchedFaceReason.add_member(:low_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW_CONFIDENCE", traits: {"smithy.api#enumValue" => "LOW_CONFIDENCE"}))
    UnsearchedFaceReason.add_member(:small_bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SMALL_BOUNDING_BOX", traits: {"smithy.api#enumValue" => "SMALL_BOUNDING_BOX"}))
    UnsearchedFaceReason.add_member(:low_face_quality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW_FACE_QUALITY", traits: {"smithy.api#enumValue" => "LOW_FACE_QUALITY"}))
    UnsearchedFaceReasons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsearchedFaceReason)
    UnsearchedFacesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsearchedFace)
    UnsuccessfulFaceAssociation.add_member(:face_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    UnsuccessfulFaceAssociation.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    UnsuccessfulFaceAssociation.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    UnsuccessfulFaceAssociation.add_member(:reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceAssociationReasons, location_name: "Reasons"))
    UnsuccessfulFaceAssociation.type = Types::UnsuccessfulFaceAssociation
    UnsuccessfulFaceAssociationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceAssociation)
    UnsuccessfulFaceAssociationReason.add_member(:face_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FACE_NOT_FOUND", traits: {"smithy.api#enumValue" => "FACE_NOT_FOUND"}))
    UnsuccessfulFaceAssociationReason.add_member(:associated_to_a_different_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATED_TO_A_DIFFERENT_USER", traits: {"smithy.api#enumValue" => "ASSOCIATED_TO_A_DIFFERENT_USER"}))
    UnsuccessfulFaceAssociationReason.add_member(:low_match_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW_MATCH_CONFIDENCE", traits: {"smithy.api#enumValue" => "LOW_MATCH_CONFIDENCE"}))
    UnsuccessfulFaceAssociationReasons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceAssociationReason)
    UnsuccessfulFaceDeletion.add_member(:face_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    UnsuccessfulFaceDeletion.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    UnsuccessfulFaceDeletion.add_member(:reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDeletionReasons, location_name: "Reasons"))
    UnsuccessfulFaceDeletion.type = Types::UnsuccessfulFaceDeletion
    UnsuccessfulFaceDeletionReason.add_member(:associated_to_an_existing_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATED_TO_AN_EXISTING_USER", traits: {"smithy.api#enumValue" => "ASSOCIATED_TO_AN_EXISTING_USER"}))
    UnsuccessfulFaceDeletionReason.add_member(:face_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FACE_NOT_FOUND", traits: {"smithy.api#enumValue" => "FACE_NOT_FOUND"}))
    UnsuccessfulFaceDeletionReasons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDeletionReason)
    UnsuccessfulFaceDeletionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDeletion)
    UnsuccessfulFaceDisassociation.add_member(:face_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    UnsuccessfulFaceDisassociation.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    UnsuccessfulFaceDisassociation.add_member(:reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDisassociationReasons, location_name: "Reasons"))
    UnsuccessfulFaceDisassociation.type = Types::UnsuccessfulFaceDisassociation
    UnsuccessfulFaceDisassociationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDisassociation)
    UnsuccessfulFaceDisassociationReason.add_member(:face_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FACE_NOT_FOUND", traits: {"smithy.api#enumValue" => "FACE_NOT_FOUND"}))
    UnsuccessfulFaceDisassociationReason.add_member(:associated_to_a_different_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATED_TO_A_DIFFERENT_USER", traits: {"smithy.api#enumValue" => "ASSOCIATED_TO_A_DIFFERENT_USER"}))
    UnsuccessfulFaceDisassociationReasons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsuccessfulFaceDisassociationReason)
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDatasetEntriesRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn", traits: {"smithy.api#required" => {}}))
    UpdateDatasetEntriesRequest.add_member(:changes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetChanges, location_name: "Changes", traits: {"smithy.api#required" => {}}))
    UpdateDatasetEntriesRequest.type = Types::UpdateDatasetEntriesRequest
    UpdateDatasetEntriesResponse.type = Types::UpdateDatasetEntriesResponse
    UpdateStreamProcessorRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateStreamProcessorRequest.add_member(:settings_for_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorSettingsForUpdate, location_name: "SettingsForUpdate"))
    UpdateStreamProcessorRequest.add_member(:regions_of_interest_for_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: "RegionsOfInterestForUpdate"))
    UpdateStreamProcessorRequest.add_member(:data_sharing_preference_for_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorDataSharingPreference, location_name: "DataSharingPreferenceForUpdate"))
    UpdateStreamProcessorRequest.add_member(:parameters_to_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamProcessorParametersToDelete, location_name: "ParametersToDelete"))
    UpdateStreamProcessorRequest.type = Types::UpdateStreamProcessorRequest
    UpdateStreamProcessorResponse.type = Types::UpdateStreamProcessorResponse
    Urls.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url)
    User.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    User.add_member(:user_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserStatus, location_name: "UserStatus"))
    User.type = Types::User
    UserFaceIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FaceId)
    UserList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: User)
    UserMatch.add_member(:similarity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: "Similarity"))
    UserMatch.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchedUser, location_name: "User"))
    UserMatch.type = Types::UserMatch
    UserMatchList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserMatch)
    UserStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    UserStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    UserStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    UserStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ValidationData.add_member(:assets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Assets, location_name: "Assets"))
    ValidationData.type = Types::ValidationData
    VersionNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName)
    Versions.add_member(:minimum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "Minimum"))
    Versions.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "Maximum"))
    Versions.type = Types::Versions
    Video.add_member(:s3_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    Video.type = Types::Video
    VideoColorRange.add_member(:full, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    VideoColorRange.add_member(:limited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LIMITED", traits: {"smithy.api#enumValue" => "LIMITED"}))
    VideoJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    VideoJobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    VideoJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    VideoMetadata.add_member(:codec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Codec"))
    VideoMetadata.add_member(:duration_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "DurationMillis"))
    VideoMetadata.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Format"))
    VideoMetadata.add_member(:frame_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: "FrameRate"))
    VideoMetadata.add_member(:frame_height, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "FrameHeight"))
    VideoMetadata.add_member(:frame_width, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ULong, location_name: "FrameWidth"))
    VideoMetadata.add_member(:color_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoColorRange, location_name: "ColorRange"))
    VideoMetadata.type = Types::VideoMetadata
    VideoMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMetadata)
    VideoTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    VideoTooLargeException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    VideoTooLargeException.add_member(:logref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Logref"))
    VideoTooLargeException.type = Types::VideoTooLargeException

    RekognitionService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rekognition#RekognitionService"
      service.name = "RekognitionService"
      service.version = "2016-06-27"
      service.traits = {"aws.api#service" => {"sdkId" => "Rekognition", "arnNamespace" => "rekognition", "cloudFormationName" => "Rekognition", "cloudTrailEventSource" => "rekognition.amazonaws.com", "endpointPrefix" => "rekognition"}, "aws.auth#sigv4" => {"name" => "rekognition"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Rekognition"}
      service.add_operation(:associate_faces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#AssociateFaces"
        operation.name = "AssociateFaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFacesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFacesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:compare_faces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CompareFaces"
        operation.name = "CompareFaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompareFacesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompareFacesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:copy_project_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CopyProjectVersion"
        operation.name = "CopyProjectVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyProjectVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyProjectVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CreateCollection"
        operation.name = "CreateCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCollectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCollectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_face_liveness_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CreateFaceLivenessSession"
        operation.name = "CreateFaceLivenessSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFaceLivenessSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFaceLivenessSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CreateProject"
        operation.name = "CreateProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_project_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CreateProjectVersion"
        operation.name = "CreateProjectVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_stream_processor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CreateStreamProcessor"
        operation.name = "CreateStreamProcessor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamProcessorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamProcessorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#CreateUser"
        operation.name = "CreateUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteCollection"
        operation.name = "DeleteCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCollectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCollectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_faces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteFaces"
        operation.name = "DeleteFaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFacesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFacesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_project_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteProjectPolicy"
        operation.name = "DeleteProjectPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyRevisionIdException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_project_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteProjectVersion"
        operation.name = "DeleteProjectVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_stream_processor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteStreamProcessor"
        operation.name = "DeleteStreamProcessor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStreamProcessorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStreamProcessorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DescribeCollection"
        operation.name = "DescribeCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCollectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCollectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_project_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DescribeProjectVersions"
        operation.name = "DescribeProjectVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProjectVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProjectVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeProjectVersions.new
      end)
      service.add_operation(:describe_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DescribeProjects"
        operation.name = "DescribeProjects"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProjectsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProjectsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeProjects.new
      end)
      service.add_operation(:describe_stream_processor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DescribeStreamProcessor"
        operation.name = "DescribeStreamProcessor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStreamProcessorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStreamProcessorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:detect_custom_labels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DetectCustomLabels"
        operation.name = "DetectCustomLabels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectCustomLabelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectCustomLabelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:detect_faces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DetectFaces"
        operation.name = "DetectFaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectFacesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectFacesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:detect_labels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DetectLabels"
        operation.name = "DetectLabels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectLabelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:detect_moderation_labels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DetectModerationLabels"
        operation.name = "DetectModerationLabels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectModerationLabelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectModerationLabelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:detect_protective_equipment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DetectProtectiveEquipment"
        operation.name = "DetectProtectiveEquipment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectProtectiveEquipmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectProtectiveEquipmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:detect_text, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DetectText"
        operation.name = "DetectText"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectTextRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectTextResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_faces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DisassociateFaces"
        operation.name = "DisassociateFaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFacesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFacesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:distribute_dataset_entries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#DistributeDatasetEntries"
        operation.name = "DistributeDatasetEntries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistributeDatasetEntriesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistributeDatasetEntriesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_celebrity_info, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetCelebrityInfo"
        operation.name = "GetCelebrityInfo"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCelebrityInfoRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCelebrityInfoResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_celebrity_recognition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetCelebrityRecognition"
        operation.name = "GetCelebrityRecognition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCelebrityRecognitionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCelebrityRecognitionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetCelebrityRecognition.new
      end)
      service.add_operation(:get_content_moderation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetContentModeration"
        operation.name = "GetContentModeration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentModerationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentModerationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetContentModeration.new
      end)
      service.add_operation(:get_face_detection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetFaceDetection"
        operation.name = "GetFaceDetection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFaceDetectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFaceDetectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetFaceDetection.new
      end)
      service.add_operation(:get_face_liveness_session_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetFaceLivenessSessionResults"
        operation.name = "GetFaceLivenessSessionResults"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFaceLivenessSessionResultsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFaceLivenessSessionResultsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_face_search, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetFaceSearch"
        operation.name = "GetFaceSearch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFaceSearchRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFaceSearchResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetFaceSearch.new
      end)
      service.add_operation(:get_label_detection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetLabelDetection"
        operation.name = "GetLabelDetection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLabelDetectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLabelDetectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetLabelDetection.new
      end)
      service.add_operation(:get_media_analysis_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetMediaAnalysisJob"
        operation.name = "GetMediaAnalysisJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaAnalysisJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaAnalysisJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_person_tracking, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetPersonTracking"
        operation.name = "GetPersonTracking"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPersonTrackingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPersonTrackingResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetPersonTracking.new
      end)
      service.add_operation(:get_segment_detection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetSegmentDetection"
        operation.name = "GetSegmentDetection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentDetectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentDetectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetSegmentDetection.new
      end)
      service.add_operation(:get_text_detection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#GetTextDetection"
        operation.name = "GetTextDetection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTextDetectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTextDetectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetTextDetection.new
      end)
      service.add_operation(:index_faces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#IndexFaces"
        operation.name = "IndexFaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexFacesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexFacesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:list_collections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListCollections"
        operation.name = "ListCollections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollectionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollectionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListCollectionsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListCollections.new
      end)
      service.add_operation(:list_dataset_entries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListDatasetEntries"
        operation.name = "ListDatasetEntries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetEntriesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetEntriesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDatasetEntries.new
      end)
      service.add_operation(:list_dataset_labels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListDatasetLabels"
        operation.name = "ListDatasetLabels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetLabelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetLabelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDatasetLabels.new
      end)
      service.add_operation(:list_faces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListFaces"
        operation.name = "ListFaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFacesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFacesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFaces.new
      end)
      service.add_operation(:list_media_analysis_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListMediaAnalysisJobs"
        operation.name = "ListMediaAnalysisJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMediaAnalysisJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMediaAnalysisJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListMediaAnalysisJobs.new
      end)
      service.add_operation(:list_project_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListProjectPolicies"
        operation.name = "ListProjectPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListProjectPolicies.new
      end)
      service.add_operation(:list_stream_processors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListStreamProcessors"
        operation.name = "ListStreamProcessors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamProcessorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamProcessorsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListStreamProcessors.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:list_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#ListUsers"
        operation.name = "ListUsers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:put_project_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#PutProjectPolicy"
        operation.name = "PutProjectPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutProjectPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutProjectPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyRevisionIdException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:recognize_celebrities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#RecognizeCelebrities"
        operation.name = "RecognizeCelebrities"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecognizeCelebritiesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecognizeCelebritiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:search_faces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#SearchFaces"
        operation.name = "SearchFaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFacesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFacesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:search_faces_by_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#SearchFacesByImage"
        operation.name = "SearchFacesByImage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFacesByImageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFacesByImageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:search_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#SearchUsers"
        operation.name = "SearchUsers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchUsersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchUsersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:search_users_by_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#SearchUsersByImage"
        operation.name = "SearchUsersByImage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchUsersByImageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchUsersByImageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:start_celebrity_recognition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartCelebrityRecognition"
        operation.name = "StartCelebrityRecognition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCelebrityRecognitionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCelebrityRecognitionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_content_moderation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartContentModeration"
        operation.name = "StartContentModeration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartContentModerationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartContentModerationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_face_detection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartFaceDetection"
        operation.name = "StartFaceDetection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartFaceDetectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartFaceDetectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_face_search, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartFaceSearch"
        operation.name = "StartFaceSearch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartFaceSearchRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartFaceSearchResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_label_detection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartLabelDetection"
        operation.name = "StartLabelDetection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartLabelDetectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartLabelDetectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_media_analysis_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartMediaAnalysisJob"
        operation.name = "StartMediaAnalysisJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMediaAnalysisJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMediaAnalysisJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidManifestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_person_tracking, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartPersonTracking"
        operation.name = "StartPersonTracking"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartPersonTrackingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartPersonTrackingResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_project_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartProjectVersion"
        operation.name = "StartProjectVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartProjectVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartProjectVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:start_segment_detection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartSegmentDetection"
        operation.name = "StartSegmentDetection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSegmentDetectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSegmentDetectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_stream_processor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartStreamProcessor"
        operation.name = "StartStreamProcessor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartStreamProcessorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartStreamProcessorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:start_text_detection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StartTextDetection"
        operation.name = "StartTextDetection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTextDetectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTextDetectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoTooLargeException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_project_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StopProjectVersion"
        operation.name = "StopProjectVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopProjectVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopProjectVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:stop_stream_processor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#StopStreamProcessor"
        operation.name = "StopStreamProcessor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopStreamProcessorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopStreamProcessorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_dataset_entries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#UpdateDatasetEntries"
        operation.name = "UpdateDatasetEntries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetEntriesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetEntriesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_stream_processor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rekognition#UpdateStreamProcessor"
        operation.name = "UpdateStreamProcessor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStreamProcessorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStreamProcessorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
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
