# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Rekognition
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AgeRange = Shapes::StructureShape.new(name: 'AgeRange')
    Asset = Shapes::StructureShape.new(name: 'Asset')
    Assets = Shapes::ListShape.new(name: 'Assets')
    AssociateFacesRequest = Shapes::StructureShape.new(name: 'AssociateFacesRequest')
    AssociateFacesResponse = Shapes::StructureShape.new(name: 'AssociateFacesResponse')
    AssociatedFace = Shapes::StructureShape.new(name: 'AssociatedFace')
    AssociatedFacesList = Shapes::ListShape.new(name: 'AssociatedFacesList')
    Attribute = Shapes::StringShape.new(name: 'Attribute')
    Attributes = Shapes::ListShape.new(name: 'Attributes')
    AudioMetadata = Shapes::StructureShape.new(name: 'AudioMetadata')
    AudioMetadataList = Shapes::ListShape.new(name: 'AudioMetadataList')
    AuditImage = Shapes::StructureShape.new(name: 'AuditImage')
    AuditImages = Shapes::ListShape.new(name: 'AuditImages')
    AuditImagesLimit = Shapes::IntegerShape.new(name: 'AuditImagesLimit')
    Beard = Shapes::StructureShape.new(name: 'Beard')
    BlackFrame = Shapes::StructureShape.new(name: 'BlackFrame')
    BodyPart = Shapes::StringShape.new(name: 'BodyPart')
    BodyParts = Shapes::ListShape.new(name: 'BodyParts')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoundingBox = Shapes::StructureShape.new(name: 'BoundingBox')
    BoundingBoxHeight = Shapes::FloatShape.new(name: 'BoundingBoxHeight')
    BoundingBoxWidth = Shapes::FloatShape.new(name: 'BoundingBoxWidth')
    Celebrity = Shapes::StructureShape.new(name: 'Celebrity')
    CelebrityDetail = Shapes::StructureShape.new(name: 'CelebrityDetail')
    CelebrityList = Shapes::ListShape.new(name: 'CelebrityList')
    CelebrityRecognition = Shapes::StructureShape.new(name: 'CelebrityRecognition')
    CelebrityRecognitionSortBy = Shapes::StringShape.new(name: 'CelebrityRecognitionSortBy')
    CelebrityRecognitions = Shapes::ListShape.new(name: 'CelebrityRecognitions')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    CollectionId = Shapes::StringShape.new(name: 'CollectionId')
    CollectionIdList = Shapes::ListShape.new(name: 'CollectionIdList')
    CompareFacesMatch = Shapes::StructureShape.new(name: 'CompareFacesMatch')
    CompareFacesMatchList = Shapes::ListShape.new(name: 'CompareFacesMatchList')
    CompareFacesRequest = Shapes::StructureShape.new(name: 'CompareFacesRequest')
    CompareFacesResponse = Shapes::StructureShape.new(name: 'CompareFacesResponse')
    CompareFacesUnmatchList = Shapes::ListShape.new(name: 'CompareFacesUnmatchList')
    ComparedFace = Shapes::StructureShape.new(name: 'ComparedFace')
    ComparedFaceList = Shapes::ListShape.new(name: 'ComparedFaceList')
    ComparedSourceImageFace = Shapes::StructureShape.new(name: 'ComparedSourceImageFace')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectedHomeLabel = Shapes::StringShape.new(name: 'ConnectedHomeLabel')
    ConnectedHomeLabels = Shapes::ListShape.new(name: 'ConnectedHomeLabels')
    ConnectedHomeSettings = Shapes::StructureShape.new(name: 'ConnectedHomeSettings')
    ConnectedHomeSettingsForUpdate = Shapes::StructureShape.new(name: 'ConnectedHomeSettingsForUpdate')
    ContentClassifier = Shapes::StringShape.new(name: 'ContentClassifier')
    ContentClassifiers = Shapes::ListShape.new(name: 'ContentClassifiers')
    ContentModerationAggregateBy = Shapes::StringShape.new(name: 'ContentModerationAggregateBy')
    ContentModerationDetection = Shapes::StructureShape.new(name: 'ContentModerationDetection')
    ContentModerationDetections = Shapes::ListShape.new(name: 'ContentModerationDetections')
    ContentModerationSortBy = Shapes::StringShape.new(name: 'ContentModerationSortBy')
    CopyProjectVersionRequest = Shapes::StructureShape.new(name: 'CopyProjectVersionRequest')
    CopyProjectVersionResponse = Shapes::StructureShape.new(name: 'CopyProjectVersionResponse')
    CoversBodyPart = Shapes::StructureShape.new(name: 'CoversBodyPart')
    CreateCollectionRequest = Shapes::StructureShape.new(name: 'CreateCollectionRequest')
    CreateCollectionResponse = Shapes::StructureShape.new(name: 'CreateCollectionResponse')
    CreateDatasetRequest = Shapes::StructureShape.new(name: 'CreateDatasetRequest')
    CreateDatasetResponse = Shapes::StructureShape.new(name: 'CreateDatasetResponse')
    CreateFaceLivenessSessionRequest = Shapes::StructureShape.new(name: 'CreateFaceLivenessSessionRequest')
    CreateFaceLivenessSessionRequestSettings = Shapes::StructureShape.new(name: 'CreateFaceLivenessSessionRequestSettings')
    CreateFaceLivenessSessionResponse = Shapes::StructureShape.new(name: 'CreateFaceLivenessSessionResponse')
    CreateProjectRequest = Shapes::StructureShape.new(name: 'CreateProjectRequest')
    CreateProjectResponse = Shapes::StructureShape.new(name: 'CreateProjectResponse')
    CreateProjectVersionRequest = Shapes::StructureShape.new(name: 'CreateProjectVersionRequest')
    CreateProjectVersionResponse = Shapes::StructureShape.new(name: 'CreateProjectVersionResponse')
    CreateStreamProcessorRequest = Shapes::StructureShape.new(name: 'CreateStreamProcessorRequest')
    CreateStreamProcessorResponse = Shapes::StructureShape.new(name: 'CreateStreamProcessorResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    CustomLabel = Shapes::StructureShape.new(name: 'CustomLabel')
    CustomLabels = Shapes::ListShape.new(name: 'CustomLabels')
    DatasetArn = Shapes::StringShape.new(name: 'DatasetArn')
    DatasetChanges = Shapes::StructureShape.new(name: 'DatasetChanges')
    DatasetDescription = Shapes::StructureShape.new(name: 'DatasetDescription')
    DatasetEntries = Shapes::ListShape.new(name: 'DatasetEntries')
    DatasetEntry = Shapes::StringShape.new(name: 'DatasetEntry')
    DatasetLabel = Shapes::StringShape.new(name: 'DatasetLabel')
    DatasetLabelDescription = Shapes::StructureShape.new(name: 'DatasetLabelDescription')
    DatasetLabelDescriptions = Shapes::ListShape.new(name: 'DatasetLabelDescriptions')
    DatasetLabelStats = Shapes::StructureShape.new(name: 'DatasetLabelStats')
    DatasetLabels = Shapes::ListShape.new(name: 'DatasetLabels')
    DatasetMetadata = Shapes::StructureShape.new(name: 'DatasetMetadata')
    DatasetMetadataList = Shapes::ListShape.new(name: 'DatasetMetadataList')
    DatasetSource = Shapes::StructureShape.new(name: 'DatasetSource')
    DatasetStats = Shapes::StructureShape.new(name: 'DatasetStats')
    DatasetStatus = Shapes::StringShape.new(name: 'DatasetStatus')
    DatasetStatusMessageCode = Shapes::StringShape.new(name: 'DatasetStatusMessageCode')
    DatasetType = Shapes::StringShape.new(name: 'DatasetType')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    Degree = Shapes::FloatShape.new(name: 'Degree')
    DeleteCollectionRequest = Shapes::StructureShape.new(name: 'DeleteCollectionRequest')
    DeleteCollectionResponse = Shapes::StructureShape.new(name: 'DeleteCollectionResponse')
    DeleteDatasetRequest = Shapes::StructureShape.new(name: 'DeleteDatasetRequest')
    DeleteDatasetResponse = Shapes::StructureShape.new(name: 'DeleteDatasetResponse')
    DeleteFacesRequest = Shapes::StructureShape.new(name: 'DeleteFacesRequest')
    DeleteFacesResponse = Shapes::StructureShape.new(name: 'DeleteFacesResponse')
    DeleteProjectPolicyRequest = Shapes::StructureShape.new(name: 'DeleteProjectPolicyRequest')
    DeleteProjectPolicyResponse = Shapes::StructureShape.new(name: 'DeleteProjectPolicyResponse')
    DeleteProjectRequest = Shapes::StructureShape.new(name: 'DeleteProjectRequest')
    DeleteProjectResponse = Shapes::StructureShape.new(name: 'DeleteProjectResponse')
    DeleteProjectVersionRequest = Shapes::StructureShape.new(name: 'DeleteProjectVersionRequest')
    DeleteProjectVersionResponse = Shapes::StructureShape.new(name: 'DeleteProjectVersionResponse')
    DeleteStreamProcessorRequest = Shapes::StructureShape.new(name: 'DeleteStreamProcessorRequest')
    DeleteStreamProcessorResponse = Shapes::StructureShape.new(name: 'DeleteStreamProcessorResponse')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteUserResponse = Shapes::StructureShape.new(name: 'DeleteUserResponse')
    DescribeCollectionRequest = Shapes::StructureShape.new(name: 'DescribeCollectionRequest')
    DescribeCollectionResponse = Shapes::StructureShape.new(name: 'DescribeCollectionResponse')
    DescribeDatasetRequest = Shapes::StructureShape.new(name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Shapes::StructureShape.new(name: 'DescribeDatasetResponse')
    DescribeProjectVersionsRequest = Shapes::StructureShape.new(name: 'DescribeProjectVersionsRequest')
    DescribeProjectVersionsResponse = Shapes::StructureShape.new(name: 'DescribeProjectVersionsResponse')
    DescribeProjectsRequest = Shapes::StructureShape.new(name: 'DescribeProjectsRequest')
    DescribeProjectsResponse = Shapes::StructureShape.new(name: 'DescribeProjectsResponse')
    DescribeStreamProcessorRequest = Shapes::StructureShape.new(name: 'DescribeStreamProcessorRequest')
    DescribeStreamProcessorResponse = Shapes::StructureShape.new(name: 'DescribeStreamProcessorResponse')
    DetectCustomLabelsRequest = Shapes::StructureShape.new(name: 'DetectCustomLabelsRequest')
    DetectCustomLabelsResponse = Shapes::StructureShape.new(name: 'DetectCustomLabelsResponse')
    DetectFacesRequest = Shapes::StructureShape.new(name: 'DetectFacesRequest')
    DetectFacesResponse = Shapes::StructureShape.new(name: 'DetectFacesResponse')
    DetectLabelsFeatureList = Shapes::ListShape.new(name: 'DetectLabelsFeatureList')
    DetectLabelsFeatureName = Shapes::StringShape.new(name: 'DetectLabelsFeatureName')
    DetectLabelsImageBackground = Shapes::StructureShape.new(name: 'DetectLabelsImageBackground')
    DetectLabelsImageForeground = Shapes::StructureShape.new(name: 'DetectLabelsImageForeground')
    DetectLabelsImageProperties = Shapes::StructureShape.new(name: 'DetectLabelsImageProperties')
    DetectLabelsImagePropertiesSettings = Shapes::StructureShape.new(name: 'DetectLabelsImagePropertiesSettings')
    DetectLabelsImageQuality = Shapes::StructureShape.new(name: 'DetectLabelsImageQuality')
    DetectLabelsMaxDominantColors = Shapes::IntegerShape.new(name: 'DetectLabelsMaxDominantColors')
    DetectLabelsRequest = Shapes::StructureShape.new(name: 'DetectLabelsRequest')
    DetectLabelsResponse = Shapes::StructureShape.new(name: 'DetectLabelsResponse')
    DetectLabelsSettings = Shapes::StructureShape.new(name: 'DetectLabelsSettings')
    DetectModerationLabelsRequest = Shapes::StructureShape.new(name: 'DetectModerationLabelsRequest')
    DetectModerationLabelsResponse = Shapes::StructureShape.new(name: 'DetectModerationLabelsResponse')
    DetectProtectiveEquipmentRequest = Shapes::StructureShape.new(name: 'DetectProtectiveEquipmentRequest')
    DetectProtectiveEquipmentResponse = Shapes::StructureShape.new(name: 'DetectProtectiveEquipmentResponse')
    DetectTextFilters = Shapes::StructureShape.new(name: 'DetectTextFilters')
    DetectTextRequest = Shapes::StructureShape.new(name: 'DetectTextRequest')
    DetectTextResponse = Shapes::StructureShape.new(name: 'DetectTextResponse')
    DetectionFilter = Shapes::StructureShape.new(name: 'DetectionFilter')
    DisassociateFacesRequest = Shapes::StructureShape.new(name: 'DisassociateFacesRequest')
    DisassociateFacesResponse = Shapes::StructureShape.new(name: 'DisassociateFacesResponse')
    DisassociatedFace = Shapes::StructureShape.new(name: 'DisassociatedFace')
    DisassociatedFacesList = Shapes::ListShape.new(name: 'DisassociatedFacesList')
    DistributeDataset = Shapes::StructureShape.new(name: 'DistributeDataset')
    DistributeDatasetEntriesRequest = Shapes::StructureShape.new(name: 'DistributeDatasetEntriesRequest')
    DistributeDatasetEntriesResponse = Shapes::StructureShape.new(name: 'DistributeDatasetEntriesResponse')
    DistributeDatasetMetadataList = Shapes::ListShape.new(name: 'DistributeDatasetMetadataList')
    DominantColor = Shapes::StructureShape.new(name: 'DominantColor')
    DominantColors = Shapes::ListShape.new(name: 'DominantColors')
    Emotion = Shapes::StructureShape.new(name: 'Emotion')
    EmotionName = Shapes::StringShape.new(name: 'EmotionName')
    Emotions = Shapes::ListShape.new(name: 'Emotions')
    EquipmentDetection = Shapes::StructureShape.new(name: 'EquipmentDetection')
    EquipmentDetections = Shapes::ListShape.new(name: 'EquipmentDetections')
    EvaluationResult = Shapes::StructureShape.new(name: 'EvaluationResult')
    ExtendedPaginationToken = Shapes::StringShape.new(name: 'ExtendedPaginationToken')
    ExternalImageId = Shapes::StringShape.new(name: 'ExternalImageId')
    EyeDirection = Shapes::StructureShape.new(name: 'EyeDirection')
    EyeOpen = Shapes::StructureShape.new(name: 'EyeOpen')
    Eyeglasses = Shapes::StructureShape.new(name: 'Eyeglasses')
    Face = Shapes::StructureShape.new(name: 'Face')
    FaceAttributes = Shapes::StringShape.new(name: 'FaceAttributes')
    FaceDetail = Shapes::StructureShape.new(name: 'FaceDetail')
    FaceDetailList = Shapes::ListShape.new(name: 'FaceDetailList')
    FaceDetection = Shapes::StructureShape.new(name: 'FaceDetection')
    FaceDetections = Shapes::ListShape.new(name: 'FaceDetections')
    FaceId = Shapes::StringShape.new(name: 'FaceId')
    FaceIdList = Shapes::ListShape.new(name: 'FaceIdList')
    FaceList = Shapes::ListShape.new(name: 'FaceList')
    FaceMatch = Shapes::StructureShape.new(name: 'FaceMatch')
    FaceMatchList = Shapes::ListShape.new(name: 'FaceMatchList')
    FaceModelVersionList = Shapes::ListShape.new(name: 'FaceModelVersionList')
    FaceOccluded = Shapes::StructureShape.new(name: 'FaceOccluded')
    FaceRecord = Shapes::StructureShape.new(name: 'FaceRecord')
    FaceRecordList = Shapes::ListShape.new(name: 'FaceRecordList')
    FaceSearchSettings = Shapes::StructureShape.new(name: 'FaceSearchSettings')
    FaceSearchSortBy = Shapes::StringShape.new(name: 'FaceSearchSortBy')
    Float = Shapes::FloatShape.new(name: 'Float')
    FlowDefinitionArn = Shapes::StringShape.new(name: 'FlowDefinitionArn')
    Gender = Shapes::StructureShape.new(name: 'Gender')
    GenderType = Shapes::StringShape.new(name: 'GenderType')
    GeneralLabelsFilterList = Shapes::ListShape.new(name: 'GeneralLabelsFilterList')
    GeneralLabelsFilterValue = Shapes::StringShape.new(name: 'GeneralLabelsFilterValue')
    GeneralLabelsSettings = Shapes::StructureShape.new(name: 'GeneralLabelsSettings')
    Geometry = Shapes::StructureShape.new(name: 'Geometry')
    GetCelebrityInfoRequest = Shapes::StructureShape.new(name: 'GetCelebrityInfoRequest')
    GetCelebrityInfoResponse = Shapes::StructureShape.new(name: 'GetCelebrityInfoResponse')
    GetCelebrityRecognitionRequest = Shapes::StructureShape.new(name: 'GetCelebrityRecognitionRequest')
    GetCelebrityRecognitionResponse = Shapes::StructureShape.new(name: 'GetCelebrityRecognitionResponse')
    GetContentModerationRequest = Shapes::StructureShape.new(name: 'GetContentModerationRequest')
    GetContentModerationRequestMetadata = Shapes::StructureShape.new(name: 'GetContentModerationRequestMetadata')
    GetContentModerationResponse = Shapes::StructureShape.new(name: 'GetContentModerationResponse')
    GetFaceDetectionRequest = Shapes::StructureShape.new(name: 'GetFaceDetectionRequest')
    GetFaceDetectionResponse = Shapes::StructureShape.new(name: 'GetFaceDetectionResponse')
    GetFaceLivenessSessionResultsRequest = Shapes::StructureShape.new(name: 'GetFaceLivenessSessionResultsRequest')
    GetFaceLivenessSessionResultsResponse = Shapes::StructureShape.new(name: 'GetFaceLivenessSessionResultsResponse')
    GetFaceSearchRequest = Shapes::StructureShape.new(name: 'GetFaceSearchRequest')
    GetFaceSearchResponse = Shapes::StructureShape.new(name: 'GetFaceSearchResponse')
    GetLabelDetectionRequest = Shapes::StructureShape.new(name: 'GetLabelDetectionRequest')
    GetLabelDetectionRequestMetadata = Shapes::StructureShape.new(name: 'GetLabelDetectionRequestMetadata')
    GetLabelDetectionResponse = Shapes::StructureShape.new(name: 'GetLabelDetectionResponse')
    GetPersonTrackingRequest = Shapes::StructureShape.new(name: 'GetPersonTrackingRequest')
    GetPersonTrackingResponse = Shapes::StructureShape.new(name: 'GetPersonTrackingResponse')
    GetSegmentDetectionRequest = Shapes::StructureShape.new(name: 'GetSegmentDetectionRequest')
    GetSegmentDetectionResponse = Shapes::StructureShape.new(name: 'GetSegmentDetectionResponse')
    GetTextDetectionRequest = Shapes::StructureShape.new(name: 'GetTextDetectionRequest')
    GetTextDetectionResponse = Shapes::StructureShape.new(name: 'GetTextDetectionResponse')
    GroundTruthBlob = Shapes::BlobShape.new(name: 'GroundTruthBlob')
    GroundTruthManifest = Shapes::StructureShape.new(name: 'GroundTruthManifest')
    HasErrors = Shapes::BooleanShape.new(name: 'HasErrors')
    HumanLoopActivationConditionsEvaluationResults = Shapes::StringShape.new(name: 'HumanLoopActivationConditionsEvaluationResults')
    HumanLoopActivationOutput = Shapes::StructureShape.new(name: 'HumanLoopActivationOutput')
    HumanLoopActivationReason = Shapes::StringShape.new(name: 'HumanLoopActivationReason')
    HumanLoopActivationReasons = Shapes::ListShape.new(name: 'HumanLoopActivationReasons')
    HumanLoopArn = Shapes::StringShape.new(name: 'HumanLoopArn')
    HumanLoopConfig = Shapes::StructureShape.new(name: 'HumanLoopConfig')
    HumanLoopDataAttributes = Shapes::StructureShape.new(name: 'HumanLoopDataAttributes')
    HumanLoopName = Shapes::StringShape.new(name: 'HumanLoopName')
    HumanLoopQuotaExceededException = Shapes::StructureShape.new(name: 'HumanLoopQuotaExceededException')
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    Image = Shapes::StructureShape.new(name: 'Image')
    ImageBlob = Shapes::BlobShape.new(name: 'ImageBlob')
    ImageId = Shapes::StringShape.new(name: 'ImageId')
    ImageQuality = Shapes::StructureShape.new(name: 'ImageQuality')
    ImageTooLargeException = Shapes::StructureShape.new(name: 'ImageTooLargeException')
    IndexFacesModelVersion = Shapes::StringShape.new(name: 'IndexFacesModelVersion')
    IndexFacesRequest = Shapes::StructureShape.new(name: 'IndexFacesRequest')
    IndexFacesResponse = Shapes::StructureShape.new(name: 'IndexFacesResponse')
    InferenceUnits = Shapes::IntegerShape.new(name: 'InferenceUnits')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    Instances = Shapes::ListShape.new(name: 'Instances')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidImageFormatException = Shapes::StructureShape.new(name: 'InvalidImageFormatException')
    InvalidPaginationTokenException = Shapes::StructureShape.new(name: 'InvalidPaginationTokenException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidPolicyRevisionIdException = Shapes::StructureShape.new(name: 'InvalidPolicyRevisionIdException')
    InvalidS3ObjectException = Shapes::StructureShape.new(name: 'InvalidS3ObjectException')
    IsLabeled = Shapes::BooleanShape.new(name: 'IsLabeled')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobTag = Shapes::StringShape.new(name: 'JobTag')
    KinesisDataArn = Shapes::StringShape.new(name: 'KinesisDataArn')
    KinesisDataStream = Shapes::StructureShape.new(name: 'KinesisDataStream')
    KinesisVideoArn = Shapes::StringShape.new(name: 'KinesisVideoArn')
    KinesisVideoStream = Shapes::StructureShape.new(name: 'KinesisVideoStream')
    KinesisVideoStreamFragmentNumber = Shapes::StringShape.new(name: 'KinesisVideoStreamFragmentNumber')
    KinesisVideoStreamStartSelector = Shapes::StructureShape.new(name: 'KinesisVideoStreamStartSelector')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    KnownGender = Shapes::StructureShape.new(name: 'KnownGender')
    KnownGenderType = Shapes::StringShape.new(name: 'KnownGenderType')
    Label = Shapes::StructureShape.new(name: 'Label')
    LabelAlias = Shapes::StructureShape.new(name: 'LabelAlias')
    LabelAliases = Shapes::ListShape.new(name: 'LabelAliases')
    LabelCategories = Shapes::ListShape.new(name: 'LabelCategories')
    LabelCategory = Shapes::StructureShape.new(name: 'LabelCategory')
    LabelDetection = Shapes::StructureShape.new(name: 'LabelDetection')
    LabelDetectionAggregateBy = Shapes::StringShape.new(name: 'LabelDetectionAggregateBy')
    LabelDetectionFeatureList = Shapes::ListShape.new(name: 'LabelDetectionFeatureList')
    LabelDetectionFeatureName = Shapes::StringShape.new(name: 'LabelDetectionFeatureName')
    LabelDetectionSettings = Shapes::StructureShape.new(name: 'LabelDetectionSettings')
    LabelDetectionSortBy = Shapes::StringShape.new(name: 'LabelDetectionSortBy')
    LabelDetections = Shapes::ListShape.new(name: 'LabelDetections')
    Labels = Shapes::ListShape.new(name: 'Labels')
    Landmark = Shapes::StructureShape.new(name: 'Landmark')
    LandmarkType = Shapes::StringShape.new(name: 'LandmarkType')
    Landmarks = Shapes::ListShape.new(name: 'Landmarks')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListCollectionsRequest = Shapes::StructureShape.new(name: 'ListCollectionsRequest')
    ListCollectionsResponse = Shapes::StructureShape.new(name: 'ListCollectionsResponse')
    ListDatasetEntriesPageSize = Shapes::IntegerShape.new(name: 'ListDatasetEntriesPageSize')
    ListDatasetEntriesRequest = Shapes::StructureShape.new(name: 'ListDatasetEntriesRequest')
    ListDatasetEntriesResponse = Shapes::StructureShape.new(name: 'ListDatasetEntriesResponse')
    ListDatasetLabelsPageSize = Shapes::IntegerShape.new(name: 'ListDatasetLabelsPageSize')
    ListDatasetLabelsRequest = Shapes::StructureShape.new(name: 'ListDatasetLabelsRequest')
    ListDatasetLabelsResponse = Shapes::StructureShape.new(name: 'ListDatasetLabelsResponse')
    ListFacesRequest = Shapes::StructureShape.new(name: 'ListFacesRequest')
    ListFacesResponse = Shapes::StructureShape.new(name: 'ListFacesResponse')
    ListProjectPoliciesPageSize = Shapes::IntegerShape.new(name: 'ListProjectPoliciesPageSize')
    ListProjectPoliciesRequest = Shapes::StructureShape.new(name: 'ListProjectPoliciesRequest')
    ListProjectPoliciesResponse = Shapes::StructureShape.new(name: 'ListProjectPoliciesResponse')
    ListStreamProcessorsRequest = Shapes::StructureShape.new(name: 'ListStreamProcessorsRequest')
    ListStreamProcessorsResponse = Shapes::StructureShape.new(name: 'ListStreamProcessorsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    LivenessImageBlob = Shapes::BlobShape.new(name: 'LivenessImageBlob')
    LivenessOutputConfig = Shapes::StructureShape.new(name: 'LivenessOutputConfig')
    LivenessS3KeyPrefix = Shapes::StringShape.new(name: 'LivenessS3KeyPrefix')
    LivenessSessionId = Shapes::StringShape.new(name: 'LivenessSessionId')
    LivenessSessionStatus = Shapes::StringShape.new(name: 'LivenessSessionStatus')
    MalformedPolicyDocumentException = Shapes::StructureShape.new(name: 'MalformedPolicyDocumentException')
    MatchedUser = Shapes::StructureShape.new(name: 'MatchedUser')
    MaxDurationInSecondsULong = Shapes::IntegerShape.new(name: 'MaxDurationInSecondsULong')
    MaxFaces = Shapes::IntegerShape.new(name: 'MaxFaces')
    MaxFacesToIndex = Shapes::IntegerShape.new(name: 'MaxFacesToIndex')
    MaxPixelThreshold = Shapes::FloatShape.new(name: 'MaxPixelThreshold')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxUserResults = Shapes::IntegerShape.new(name: 'MaxUserResults')
    MinCoveragePercentage = Shapes::FloatShape.new(name: 'MinCoveragePercentage')
    ModerationLabel = Shapes::StructureShape.new(name: 'ModerationLabel')
    ModerationLabels = Shapes::ListShape.new(name: 'ModerationLabels')
    MouthOpen = Shapes::StructureShape.new(name: 'MouthOpen')
    Mustache = Shapes::StructureShape.new(name: 'Mustache')
    NotificationChannel = Shapes::StructureShape.new(name: 'NotificationChannel')
    OrientationCorrection = Shapes::StringShape.new(name: 'OrientationCorrection')
    OutputConfig = Shapes::StructureShape.new(name: 'OutputConfig')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Parent = Shapes::StructureShape.new(name: 'Parent')
    Parents = Shapes::ListShape.new(name: 'Parents')
    Percent = Shapes::FloatShape.new(name: 'Percent')
    PersonDetail = Shapes::StructureShape.new(name: 'PersonDetail')
    PersonDetection = Shapes::StructureShape.new(name: 'PersonDetection')
    PersonDetections = Shapes::ListShape.new(name: 'PersonDetections')
    PersonIndex = Shapes::IntegerShape.new(name: 'PersonIndex')
    PersonMatch = Shapes::StructureShape.new(name: 'PersonMatch')
    PersonMatches = Shapes::ListShape.new(name: 'PersonMatches')
    PersonTrackingSortBy = Shapes::StringShape.new(name: 'PersonTrackingSortBy')
    Point = Shapes::StructureShape.new(name: 'Point')
    Polygon = Shapes::ListShape.new(name: 'Polygon')
    Pose = Shapes::StructureShape.new(name: 'Pose')
    ProjectArn = Shapes::StringShape.new(name: 'ProjectArn')
    ProjectDescription = Shapes::StructureShape.new(name: 'ProjectDescription')
    ProjectDescriptions = Shapes::ListShape.new(name: 'ProjectDescriptions')
    ProjectName = Shapes::StringShape.new(name: 'ProjectName')
    ProjectNames = Shapes::ListShape.new(name: 'ProjectNames')
    ProjectPolicies = Shapes::ListShape.new(name: 'ProjectPolicies')
    ProjectPolicy = Shapes::StructureShape.new(name: 'ProjectPolicy')
    ProjectPolicyDocument = Shapes::StringShape.new(name: 'ProjectPolicyDocument')
    ProjectPolicyName = Shapes::StringShape.new(name: 'ProjectPolicyName')
    ProjectPolicyRevisionId = Shapes::StringShape.new(name: 'ProjectPolicyRevisionId')
    ProjectStatus = Shapes::StringShape.new(name: 'ProjectStatus')
    ProjectVersionArn = Shapes::StringShape.new(name: 'ProjectVersionArn')
    ProjectVersionDescription = Shapes::StructureShape.new(name: 'ProjectVersionDescription')
    ProjectVersionDescriptions = Shapes::ListShape.new(name: 'ProjectVersionDescriptions')
    ProjectVersionStatus = Shapes::StringShape.new(name: 'ProjectVersionStatus')
    ProjectVersionsPageSize = Shapes::IntegerShape.new(name: 'ProjectVersionsPageSize')
    ProjectsPageSize = Shapes::IntegerShape.new(name: 'ProjectsPageSize')
    ProtectiveEquipmentBodyPart = Shapes::StructureShape.new(name: 'ProtectiveEquipmentBodyPart')
    ProtectiveEquipmentPerson = Shapes::StructureShape.new(name: 'ProtectiveEquipmentPerson')
    ProtectiveEquipmentPersonIds = Shapes::ListShape.new(name: 'ProtectiveEquipmentPersonIds')
    ProtectiveEquipmentPersons = Shapes::ListShape.new(name: 'ProtectiveEquipmentPersons')
    ProtectiveEquipmentSummarizationAttributes = Shapes::StructureShape.new(name: 'ProtectiveEquipmentSummarizationAttributes')
    ProtectiveEquipmentSummary = Shapes::StructureShape.new(name: 'ProtectiveEquipmentSummary')
    ProtectiveEquipmentType = Shapes::StringShape.new(name: 'ProtectiveEquipmentType')
    ProtectiveEquipmentTypes = Shapes::ListShape.new(name: 'ProtectiveEquipmentTypes')
    ProvisionedThroughputExceededException = Shapes::StructureShape.new(name: 'ProvisionedThroughputExceededException')
    PutProjectPolicyRequest = Shapes::StructureShape.new(name: 'PutProjectPolicyRequest')
    PutProjectPolicyResponse = Shapes::StructureShape.new(name: 'PutProjectPolicyResponse')
    QualityFilter = Shapes::StringShape.new(name: 'QualityFilter')
    QueryString = Shapes::StringShape.new(name: 'QueryString')
    Reason = Shapes::StringShape.new(name: 'Reason')
    Reasons = Shapes::ListShape.new(name: 'Reasons')
    RecognizeCelebritiesRequest = Shapes::StructureShape.new(name: 'RecognizeCelebritiesRequest')
    RecognizeCelebritiesResponse = Shapes::StructureShape.new(name: 'RecognizeCelebritiesResponse')
    RegionOfInterest = Shapes::StructureShape.new(name: 'RegionOfInterest')
    RegionsOfInterest = Shapes::ListShape.new(name: 'RegionsOfInterest')
    RekognitionUniqueId = Shapes::StringShape.new(name: 'RekognitionUniqueId')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceNotReadyException = Shapes::StructureShape.new(name: 'ResourceNotReadyException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Destination = Shapes::StructureShape.new(name: 'S3Destination')
    S3KeyPrefix = Shapes::StringShape.new(name: 'S3KeyPrefix')
    S3Object = Shapes::StructureShape.new(name: 'S3Object')
    S3ObjectName = Shapes::StringShape.new(name: 'S3ObjectName')
    S3ObjectVersion = Shapes::StringShape.new(name: 'S3ObjectVersion')
    SNSTopicArn = Shapes::StringShape.new(name: 'SNSTopicArn')
    SearchFacesByImageRequest = Shapes::StructureShape.new(name: 'SearchFacesByImageRequest')
    SearchFacesByImageResponse = Shapes::StructureShape.new(name: 'SearchFacesByImageResponse')
    SearchFacesRequest = Shapes::StructureShape.new(name: 'SearchFacesRequest')
    SearchFacesResponse = Shapes::StructureShape.new(name: 'SearchFacesResponse')
    SearchUsersByImageRequest = Shapes::StructureShape.new(name: 'SearchUsersByImageRequest')
    SearchUsersByImageResponse = Shapes::StructureShape.new(name: 'SearchUsersByImageResponse')
    SearchUsersRequest = Shapes::StructureShape.new(name: 'SearchUsersRequest')
    SearchUsersResponse = Shapes::StructureShape.new(name: 'SearchUsersResponse')
    SearchedFace = Shapes::StructureShape.new(name: 'SearchedFace')
    SearchedFaceDetails = Shapes::StructureShape.new(name: 'SearchedFaceDetails')
    SearchedUser = Shapes::StructureShape.new(name: 'SearchedUser')
    SegmentConfidence = Shapes::FloatShape.new(name: 'SegmentConfidence')
    SegmentDetection = Shapes::StructureShape.new(name: 'SegmentDetection')
    SegmentDetections = Shapes::ListShape.new(name: 'SegmentDetections')
    SegmentType = Shapes::StringShape.new(name: 'SegmentType')
    SegmentTypeInfo = Shapes::StructureShape.new(name: 'SegmentTypeInfo')
    SegmentTypes = Shapes::ListShape.new(name: 'SegmentTypes')
    SegmentTypesInfo = Shapes::ListShape.new(name: 'SegmentTypesInfo')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionNotFoundException = Shapes::StructureShape.new(name: 'SessionNotFoundException')
    ShotSegment = Shapes::StructureShape.new(name: 'ShotSegment')
    Smile = Shapes::StructureShape.new(name: 'Smile')
    StartCelebrityRecognitionRequest = Shapes::StructureShape.new(name: 'StartCelebrityRecognitionRequest')
    StartCelebrityRecognitionResponse = Shapes::StructureShape.new(name: 'StartCelebrityRecognitionResponse')
    StartContentModerationRequest = Shapes::StructureShape.new(name: 'StartContentModerationRequest')
    StartContentModerationResponse = Shapes::StructureShape.new(name: 'StartContentModerationResponse')
    StartFaceDetectionRequest = Shapes::StructureShape.new(name: 'StartFaceDetectionRequest')
    StartFaceDetectionResponse = Shapes::StructureShape.new(name: 'StartFaceDetectionResponse')
    StartFaceSearchRequest = Shapes::StructureShape.new(name: 'StartFaceSearchRequest')
    StartFaceSearchResponse = Shapes::StructureShape.new(name: 'StartFaceSearchResponse')
    StartLabelDetectionRequest = Shapes::StructureShape.new(name: 'StartLabelDetectionRequest')
    StartLabelDetectionResponse = Shapes::StructureShape.new(name: 'StartLabelDetectionResponse')
    StartPersonTrackingRequest = Shapes::StructureShape.new(name: 'StartPersonTrackingRequest')
    StartPersonTrackingResponse = Shapes::StructureShape.new(name: 'StartPersonTrackingResponse')
    StartProjectVersionRequest = Shapes::StructureShape.new(name: 'StartProjectVersionRequest')
    StartProjectVersionResponse = Shapes::StructureShape.new(name: 'StartProjectVersionResponse')
    StartSegmentDetectionFilters = Shapes::StructureShape.new(name: 'StartSegmentDetectionFilters')
    StartSegmentDetectionRequest = Shapes::StructureShape.new(name: 'StartSegmentDetectionRequest')
    StartSegmentDetectionResponse = Shapes::StructureShape.new(name: 'StartSegmentDetectionResponse')
    StartShotDetectionFilter = Shapes::StructureShape.new(name: 'StartShotDetectionFilter')
    StartStreamProcessorRequest = Shapes::StructureShape.new(name: 'StartStreamProcessorRequest')
    StartStreamProcessorResponse = Shapes::StructureShape.new(name: 'StartStreamProcessorResponse')
    StartStreamProcessorSessionId = Shapes::StringShape.new(name: 'StartStreamProcessorSessionId')
    StartTechnicalCueDetectionFilter = Shapes::StructureShape.new(name: 'StartTechnicalCueDetectionFilter')
    StartTextDetectionFilters = Shapes::StructureShape.new(name: 'StartTextDetectionFilters')
    StartTextDetectionRequest = Shapes::StructureShape.new(name: 'StartTextDetectionRequest')
    StartTextDetectionResponse = Shapes::StructureShape.new(name: 'StartTextDetectionResponse')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    StopProjectVersionRequest = Shapes::StructureShape.new(name: 'StopProjectVersionRequest')
    StopProjectVersionResponse = Shapes::StructureShape.new(name: 'StopProjectVersionResponse')
    StopStreamProcessorRequest = Shapes::StructureShape.new(name: 'StopStreamProcessorRequest')
    StopStreamProcessorResponse = Shapes::StructureShape.new(name: 'StopStreamProcessorResponse')
    StreamProcessingStartSelector = Shapes::StructureShape.new(name: 'StreamProcessingStartSelector')
    StreamProcessingStopSelector = Shapes::StructureShape.new(name: 'StreamProcessingStopSelector')
    StreamProcessor = Shapes::StructureShape.new(name: 'StreamProcessor')
    StreamProcessorArn = Shapes::StringShape.new(name: 'StreamProcessorArn')
    StreamProcessorDataSharingPreference = Shapes::StructureShape.new(name: 'StreamProcessorDataSharingPreference')
    StreamProcessorInput = Shapes::StructureShape.new(name: 'StreamProcessorInput')
    StreamProcessorList = Shapes::ListShape.new(name: 'StreamProcessorList')
    StreamProcessorName = Shapes::StringShape.new(name: 'StreamProcessorName')
    StreamProcessorNotificationChannel = Shapes::StructureShape.new(name: 'StreamProcessorNotificationChannel')
    StreamProcessorOutput = Shapes::StructureShape.new(name: 'StreamProcessorOutput')
    StreamProcessorParameterToDelete = Shapes::StringShape.new(name: 'StreamProcessorParameterToDelete')
    StreamProcessorParametersToDelete = Shapes::ListShape.new(name: 'StreamProcessorParametersToDelete')
    StreamProcessorSettings = Shapes::StructureShape.new(name: 'StreamProcessorSettings')
    StreamProcessorSettingsForUpdate = Shapes::StructureShape.new(name: 'StreamProcessorSettingsForUpdate')
    StreamProcessorStatus = Shapes::StringShape.new(name: 'StreamProcessorStatus')
    String = Shapes::StringShape.new(name: 'String')
    Summary = Shapes::StructureShape.new(name: 'Summary')
    Sunglasses = Shapes::StructureShape.new(name: 'Sunglasses')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TechnicalCueSegment = Shapes::StructureShape.new(name: 'TechnicalCueSegment')
    TechnicalCueType = Shapes::StringShape.new(name: 'TechnicalCueType')
    TestingData = Shapes::StructureShape.new(name: 'TestingData')
    TestingDataResult = Shapes::StructureShape.new(name: 'TestingDataResult')
    TextDetection = Shapes::StructureShape.new(name: 'TextDetection')
    TextDetectionList = Shapes::ListShape.new(name: 'TextDetectionList')
    TextDetectionResult = Shapes::StructureShape.new(name: 'TextDetectionResult')
    TextDetectionResults = Shapes::ListShape.new(name: 'TextDetectionResults')
    TextTypes = Shapes::StringShape.new(name: 'TextTypes')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timecode = Shapes::StringShape.new(name: 'Timecode')
    Timestamp = Shapes::IntegerShape.new(name: 'Timestamp')
    TrainingData = Shapes::StructureShape.new(name: 'TrainingData')
    TrainingDataResult = Shapes::StructureShape.new(name: 'TrainingDataResult')
    UInteger = Shapes::IntegerShape.new(name: 'UInteger')
    ULong = Shapes::IntegerShape.new(name: 'ULong')
    UnindexedFace = Shapes::StructureShape.new(name: 'UnindexedFace')
    UnindexedFaces = Shapes::ListShape.new(name: 'UnindexedFaces')
    UnsearchedFace = Shapes::StructureShape.new(name: 'UnsearchedFace')
    UnsearchedFaceReason = Shapes::StringShape.new(name: 'UnsearchedFaceReason')
    UnsearchedFaceReasons = Shapes::ListShape.new(name: 'UnsearchedFaceReasons')
    UnsearchedFacesList = Shapes::ListShape.new(name: 'UnsearchedFacesList')
    UnsuccessfulFaceAssociation = Shapes::StructureShape.new(name: 'UnsuccessfulFaceAssociation')
    UnsuccessfulFaceAssociationList = Shapes::ListShape.new(name: 'UnsuccessfulFaceAssociationList')
    UnsuccessfulFaceAssociationReason = Shapes::StringShape.new(name: 'UnsuccessfulFaceAssociationReason')
    UnsuccessfulFaceAssociationReasons = Shapes::ListShape.new(name: 'UnsuccessfulFaceAssociationReasons')
    UnsuccessfulFaceDeletion = Shapes::StructureShape.new(name: 'UnsuccessfulFaceDeletion')
    UnsuccessfulFaceDeletionReason = Shapes::StringShape.new(name: 'UnsuccessfulFaceDeletionReason')
    UnsuccessfulFaceDeletionReasons = Shapes::ListShape.new(name: 'UnsuccessfulFaceDeletionReasons')
    UnsuccessfulFaceDeletionsList = Shapes::ListShape.new(name: 'UnsuccessfulFaceDeletionsList')
    UnsuccessfulFaceDisassociation = Shapes::StructureShape.new(name: 'UnsuccessfulFaceDisassociation')
    UnsuccessfulFaceDisassociationList = Shapes::ListShape.new(name: 'UnsuccessfulFaceDisassociationList')
    UnsuccessfulFaceDisassociationReason = Shapes::StringShape.new(name: 'UnsuccessfulFaceDisassociationReason')
    UnsuccessfulFaceDisassociationReasons = Shapes::ListShape.new(name: 'UnsuccessfulFaceDisassociationReasons')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDatasetEntriesRequest = Shapes::StructureShape.new(name: 'UpdateDatasetEntriesRequest')
    UpdateDatasetEntriesResponse = Shapes::StructureShape.new(name: 'UpdateDatasetEntriesResponse')
    UpdateStreamProcessorRequest = Shapes::StructureShape.new(name: 'UpdateStreamProcessorRequest')
    UpdateStreamProcessorResponse = Shapes::StructureShape.new(name: 'UpdateStreamProcessorResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    Urls = Shapes::ListShape.new(name: 'Urls')
    User = Shapes::StructureShape.new(name: 'User')
    UserFaceIdList = Shapes::ListShape.new(name: 'UserFaceIdList')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserMatch = Shapes::StructureShape.new(name: 'UserMatch')
    UserMatchList = Shapes::ListShape.new(name: 'UserMatchList')
    UserStatus = Shapes::StringShape.new(name: 'UserStatus')
    ValidationData = Shapes::StructureShape.new(name: 'ValidationData')
    VersionName = Shapes::StringShape.new(name: 'VersionName')
    VersionNames = Shapes::ListShape.new(name: 'VersionNames')
    Video = Shapes::StructureShape.new(name: 'Video')
    VideoColorRange = Shapes::StringShape.new(name: 'VideoColorRange')
    VideoJobStatus = Shapes::StringShape.new(name: 'VideoJobStatus')
    VideoMetadata = Shapes::StructureShape.new(name: 'VideoMetadata')
    VideoMetadataList = Shapes::ListShape.new(name: 'VideoMetadataList')
    VideoTooLargeException = Shapes::StructureShape.new(name: 'VideoTooLargeException')

    AccessDeniedException.struct_class = Types::AccessDeniedException

    AgeRange.add_member(:low, Shapes::ShapeRef.new(shape: UInteger, location_name: "Low"))
    AgeRange.add_member(:high, Shapes::ShapeRef.new(shape: UInteger, location_name: "High"))
    AgeRange.struct_class = Types::AgeRange

    Asset.add_member(:ground_truth_manifest, Shapes::ShapeRef.new(shape: GroundTruthManifest, location_name: "GroundTruthManifest"))
    Asset.struct_class = Types::Asset

    Assets.member = Shapes::ShapeRef.new(shape: Asset)

    AssociateFacesRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    AssociateFacesRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "UserId"))
    AssociateFacesRequest.add_member(:face_ids, Shapes::ShapeRef.new(shape: UserFaceIdList, required: true, location_name: "FaceIds"))
    AssociateFacesRequest.add_member(:user_match_threshold, Shapes::ShapeRef.new(shape: Percent, location_name: "UserMatchThreshold"))
    AssociateFacesRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    AssociateFacesRequest.struct_class = Types::AssociateFacesRequest

    AssociateFacesResponse.add_member(:associated_faces, Shapes::ShapeRef.new(shape: AssociatedFacesList, location_name: "AssociatedFaces"))
    AssociateFacesResponse.add_member(:unsuccessful_face_associations, Shapes::ShapeRef.new(shape: UnsuccessfulFaceAssociationList, location_name: "UnsuccessfulFaceAssociations"))
    AssociateFacesResponse.add_member(:user_status, Shapes::ShapeRef.new(shape: UserStatus, location_name: "UserStatus"))
    AssociateFacesResponse.struct_class = Types::AssociateFacesResponse

    AssociatedFace.add_member(:face_id, Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    AssociatedFace.struct_class = Types::AssociatedFace

    AssociatedFacesList.member = Shapes::ShapeRef.new(shape: AssociatedFace)

    Attributes.member = Shapes::ShapeRef.new(shape: Attribute)

    AudioMetadata.add_member(:codec, Shapes::ShapeRef.new(shape: String, location_name: "Codec"))
    AudioMetadata.add_member(:duration_millis, Shapes::ShapeRef.new(shape: ULong, location_name: "DurationMillis"))
    AudioMetadata.add_member(:sample_rate, Shapes::ShapeRef.new(shape: ULong, location_name: "SampleRate"))
    AudioMetadata.add_member(:number_of_channels, Shapes::ShapeRef.new(shape: ULong, location_name: "NumberOfChannels"))
    AudioMetadata.struct_class = Types::AudioMetadata

    AudioMetadataList.member = Shapes::ShapeRef.new(shape: AudioMetadata)

    AuditImage.add_member(:bytes, Shapes::ShapeRef.new(shape: LivenessImageBlob, location_name: "Bytes"))
    AuditImage.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    AuditImage.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    AuditImage.struct_class = Types::AuditImage

    AuditImages.member = Shapes::ShapeRef.new(shape: AuditImage)

    Beard.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
    Beard.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Beard.struct_class = Types::Beard

    BlackFrame.add_member(:max_pixel_threshold, Shapes::ShapeRef.new(shape: MaxPixelThreshold, location_name: "MaxPixelThreshold"))
    BlackFrame.add_member(:min_coverage_percentage, Shapes::ShapeRef.new(shape: MinCoveragePercentage, location_name: "MinCoveragePercentage"))
    BlackFrame.struct_class = Types::BlackFrame

    BodyParts.member = Shapes::ShapeRef.new(shape: ProtectiveEquipmentBodyPart)

    BoundingBox.add_member(:width, Shapes::ShapeRef.new(shape: Float, location_name: "Width"))
    BoundingBox.add_member(:height, Shapes::ShapeRef.new(shape: Float, location_name: "Height"))
    BoundingBox.add_member(:left, Shapes::ShapeRef.new(shape: Float, location_name: "Left"))
    BoundingBox.add_member(:top, Shapes::ShapeRef.new(shape: Float, location_name: "Top"))
    BoundingBox.struct_class = Types::BoundingBox

    Celebrity.add_member(:urls, Shapes::ShapeRef.new(shape: Urls, location_name: "Urls"))
    Celebrity.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Celebrity.add_member(:id, Shapes::ShapeRef.new(shape: RekognitionUniqueId, location_name: "Id"))
    Celebrity.add_member(:face, Shapes::ShapeRef.new(shape: ComparedFace, location_name: "Face"))
    Celebrity.add_member(:match_confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "MatchConfidence"))
    Celebrity.add_member(:known_gender, Shapes::ShapeRef.new(shape: KnownGender, location_name: "KnownGender"))
    Celebrity.struct_class = Types::Celebrity

    CelebrityDetail.add_member(:urls, Shapes::ShapeRef.new(shape: Urls, location_name: "Urls"))
    CelebrityDetail.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    CelebrityDetail.add_member(:id, Shapes::ShapeRef.new(shape: RekognitionUniqueId, location_name: "Id"))
    CelebrityDetail.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    CelebrityDetail.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    CelebrityDetail.add_member(:face, Shapes::ShapeRef.new(shape: FaceDetail, location_name: "Face"))
    CelebrityDetail.add_member(:known_gender, Shapes::ShapeRef.new(shape: KnownGender, location_name: "KnownGender"))
    CelebrityDetail.struct_class = Types::CelebrityDetail

    CelebrityList.member = Shapes::ShapeRef.new(shape: Celebrity)

    CelebrityRecognition.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    CelebrityRecognition.add_member(:celebrity, Shapes::ShapeRef.new(shape: CelebrityDetail, location_name: "Celebrity"))
    CelebrityRecognition.struct_class = Types::CelebrityRecognition

    CelebrityRecognitions.member = Shapes::ShapeRef.new(shape: CelebrityRecognition)

    CollectionIdList.member = Shapes::ShapeRef.new(shape: CollectionId)

    CompareFacesMatch.add_member(:similarity, Shapes::ShapeRef.new(shape: Percent, location_name: "Similarity"))
    CompareFacesMatch.add_member(:face, Shapes::ShapeRef.new(shape: ComparedFace, location_name: "Face"))
    CompareFacesMatch.struct_class = Types::CompareFacesMatch

    CompareFacesMatchList.member = Shapes::ShapeRef.new(shape: CompareFacesMatch)

    CompareFacesRequest.add_member(:source_image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "SourceImage"))
    CompareFacesRequest.add_member(:target_image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "TargetImage"))
    CompareFacesRequest.add_member(:similarity_threshold, Shapes::ShapeRef.new(shape: Percent, location_name: "SimilarityThreshold"))
    CompareFacesRequest.add_member(:quality_filter, Shapes::ShapeRef.new(shape: QualityFilter, location_name: "QualityFilter"))
    CompareFacesRequest.struct_class = Types::CompareFacesRequest

    CompareFacesResponse.add_member(:source_image_face, Shapes::ShapeRef.new(shape: ComparedSourceImageFace, location_name: "SourceImageFace"))
    CompareFacesResponse.add_member(:face_matches, Shapes::ShapeRef.new(shape: CompareFacesMatchList, location_name: "FaceMatches"))
    CompareFacesResponse.add_member(:unmatched_faces, Shapes::ShapeRef.new(shape: CompareFacesUnmatchList, location_name: "UnmatchedFaces"))
    CompareFacesResponse.add_member(:source_image_orientation_correction, Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "SourceImageOrientationCorrection"))
    CompareFacesResponse.add_member(:target_image_orientation_correction, Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "TargetImageOrientationCorrection"))
    CompareFacesResponse.struct_class = Types::CompareFacesResponse

    CompareFacesUnmatchList.member = Shapes::ShapeRef.new(shape: ComparedFace)

    ComparedFace.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    ComparedFace.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ComparedFace.add_member(:landmarks, Shapes::ShapeRef.new(shape: Landmarks, location_name: "Landmarks"))
    ComparedFace.add_member(:pose, Shapes::ShapeRef.new(shape: Pose, location_name: "Pose"))
    ComparedFace.add_member(:quality, Shapes::ShapeRef.new(shape: ImageQuality, location_name: "Quality"))
    ComparedFace.add_member(:emotions, Shapes::ShapeRef.new(shape: Emotions, location_name: "Emotions"))
    ComparedFace.add_member(:smile, Shapes::ShapeRef.new(shape: Smile, location_name: "Smile"))
    ComparedFace.struct_class = Types::ComparedFace

    ComparedFaceList.member = Shapes::ShapeRef.new(shape: ComparedFace)

    ComparedSourceImageFace.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    ComparedSourceImageFace.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ComparedSourceImageFace.struct_class = Types::ComparedSourceImageFace

    ConflictException.struct_class = Types::ConflictException

    ConnectedHomeLabels.member = Shapes::ShapeRef.new(shape: ConnectedHomeLabel)

    ConnectedHomeSettings.add_member(:labels, Shapes::ShapeRef.new(shape: ConnectedHomeLabels, required: true, location_name: "Labels"))
    ConnectedHomeSettings.add_member(:min_confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    ConnectedHomeSettings.struct_class = Types::ConnectedHomeSettings

    ConnectedHomeSettingsForUpdate.add_member(:labels, Shapes::ShapeRef.new(shape: ConnectedHomeLabels, location_name: "Labels"))
    ConnectedHomeSettingsForUpdate.add_member(:min_confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    ConnectedHomeSettingsForUpdate.struct_class = Types::ConnectedHomeSettingsForUpdate

    ContentClassifiers.member = Shapes::ShapeRef.new(shape: ContentClassifier)

    ContentModerationDetection.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    ContentModerationDetection.add_member(:moderation_label, Shapes::ShapeRef.new(shape: ModerationLabel, location_name: "ModerationLabel"))
    ContentModerationDetection.add_member(:start_timestamp_millis, Shapes::ShapeRef.new(shape: ULong, location_name: "StartTimestampMillis"))
    ContentModerationDetection.add_member(:end_timestamp_millis, Shapes::ShapeRef.new(shape: ULong, location_name: "EndTimestampMillis"))
    ContentModerationDetection.add_member(:duration_millis, Shapes::ShapeRef.new(shape: ULong, location_name: "DurationMillis"))
    ContentModerationDetection.struct_class = Types::ContentModerationDetection

    ContentModerationDetections.member = Shapes::ShapeRef.new(shape: ContentModerationDetection)

    CopyProjectVersionRequest.add_member(:source_project_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "SourceProjectArn"))
    CopyProjectVersionRequest.add_member(:source_project_version_arn, Shapes::ShapeRef.new(shape: ProjectVersionArn, required: true, location_name: "SourceProjectVersionArn"))
    CopyProjectVersionRequest.add_member(:destination_project_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "DestinationProjectArn"))
    CopyProjectVersionRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionName, required: true, location_name: "VersionName"))
    CopyProjectVersionRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "OutputConfig"))
    CopyProjectVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CopyProjectVersionRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CopyProjectVersionRequest.struct_class = Types::CopyProjectVersionRequest

    CopyProjectVersionResponse.add_member(:project_version_arn, Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: "ProjectVersionArn"))
    CopyProjectVersionResponse.struct_class = Types::CopyProjectVersionResponse

    CoversBodyPart.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    CoversBodyPart.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
    CoversBodyPart.struct_class = Types::CoversBodyPart

    CreateCollectionRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    CreateCollectionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateCollectionRequest.struct_class = Types::CreateCollectionRequest

    CreateCollectionResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: UInteger, location_name: "StatusCode"))
    CreateCollectionResponse.add_member(:collection_arn, Shapes::ShapeRef.new(shape: String, location_name: "CollectionArn"))
    CreateCollectionResponse.add_member(:face_model_version, Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    CreateCollectionResponse.struct_class = Types::CreateCollectionResponse

    CreateDatasetRequest.add_member(:dataset_source, Shapes::ShapeRef.new(shape: DatasetSource, location_name: "DatasetSource"))
    CreateDatasetRequest.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, required: true, location_name: "DatasetType"))
    CreateDatasetRequest.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "ProjectArn"))
    CreateDatasetRequest.struct_class = Types::CreateDatasetRequest

    CreateDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn"))
    CreateDatasetResponse.struct_class = Types::CreateDatasetResponse

    CreateFaceLivenessSessionRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateFaceLivenessSessionRequest.add_member(:settings, Shapes::ShapeRef.new(shape: CreateFaceLivenessSessionRequestSettings, location_name: "Settings"))
    CreateFaceLivenessSessionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    CreateFaceLivenessSessionRequest.struct_class = Types::CreateFaceLivenessSessionRequest

    CreateFaceLivenessSessionRequestSettings.add_member(:output_config, Shapes::ShapeRef.new(shape: LivenessOutputConfig, location_name: "OutputConfig"))
    CreateFaceLivenessSessionRequestSettings.add_member(:audit_images_limit, Shapes::ShapeRef.new(shape: AuditImagesLimit, location_name: "AuditImagesLimit"))
    CreateFaceLivenessSessionRequestSettings.struct_class = Types::CreateFaceLivenessSessionRequestSettings

    CreateFaceLivenessSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: LivenessSessionId, required: true, location_name: "SessionId"))
    CreateFaceLivenessSessionResponse.struct_class = Types::CreateFaceLivenessSessionResponse

    CreateProjectRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "ProjectName"))
    CreateProjectRequest.struct_class = Types::CreateProjectRequest

    CreateProjectResponse.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn"))
    CreateProjectResponse.struct_class = Types::CreateProjectResponse

    CreateProjectVersionRequest.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "ProjectArn"))
    CreateProjectVersionRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionName, required: true, location_name: "VersionName"))
    CreateProjectVersionRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "OutputConfig"))
    CreateProjectVersionRequest.add_member(:training_data, Shapes::ShapeRef.new(shape: TrainingData, location_name: "TrainingData"))
    CreateProjectVersionRequest.add_member(:testing_data, Shapes::ShapeRef.new(shape: TestingData, location_name: "TestingData"))
    CreateProjectVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateProjectVersionRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateProjectVersionRequest.struct_class = Types::CreateProjectVersionRequest

    CreateProjectVersionResponse.add_member(:project_version_arn, Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: "ProjectVersionArn"))
    CreateProjectVersionResponse.struct_class = Types::CreateProjectVersionResponse

    CreateStreamProcessorRequest.add_member(:input, Shapes::ShapeRef.new(shape: StreamProcessorInput, required: true, location_name: "Input"))
    CreateStreamProcessorRequest.add_member(:output, Shapes::ShapeRef.new(shape: StreamProcessorOutput, required: true, location_name: "Output"))
    CreateStreamProcessorRequest.add_member(:name, Shapes::ShapeRef.new(shape: StreamProcessorName, required: true, location_name: "Name"))
    CreateStreamProcessorRequest.add_member(:settings, Shapes::ShapeRef.new(shape: StreamProcessorSettings, required: true, location_name: "Settings"))
    CreateStreamProcessorRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateStreamProcessorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateStreamProcessorRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: StreamProcessorNotificationChannel, location_name: "NotificationChannel"))
    CreateStreamProcessorRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateStreamProcessorRequest.add_member(:regions_of_interest, Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: "RegionsOfInterest"))
    CreateStreamProcessorRequest.add_member(:data_sharing_preference, Shapes::ShapeRef.new(shape: StreamProcessorDataSharingPreference, location_name: "DataSharingPreference"))
    CreateStreamProcessorRequest.struct_class = Types::CreateStreamProcessorRequest

    CreateStreamProcessorResponse.add_member(:stream_processor_arn, Shapes::ShapeRef.new(shape: StreamProcessorArn, location_name: "StreamProcessorArn"))
    CreateStreamProcessorResponse.struct_class = Types::CreateStreamProcessorResponse

    CreateUserRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    CreateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "UserId"))
    CreateUserRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.struct_class = Types::CreateUserResponse

    CustomLabel.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    CustomLabel.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    CustomLabel.add_member(:geometry, Shapes::ShapeRef.new(shape: Geometry, location_name: "Geometry"))
    CustomLabel.struct_class = Types::CustomLabel

    CustomLabels.member = Shapes::ShapeRef.new(shape: CustomLabel)

    DatasetChanges.add_member(:ground_truth, Shapes::ShapeRef.new(shape: GroundTruthBlob, required: true, location_name: "GroundTruth"))
    DatasetChanges.struct_class = Types::DatasetChanges

    DatasetDescription.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    DatasetDescription.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdatedTimestamp"))
    DatasetDescription.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "Status"))
    DatasetDescription.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    DatasetDescription.add_member(:status_message_code, Shapes::ShapeRef.new(shape: DatasetStatusMessageCode, location_name: "StatusMessageCode"))
    DatasetDescription.add_member(:dataset_stats, Shapes::ShapeRef.new(shape: DatasetStats, location_name: "DatasetStats"))
    DatasetDescription.struct_class = Types::DatasetDescription

    DatasetEntries.member = Shapes::ShapeRef.new(shape: DatasetEntry)

    DatasetLabelDescription.add_member(:label_name, Shapes::ShapeRef.new(shape: DatasetLabel, location_name: "LabelName"))
    DatasetLabelDescription.add_member(:label_stats, Shapes::ShapeRef.new(shape: DatasetLabelStats, location_name: "LabelStats"))
    DatasetLabelDescription.struct_class = Types::DatasetLabelDescription

    DatasetLabelDescriptions.member = Shapes::ShapeRef.new(shape: DatasetLabelDescription)

    DatasetLabelStats.add_member(:entry_count, Shapes::ShapeRef.new(shape: UInteger, location_name: "EntryCount"))
    DatasetLabelStats.add_member(:bounding_box_count, Shapes::ShapeRef.new(shape: UInteger, location_name: "BoundingBoxCount"))
    DatasetLabelStats.struct_class = Types::DatasetLabelStats

    DatasetLabels.member = Shapes::ShapeRef.new(shape: DatasetLabel)

    DatasetMetadata.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    DatasetMetadata.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, location_name: "DatasetType"))
    DatasetMetadata.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn"))
    DatasetMetadata.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "Status"))
    DatasetMetadata.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    DatasetMetadata.add_member(:status_message_code, Shapes::ShapeRef.new(shape: DatasetStatusMessageCode, location_name: "StatusMessageCode"))
    DatasetMetadata.struct_class = Types::DatasetMetadata

    DatasetMetadataList.member = Shapes::ShapeRef.new(shape: DatasetMetadata)

    DatasetSource.add_member(:ground_truth_manifest, Shapes::ShapeRef.new(shape: GroundTruthManifest, location_name: "GroundTruthManifest"))
    DatasetSource.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "DatasetArn"))
    DatasetSource.struct_class = Types::DatasetSource

    DatasetStats.add_member(:labeled_entries, Shapes::ShapeRef.new(shape: UInteger, location_name: "LabeledEntries"))
    DatasetStats.add_member(:total_entries, Shapes::ShapeRef.new(shape: UInteger, location_name: "TotalEntries"))
    DatasetStats.add_member(:total_labels, Shapes::ShapeRef.new(shape: UInteger, location_name: "TotalLabels"))
    DatasetStats.add_member(:error_entries, Shapes::ShapeRef.new(shape: UInteger, location_name: "ErrorEntries"))
    DatasetStats.struct_class = Types::DatasetStats

    DeleteCollectionRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    DeleteCollectionRequest.struct_class = Types::DeleteCollectionRequest

    DeleteCollectionResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: UInteger, location_name: "StatusCode"))
    DeleteCollectionResponse.struct_class = Types::DeleteCollectionResponse

    DeleteDatasetRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "DatasetArn"))
    DeleteDatasetRequest.struct_class = Types::DeleteDatasetRequest

    DeleteDatasetResponse.struct_class = Types::DeleteDatasetResponse

    DeleteFacesRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    DeleteFacesRequest.add_member(:face_ids, Shapes::ShapeRef.new(shape: FaceIdList, required: true, location_name: "FaceIds"))
    DeleteFacesRequest.struct_class = Types::DeleteFacesRequest

    DeleteFacesResponse.add_member(:deleted_faces, Shapes::ShapeRef.new(shape: FaceIdList, location_name: "DeletedFaces"))
    DeleteFacesResponse.add_member(:unsuccessful_face_deletions, Shapes::ShapeRef.new(shape: UnsuccessfulFaceDeletionsList, location_name: "UnsuccessfulFaceDeletions"))
    DeleteFacesResponse.struct_class = Types::DeleteFacesResponse

    DeleteProjectPolicyRequest.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "ProjectArn"))
    DeleteProjectPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: ProjectPolicyName, required: true, location_name: "PolicyName"))
    DeleteProjectPolicyRequest.add_member(:policy_revision_id, Shapes::ShapeRef.new(shape: ProjectPolicyRevisionId, location_name: "PolicyRevisionId"))
    DeleteProjectPolicyRequest.struct_class = Types::DeleteProjectPolicyRequest

    DeleteProjectPolicyResponse.struct_class = Types::DeleteProjectPolicyResponse

    DeleteProjectRequest.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "ProjectArn"))
    DeleteProjectRequest.struct_class = Types::DeleteProjectRequest

    DeleteProjectResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProjectStatus, location_name: "Status"))
    DeleteProjectResponse.struct_class = Types::DeleteProjectResponse

    DeleteProjectVersionRequest.add_member(:project_version_arn, Shapes::ShapeRef.new(shape: ProjectVersionArn, required: true, location_name: "ProjectVersionArn"))
    DeleteProjectVersionRequest.struct_class = Types::DeleteProjectVersionRequest

    DeleteProjectVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProjectVersionStatus, location_name: "Status"))
    DeleteProjectVersionResponse.struct_class = Types::DeleteProjectVersionResponse

    DeleteStreamProcessorRequest.add_member(:name, Shapes::ShapeRef.new(shape: StreamProcessorName, required: true, location_name: "Name"))
    DeleteStreamProcessorRequest.struct_class = Types::DeleteStreamProcessorRequest

    DeleteStreamProcessorResponse.struct_class = Types::DeleteStreamProcessorResponse

    DeleteUserRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    DeleteUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "UserId"))
    DeleteUserRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteUserResponse.struct_class = Types::DeleteUserResponse

    DescribeCollectionRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    DescribeCollectionRequest.struct_class = Types::DescribeCollectionRequest

    DescribeCollectionResponse.add_member(:face_count, Shapes::ShapeRef.new(shape: ULong, location_name: "FaceCount"))
    DescribeCollectionResponse.add_member(:face_model_version, Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    DescribeCollectionResponse.add_member(:collection_arn, Shapes::ShapeRef.new(shape: String, location_name: "CollectionARN"))
    DescribeCollectionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    DescribeCollectionResponse.add_member(:user_count, Shapes::ShapeRef.new(shape: ULong, location_name: "UserCount"))
    DescribeCollectionResponse.struct_class = Types::DescribeCollectionResponse

    DescribeDatasetRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "DatasetArn"))
    DescribeDatasetRequest.struct_class = Types::DescribeDatasetRequest

    DescribeDatasetResponse.add_member(:dataset_description, Shapes::ShapeRef.new(shape: DatasetDescription, location_name: "DatasetDescription"))
    DescribeDatasetResponse.struct_class = Types::DescribeDatasetResponse

    DescribeProjectVersionsRequest.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "ProjectArn"))
    DescribeProjectVersionsRequest.add_member(:version_names, Shapes::ShapeRef.new(shape: VersionNames, location_name: "VersionNames"))
    DescribeProjectVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    DescribeProjectVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ProjectVersionsPageSize, location_name: "MaxResults"))
    DescribeProjectVersionsRequest.struct_class = Types::DescribeProjectVersionsRequest

    DescribeProjectVersionsResponse.add_member(:project_version_descriptions, Shapes::ShapeRef.new(shape: ProjectVersionDescriptions, location_name: "ProjectVersionDescriptions"))
    DescribeProjectVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    DescribeProjectVersionsResponse.struct_class = Types::DescribeProjectVersionsResponse

    DescribeProjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    DescribeProjectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ProjectsPageSize, location_name: "MaxResults"))
    DescribeProjectsRequest.add_member(:project_names, Shapes::ShapeRef.new(shape: ProjectNames, location_name: "ProjectNames"))
    DescribeProjectsRequest.struct_class = Types::DescribeProjectsRequest

    DescribeProjectsResponse.add_member(:project_descriptions, Shapes::ShapeRef.new(shape: ProjectDescriptions, location_name: "ProjectDescriptions"))
    DescribeProjectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    DescribeProjectsResponse.struct_class = Types::DescribeProjectsResponse

    DescribeStreamProcessorRequest.add_member(:name, Shapes::ShapeRef.new(shape: StreamProcessorName, required: true, location_name: "Name"))
    DescribeStreamProcessorRequest.struct_class = Types::DescribeStreamProcessorRequest

    DescribeStreamProcessorResponse.add_member(:name, Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: "Name"))
    DescribeStreamProcessorResponse.add_member(:stream_processor_arn, Shapes::ShapeRef.new(shape: StreamProcessorArn, location_name: "StreamProcessorArn"))
    DescribeStreamProcessorResponse.add_member(:status, Shapes::ShapeRef.new(shape: StreamProcessorStatus, location_name: "Status"))
    DescribeStreamProcessorResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    DescribeStreamProcessorResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    DescribeStreamProcessorResponse.add_member(:last_update_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdateTimestamp"))
    DescribeStreamProcessorResponse.add_member(:input, Shapes::ShapeRef.new(shape: StreamProcessorInput, location_name: "Input"))
    DescribeStreamProcessorResponse.add_member(:output, Shapes::ShapeRef.new(shape: StreamProcessorOutput, location_name: "Output"))
    DescribeStreamProcessorResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeStreamProcessorResponse.add_member(:settings, Shapes::ShapeRef.new(shape: StreamProcessorSettings, location_name: "Settings"))
    DescribeStreamProcessorResponse.add_member(:notification_channel, Shapes::ShapeRef.new(shape: StreamProcessorNotificationChannel, location_name: "NotificationChannel"))
    DescribeStreamProcessorResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    DescribeStreamProcessorResponse.add_member(:regions_of_interest, Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: "RegionsOfInterest"))
    DescribeStreamProcessorResponse.add_member(:data_sharing_preference, Shapes::ShapeRef.new(shape: StreamProcessorDataSharingPreference, location_name: "DataSharingPreference"))
    DescribeStreamProcessorResponse.struct_class = Types::DescribeStreamProcessorResponse

    DetectCustomLabelsRequest.add_member(:project_version_arn, Shapes::ShapeRef.new(shape: ProjectVersionArn, required: true, location_name: "ProjectVersionArn"))
    DetectCustomLabelsRequest.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
    DetectCustomLabelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: UInteger, location_name: "MaxResults"))
    DetectCustomLabelsRequest.add_member(:min_confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    DetectCustomLabelsRequest.struct_class = Types::DetectCustomLabelsRequest

    DetectCustomLabelsResponse.add_member(:custom_labels, Shapes::ShapeRef.new(shape: CustomLabels, location_name: "CustomLabels"))
    DetectCustomLabelsResponse.struct_class = Types::DetectCustomLabelsResponse

    DetectFacesRequest.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
    DetectFacesRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    DetectFacesRequest.struct_class = Types::DetectFacesRequest

    DetectFacesResponse.add_member(:face_details, Shapes::ShapeRef.new(shape: FaceDetailList, location_name: "FaceDetails"))
    DetectFacesResponse.add_member(:orientation_correction, Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "OrientationCorrection"))
    DetectFacesResponse.struct_class = Types::DetectFacesResponse

    DetectLabelsFeatureList.member = Shapes::ShapeRef.new(shape: DetectLabelsFeatureName)

    DetectLabelsImageBackground.add_member(:quality, Shapes::ShapeRef.new(shape: DetectLabelsImageQuality, location_name: "Quality"))
    DetectLabelsImageBackground.add_member(:dominant_colors, Shapes::ShapeRef.new(shape: DominantColors, location_name: "DominantColors"))
    DetectLabelsImageBackground.struct_class = Types::DetectLabelsImageBackground

    DetectLabelsImageForeground.add_member(:quality, Shapes::ShapeRef.new(shape: DetectLabelsImageQuality, location_name: "Quality"))
    DetectLabelsImageForeground.add_member(:dominant_colors, Shapes::ShapeRef.new(shape: DominantColors, location_name: "DominantColors"))
    DetectLabelsImageForeground.struct_class = Types::DetectLabelsImageForeground

    DetectLabelsImageProperties.add_member(:quality, Shapes::ShapeRef.new(shape: DetectLabelsImageQuality, location_name: "Quality"))
    DetectLabelsImageProperties.add_member(:dominant_colors, Shapes::ShapeRef.new(shape: DominantColors, location_name: "DominantColors"))
    DetectLabelsImageProperties.add_member(:foreground, Shapes::ShapeRef.new(shape: DetectLabelsImageForeground, location_name: "Foreground"))
    DetectLabelsImageProperties.add_member(:background, Shapes::ShapeRef.new(shape: DetectLabelsImageBackground, location_name: "Background"))
    DetectLabelsImageProperties.struct_class = Types::DetectLabelsImageProperties

    DetectLabelsImagePropertiesSettings.add_member(:max_dominant_colors, Shapes::ShapeRef.new(shape: DetectLabelsMaxDominantColors, location_name: "MaxDominantColors"))
    DetectLabelsImagePropertiesSettings.struct_class = Types::DetectLabelsImagePropertiesSettings

    DetectLabelsImageQuality.add_member(:brightness, Shapes::ShapeRef.new(shape: Float, location_name: "Brightness"))
    DetectLabelsImageQuality.add_member(:sharpness, Shapes::ShapeRef.new(shape: Float, location_name: "Sharpness"))
    DetectLabelsImageQuality.add_member(:contrast, Shapes::ShapeRef.new(shape: Float, location_name: "Contrast"))
    DetectLabelsImageQuality.struct_class = Types::DetectLabelsImageQuality

    DetectLabelsRequest.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
    DetectLabelsRequest.add_member(:max_labels, Shapes::ShapeRef.new(shape: UInteger, location_name: "MaxLabels"))
    DetectLabelsRequest.add_member(:min_confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    DetectLabelsRequest.add_member(:features, Shapes::ShapeRef.new(shape: DetectLabelsFeatureList, location_name: "Features"))
    DetectLabelsRequest.add_member(:settings, Shapes::ShapeRef.new(shape: DetectLabelsSettings, location_name: "Settings"))
    DetectLabelsRequest.struct_class = Types::DetectLabelsRequest

    DetectLabelsResponse.add_member(:labels, Shapes::ShapeRef.new(shape: Labels, location_name: "Labels"))
    DetectLabelsResponse.add_member(:orientation_correction, Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "OrientationCorrection"))
    DetectLabelsResponse.add_member(:label_model_version, Shapes::ShapeRef.new(shape: String, location_name: "LabelModelVersion"))
    DetectLabelsResponse.add_member(:image_properties, Shapes::ShapeRef.new(shape: DetectLabelsImageProperties, location_name: "ImageProperties"))
    DetectLabelsResponse.struct_class = Types::DetectLabelsResponse

    DetectLabelsSettings.add_member(:general_labels, Shapes::ShapeRef.new(shape: GeneralLabelsSettings, location_name: "GeneralLabels"))
    DetectLabelsSettings.add_member(:image_properties, Shapes::ShapeRef.new(shape: DetectLabelsImagePropertiesSettings, location_name: "ImageProperties"))
    DetectLabelsSettings.struct_class = Types::DetectLabelsSettings

    DetectModerationLabelsRequest.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
    DetectModerationLabelsRequest.add_member(:min_confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    DetectModerationLabelsRequest.add_member(:human_loop_config, Shapes::ShapeRef.new(shape: HumanLoopConfig, location_name: "HumanLoopConfig"))
    DetectModerationLabelsRequest.struct_class = Types::DetectModerationLabelsRequest

    DetectModerationLabelsResponse.add_member(:moderation_labels, Shapes::ShapeRef.new(shape: ModerationLabels, location_name: "ModerationLabels"))
    DetectModerationLabelsResponse.add_member(:moderation_model_version, Shapes::ShapeRef.new(shape: String, location_name: "ModerationModelVersion"))
    DetectModerationLabelsResponse.add_member(:human_loop_activation_output, Shapes::ShapeRef.new(shape: HumanLoopActivationOutput, location_name: "HumanLoopActivationOutput"))
    DetectModerationLabelsResponse.struct_class = Types::DetectModerationLabelsResponse

    DetectProtectiveEquipmentRequest.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
    DetectProtectiveEquipmentRequest.add_member(:summarization_attributes, Shapes::ShapeRef.new(shape: ProtectiveEquipmentSummarizationAttributes, location_name: "SummarizationAttributes"))
    DetectProtectiveEquipmentRequest.struct_class = Types::DetectProtectiveEquipmentRequest

    DetectProtectiveEquipmentResponse.add_member(:protective_equipment_model_version, Shapes::ShapeRef.new(shape: String, location_name: "ProtectiveEquipmentModelVersion"))
    DetectProtectiveEquipmentResponse.add_member(:persons, Shapes::ShapeRef.new(shape: ProtectiveEquipmentPersons, location_name: "Persons"))
    DetectProtectiveEquipmentResponse.add_member(:summary, Shapes::ShapeRef.new(shape: ProtectiveEquipmentSummary, location_name: "Summary"))
    DetectProtectiveEquipmentResponse.struct_class = Types::DetectProtectiveEquipmentResponse

    DetectTextFilters.add_member(:word_filter, Shapes::ShapeRef.new(shape: DetectionFilter, location_name: "WordFilter"))
    DetectTextFilters.add_member(:regions_of_interest, Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: "RegionsOfInterest"))
    DetectTextFilters.struct_class = Types::DetectTextFilters

    DetectTextRequest.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
    DetectTextRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DetectTextFilters, location_name: "Filters"))
    DetectTextRequest.struct_class = Types::DetectTextRequest

    DetectTextResponse.add_member(:text_detections, Shapes::ShapeRef.new(shape: TextDetectionList, location_name: "TextDetections"))
    DetectTextResponse.add_member(:text_model_version, Shapes::ShapeRef.new(shape: String, location_name: "TextModelVersion"))
    DetectTextResponse.struct_class = Types::DetectTextResponse

    DetectionFilter.add_member(:min_confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    DetectionFilter.add_member(:min_bounding_box_height, Shapes::ShapeRef.new(shape: BoundingBoxHeight, location_name: "MinBoundingBoxHeight"))
    DetectionFilter.add_member(:min_bounding_box_width, Shapes::ShapeRef.new(shape: BoundingBoxWidth, location_name: "MinBoundingBoxWidth"))
    DetectionFilter.struct_class = Types::DetectionFilter

    DisassociateFacesRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    DisassociateFacesRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "UserId"))
    DisassociateFacesRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DisassociateFacesRequest.add_member(:face_ids, Shapes::ShapeRef.new(shape: UserFaceIdList, required: true, location_name: "FaceIds"))
    DisassociateFacesRequest.struct_class = Types::DisassociateFacesRequest

    DisassociateFacesResponse.add_member(:disassociated_faces, Shapes::ShapeRef.new(shape: DisassociatedFacesList, location_name: "DisassociatedFaces"))
    DisassociateFacesResponse.add_member(:unsuccessful_face_disassociations, Shapes::ShapeRef.new(shape: UnsuccessfulFaceDisassociationList, location_name: "UnsuccessfulFaceDisassociations"))
    DisassociateFacesResponse.add_member(:user_status, Shapes::ShapeRef.new(shape: UserStatus, location_name: "UserStatus"))
    DisassociateFacesResponse.struct_class = Types::DisassociateFacesResponse

    DisassociatedFace.add_member(:face_id, Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    DisassociatedFace.struct_class = Types::DisassociatedFace

    DisassociatedFacesList.member = Shapes::ShapeRef.new(shape: DisassociatedFace)

    DistributeDataset.add_member(:arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "Arn"))
    DistributeDataset.struct_class = Types::DistributeDataset

    DistributeDatasetEntriesRequest.add_member(:datasets, Shapes::ShapeRef.new(shape: DistributeDatasetMetadataList, required: true, location_name: "Datasets"))
    DistributeDatasetEntriesRequest.struct_class = Types::DistributeDatasetEntriesRequest

    DistributeDatasetEntriesResponse.struct_class = Types::DistributeDatasetEntriesResponse

    DistributeDatasetMetadataList.member = Shapes::ShapeRef.new(shape: DistributeDataset)

    DominantColor.add_member(:red, Shapes::ShapeRef.new(shape: UInteger, location_name: "Red"))
    DominantColor.add_member(:blue, Shapes::ShapeRef.new(shape: UInteger, location_name: "Blue"))
    DominantColor.add_member(:green, Shapes::ShapeRef.new(shape: UInteger, location_name: "Green"))
    DominantColor.add_member(:hex_code, Shapes::ShapeRef.new(shape: String, location_name: "HexCode"))
    DominantColor.add_member(:css_color, Shapes::ShapeRef.new(shape: String, location_name: "CSSColor"))
    DominantColor.add_member(:simplified_color, Shapes::ShapeRef.new(shape: String, location_name: "SimplifiedColor"))
    DominantColor.add_member(:pixel_percent, Shapes::ShapeRef.new(shape: Percent, location_name: "PixelPercent"))
    DominantColor.struct_class = Types::DominantColor

    DominantColors.member = Shapes::ShapeRef.new(shape: DominantColor)

    Emotion.add_member(:type, Shapes::ShapeRef.new(shape: EmotionName, location_name: "Type"))
    Emotion.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Emotion.struct_class = Types::Emotion

    Emotions.member = Shapes::ShapeRef.new(shape: Emotion)

    EquipmentDetection.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    EquipmentDetection.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    EquipmentDetection.add_member(:type, Shapes::ShapeRef.new(shape: ProtectiveEquipmentType, location_name: "Type"))
    EquipmentDetection.add_member(:covers_body_part, Shapes::ShapeRef.new(shape: CoversBodyPart, location_name: "CoversBodyPart"))
    EquipmentDetection.struct_class = Types::EquipmentDetection

    EquipmentDetections.member = Shapes::ShapeRef.new(shape: EquipmentDetection)

    EvaluationResult.add_member(:f1_score, Shapes::ShapeRef.new(shape: Float, location_name: "F1Score"))
    EvaluationResult.add_member(:summary, Shapes::ShapeRef.new(shape: Summary, location_name: "Summary"))
    EvaluationResult.struct_class = Types::EvaluationResult

    EyeDirection.add_member(:yaw, Shapes::ShapeRef.new(shape: Degree, location_name: "Yaw"))
    EyeDirection.add_member(:pitch, Shapes::ShapeRef.new(shape: Degree, location_name: "Pitch"))
    EyeDirection.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    EyeDirection.struct_class = Types::EyeDirection

    EyeOpen.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
    EyeOpen.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    EyeOpen.struct_class = Types::EyeOpen

    Eyeglasses.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
    Eyeglasses.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Eyeglasses.struct_class = Types::Eyeglasses

    Face.add_member(:face_id, Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    Face.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    Face.add_member(:image_id, Shapes::ShapeRef.new(shape: ImageId, location_name: "ImageId"))
    Face.add_member(:external_image_id, Shapes::ShapeRef.new(shape: ExternalImageId, location_name: "ExternalImageId"))
    Face.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Face.add_member(:index_faces_model_version, Shapes::ShapeRef.new(shape: IndexFacesModelVersion, location_name: "IndexFacesModelVersion"))
    Face.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    Face.struct_class = Types::Face

    FaceDetail.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    FaceDetail.add_member(:age_range, Shapes::ShapeRef.new(shape: AgeRange, location_name: "AgeRange"))
    FaceDetail.add_member(:smile, Shapes::ShapeRef.new(shape: Smile, location_name: "Smile"))
    FaceDetail.add_member(:eyeglasses, Shapes::ShapeRef.new(shape: Eyeglasses, location_name: "Eyeglasses"))
    FaceDetail.add_member(:sunglasses, Shapes::ShapeRef.new(shape: Sunglasses, location_name: "Sunglasses"))
    FaceDetail.add_member(:gender, Shapes::ShapeRef.new(shape: Gender, location_name: "Gender"))
    FaceDetail.add_member(:beard, Shapes::ShapeRef.new(shape: Beard, location_name: "Beard"))
    FaceDetail.add_member(:mustache, Shapes::ShapeRef.new(shape: Mustache, location_name: "Mustache"))
    FaceDetail.add_member(:eyes_open, Shapes::ShapeRef.new(shape: EyeOpen, location_name: "EyesOpen"))
    FaceDetail.add_member(:mouth_open, Shapes::ShapeRef.new(shape: MouthOpen, location_name: "MouthOpen"))
    FaceDetail.add_member(:emotions, Shapes::ShapeRef.new(shape: Emotions, location_name: "Emotions"))
    FaceDetail.add_member(:landmarks, Shapes::ShapeRef.new(shape: Landmarks, location_name: "Landmarks"))
    FaceDetail.add_member(:pose, Shapes::ShapeRef.new(shape: Pose, location_name: "Pose"))
    FaceDetail.add_member(:quality, Shapes::ShapeRef.new(shape: ImageQuality, location_name: "Quality"))
    FaceDetail.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    FaceDetail.add_member(:face_occluded, Shapes::ShapeRef.new(shape: FaceOccluded, location_name: "FaceOccluded"))
    FaceDetail.add_member(:eye_direction, Shapes::ShapeRef.new(shape: EyeDirection, location_name: "EyeDirection"))
    FaceDetail.struct_class = Types::FaceDetail

    FaceDetailList.member = Shapes::ShapeRef.new(shape: FaceDetail)

    FaceDetection.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    FaceDetection.add_member(:face, Shapes::ShapeRef.new(shape: FaceDetail, location_name: "Face"))
    FaceDetection.struct_class = Types::FaceDetection

    FaceDetections.member = Shapes::ShapeRef.new(shape: FaceDetection)

    FaceIdList.member = Shapes::ShapeRef.new(shape: FaceId)

    FaceList.member = Shapes::ShapeRef.new(shape: Face)

    FaceMatch.add_member(:similarity, Shapes::ShapeRef.new(shape: Percent, location_name: "Similarity"))
    FaceMatch.add_member(:face, Shapes::ShapeRef.new(shape: Face, location_name: "Face"))
    FaceMatch.struct_class = Types::FaceMatch

    FaceMatchList.member = Shapes::ShapeRef.new(shape: FaceMatch)

    FaceModelVersionList.member = Shapes::ShapeRef.new(shape: String)

    FaceOccluded.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
    FaceOccluded.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    FaceOccluded.struct_class = Types::FaceOccluded

    FaceRecord.add_member(:face, Shapes::ShapeRef.new(shape: Face, location_name: "Face"))
    FaceRecord.add_member(:face_detail, Shapes::ShapeRef.new(shape: FaceDetail, location_name: "FaceDetail"))
    FaceRecord.struct_class = Types::FaceRecord

    FaceRecordList.member = Shapes::ShapeRef.new(shape: FaceRecord)

    FaceSearchSettings.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, location_name: "CollectionId"))
    FaceSearchSettings.add_member(:face_match_threshold, Shapes::ShapeRef.new(shape: Percent, location_name: "FaceMatchThreshold"))
    FaceSearchSettings.struct_class = Types::FaceSearchSettings

    Gender.add_member(:value, Shapes::ShapeRef.new(shape: GenderType, location_name: "Value"))
    Gender.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Gender.struct_class = Types::Gender

    GeneralLabelsFilterList.member = Shapes::ShapeRef.new(shape: GeneralLabelsFilterValue)

    GeneralLabelsSettings.add_member(:label_inclusion_filters, Shapes::ShapeRef.new(shape: GeneralLabelsFilterList, location_name: "LabelInclusionFilters"))
    GeneralLabelsSettings.add_member(:label_exclusion_filters, Shapes::ShapeRef.new(shape: GeneralLabelsFilterList, location_name: "LabelExclusionFilters"))
    GeneralLabelsSettings.add_member(:label_category_inclusion_filters, Shapes::ShapeRef.new(shape: GeneralLabelsFilterList, location_name: "LabelCategoryInclusionFilters"))
    GeneralLabelsSettings.add_member(:label_category_exclusion_filters, Shapes::ShapeRef.new(shape: GeneralLabelsFilterList, location_name: "LabelCategoryExclusionFilters"))
    GeneralLabelsSettings.struct_class = Types::GeneralLabelsSettings

    Geometry.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    Geometry.add_member(:polygon, Shapes::ShapeRef.new(shape: Polygon, location_name: "Polygon"))
    Geometry.struct_class = Types::Geometry

    GetCelebrityInfoRequest.add_member(:id, Shapes::ShapeRef.new(shape: RekognitionUniqueId, required: true, location_name: "Id"))
    GetCelebrityInfoRequest.struct_class = Types::GetCelebrityInfoRequest

    GetCelebrityInfoResponse.add_member(:urls, Shapes::ShapeRef.new(shape: Urls, location_name: "Urls"))
    GetCelebrityInfoResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    GetCelebrityInfoResponse.add_member(:known_gender, Shapes::ShapeRef.new(shape: KnownGender, location_name: "KnownGender"))
    GetCelebrityInfoResponse.struct_class = Types::GetCelebrityInfoResponse

    GetCelebrityRecognitionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetCelebrityRecognitionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetCelebrityRecognitionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetCelebrityRecognitionRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: CelebrityRecognitionSortBy, location_name: "SortBy"))
    GetCelebrityRecognitionRequest.struct_class = Types::GetCelebrityRecognitionRequest

    GetCelebrityRecognitionResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetCelebrityRecognitionResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetCelebrityRecognitionResponse.add_member(:video_metadata, Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetCelebrityRecognitionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetCelebrityRecognitionResponse.add_member(:celebrities, Shapes::ShapeRef.new(shape: CelebrityRecognitions, location_name: "Celebrities"))
    GetCelebrityRecognitionResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetCelebrityRecognitionResponse.add_member(:video, Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetCelebrityRecognitionResponse.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetCelebrityRecognitionResponse.struct_class = Types::GetCelebrityRecognitionResponse

    GetContentModerationRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetContentModerationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetContentModerationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetContentModerationRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ContentModerationSortBy, location_name: "SortBy"))
    GetContentModerationRequest.add_member(:aggregate_by, Shapes::ShapeRef.new(shape: ContentModerationAggregateBy, location_name: "AggregateBy"))
    GetContentModerationRequest.struct_class = Types::GetContentModerationRequest

    GetContentModerationRequestMetadata.add_member(:sort_by, Shapes::ShapeRef.new(shape: ContentModerationSortBy, location_name: "SortBy"))
    GetContentModerationRequestMetadata.add_member(:aggregate_by, Shapes::ShapeRef.new(shape: ContentModerationAggregateBy, location_name: "AggregateBy"))
    GetContentModerationRequestMetadata.struct_class = Types::GetContentModerationRequestMetadata

    GetContentModerationResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetContentModerationResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetContentModerationResponse.add_member(:video_metadata, Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetContentModerationResponse.add_member(:moderation_labels, Shapes::ShapeRef.new(shape: ContentModerationDetections, location_name: "ModerationLabels"))
    GetContentModerationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetContentModerationResponse.add_member(:moderation_model_version, Shapes::ShapeRef.new(shape: String, location_name: "ModerationModelVersion"))
    GetContentModerationResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetContentModerationResponse.add_member(:video, Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetContentModerationResponse.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetContentModerationResponse.add_member(:get_request_metadata, Shapes::ShapeRef.new(shape: GetContentModerationRequestMetadata, location_name: "GetRequestMetadata"))
    GetContentModerationResponse.struct_class = Types::GetContentModerationResponse

    GetFaceDetectionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetFaceDetectionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetFaceDetectionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetFaceDetectionRequest.struct_class = Types::GetFaceDetectionRequest

    GetFaceDetectionResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetFaceDetectionResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetFaceDetectionResponse.add_member(:video_metadata, Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetFaceDetectionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetFaceDetectionResponse.add_member(:faces, Shapes::ShapeRef.new(shape: FaceDetections, location_name: "Faces"))
    GetFaceDetectionResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetFaceDetectionResponse.add_member(:video, Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetFaceDetectionResponse.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetFaceDetectionResponse.struct_class = Types::GetFaceDetectionResponse

    GetFaceLivenessSessionResultsRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: LivenessSessionId, required: true, location_name: "SessionId"))
    GetFaceLivenessSessionResultsRequest.struct_class = Types::GetFaceLivenessSessionResultsRequest

    GetFaceLivenessSessionResultsResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: LivenessSessionId, required: true, location_name: "SessionId"))
    GetFaceLivenessSessionResultsResponse.add_member(:status, Shapes::ShapeRef.new(shape: LivenessSessionStatus, required: true, location_name: "Status"))
    GetFaceLivenessSessionResultsResponse.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    GetFaceLivenessSessionResultsResponse.add_member(:reference_image, Shapes::ShapeRef.new(shape: AuditImage, location_name: "ReferenceImage"))
    GetFaceLivenessSessionResultsResponse.add_member(:audit_images, Shapes::ShapeRef.new(shape: AuditImages, location_name: "AuditImages"))
    GetFaceLivenessSessionResultsResponse.struct_class = Types::GetFaceLivenessSessionResultsResponse

    GetFaceSearchRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetFaceSearchRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetFaceSearchRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetFaceSearchRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: FaceSearchSortBy, location_name: "SortBy"))
    GetFaceSearchRequest.struct_class = Types::GetFaceSearchRequest

    GetFaceSearchResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetFaceSearchResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetFaceSearchResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetFaceSearchResponse.add_member(:video_metadata, Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetFaceSearchResponse.add_member(:persons, Shapes::ShapeRef.new(shape: PersonMatches, location_name: "Persons"))
    GetFaceSearchResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetFaceSearchResponse.add_member(:video, Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetFaceSearchResponse.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetFaceSearchResponse.struct_class = Types::GetFaceSearchResponse

    GetLabelDetectionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetLabelDetectionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetLabelDetectionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetLabelDetectionRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: LabelDetectionSortBy, location_name: "SortBy"))
    GetLabelDetectionRequest.add_member(:aggregate_by, Shapes::ShapeRef.new(shape: LabelDetectionAggregateBy, location_name: "AggregateBy"))
    GetLabelDetectionRequest.struct_class = Types::GetLabelDetectionRequest

    GetLabelDetectionRequestMetadata.add_member(:sort_by, Shapes::ShapeRef.new(shape: LabelDetectionSortBy, location_name: "SortBy"))
    GetLabelDetectionRequestMetadata.add_member(:aggregate_by, Shapes::ShapeRef.new(shape: LabelDetectionAggregateBy, location_name: "AggregateBy"))
    GetLabelDetectionRequestMetadata.struct_class = Types::GetLabelDetectionRequestMetadata

    GetLabelDetectionResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetLabelDetectionResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetLabelDetectionResponse.add_member(:video_metadata, Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetLabelDetectionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetLabelDetectionResponse.add_member(:labels, Shapes::ShapeRef.new(shape: LabelDetections, location_name: "Labels"))
    GetLabelDetectionResponse.add_member(:label_model_version, Shapes::ShapeRef.new(shape: String, location_name: "LabelModelVersion"))
    GetLabelDetectionResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetLabelDetectionResponse.add_member(:video, Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetLabelDetectionResponse.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetLabelDetectionResponse.add_member(:get_request_metadata, Shapes::ShapeRef.new(shape: GetLabelDetectionRequestMetadata, location_name: "GetRequestMetadata"))
    GetLabelDetectionResponse.struct_class = Types::GetLabelDetectionResponse

    GetPersonTrackingRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetPersonTrackingRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetPersonTrackingRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetPersonTrackingRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: PersonTrackingSortBy, location_name: "SortBy"))
    GetPersonTrackingRequest.struct_class = Types::GetPersonTrackingRequest

    GetPersonTrackingResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetPersonTrackingResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetPersonTrackingResponse.add_member(:video_metadata, Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetPersonTrackingResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetPersonTrackingResponse.add_member(:persons, Shapes::ShapeRef.new(shape: PersonDetections, location_name: "Persons"))
    GetPersonTrackingResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetPersonTrackingResponse.add_member(:video, Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetPersonTrackingResponse.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetPersonTrackingResponse.struct_class = Types::GetPersonTrackingResponse

    GetSegmentDetectionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetSegmentDetectionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetSegmentDetectionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetSegmentDetectionRequest.struct_class = Types::GetSegmentDetectionRequest

    GetSegmentDetectionResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetSegmentDetectionResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetSegmentDetectionResponse.add_member(:video_metadata, Shapes::ShapeRef.new(shape: VideoMetadataList, location_name: "VideoMetadata"))
    GetSegmentDetectionResponse.add_member(:audio_metadata, Shapes::ShapeRef.new(shape: AudioMetadataList, location_name: "AudioMetadata"))
    GetSegmentDetectionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetSegmentDetectionResponse.add_member(:segments, Shapes::ShapeRef.new(shape: SegmentDetections, location_name: "Segments"))
    GetSegmentDetectionResponse.add_member(:selected_segment_types, Shapes::ShapeRef.new(shape: SegmentTypesInfo, location_name: "SelectedSegmentTypes"))
    GetSegmentDetectionResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetSegmentDetectionResponse.add_member(:video, Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetSegmentDetectionResponse.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetSegmentDetectionResponse.struct_class = Types::GetSegmentDetectionResponse

    GetTextDetectionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetTextDetectionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetTextDetectionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetTextDetectionRequest.struct_class = Types::GetTextDetectionRequest

    GetTextDetectionResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetTextDetectionResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetTextDetectionResponse.add_member(:video_metadata, Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetTextDetectionResponse.add_member(:text_detections, Shapes::ShapeRef.new(shape: TextDetectionResults, location_name: "TextDetections"))
    GetTextDetectionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetTextDetectionResponse.add_member(:text_model_version, Shapes::ShapeRef.new(shape: String, location_name: "TextModelVersion"))
    GetTextDetectionResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetTextDetectionResponse.add_member(:video, Shapes::ShapeRef.new(shape: Video, location_name: "Video"))
    GetTextDetectionResponse.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    GetTextDetectionResponse.struct_class = Types::GetTextDetectionResponse

    GroundTruthManifest.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    GroundTruthManifest.struct_class = Types::GroundTruthManifest

    HumanLoopActivationOutput.add_member(:human_loop_arn, Shapes::ShapeRef.new(shape: HumanLoopArn, location_name: "HumanLoopArn"))
    HumanLoopActivationOutput.add_member(:human_loop_activation_reasons, Shapes::ShapeRef.new(shape: HumanLoopActivationReasons, location_name: "HumanLoopActivationReasons"))
    HumanLoopActivationOutput.add_member(:human_loop_activation_conditions_evaluation_results, Shapes::ShapeRef.new(shape: HumanLoopActivationConditionsEvaluationResults, location_name: "HumanLoopActivationConditionsEvaluationResults", metadata: {"jsonvalue"=>true}))
    HumanLoopActivationOutput.struct_class = Types::HumanLoopActivationOutput

    HumanLoopActivationReasons.member = Shapes::ShapeRef.new(shape: HumanLoopActivationReason)

    HumanLoopConfig.add_member(:human_loop_name, Shapes::ShapeRef.new(shape: HumanLoopName, required: true, location_name: "HumanLoopName"))
    HumanLoopConfig.add_member(:flow_definition_arn, Shapes::ShapeRef.new(shape: FlowDefinitionArn, required: true, location_name: "FlowDefinitionArn"))
    HumanLoopConfig.add_member(:data_attributes, Shapes::ShapeRef.new(shape: HumanLoopDataAttributes, location_name: "DataAttributes"))
    HumanLoopConfig.struct_class = Types::HumanLoopConfig

    HumanLoopDataAttributes.add_member(:content_classifiers, Shapes::ShapeRef.new(shape: ContentClassifiers, location_name: "ContentClassifiers"))
    HumanLoopDataAttributes.struct_class = Types::HumanLoopDataAttributes

    HumanLoopQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    HumanLoopQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    HumanLoopQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    HumanLoopQuotaExceededException.struct_class = Types::HumanLoopQuotaExceededException

    IdempotentParameterMismatchException.struct_class = Types::IdempotentParameterMismatchException

    Image.add_member(:bytes, Shapes::ShapeRef.new(shape: ImageBlob, location_name: "Bytes"))
    Image.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    Image.struct_class = Types::Image

    ImageQuality.add_member(:brightness, Shapes::ShapeRef.new(shape: Float, location_name: "Brightness"))
    ImageQuality.add_member(:sharpness, Shapes::ShapeRef.new(shape: Float, location_name: "Sharpness"))
    ImageQuality.struct_class = Types::ImageQuality

    ImageTooLargeException.struct_class = Types::ImageTooLargeException

    IndexFacesRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    IndexFacesRequest.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
    IndexFacesRequest.add_member(:external_image_id, Shapes::ShapeRef.new(shape: ExternalImageId, location_name: "ExternalImageId"))
    IndexFacesRequest.add_member(:detection_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "DetectionAttributes"))
    IndexFacesRequest.add_member(:max_faces, Shapes::ShapeRef.new(shape: MaxFacesToIndex, location_name: "MaxFaces"))
    IndexFacesRequest.add_member(:quality_filter, Shapes::ShapeRef.new(shape: QualityFilter, location_name: "QualityFilter"))
    IndexFacesRequest.struct_class = Types::IndexFacesRequest

    IndexFacesResponse.add_member(:face_records, Shapes::ShapeRef.new(shape: FaceRecordList, location_name: "FaceRecords"))
    IndexFacesResponse.add_member(:orientation_correction, Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "OrientationCorrection"))
    IndexFacesResponse.add_member(:face_model_version, Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    IndexFacesResponse.add_member(:unindexed_faces, Shapes::ShapeRef.new(shape: UnindexedFaces, location_name: "UnindexedFaces"))
    IndexFacesResponse.struct_class = Types::IndexFacesResponse

    Instance.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    Instance.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Instance.add_member(:dominant_colors, Shapes::ShapeRef.new(shape: DominantColors, location_name: "DominantColors"))
    Instance.struct_class = Types::Instance

    Instances.member = Shapes::ShapeRef.new(shape: Instance)

    InternalServerError.struct_class = Types::InternalServerError

    InvalidImageFormatException.struct_class = Types::InvalidImageFormatException

    InvalidPaginationTokenException.struct_class = Types::InvalidPaginationTokenException

    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidPolicyRevisionIdException.struct_class = Types::InvalidPolicyRevisionIdException

    InvalidS3ObjectException.struct_class = Types::InvalidS3ObjectException

    KinesisDataStream.add_member(:arn, Shapes::ShapeRef.new(shape: KinesisDataArn, location_name: "Arn"))
    KinesisDataStream.struct_class = Types::KinesisDataStream

    KinesisVideoStream.add_member(:arn, Shapes::ShapeRef.new(shape: KinesisVideoArn, location_name: "Arn"))
    KinesisVideoStream.struct_class = Types::KinesisVideoStream

    KinesisVideoStreamStartSelector.add_member(:producer_timestamp, Shapes::ShapeRef.new(shape: ULong, location_name: "ProducerTimestamp"))
    KinesisVideoStreamStartSelector.add_member(:fragment_number, Shapes::ShapeRef.new(shape: KinesisVideoStreamFragmentNumber, location_name: "FragmentNumber"))
    KinesisVideoStreamStartSelector.struct_class = Types::KinesisVideoStreamStartSelector

    KnownGender.add_member(:type, Shapes::ShapeRef.new(shape: KnownGenderType, location_name: "Type"))
    KnownGender.struct_class = Types::KnownGender

    Label.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Label.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Label.add_member(:instances, Shapes::ShapeRef.new(shape: Instances, location_name: "Instances"))
    Label.add_member(:parents, Shapes::ShapeRef.new(shape: Parents, location_name: "Parents"))
    Label.add_member(:aliases, Shapes::ShapeRef.new(shape: LabelAliases, location_name: "Aliases"))
    Label.add_member(:categories, Shapes::ShapeRef.new(shape: LabelCategories, location_name: "Categories"))
    Label.struct_class = Types::Label

    LabelAlias.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    LabelAlias.struct_class = Types::LabelAlias

    LabelAliases.member = Shapes::ShapeRef.new(shape: LabelAlias)

    LabelCategories.member = Shapes::ShapeRef.new(shape: LabelCategory)

    LabelCategory.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    LabelCategory.struct_class = Types::LabelCategory

    LabelDetection.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    LabelDetection.add_member(:label, Shapes::ShapeRef.new(shape: Label, location_name: "Label"))
    LabelDetection.add_member(:start_timestamp_millis, Shapes::ShapeRef.new(shape: ULong, location_name: "StartTimestampMillis"))
    LabelDetection.add_member(:end_timestamp_millis, Shapes::ShapeRef.new(shape: ULong, location_name: "EndTimestampMillis"))
    LabelDetection.add_member(:duration_millis, Shapes::ShapeRef.new(shape: ULong, location_name: "DurationMillis"))
    LabelDetection.struct_class = Types::LabelDetection

    LabelDetectionFeatureList.member = Shapes::ShapeRef.new(shape: LabelDetectionFeatureName)

    LabelDetectionSettings.add_member(:general_labels, Shapes::ShapeRef.new(shape: GeneralLabelsSettings, location_name: "GeneralLabels"))
    LabelDetectionSettings.struct_class = Types::LabelDetectionSettings

    LabelDetections.member = Shapes::ShapeRef.new(shape: LabelDetection)

    Labels.member = Shapes::ShapeRef.new(shape: Label)

    Landmark.add_member(:type, Shapes::ShapeRef.new(shape: LandmarkType, location_name: "Type"))
    Landmark.add_member(:x, Shapes::ShapeRef.new(shape: Float, location_name: "X"))
    Landmark.add_member(:y, Shapes::ShapeRef.new(shape: Float, location_name: "Y"))
    Landmark.struct_class = Types::Landmark

    Landmarks.member = Shapes::ShapeRef.new(shape: Landmark)

    LimitExceededException.struct_class = Types::LimitExceededException

    ListCollectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListCollectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListCollectionsRequest.struct_class = Types::ListCollectionsRequest

    ListCollectionsResponse.add_member(:collection_ids, Shapes::ShapeRef.new(shape: CollectionIdList, location_name: "CollectionIds"))
    ListCollectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListCollectionsResponse.add_member(:face_model_versions, Shapes::ShapeRef.new(shape: FaceModelVersionList, location_name: "FaceModelVersions"))
    ListCollectionsResponse.struct_class = Types::ListCollectionsResponse

    ListDatasetEntriesRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "DatasetArn"))
    ListDatasetEntriesRequest.add_member(:contains_labels, Shapes::ShapeRef.new(shape: DatasetLabels, location_name: "ContainsLabels"))
    ListDatasetEntriesRequest.add_member(:labeled, Shapes::ShapeRef.new(shape: IsLabeled, location_name: "Labeled"))
    ListDatasetEntriesRequest.add_member(:source_ref_contains, Shapes::ShapeRef.new(shape: QueryString, location_name: "SourceRefContains"))
    ListDatasetEntriesRequest.add_member(:has_errors, Shapes::ShapeRef.new(shape: HasErrors, location_name: "HasErrors"))
    ListDatasetEntriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    ListDatasetEntriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDatasetEntriesPageSize, location_name: "MaxResults"))
    ListDatasetEntriesRequest.struct_class = Types::ListDatasetEntriesRequest

    ListDatasetEntriesResponse.add_member(:dataset_entries, Shapes::ShapeRef.new(shape: DatasetEntries, location_name: "DatasetEntries"))
    ListDatasetEntriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    ListDatasetEntriesResponse.struct_class = Types::ListDatasetEntriesResponse

    ListDatasetLabelsRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "DatasetArn"))
    ListDatasetLabelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    ListDatasetLabelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDatasetLabelsPageSize, location_name: "MaxResults"))
    ListDatasetLabelsRequest.struct_class = Types::ListDatasetLabelsRequest

    ListDatasetLabelsResponse.add_member(:dataset_label_descriptions, Shapes::ShapeRef.new(shape: DatasetLabelDescriptions, location_name: "DatasetLabelDescriptions"))
    ListDatasetLabelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    ListDatasetLabelsResponse.struct_class = Types::ListDatasetLabelsResponse

    ListFacesRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    ListFacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListFacesRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    ListFacesRequest.add_member(:face_ids, Shapes::ShapeRef.new(shape: FaceIdList, location_name: "FaceIds"))
    ListFacesRequest.struct_class = Types::ListFacesRequest

    ListFacesResponse.add_member(:faces, Shapes::ShapeRef.new(shape: FaceList, location_name: "Faces"))
    ListFacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListFacesResponse.add_member(:face_model_version, Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    ListFacesResponse.struct_class = Types::ListFacesResponse

    ListProjectPoliciesRequest.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "ProjectArn"))
    ListProjectPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    ListProjectPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListProjectPoliciesPageSize, location_name: "MaxResults"))
    ListProjectPoliciesRequest.struct_class = Types::ListProjectPoliciesRequest

    ListProjectPoliciesResponse.add_member(:project_policies, Shapes::ShapeRef.new(shape: ProjectPolicies, location_name: "ProjectPolicies"))
    ListProjectPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ExtendedPaginationToken, location_name: "NextToken"))
    ListProjectPoliciesResponse.struct_class = Types::ListProjectPoliciesResponse

    ListStreamProcessorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListStreamProcessorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStreamProcessorsRequest.struct_class = Types::ListStreamProcessorsRequest

    ListStreamProcessorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListStreamProcessorsResponse.add_member(:stream_processors, Shapes::ShapeRef.new(shape: StreamProcessorList, location_name: "StreamProcessors"))
    ListStreamProcessorsResponse.struct_class = Types::ListStreamProcessorsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListUsersRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxUserResults, location_name: "MaxResults"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: UserList, location_name: "Users"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    LivenessOutputConfig.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "S3Bucket"))
    LivenessOutputConfig.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: LivenessS3KeyPrefix, location_name: "S3KeyPrefix"))
    LivenessOutputConfig.struct_class = Types::LivenessOutputConfig

    MalformedPolicyDocumentException.struct_class = Types::MalformedPolicyDocumentException

    MatchedUser.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    MatchedUser.add_member(:user_status, Shapes::ShapeRef.new(shape: UserStatus, location_name: "UserStatus"))
    MatchedUser.struct_class = Types::MatchedUser

    ModerationLabel.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ModerationLabel.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ModerationLabel.add_member(:parent_name, Shapes::ShapeRef.new(shape: String, location_name: "ParentName"))
    ModerationLabel.struct_class = Types::ModerationLabel

    ModerationLabels.member = Shapes::ShapeRef.new(shape: ModerationLabel)

    MouthOpen.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
    MouthOpen.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    MouthOpen.struct_class = Types::MouthOpen

    Mustache.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
    Mustache.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Mustache.struct_class = Types::Mustache

    NotificationChannel.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SNSTopicArn, required: true, location_name: "SNSTopicArn"))
    NotificationChannel.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    NotificationChannel.struct_class = Types::NotificationChannel

    OutputConfig.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket"))
    OutputConfig.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "S3KeyPrefix"))
    OutputConfig.struct_class = Types::OutputConfig

    Parent.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Parent.struct_class = Types::Parent

    Parents.member = Shapes::ShapeRef.new(shape: Parent)

    PersonDetail.add_member(:index, Shapes::ShapeRef.new(shape: PersonIndex, location_name: "Index"))
    PersonDetail.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    PersonDetail.add_member(:face, Shapes::ShapeRef.new(shape: FaceDetail, location_name: "Face"))
    PersonDetail.struct_class = Types::PersonDetail

    PersonDetection.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    PersonDetection.add_member(:person, Shapes::ShapeRef.new(shape: PersonDetail, location_name: "Person"))
    PersonDetection.struct_class = Types::PersonDetection

    PersonDetections.member = Shapes::ShapeRef.new(shape: PersonDetection)

    PersonMatch.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    PersonMatch.add_member(:person, Shapes::ShapeRef.new(shape: PersonDetail, location_name: "Person"))
    PersonMatch.add_member(:face_matches, Shapes::ShapeRef.new(shape: FaceMatchList, location_name: "FaceMatches"))
    PersonMatch.struct_class = Types::PersonMatch

    PersonMatches.member = Shapes::ShapeRef.new(shape: PersonMatch)

    Point.add_member(:x, Shapes::ShapeRef.new(shape: Float, location_name: "X"))
    Point.add_member(:y, Shapes::ShapeRef.new(shape: Float, location_name: "Y"))
    Point.struct_class = Types::Point

    Polygon.member = Shapes::ShapeRef.new(shape: Point)

    Pose.add_member(:roll, Shapes::ShapeRef.new(shape: Degree, location_name: "Roll"))
    Pose.add_member(:yaw, Shapes::ShapeRef.new(shape: Degree, location_name: "Yaw"))
    Pose.add_member(:pitch, Shapes::ShapeRef.new(shape: Degree, location_name: "Pitch"))
    Pose.struct_class = Types::Pose

    ProjectDescription.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn"))
    ProjectDescription.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    ProjectDescription.add_member(:status, Shapes::ShapeRef.new(shape: ProjectStatus, location_name: "Status"))
    ProjectDescription.add_member(:datasets, Shapes::ShapeRef.new(shape: DatasetMetadataList, location_name: "Datasets"))
    ProjectDescription.struct_class = Types::ProjectDescription

    ProjectDescriptions.member = Shapes::ShapeRef.new(shape: ProjectDescription)

    ProjectNames.member = Shapes::ShapeRef.new(shape: ProjectName)

    ProjectPolicies.member = Shapes::ShapeRef.new(shape: ProjectPolicy)

    ProjectPolicy.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn"))
    ProjectPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: ProjectPolicyName, location_name: "PolicyName"))
    ProjectPolicy.add_member(:policy_revision_id, Shapes::ShapeRef.new(shape: ProjectPolicyRevisionId, location_name: "PolicyRevisionId"))
    ProjectPolicy.add_member(:policy_document, Shapes::ShapeRef.new(shape: ProjectPolicyDocument, location_name: "PolicyDocument"))
    ProjectPolicy.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    ProjectPolicy.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdatedTimestamp"))
    ProjectPolicy.struct_class = Types::ProjectPolicy

    ProjectVersionDescription.add_member(:project_version_arn, Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: "ProjectVersionArn"))
    ProjectVersionDescription.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    ProjectVersionDescription.add_member(:min_inference_units, Shapes::ShapeRef.new(shape: InferenceUnits, location_name: "MinInferenceUnits"))
    ProjectVersionDescription.add_member(:status, Shapes::ShapeRef.new(shape: ProjectVersionStatus, location_name: "Status"))
    ProjectVersionDescription.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    ProjectVersionDescription.add_member(:billable_training_time_in_seconds, Shapes::ShapeRef.new(shape: ULong, location_name: "BillableTrainingTimeInSeconds"))
    ProjectVersionDescription.add_member(:training_end_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "TrainingEndTimestamp"))
    ProjectVersionDescription.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "OutputConfig"))
    ProjectVersionDescription.add_member(:training_data_result, Shapes::ShapeRef.new(shape: TrainingDataResult, location_name: "TrainingDataResult"))
    ProjectVersionDescription.add_member(:testing_data_result, Shapes::ShapeRef.new(shape: TestingDataResult, location_name: "TestingDataResult"))
    ProjectVersionDescription.add_member(:evaluation_result, Shapes::ShapeRef.new(shape: EvaluationResult, location_name: "EvaluationResult"))
    ProjectVersionDescription.add_member(:manifest_summary, Shapes::ShapeRef.new(shape: GroundTruthManifest, location_name: "ManifestSummary"))
    ProjectVersionDescription.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    ProjectVersionDescription.add_member(:max_inference_units, Shapes::ShapeRef.new(shape: InferenceUnits, location_name: "MaxInferenceUnits"))
    ProjectVersionDescription.add_member(:source_project_version_arn, Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: "SourceProjectVersionArn"))
    ProjectVersionDescription.struct_class = Types::ProjectVersionDescription

    ProjectVersionDescriptions.member = Shapes::ShapeRef.new(shape: ProjectVersionDescription)

    ProtectiveEquipmentBodyPart.add_member(:name, Shapes::ShapeRef.new(shape: BodyPart, location_name: "Name"))
    ProtectiveEquipmentBodyPart.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ProtectiveEquipmentBodyPart.add_member(:equipment_detections, Shapes::ShapeRef.new(shape: EquipmentDetections, location_name: "EquipmentDetections"))
    ProtectiveEquipmentBodyPart.struct_class = Types::ProtectiveEquipmentBodyPart

    ProtectiveEquipmentPerson.add_member(:body_parts, Shapes::ShapeRef.new(shape: BodyParts, location_name: "BodyParts"))
    ProtectiveEquipmentPerson.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    ProtectiveEquipmentPerson.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ProtectiveEquipmentPerson.add_member(:id, Shapes::ShapeRef.new(shape: UInteger, location_name: "Id"))
    ProtectiveEquipmentPerson.struct_class = Types::ProtectiveEquipmentPerson

    ProtectiveEquipmentPersonIds.member = Shapes::ShapeRef.new(shape: UInteger)

    ProtectiveEquipmentPersons.member = Shapes::ShapeRef.new(shape: ProtectiveEquipmentPerson)

    ProtectiveEquipmentSummarizationAttributes.add_member(:min_confidence, Shapes::ShapeRef.new(shape: Percent, required: true, location_name: "MinConfidence"))
    ProtectiveEquipmentSummarizationAttributes.add_member(:required_equipment_types, Shapes::ShapeRef.new(shape: ProtectiveEquipmentTypes, required: true, location_name: "RequiredEquipmentTypes"))
    ProtectiveEquipmentSummarizationAttributes.struct_class = Types::ProtectiveEquipmentSummarizationAttributes

    ProtectiveEquipmentSummary.add_member(:persons_with_required_equipment, Shapes::ShapeRef.new(shape: ProtectiveEquipmentPersonIds, location_name: "PersonsWithRequiredEquipment"))
    ProtectiveEquipmentSummary.add_member(:persons_without_required_equipment, Shapes::ShapeRef.new(shape: ProtectiveEquipmentPersonIds, location_name: "PersonsWithoutRequiredEquipment"))
    ProtectiveEquipmentSummary.add_member(:persons_indeterminate, Shapes::ShapeRef.new(shape: ProtectiveEquipmentPersonIds, location_name: "PersonsIndeterminate"))
    ProtectiveEquipmentSummary.struct_class = Types::ProtectiveEquipmentSummary

    ProtectiveEquipmentTypes.member = Shapes::ShapeRef.new(shape: ProtectiveEquipmentType)

    ProvisionedThroughputExceededException.struct_class = Types::ProvisionedThroughputExceededException

    PutProjectPolicyRequest.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "ProjectArn"))
    PutProjectPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: ProjectPolicyName, required: true, location_name: "PolicyName"))
    PutProjectPolicyRequest.add_member(:policy_revision_id, Shapes::ShapeRef.new(shape: ProjectPolicyRevisionId, location_name: "PolicyRevisionId"))
    PutProjectPolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: ProjectPolicyDocument, required: true, location_name: "PolicyDocument"))
    PutProjectPolicyRequest.struct_class = Types::PutProjectPolicyRequest

    PutProjectPolicyResponse.add_member(:policy_revision_id, Shapes::ShapeRef.new(shape: ProjectPolicyRevisionId, location_name: "PolicyRevisionId"))
    PutProjectPolicyResponse.struct_class = Types::PutProjectPolicyResponse

    Reasons.member = Shapes::ShapeRef.new(shape: Reason)

    RecognizeCelebritiesRequest.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
    RecognizeCelebritiesRequest.struct_class = Types::RecognizeCelebritiesRequest

    RecognizeCelebritiesResponse.add_member(:celebrity_faces, Shapes::ShapeRef.new(shape: CelebrityList, location_name: "CelebrityFaces"))
    RecognizeCelebritiesResponse.add_member(:unrecognized_faces, Shapes::ShapeRef.new(shape: ComparedFaceList, location_name: "UnrecognizedFaces"))
    RecognizeCelebritiesResponse.add_member(:orientation_correction, Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "OrientationCorrection"))
    RecognizeCelebritiesResponse.struct_class = Types::RecognizeCelebritiesResponse

    RegionOfInterest.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    RegionOfInterest.add_member(:polygon, Shapes::ShapeRef.new(shape: Polygon, location_name: "Polygon"))
    RegionOfInterest.struct_class = Types::RegionOfInterest

    RegionsOfInterest.member = Shapes::ShapeRef.new(shape: RegionOfInterest)

    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceNotReadyException.struct_class = Types::ResourceNotReadyException

    S3Destination.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "Bucket"))
    S3Destination.add_member(:key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "KeyPrefix"))
    S3Destination.struct_class = Types::S3Destination

    S3Object.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "Bucket"))
    S3Object.add_member(:name, Shapes::ShapeRef.new(shape: S3ObjectName, location_name: "Name"))
    S3Object.add_member(:version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "Version"))
    S3Object.struct_class = Types::S3Object

    SearchFacesByImageRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    SearchFacesByImageRequest.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
    SearchFacesByImageRequest.add_member(:max_faces, Shapes::ShapeRef.new(shape: MaxFaces, location_name: "MaxFaces"))
    SearchFacesByImageRequest.add_member(:face_match_threshold, Shapes::ShapeRef.new(shape: Percent, location_name: "FaceMatchThreshold"))
    SearchFacesByImageRequest.add_member(:quality_filter, Shapes::ShapeRef.new(shape: QualityFilter, location_name: "QualityFilter"))
    SearchFacesByImageRequest.struct_class = Types::SearchFacesByImageRequest

    SearchFacesByImageResponse.add_member(:searched_face_bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "SearchedFaceBoundingBox"))
    SearchFacesByImageResponse.add_member(:searched_face_confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "SearchedFaceConfidence"))
    SearchFacesByImageResponse.add_member(:face_matches, Shapes::ShapeRef.new(shape: FaceMatchList, location_name: "FaceMatches"))
    SearchFacesByImageResponse.add_member(:face_model_version, Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    SearchFacesByImageResponse.struct_class = Types::SearchFacesByImageResponse

    SearchFacesRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    SearchFacesRequest.add_member(:face_id, Shapes::ShapeRef.new(shape: FaceId, required: true, location_name: "FaceId"))
    SearchFacesRequest.add_member(:max_faces, Shapes::ShapeRef.new(shape: MaxFaces, location_name: "MaxFaces"))
    SearchFacesRequest.add_member(:face_match_threshold, Shapes::ShapeRef.new(shape: Percent, location_name: "FaceMatchThreshold"))
    SearchFacesRequest.struct_class = Types::SearchFacesRequest

    SearchFacesResponse.add_member(:searched_face_id, Shapes::ShapeRef.new(shape: FaceId, location_name: "SearchedFaceId"))
    SearchFacesResponse.add_member(:face_matches, Shapes::ShapeRef.new(shape: FaceMatchList, location_name: "FaceMatches"))
    SearchFacesResponse.add_member(:face_model_version, Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    SearchFacesResponse.struct_class = Types::SearchFacesResponse

    SearchUsersByImageRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    SearchUsersByImageRequest.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
    SearchUsersByImageRequest.add_member(:user_match_threshold, Shapes::ShapeRef.new(shape: Percent, location_name: "UserMatchThreshold"))
    SearchUsersByImageRequest.add_member(:max_users, Shapes::ShapeRef.new(shape: MaxUserResults, location_name: "MaxUsers"))
    SearchUsersByImageRequest.add_member(:quality_filter, Shapes::ShapeRef.new(shape: QualityFilter, location_name: "QualityFilter"))
    SearchUsersByImageRequest.struct_class = Types::SearchUsersByImageRequest

    SearchUsersByImageResponse.add_member(:user_matches, Shapes::ShapeRef.new(shape: UserMatchList, location_name: "UserMatches"))
    SearchUsersByImageResponse.add_member(:face_model_version, Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    SearchUsersByImageResponse.add_member(:searched_face, Shapes::ShapeRef.new(shape: SearchedFaceDetails, location_name: "SearchedFace"))
    SearchUsersByImageResponse.add_member(:unsearched_faces, Shapes::ShapeRef.new(shape: UnsearchedFacesList, location_name: "UnsearchedFaces"))
    SearchUsersByImageResponse.struct_class = Types::SearchUsersByImageResponse

    SearchUsersRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    SearchUsersRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    SearchUsersRequest.add_member(:face_id, Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    SearchUsersRequest.add_member(:user_match_threshold, Shapes::ShapeRef.new(shape: Percent, location_name: "UserMatchThreshold"))
    SearchUsersRequest.add_member(:max_users, Shapes::ShapeRef.new(shape: MaxUserResults, location_name: "MaxUsers"))
    SearchUsersRequest.struct_class = Types::SearchUsersRequest

    SearchUsersResponse.add_member(:user_matches, Shapes::ShapeRef.new(shape: UserMatchList, location_name: "UserMatches"))
    SearchUsersResponse.add_member(:face_model_version, Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    SearchUsersResponse.add_member(:searched_face, Shapes::ShapeRef.new(shape: SearchedFace, location_name: "SearchedFace"))
    SearchUsersResponse.add_member(:searched_user, Shapes::ShapeRef.new(shape: SearchedUser, location_name: "SearchedUser"))
    SearchUsersResponse.struct_class = Types::SearchUsersResponse

    SearchedFace.add_member(:face_id, Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    SearchedFace.struct_class = Types::SearchedFace

    SearchedFaceDetails.add_member(:face_detail, Shapes::ShapeRef.new(shape: FaceDetail, location_name: "FaceDetail"))
    SearchedFaceDetails.struct_class = Types::SearchedFaceDetails

    SearchedUser.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    SearchedUser.struct_class = Types::SearchedUser

    SegmentDetection.add_member(:type, Shapes::ShapeRef.new(shape: SegmentType, location_name: "Type"))
    SegmentDetection.add_member(:start_timestamp_millis, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTimestampMillis"))
    SegmentDetection.add_member(:end_timestamp_millis, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTimestampMillis"))
    SegmentDetection.add_member(:duration_millis, Shapes::ShapeRef.new(shape: ULong, location_name: "DurationMillis"))
    SegmentDetection.add_member(:start_timecode_smpte, Shapes::ShapeRef.new(shape: Timecode, location_name: "StartTimecodeSMPTE"))
    SegmentDetection.add_member(:end_timecode_smpte, Shapes::ShapeRef.new(shape: Timecode, location_name: "EndTimecodeSMPTE"))
    SegmentDetection.add_member(:duration_smpte, Shapes::ShapeRef.new(shape: Timecode, location_name: "DurationSMPTE"))
    SegmentDetection.add_member(:technical_cue_segment, Shapes::ShapeRef.new(shape: TechnicalCueSegment, location_name: "TechnicalCueSegment"))
    SegmentDetection.add_member(:shot_segment, Shapes::ShapeRef.new(shape: ShotSegment, location_name: "ShotSegment"))
    SegmentDetection.add_member(:start_frame_number, Shapes::ShapeRef.new(shape: ULong, location_name: "StartFrameNumber"))
    SegmentDetection.add_member(:end_frame_number, Shapes::ShapeRef.new(shape: ULong, location_name: "EndFrameNumber"))
    SegmentDetection.add_member(:duration_frames, Shapes::ShapeRef.new(shape: ULong, location_name: "DurationFrames"))
    SegmentDetection.struct_class = Types::SegmentDetection

    SegmentDetections.member = Shapes::ShapeRef.new(shape: SegmentDetection)

    SegmentTypeInfo.add_member(:type, Shapes::ShapeRef.new(shape: SegmentType, location_name: "Type"))
    SegmentTypeInfo.add_member(:model_version, Shapes::ShapeRef.new(shape: String, location_name: "ModelVersion"))
    SegmentTypeInfo.struct_class = Types::SegmentTypeInfo

    SegmentTypes.member = Shapes::ShapeRef.new(shape: SegmentType)

    SegmentTypesInfo.member = Shapes::ShapeRef.new(shape: SegmentTypeInfo)

    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SessionNotFoundException.struct_class = Types::SessionNotFoundException

    ShotSegment.add_member(:index, Shapes::ShapeRef.new(shape: ULong, location_name: "Index"))
    ShotSegment.add_member(:confidence, Shapes::ShapeRef.new(shape: SegmentConfidence, location_name: "Confidence"))
    ShotSegment.struct_class = Types::ShotSegment

    Smile.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
    Smile.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Smile.struct_class = Types::Smile

    StartCelebrityRecognitionRequest.add_member(:video, Shapes::ShapeRef.new(shape: Video, required: true, location_name: "Video"))
    StartCelebrityRecognitionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartCelebrityRecognitionRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartCelebrityRecognitionRequest.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartCelebrityRecognitionRequest.struct_class = Types::StartCelebrityRecognitionRequest

    StartCelebrityRecognitionResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartCelebrityRecognitionResponse.struct_class = Types::StartCelebrityRecognitionResponse

    StartContentModerationRequest.add_member(:video, Shapes::ShapeRef.new(shape: Video, required: true, location_name: "Video"))
    StartContentModerationRequest.add_member(:min_confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    StartContentModerationRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartContentModerationRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartContentModerationRequest.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartContentModerationRequest.struct_class = Types::StartContentModerationRequest

    StartContentModerationResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartContentModerationResponse.struct_class = Types::StartContentModerationResponse

    StartFaceDetectionRequest.add_member(:video, Shapes::ShapeRef.new(shape: Video, required: true, location_name: "Video"))
    StartFaceDetectionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartFaceDetectionRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartFaceDetectionRequest.add_member(:face_attributes, Shapes::ShapeRef.new(shape: FaceAttributes, location_name: "FaceAttributes"))
    StartFaceDetectionRequest.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartFaceDetectionRequest.struct_class = Types::StartFaceDetectionRequest

    StartFaceDetectionResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartFaceDetectionResponse.struct_class = Types::StartFaceDetectionResponse

    StartFaceSearchRequest.add_member(:video, Shapes::ShapeRef.new(shape: Video, required: true, location_name: "Video"))
    StartFaceSearchRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartFaceSearchRequest.add_member(:face_match_threshold, Shapes::ShapeRef.new(shape: Percent, location_name: "FaceMatchThreshold"))
    StartFaceSearchRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    StartFaceSearchRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartFaceSearchRequest.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartFaceSearchRequest.struct_class = Types::StartFaceSearchRequest

    StartFaceSearchResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartFaceSearchResponse.struct_class = Types::StartFaceSearchResponse

    StartLabelDetectionRequest.add_member(:video, Shapes::ShapeRef.new(shape: Video, required: true, location_name: "Video"))
    StartLabelDetectionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartLabelDetectionRequest.add_member(:min_confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    StartLabelDetectionRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartLabelDetectionRequest.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartLabelDetectionRequest.add_member(:features, Shapes::ShapeRef.new(shape: LabelDetectionFeatureList, location_name: "Features"))
    StartLabelDetectionRequest.add_member(:settings, Shapes::ShapeRef.new(shape: LabelDetectionSettings, location_name: "Settings"))
    StartLabelDetectionRequest.struct_class = Types::StartLabelDetectionRequest

    StartLabelDetectionResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartLabelDetectionResponse.struct_class = Types::StartLabelDetectionResponse

    StartPersonTrackingRequest.add_member(:video, Shapes::ShapeRef.new(shape: Video, required: true, location_name: "Video"))
    StartPersonTrackingRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartPersonTrackingRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartPersonTrackingRequest.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartPersonTrackingRequest.struct_class = Types::StartPersonTrackingRequest

    StartPersonTrackingResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartPersonTrackingResponse.struct_class = Types::StartPersonTrackingResponse

    StartProjectVersionRequest.add_member(:project_version_arn, Shapes::ShapeRef.new(shape: ProjectVersionArn, required: true, location_name: "ProjectVersionArn"))
    StartProjectVersionRequest.add_member(:min_inference_units, Shapes::ShapeRef.new(shape: InferenceUnits, required: true, location_name: "MinInferenceUnits"))
    StartProjectVersionRequest.add_member(:max_inference_units, Shapes::ShapeRef.new(shape: InferenceUnits, location_name: "MaxInferenceUnits"))
    StartProjectVersionRequest.struct_class = Types::StartProjectVersionRequest

    StartProjectVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProjectVersionStatus, location_name: "Status"))
    StartProjectVersionResponse.struct_class = Types::StartProjectVersionResponse

    StartSegmentDetectionFilters.add_member(:technical_cue_filter, Shapes::ShapeRef.new(shape: StartTechnicalCueDetectionFilter, location_name: "TechnicalCueFilter"))
    StartSegmentDetectionFilters.add_member(:shot_filter, Shapes::ShapeRef.new(shape: StartShotDetectionFilter, location_name: "ShotFilter"))
    StartSegmentDetectionFilters.struct_class = Types::StartSegmentDetectionFilters

    StartSegmentDetectionRequest.add_member(:video, Shapes::ShapeRef.new(shape: Video, required: true, location_name: "Video"))
    StartSegmentDetectionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartSegmentDetectionRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartSegmentDetectionRequest.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartSegmentDetectionRequest.add_member(:filters, Shapes::ShapeRef.new(shape: StartSegmentDetectionFilters, location_name: "Filters"))
    StartSegmentDetectionRequest.add_member(:segment_types, Shapes::ShapeRef.new(shape: SegmentTypes, required: true, location_name: "SegmentTypes"))
    StartSegmentDetectionRequest.struct_class = Types::StartSegmentDetectionRequest

    StartSegmentDetectionResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartSegmentDetectionResponse.struct_class = Types::StartSegmentDetectionResponse

    StartShotDetectionFilter.add_member(:min_segment_confidence, Shapes::ShapeRef.new(shape: SegmentConfidence, location_name: "MinSegmentConfidence"))
    StartShotDetectionFilter.struct_class = Types::StartShotDetectionFilter

    StartStreamProcessorRequest.add_member(:name, Shapes::ShapeRef.new(shape: StreamProcessorName, required: true, location_name: "Name"))
    StartStreamProcessorRequest.add_member(:start_selector, Shapes::ShapeRef.new(shape: StreamProcessingStartSelector, location_name: "StartSelector"))
    StartStreamProcessorRequest.add_member(:stop_selector, Shapes::ShapeRef.new(shape: StreamProcessingStopSelector, location_name: "StopSelector"))
    StartStreamProcessorRequest.struct_class = Types::StartStreamProcessorRequest

    StartStreamProcessorResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: StartStreamProcessorSessionId, location_name: "SessionId"))
    StartStreamProcessorResponse.struct_class = Types::StartStreamProcessorResponse

    StartTechnicalCueDetectionFilter.add_member(:min_segment_confidence, Shapes::ShapeRef.new(shape: SegmentConfidence, location_name: "MinSegmentConfidence"))
    StartTechnicalCueDetectionFilter.add_member(:black_frame, Shapes::ShapeRef.new(shape: BlackFrame, location_name: "BlackFrame"))
    StartTechnicalCueDetectionFilter.struct_class = Types::StartTechnicalCueDetectionFilter

    StartTextDetectionFilters.add_member(:word_filter, Shapes::ShapeRef.new(shape: DetectionFilter, location_name: "WordFilter"))
    StartTextDetectionFilters.add_member(:regions_of_interest, Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: "RegionsOfInterest"))
    StartTextDetectionFilters.struct_class = Types::StartTextDetectionFilters

    StartTextDetectionRequest.add_member(:video, Shapes::ShapeRef.new(shape: Video, required: true, location_name: "Video"))
    StartTextDetectionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartTextDetectionRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartTextDetectionRequest.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartTextDetectionRequest.add_member(:filters, Shapes::ShapeRef.new(shape: StartTextDetectionFilters, location_name: "Filters"))
    StartTextDetectionRequest.struct_class = Types::StartTextDetectionRequest

    StartTextDetectionResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartTextDetectionResponse.struct_class = Types::StartTextDetectionResponse

    StopProjectVersionRequest.add_member(:project_version_arn, Shapes::ShapeRef.new(shape: ProjectVersionArn, required: true, location_name: "ProjectVersionArn"))
    StopProjectVersionRequest.struct_class = Types::StopProjectVersionRequest

    StopProjectVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProjectVersionStatus, location_name: "Status"))
    StopProjectVersionResponse.struct_class = Types::StopProjectVersionResponse

    StopStreamProcessorRequest.add_member(:name, Shapes::ShapeRef.new(shape: StreamProcessorName, required: true, location_name: "Name"))
    StopStreamProcessorRequest.struct_class = Types::StopStreamProcessorRequest

    StopStreamProcessorResponse.struct_class = Types::StopStreamProcessorResponse

    StreamProcessingStartSelector.add_member(:kvs_stream_start_selector, Shapes::ShapeRef.new(shape: KinesisVideoStreamStartSelector, location_name: "KVSStreamStartSelector"))
    StreamProcessingStartSelector.struct_class = Types::StreamProcessingStartSelector

    StreamProcessingStopSelector.add_member(:max_duration_in_seconds, Shapes::ShapeRef.new(shape: MaxDurationInSecondsULong, location_name: "MaxDurationInSeconds"))
    StreamProcessingStopSelector.struct_class = Types::StreamProcessingStopSelector

    StreamProcessor.add_member(:name, Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: "Name"))
    StreamProcessor.add_member(:status, Shapes::ShapeRef.new(shape: StreamProcessorStatus, location_name: "Status"))
    StreamProcessor.struct_class = Types::StreamProcessor

    StreamProcessorDataSharingPreference.add_member(:opt_in, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "OptIn"))
    StreamProcessorDataSharingPreference.struct_class = Types::StreamProcessorDataSharingPreference

    StreamProcessorInput.add_member(:kinesis_video_stream, Shapes::ShapeRef.new(shape: KinesisVideoStream, location_name: "KinesisVideoStream"))
    StreamProcessorInput.struct_class = Types::StreamProcessorInput

    StreamProcessorList.member = Shapes::ShapeRef.new(shape: StreamProcessor)

    StreamProcessorNotificationChannel.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SNSTopicArn, required: true, location_name: "SNSTopicArn"))
    StreamProcessorNotificationChannel.struct_class = Types::StreamProcessorNotificationChannel

    StreamProcessorOutput.add_member(:kinesis_data_stream, Shapes::ShapeRef.new(shape: KinesisDataStream, location_name: "KinesisDataStream"))
    StreamProcessorOutput.add_member(:s3_destination, Shapes::ShapeRef.new(shape: S3Destination, location_name: "S3Destination"))
    StreamProcessorOutput.struct_class = Types::StreamProcessorOutput

    StreamProcessorParametersToDelete.member = Shapes::ShapeRef.new(shape: StreamProcessorParameterToDelete)

    StreamProcessorSettings.add_member(:face_search, Shapes::ShapeRef.new(shape: FaceSearchSettings, location_name: "FaceSearch"))
    StreamProcessorSettings.add_member(:connected_home, Shapes::ShapeRef.new(shape: ConnectedHomeSettings, location_name: "ConnectedHome"))
    StreamProcessorSettings.struct_class = Types::StreamProcessorSettings

    StreamProcessorSettingsForUpdate.add_member(:connected_home_for_update, Shapes::ShapeRef.new(shape: ConnectedHomeSettingsForUpdate, location_name: "ConnectedHomeForUpdate"))
    StreamProcessorSettingsForUpdate.struct_class = Types::StreamProcessorSettingsForUpdate

    Summary.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    Summary.struct_class = Types::Summary

    Sunglasses.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
    Sunglasses.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Sunglasses.struct_class = Types::Sunglasses

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TechnicalCueSegment.add_member(:type, Shapes::ShapeRef.new(shape: TechnicalCueType, location_name: "Type"))
    TechnicalCueSegment.add_member(:confidence, Shapes::ShapeRef.new(shape: SegmentConfidence, location_name: "Confidence"))
    TechnicalCueSegment.struct_class = Types::TechnicalCueSegment

    TestingData.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, location_name: "Assets"))
    TestingData.add_member(:auto_create, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoCreate"))
    TestingData.struct_class = Types::TestingData

    TestingDataResult.add_member(:input, Shapes::ShapeRef.new(shape: TestingData, location_name: "Input"))
    TestingDataResult.add_member(:output, Shapes::ShapeRef.new(shape: TestingData, location_name: "Output"))
    TestingDataResult.add_member(:validation, Shapes::ShapeRef.new(shape: ValidationData, location_name: "Validation"))
    TestingDataResult.struct_class = Types::TestingDataResult

    TextDetection.add_member(:detected_text, Shapes::ShapeRef.new(shape: String, location_name: "DetectedText"))
    TextDetection.add_member(:type, Shapes::ShapeRef.new(shape: TextTypes, location_name: "Type"))
    TextDetection.add_member(:id, Shapes::ShapeRef.new(shape: UInteger, location_name: "Id"))
    TextDetection.add_member(:parent_id, Shapes::ShapeRef.new(shape: UInteger, location_name: "ParentId"))
    TextDetection.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    TextDetection.add_member(:geometry, Shapes::ShapeRef.new(shape: Geometry, location_name: "Geometry"))
    TextDetection.struct_class = Types::TextDetection

    TextDetectionList.member = Shapes::ShapeRef.new(shape: TextDetection)

    TextDetectionResult.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    TextDetectionResult.add_member(:text_detection, Shapes::ShapeRef.new(shape: TextDetection, location_name: "TextDetection"))
    TextDetectionResult.struct_class = Types::TextDetectionResult

    TextDetectionResults.member = Shapes::ShapeRef.new(shape: TextDetectionResult)

    ThrottlingException.struct_class = Types::ThrottlingException

    TrainingData.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, location_name: "Assets"))
    TrainingData.struct_class = Types::TrainingData

    TrainingDataResult.add_member(:input, Shapes::ShapeRef.new(shape: TrainingData, location_name: "Input"))
    TrainingDataResult.add_member(:output, Shapes::ShapeRef.new(shape: TrainingData, location_name: "Output"))
    TrainingDataResult.add_member(:validation, Shapes::ShapeRef.new(shape: ValidationData, location_name: "Validation"))
    TrainingDataResult.struct_class = Types::TrainingDataResult

    UnindexedFace.add_member(:reasons, Shapes::ShapeRef.new(shape: Reasons, location_name: "Reasons"))
    UnindexedFace.add_member(:face_detail, Shapes::ShapeRef.new(shape: FaceDetail, location_name: "FaceDetail"))
    UnindexedFace.struct_class = Types::UnindexedFace

    UnindexedFaces.member = Shapes::ShapeRef.new(shape: UnindexedFace)

    UnsearchedFace.add_member(:face_details, Shapes::ShapeRef.new(shape: FaceDetail, location_name: "FaceDetails"))
    UnsearchedFace.add_member(:reasons, Shapes::ShapeRef.new(shape: UnsearchedFaceReasons, location_name: "Reasons"))
    UnsearchedFace.struct_class = Types::UnsearchedFace

    UnsearchedFaceReasons.member = Shapes::ShapeRef.new(shape: UnsearchedFaceReason)

    UnsearchedFacesList.member = Shapes::ShapeRef.new(shape: UnsearchedFace)

    UnsuccessfulFaceAssociation.add_member(:face_id, Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    UnsuccessfulFaceAssociation.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    UnsuccessfulFaceAssociation.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    UnsuccessfulFaceAssociation.add_member(:reasons, Shapes::ShapeRef.new(shape: UnsuccessfulFaceAssociationReasons, location_name: "Reasons"))
    UnsuccessfulFaceAssociation.struct_class = Types::UnsuccessfulFaceAssociation

    UnsuccessfulFaceAssociationList.member = Shapes::ShapeRef.new(shape: UnsuccessfulFaceAssociation)

    UnsuccessfulFaceAssociationReasons.member = Shapes::ShapeRef.new(shape: UnsuccessfulFaceAssociationReason)

    UnsuccessfulFaceDeletion.add_member(:face_id, Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    UnsuccessfulFaceDeletion.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    UnsuccessfulFaceDeletion.add_member(:reasons, Shapes::ShapeRef.new(shape: UnsuccessfulFaceDeletionReasons, location_name: "Reasons"))
    UnsuccessfulFaceDeletion.struct_class = Types::UnsuccessfulFaceDeletion

    UnsuccessfulFaceDeletionReasons.member = Shapes::ShapeRef.new(shape: UnsuccessfulFaceDeletionReason)

    UnsuccessfulFaceDeletionsList.member = Shapes::ShapeRef.new(shape: UnsuccessfulFaceDeletion)

    UnsuccessfulFaceDisassociation.add_member(:face_id, Shapes::ShapeRef.new(shape: FaceId, location_name: "FaceId"))
    UnsuccessfulFaceDisassociation.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    UnsuccessfulFaceDisassociation.add_member(:reasons, Shapes::ShapeRef.new(shape: UnsuccessfulFaceDisassociationReasons, location_name: "Reasons"))
    UnsuccessfulFaceDisassociation.struct_class = Types::UnsuccessfulFaceDisassociation

    UnsuccessfulFaceDisassociationList.member = Shapes::ShapeRef.new(shape: UnsuccessfulFaceDisassociation)

    UnsuccessfulFaceDisassociationReasons.member = Shapes::ShapeRef.new(shape: UnsuccessfulFaceDisassociationReason)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDatasetEntriesRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "DatasetArn"))
    UpdateDatasetEntriesRequest.add_member(:changes, Shapes::ShapeRef.new(shape: DatasetChanges, required: true, location_name: "Changes"))
    UpdateDatasetEntriesRequest.struct_class = Types::UpdateDatasetEntriesRequest

    UpdateDatasetEntriesResponse.struct_class = Types::UpdateDatasetEntriesResponse

    UpdateStreamProcessorRequest.add_member(:name, Shapes::ShapeRef.new(shape: StreamProcessorName, required: true, location_name: "Name"))
    UpdateStreamProcessorRequest.add_member(:settings_for_update, Shapes::ShapeRef.new(shape: StreamProcessorSettingsForUpdate, location_name: "SettingsForUpdate"))
    UpdateStreamProcessorRequest.add_member(:regions_of_interest_for_update, Shapes::ShapeRef.new(shape: RegionsOfInterest, location_name: "RegionsOfInterestForUpdate"))
    UpdateStreamProcessorRequest.add_member(:data_sharing_preference_for_update, Shapes::ShapeRef.new(shape: StreamProcessorDataSharingPreference, location_name: "DataSharingPreferenceForUpdate"))
    UpdateStreamProcessorRequest.add_member(:parameters_to_delete, Shapes::ShapeRef.new(shape: StreamProcessorParametersToDelete, location_name: "ParametersToDelete"))
    UpdateStreamProcessorRequest.struct_class = Types::UpdateStreamProcessorRequest

    UpdateStreamProcessorResponse.struct_class = Types::UpdateStreamProcessorResponse

    Urls.member = Shapes::ShapeRef.new(shape: Url)

    User.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    User.add_member(:user_status, Shapes::ShapeRef.new(shape: UserStatus, location_name: "UserStatus"))
    User.struct_class = Types::User

    UserFaceIdList.member = Shapes::ShapeRef.new(shape: FaceId)

    UserList.member = Shapes::ShapeRef.new(shape: User)

    UserMatch.add_member(:similarity, Shapes::ShapeRef.new(shape: Percent, location_name: "Similarity"))
    UserMatch.add_member(:user, Shapes::ShapeRef.new(shape: MatchedUser, location_name: "User"))
    UserMatch.struct_class = Types::UserMatch

    UserMatchList.member = Shapes::ShapeRef.new(shape: UserMatch)

    ValidationData.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, location_name: "Assets"))
    ValidationData.struct_class = Types::ValidationData

    VersionNames.member = Shapes::ShapeRef.new(shape: VersionName)

    Video.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    Video.struct_class = Types::Video

    VideoMetadata.add_member(:codec, Shapes::ShapeRef.new(shape: String, location_name: "Codec"))
    VideoMetadata.add_member(:duration_millis, Shapes::ShapeRef.new(shape: ULong, location_name: "DurationMillis"))
    VideoMetadata.add_member(:format, Shapes::ShapeRef.new(shape: String, location_name: "Format"))
    VideoMetadata.add_member(:frame_rate, Shapes::ShapeRef.new(shape: Float, location_name: "FrameRate"))
    VideoMetadata.add_member(:frame_height, Shapes::ShapeRef.new(shape: ULong, location_name: "FrameHeight"))
    VideoMetadata.add_member(:frame_width, Shapes::ShapeRef.new(shape: ULong, location_name: "FrameWidth"))
    VideoMetadata.add_member(:color_range, Shapes::ShapeRef.new(shape: VideoColorRange, location_name: "ColorRange"))
    VideoMetadata.struct_class = Types::VideoMetadata

    VideoMetadataList.member = Shapes::ShapeRef.new(shape: VideoMetadata)

    VideoTooLargeException.struct_class = Types::VideoTooLargeException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-06-27"

      api.metadata = {
        "apiVersion" => "2016-06-27",
        "endpointPrefix" => "rekognition",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Rekognition",
        "serviceId" => "Rekognition",
        "signatureVersion" => "v4",
        "targetPrefix" => "RekognitionService",
        "uid" => "rekognition-2016-06-27",
      }

      api.add_operation(:associate_faces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateFaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateFacesRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateFacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:compare_faces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CompareFaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CompareFacesRequest)
        o.output = Shapes::ShapeRef.new(shape: CompareFacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: ImageTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidImageFormatException)
      end)

      api.add_operation(:copy_project_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyProjectVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyProjectVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CopyProjectVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:create_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCollection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCollectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCollectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_face_liveness_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFaceLivenessSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFaceLivenessSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFaceLivenessSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
      end)

      api.add_operation(:create_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
      end)

      api.add_operation(:create_project_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProjectVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProjectVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_stream_processor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamProcessor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamProcessorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamProcessorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCollection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCollectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCollectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_faces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFacesRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
      end)

      api.add_operation(:delete_project_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProjectPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProjectPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPolicyRevisionIdException)
      end)

      api.add_operation(:delete_project_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProjectVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProjectVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
      end)

      api.add_operation(:delete_stream_processor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStreamProcessor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStreamProcessorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStreamProcessorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCollection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCollectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCollectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_project_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProjectVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProjectVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProjectVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProjects"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProjectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_stream_processor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStreamProcessor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStreamProcessorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStreamProcessorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
      end)

      api.add_operation(:detect_custom_labels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectCustomLabels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectCustomLabelsRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectCustomLabelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ImageTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidImageFormatException)
      end)

      api.add_operation(:detect_faces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectFaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectFacesRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectFacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ImageTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidImageFormatException)
      end)

      api.add_operation(:detect_labels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectLabels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectLabelsRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectLabelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ImageTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidImageFormatException)
      end)

      api.add_operation(:detect_moderation_labels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectModerationLabels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectModerationLabelsRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectModerationLabelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ImageTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        o.errors << Shapes::ShapeRef.new(shape: HumanLoopQuotaExceededException)
      end)

      api.add_operation(:detect_protective_equipment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectProtectiveEquipment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectProtectiveEquipmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectProtectiveEquipmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ImageTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidImageFormatException)
      end)

      api.add_operation(:detect_text, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectText"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectTextRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectTextResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ImageTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidImageFormatException)
      end)

      api.add_operation(:disassociate_faces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFacesRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:distribute_dataset_entries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DistributeDatasetEntries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DistributeDatasetEntriesRequest)
        o.output = Shapes::ShapeRef.new(shape: DistributeDatasetEntriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
      end)

      api.add_operation(:get_celebrity_info, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCelebrityInfo"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCelebrityInfoRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCelebrityInfoResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_celebrity_recognition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCelebrityRecognition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCelebrityRecognitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCelebrityRecognitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_content_moderation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContentModeration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetContentModerationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContentModerationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_face_detection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFaceDetection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFaceDetectionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFaceDetectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_face_liveness_session_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFaceLivenessSessionResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFaceLivenessSessionResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFaceLivenessSessionResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: SessionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
      end)

      api.add_operation(:get_face_search, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFaceSearch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFaceSearchRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFaceSearchResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_label_detection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLabelDetection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLabelDetectionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLabelDetectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_person_tracking, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPersonTracking"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPersonTrackingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPersonTrackingResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_segment_detection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSegmentDetection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSegmentDetectionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSegmentDetectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_text_detection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTextDetection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTextDetectionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTextDetectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:index_faces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "IndexFaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: IndexFacesRequest)
        o.output = Shapes::ShapeRef.new(shape: IndexFacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ImageTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:list_collections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCollectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCollectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dataset_entries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasetEntries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetEntriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetEntriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dataset_labels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasetLabels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetLabelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetLabelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_faces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_project_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjectPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProjectPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProjectPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stream_processors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreamProcessors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStreamProcessorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStreamProcessorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_project_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutProjectPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutProjectPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutProjectPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPolicyRevisionIdException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:recognize_celebrities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RecognizeCelebrities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RecognizeCelebritiesRequest)
        o.output = Shapes::ShapeRef.new(shape: RecognizeCelebritiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        o.errors << Shapes::ShapeRef.new(shape: ImageTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidImageFormatException)
      end)

      api.add_operation(:search_faces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchFaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchFacesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchFacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:search_faces_by_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchFacesByImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchFacesByImageRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchFacesByImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ImageTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidImageFormatException)
      end)

      api.add_operation(:search_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchUsers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:search_users_by_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchUsersByImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchUsersByImageRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchUsersByImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidImageFormatException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: ImageTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_celebrity_recognition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCelebrityRecognition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartCelebrityRecognitionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCelebrityRecognitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: VideoTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_content_moderation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartContentModeration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartContentModerationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartContentModerationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: VideoTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_face_detection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFaceDetection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartFaceDetectionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFaceDetectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: VideoTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_face_search, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFaceSearch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartFaceSearchRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFaceSearchResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: VideoTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_label_detection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartLabelDetection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartLabelDetectionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartLabelDetectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: VideoTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_person_tracking, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPersonTracking"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartPersonTrackingRequest)
        o.output = Shapes::ShapeRef.new(shape: StartPersonTrackingResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: VideoTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_project_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartProjectVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartProjectVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartProjectVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
      end)

      api.add_operation(:start_segment_detection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSegmentDetection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartSegmentDetectionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSegmentDetectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: VideoTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_stream_processor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartStreamProcessor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartStreamProcessorRequest)
        o.output = Shapes::ShapeRef.new(shape: StartStreamProcessorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
      end)

      api.add_operation(:start_text_detection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTextDetection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartTextDetectionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTextDetectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: VideoTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:stop_project_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopProjectVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopProjectVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopProjectVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
      end)

      api.add_operation(:stop_stream_processor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopStreamProcessor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopStreamProcessorRequest)
        o.output = Shapes::ShapeRef.new(shape: StopStreamProcessorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
      end)

      api.add_operation(:update_dataset_entries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDatasetEntries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatasetEntriesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatasetEntriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_stream_processor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStreamProcessor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStreamProcessorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStreamProcessorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)
    end

  end
end
