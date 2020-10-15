# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
    Attribute = Shapes::StringShape.new(name: 'Attribute')
    Attributes = Shapes::ListShape.new(name: 'Attributes')
    AudioMetadata = Shapes::StructureShape.new(name: 'AudioMetadata')
    AudioMetadataList = Shapes::ListShape.new(name: 'AudioMetadataList')
    Beard = Shapes::StructureShape.new(name: 'Beard')
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
    ContentClassifier = Shapes::StringShape.new(name: 'ContentClassifier')
    ContentClassifiers = Shapes::ListShape.new(name: 'ContentClassifiers')
    ContentModerationDetection = Shapes::StructureShape.new(name: 'ContentModerationDetection')
    ContentModerationDetections = Shapes::ListShape.new(name: 'ContentModerationDetections')
    ContentModerationSortBy = Shapes::StringShape.new(name: 'ContentModerationSortBy')
    CoversBodyPart = Shapes::StructureShape.new(name: 'CoversBodyPart')
    CreateCollectionRequest = Shapes::StructureShape.new(name: 'CreateCollectionRequest')
    CreateCollectionResponse = Shapes::StructureShape.new(name: 'CreateCollectionResponse')
    CreateProjectRequest = Shapes::StructureShape.new(name: 'CreateProjectRequest')
    CreateProjectResponse = Shapes::StructureShape.new(name: 'CreateProjectResponse')
    CreateProjectVersionRequest = Shapes::StructureShape.new(name: 'CreateProjectVersionRequest')
    CreateProjectVersionResponse = Shapes::StructureShape.new(name: 'CreateProjectVersionResponse')
    CreateStreamProcessorRequest = Shapes::StructureShape.new(name: 'CreateStreamProcessorRequest')
    CreateStreamProcessorResponse = Shapes::StructureShape.new(name: 'CreateStreamProcessorResponse')
    CustomLabel = Shapes::StructureShape.new(name: 'CustomLabel')
    CustomLabels = Shapes::ListShape.new(name: 'CustomLabels')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    Degree = Shapes::FloatShape.new(name: 'Degree')
    DeleteCollectionRequest = Shapes::StructureShape.new(name: 'DeleteCollectionRequest')
    DeleteCollectionResponse = Shapes::StructureShape.new(name: 'DeleteCollectionResponse')
    DeleteFacesRequest = Shapes::StructureShape.new(name: 'DeleteFacesRequest')
    DeleteFacesResponse = Shapes::StructureShape.new(name: 'DeleteFacesResponse')
    DeleteProjectRequest = Shapes::StructureShape.new(name: 'DeleteProjectRequest')
    DeleteProjectResponse = Shapes::StructureShape.new(name: 'DeleteProjectResponse')
    DeleteProjectVersionRequest = Shapes::StructureShape.new(name: 'DeleteProjectVersionRequest')
    DeleteProjectVersionResponse = Shapes::StructureShape.new(name: 'DeleteProjectVersionResponse')
    DeleteStreamProcessorRequest = Shapes::StructureShape.new(name: 'DeleteStreamProcessorRequest')
    DeleteStreamProcessorResponse = Shapes::StructureShape.new(name: 'DeleteStreamProcessorResponse')
    DescribeCollectionRequest = Shapes::StructureShape.new(name: 'DescribeCollectionRequest')
    DescribeCollectionResponse = Shapes::StructureShape.new(name: 'DescribeCollectionResponse')
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
    DetectLabelsRequest = Shapes::StructureShape.new(name: 'DetectLabelsRequest')
    DetectLabelsResponse = Shapes::StructureShape.new(name: 'DetectLabelsResponse')
    DetectModerationLabelsRequest = Shapes::StructureShape.new(name: 'DetectModerationLabelsRequest')
    DetectModerationLabelsResponse = Shapes::StructureShape.new(name: 'DetectModerationLabelsResponse')
    DetectProtectiveEquipmentRequest = Shapes::StructureShape.new(name: 'DetectProtectiveEquipmentRequest')
    DetectProtectiveEquipmentResponse = Shapes::StructureShape.new(name: 'DetectProtectiveEquipmentResponse')
    DetectTextFilters = Shapes::StructureShape.new(name: 'DetectTextFilters')
    DetectTextRequest = Shapes::StructureShape.new(name: 'DetectTextRequest')
    DetectTextResponse = Shapes::StructureShape.new(name: 'DetectTextResponse')
    DetectionFilter = Shapes::StructureShape.new(name: 'DetectionFilter')
    Emotion = Shapes::StructureShape.new(name: 'Emotion')
    EmotionName = Shapes::StringShape.new(name: 'EmotionName')
    Emotions = Shapes::ListShape.new(name: 'Emotions')
    EquipmentDetection = Shapes::StructureShape.new(name: 'EquipmentDetection')
    EquipmentDetections = Shapes::ListShape.new(name: 'EquipmentDetections')
    EvaluationResult = Shapes::StructureShape.new(name: 'EvaluationResult')
    ExtendedPaginationToken = Shapes::StringShape.new(name: 'ExtendedPaginationToken')
    ExternalImageId = Shapes::StringShape.new(name: 'ExternalImageId')
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
    FaceRecord = Shapes::StructureShape.new(name: 'FaceRecord')
    FaceRecordList = Shapes::ListShape.new(name: 'FaceRecordList')
    FaceSearchSettings = Shapes::StructureShape.new(name: 'FaceSearchSettings')
    FaceSearchSortBy = Shapes::StringShape.new(name: 'FaceSearchSortBy')
    Float = Shapes::FloatShape.new(name: 'Float')
    FlowDefinitionArn = Shapes::StringShape.new(name: 'FlowDefinitionArn')
    Gender = Shapes::StructureShape.new(name: 'Gender')
    GenderType = Shapes::StringShape.new(name: 'GenderType')
    Geometry = Shapes::StructureShape.new(name: 'Geometry')
    GetCelebrityInfoRequest = Shapes::StructureShape.new(name: 'GetCelebrityInfoRequest')
    GetCelebrityInfoResponse = Shapes::StructureShape.new(name: 'GetCelebrityInfoResponse')
    GetCelebrityRecognitionRequest = Shapes::StructureShape.new(name: 'GetCelebrityRecognitionRequest')
    GetCelebrityRecognitionResponse = Shapes::StructureShape.new(name: 'GetCelebrityRecognitionResponse')
    GetContentModerationRequest = Shapes::StructureShape.new(name: 'GetContentModerationRequest')
    GetContentModerationResponse = Shapes::StructureShape.new(name: 'GetContentModerationResponse')
    GetFaceDetectionRequest = Shapes::StructureShape.new(name: 'GetFaceDetectionRequest')
    GetFaceDetectionResponse = Shapes::StructureShape.new(name: 'GetFaceDetectionResponse')
    GetFaceSearchRequest = Shapes::StructureShape.new(name: 'GetFaceSearchRequest')
    GetFaceSearchResponse = Shapes::StructureShape.new(name: 'GetFaceSearchResponse')
    GetLabelDetectionRequest = Shapes::StructureShape.new(name: 'GetLabelDetectionRequest')
    GetLabelDetectionResponse = Shapes::StructureShape.new(name: 'GetLabelDetectionResponse')
    GetPersonTrackingRequest = Shapes::StructureShape.new(name: 'GetPersonTrackingRequest')
    GetPersonTrackingResponse = Shapes::StructureShape.new(name: 'GetPersonTrackingResponse')
    GetSegmentDetectionRequest = Shapes::StructureShape.new(name: 'GetSegmentDetectionRequest')
    GetSegmentDetectionResponse = Shapes::StructureShape.new(name: 'GetSegmentDetectionResponse')
    GetTextDetectionRequest = Shapes::StructureShape.new(name: 'GetTextDetectionRequest')
    GetTextDetectionResponse = Shapes::StructureShape.new(name: 'GetTextDetectionResponse')
    GroundTruthManifest = Shapes::StructureShape.new(name: 'GroundTruthManifest')
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
    IndexFacesRequest = Shapes::StructureShape.new(name: 'IndexFacesRequest')
    IndexFacesResponse = Shapes::StructureShape.new(name: 'IndexFacesResponse')
    InferenceUnits = Shapes::IntegerShape.new(name: 'InferenceUnits')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    Instances = Shapes::ListShape.new(name: 'Instances')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidImageFormatException = Shapes::StructureShape.new(name: 'InvalidImageFormatException')
    InvalidPaginationTokenException = Shapes::StructureShape.new(name: 'InvalidPaginationTokenException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidS3ObjectException = Shapes::StructureShape.new(name: 'InvalidS3ObjectException')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobTag = Shapes::StringShape.new(name: 'JobTag')
    KinesisDataArn = Shapes::StringShape.new(name: 'KinesisDataArn')
    KinesisDataStream = Shapes::StructureShape.new(name: 'KinesisDataStream')
    KinesisVideoArn = Shapes::StringShape.new(name: 'KinesisVideoArn')
    KinesisVideoStream = Shapes::StructureShape.new(name: 'KinesisVideoStream')
    Label = Shapes::StructureShape.new(name: 'Label')
    LabelDetection = Shapes::StructureShape.new(name: 'LabelDetection')
    LabelDetectionSortBy = Shapes::StringShape.new(name: 'LabelDetectionSortBy')
    LabelDetections = Shapes::ListShape.new(name: 'LabelDetections')
    Labels = Shapes::ListShape.new(name: 'Labels')
    Landmark = Shapes::StructureShape.new(name: 'Landmark')
    LandmarkType = Shapes::StringShape.new(name: 'LandmarkType')
    Landmarks = Shapes::ListShape.new(name: 'Landmarks')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListCollectionsRequest = Shapes::StructureShape.new(name: 'ListCollectionsRequest')
    ListCollectionsResponse = Shapes::StructureShape.new(name: 'ListCollectionsResponse')
    ListFacesRequest = Shapes::StructureShape.new(name: 'ListFacesRequest')
    ListFacesResponse = Shapes::StructureShape.new(name: 'ListFacesResponse')
    ListStreamProcessorsRequest = Shapes::StructureShape.new(name: 'ListStreamProcessorsRequest')
    ListStreamProcessorsResponse = Shapes::StructureShape.new(name: 'ListStreamProcessorsResponse')
    MaxFaces = Shapes::IntegerShape.new(name: 'MaxFaces')
    MaxFacesToIndex = Shapes::IntegerShape.new(name: 'MaxFacesToIndex')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
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
    QualityFilter = Shapes::StringShape.new(name: 'QualityFilter')
    Reason = Shapes::StringShape.new(name: 'Reason')
    Reasons = Shapes::ListShape.new(name: 'Reasons')
    RecognizeCelebritiesRequest = Shapes::StructureShape.new(name: 'RecognizeCelebritiesRequest')
    RecognizeCelebritiesResponse = Shapes::StructureShape.new(name: 'RecognizeCelebritiesResponse')
    RegionOfInterest = Shapes::StructureShape.new(name: 'RegionOfInterest')
    RegionsOfInterest = Shapes::ListShape.new(name: 'RegionsOfInterest')
    RekognitionUniqueId = Shapes::StringShape.new(name: 'RekognitionUniqueId')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceNotReadyException = Shapes::StructureShape.new(name: 'ResourceNotReadyException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3KeyPrefix = Shapes::StringShape.new(name: 'S3KeyPrefix')
    S3Object = Shapes::StructureShape.new(name: 'S3Object')
    S3ObjectName = Shapes::StringShape.new(name: 'S3ObjectName')
    S3ObjectVersion = Shapes::StringShape.new(name: 'S3ObjectVersion')
    SNSTopicArn = Shapes::StringShape.new(name: 'SNSTopicArn')
    SearchFacesByImageRequest = Shapes::StructureShape.new(name: 'SearchFacesByImageRequest')
    SearchFacesByImageResponse = Shapes::StructureShape.new(name: 'SearchFacesByImageResponse')
    SearchFacesRequest = Shapes::StructureShape.new(name: 'SearchFacesRequest')
    SearchFacesResponse = Shapes::StructureShape.new(name: 'SearchFacesResponse')
    SegmentConfidence = Shapes::FloatShape.new(name: 'SegmentConfidence')
    SegmentDetection = Shapes::StructureShape.new(name: 'SegmentDetection')
    SegmentDetections = Shapes::ListShape.new(name: 'SegmentDetections')
    SegmentType = Shapes::StringShape.new(name: 'SegmentType')
    SegmentTypeInfo = Shapes::StructureShape.new(name: 'SegmentTypeInfo')
    SegmentTypes = Shapes::ListShape.new(name: 'SegmentTypes')
    SegmentTypesInfo = Shapes::ListShape.new(name: 'SegmentTypesInfo')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
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
    StartTechnicalCueDetectionFilter = Shapes::StructureShape.new(name: 'StartTechnicalCueDetectionFilter')
    StartTextDetectionFilters = Shapes::StructureShape.new(name: 'StartTextDetectionFilters')
    StartTextDetectionRequest = Shapes::StructureShape.new(name: 'StartTextDetectionRequest')
    StartTextDetectionResponse = Shapes::StructureShape.new(name: 'StartTextDetectionResponse')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    StopProjectVersionRequest = Shapes::StructureShape.new(name: 'StopProjectVersionRequest')
    StopProjectVersionResponse = Shapes::StructureShape.new(name: 'StopProjectVersionResponse')
    StopStreamProcessorRequest = Shapes::StructureShape.new(name: 'StopStreamProcessorRequest')
    StopStreamProcessorResponse = Shapes::StructureShape.new(name: 'StopStreamProcessorResponse')
    StreamProcessor = Shapes::StructureShape.new(name: 'StreamProcessor')
    StreamProcessorArn = Shapes::StringShape.new(name: 'StreamProcessorArn')
    StreamProcessorInput = Shapes::StructureShape.new(name: 'StreamProcessorInput')
    StreamProcessorList = Shapes::ListShape.new(name: 'StreamProcessorList')
    StreamProcessorName = Shapes::StringShape.new(name: 'StreamProcessorName')
    StreamProcessorOutput = Shapes::StructureShape.new(name: 'StreamProcessorOutput')
    StreamProcessorSettings = Shapes::StructureShape.new(name: 'StreamProcessorSettings')
    StreamProcessorStatus = Shapes::StringShape.new(name: 'StreamProcessorStatus')
    String = Shapes::StringShape.new(name: 'String')
    Summary = Shapes::StructureShape.new(name: 'Summary')
    Sunglasses = Shapes::StructureShape.new(name: 'Sunglasses')
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
    Url = Shapes::StringShape.new(name: 'Url')
    Urls = Shapes::ListShape.new(name: 'Urls')
    ValidationData = Shapes::StructureShape.new(name: 'ValidationData')
    VersionName = Shapes::StringShape.new(name: 'VersionName')
    VersionNames = Shapes::ListShape.new(name: 'VersionNames')
    Video = Shapes::StructureShape.new(name: 'Video')
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

    Attributes.member = Shapes::ShapeRef.new(shape: Attribute)

    AudioMetadata.add_member(:codec, Shapes::ShapeRef.new(shape: String, location_name: "Codec"))
    AudioMetadata.add_member(:duration_millis, Shapes::ShapeRef.new(shape: ULong, location_name: "DurationMillis"))
    AudioMetadata.add_member(:sample_rate, Shapes::ShapeRef.new(shape: ULong, location_name: "SampleRate"))
    AudioMetadata.add_member(:number_of_channels, Shapes::ShapeRef.new(shape: ULong, location_name: "NumberOfChannels"))
    AudioMetadata.struct_class = Types::AudioMetadata

    AudioMetadataList.member = Shapes::ShapeRef.new(shape: AudioMetadata)

    Beard.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
    Beard.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Beard.struct_class = Types::Beard

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
    Celebrity.struct_class = Types::Celebrity

    CelebrityDetail.add_member(:urls, Shapes::ShapeRef.new(shape: Urls, location_name: "Urls"))
    CelebrityDetail.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    CelebrityDetail.add_member(:id, Shapes::ShapeRef.new(shape: RekognitionUniqueId, location_name: "Id"))
    CelebrityDetail.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    CelebrityDetail.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    CelebrityDetail.add_member(:face, Shapes::ShapeRef.new(shape: FaceDetail, location_name: "Face"))
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
    ComparedFace.struct_class = Types::ComparedFace

    ComparedFaceList.member = Shapes::ShapeRef.new(shape: ComparedFace)

    ComparedSourceImageFace.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    ComparedSourceImageFace.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ComparedSourceImageFace.struct_class = Types::ComparedSourceImageFace

    ContentClassifiers.member = Shapes::ShapeRef.new(shape: ContentClassifier)

    ContentModerationDetection.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    ContentModerationDetection.add_member(:moderation_label, Shapes::ShapeRef.new(shape: ModerationLabel, location_name: "ModerationLabel"))
    ContentModerationDetection.struct_class = Types::ContentModerationDetection

    ContentModerationDetections.member = Shapes::ShapeRef.new(shape: ContentModerationDetection)

    CoversBodyPart.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    CoversBodyPart.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
    CoversBodyPart.struct_class = Types::CoversBodyPart

    CreateCollectionRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    CreateCollectionRequest.struct_class = Types::CreateCollectionRequest

    CreateCollectionResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: UInteger, location_name: "StatusCode"))
    CreateCollectionResponse.add_member(:collection_arn, Shapes::ShapeRef.new(shape: String, location_name: "CollectionArn"))
    CreateCollectionResponse.add_member(:face_model_version, Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    CreateCollectionResponse.struct_class = Types::CreateCollectionResponse

    CreateProjectRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "ProjectName"))
    CreateProjectRequest.struct_class = Types::CreateProjectRequest

    CreateProjectResponse.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "ProjectArn"))
    CreateProjectResponse.struct_class = Types::CreateProjectResponse

    CreateProjectVersionRequest.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "ProjectArn"))
    CreateProjectVersionRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionName, required: true, location_name: "VersionName"))
    CreateProjectVersionRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "OutputConfig"))
    CreateProjectVersionRequest.add_member(:training_data, Shapes::ShapeRef.new(shape: TrainingData, required: true, location_name: "TrainingData"))
    CreateProjectVersionRequest.add_member(:testing_data, Shapes::ShapeRef.new(shape: TestingData, required: true, location_name: "TestingData"))
    CreateProjectVersionRequest.struct_class = Types::CreateProjectVersionRequest

    CreateProjectVersionResponse.add_member(:project_version_arn, Shapes::ShapeRef.new(shape: ProjectVersionArn, location_name: "ProjectVersionArn"))
    CreateProjectVersionResponse.struct_class = Types::CreateProjectVersionResponse

    CreateStreamProcessorRequest.add_member(:input, Shapes::ShapeRef.new(shape: StreamProcessorInput, required: true, location_name: "Input"))
    CreateStreamProcessorRequest.add_member(:output, Shapes::ShapeRef.new(shape: StreamProcessorOutput, required: true, location_name: "Output"))
    CreateStreamProcessorRequest.add_member(:name, Shapes::ShapeRef.new(shape: StreamProcessorName, required: true, location_name: "Name"))
    CreateStreamProcessorRequest.add_member(:settings, Shapes::ShapeRef.new(shape: StreamProcessorSettings, required: true, location_name: "Settings"))
    CreateStreamProcessorRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateStreamProcessorRequest.struct_class = Types::CreateStreamProcessorRequest

    CreateStreamProcessorResponse.add_member(:stream_processor_arn, Shapes::ShapeRef.new(shape: StreamProcessorArn, location_name: "StreamProcessorArn"))
    CreateStreamProcessorResponse.struct_class = Types::CreateStreamProcessorResponse

    CustomLabel.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    CustomLabel.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    CustomLabel.add_member(:geometry, Shapes::ShapeRef.new(shape: Geometry, location_name: "Geometry"))
    CustomLabel.struct_class = Types::CustomLabel

    CustomLabels.member = Shapes::ShapeRef.new(shape: CustomLabel)

    DeleteCollectionRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    DeleteCollectionRequest.struct_class = Types::DeleteCollectionRequest

    DeleteCollectionResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: UInteger, location_name: "StatusCode"))
    DeleteCollectionResponse.struct_class = Types::DeleteCollectionResponse

    DeleteFacesRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    DeleteFacesRequest.add_member(:face_ids, Shapes::ShapeRef.new(shape: FaceIdList, required: true, location_name: "FaceIds"))
    DeleteFacesRequest.struct_class = Types::DeleteFacesRequest

    DeleteFacesResponse.add_member(:deleted_faces, Shapes::ShapeRef.new(shape: FaceIdList, location_name: "DeletedFaces"))
    DeleteFacesResponse.struct_class = Types::DeleteFacesResponse

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

    DescribeCollectionRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    DescribeCollectionRequest.struct_class = Types::DescribeCollectionRequest

    DescribeCollectionResponse.add_member(:face_count, Shapes::ShapeRef.new(shape: ULong, location_name: "FaceCount"))
    DescribeCollectionResponse.add_member(:face_model_version, Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    DescribeCollectionResponse.add_member(:collection_arn, Shapes::ShapeRef.new(shape: String, location_name: "CollectionARN"))
    DescribeCollectionResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTimestamp"))
    DescribeCollectionResponse.struct_class = Types::DescribeCollectionResponse

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

    DetectLabelsRequest.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
    DetectLabelsRequest.add_member(:max_labels, Shapes::ShapeRef.new(shape: UInteger, location_name: "MaxLabels"))
    DetectLabelsRequest.add_member(:min_confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "MinConfidence"))
    DetectLabelsRequest.struct_class = Types::DetectLabelsRequest

    DetectLabelsResponse.add_member(:labels, Shapes::ShapeRef.new(shape: Labels, location_name: "Labels"))
    DetectLabelsResponse.add_member(:orientation_correction, Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "OrientationCorrection"))
    DetectLabelsResponse.add_member(:label_model_version, Shapes::ShapeRef.new(shape: String, location_name: "LabelModelVersion"))
    DetectLabelsResponse.struct_class = Types::DetectLabelsResponse

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

    Geometry.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    Geometry.add_member(:polygon, Shapes::ShapeRef.new(shape: Polygon, location_name: "Polygon"))
    Geometry.struct_class = Types::Geometry

    GetCelebrityInfoRequest.add_member(:id, Shapes::ShapeRef.new(shape: RekognitionUniqueId, required: true, location_name: "Id"))
    GetCelebrityInfoRequest.struct_class = Types::GetCelebrityInfoRequest

    GetCelebrityInfoResponse.add_member(:urls, Shapes::ShapeRef.new(shape: Urls, location_name: "Urls"))
    GetCelebrityInfoResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
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
    GetCelebrityRecognitionResponse.struct_class = Types::GetCelebrityRecognitionResponse

    GetContentModerationRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetContentModerationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetContentModerationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetContentModerationRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ContentModerationSortBy, location_name: "SortBy"))
    GetContentModerationRequest.struct_class = Types::GetContentModerationRequest

    GetContentModerationResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetContentModerationResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetContentModerationResponse.add_member(:video_metadata, Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetContentModerationResponse.add_member(:moderation_labels, Shapes::ShapeRef.new(shape: ContentModerationDetections, location_name: "ModerationLabels"))
    GetContentModerationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetContentModerationResponse.add_member(:moderation_model_version, Shapes::ShapeRef.new(shape: String, location_name: "ModerationModelVersion"))
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
    GetFaceDetectionResponse.struct_class = Types::GetFaceDetectionResponse

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
    GetFaceSearchResponse.struct_class = Types::GetFaceSearchResponse

    GetLabelDetectionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetLabelDetectionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetLabelDetectionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetLabelDetectionRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: LabelDetectionSortBy, location_name: "SortBy"))
    GetLabelDetectionRequest.struct_class = Types::GetLabelDetectionRequest

    GetLabelDetectionResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: VideoJobStatus, location_name: "JobStatus"))
    GetLabelDetectionResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetLabelDetectionResponse.add_member(:video_metadata, Shapes::ShapeRef.new(shape: VideoMetadata, location_name: "VideoMetadata"))
    GetLabelDetectionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetLabelDetectionResponse.add_member(:labels, Shapes::ShapeRef.new(shape: LabelDetections, location_name: "Labels"))
    GetLabelDetectionResponse.add_member(:label_model_version, Shapes::ShapeRef.new(shape: String, location_name: "LabelModelVersion"))
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
    Instance.struct_class = Types::Instance

    Instances.member = Shapes::ShapeRef.new(shape: Instance)

    InternalServerError.struct_class = Types::InternalServerError

    InvalidImageFormatException.struct_class = Types::InvalidImageFormatException

    InvalidPaginationTokenException.struct_class = Types::InvalidPaginationTokenException

    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidS3ObjectException.struct_class = Types::InvalidS3ObjectException

    KinesisDataStream.add_member(:arn, Shapes::ShapeRef.new(shape: KinesisDataArn, location_name: "Arn"))
    KinesisDataStream.struct_class = Types::KinesisDataStream

    KinesisVideoStream.add_member(:arn, Shapes::ShapeRef.new(shape: KinesisVideoArn, location_name: "Arn"))
    KinesisVideoStream.struct_class = Types::KinesisVideoStream

    Label.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Label.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Label.add_member(:instances, Shapes::ShapeRef.new(shape: Instances, location_name: "Instances"))
    Label.add_member(:parents, Shapes::ShapeRef.new(shape: Parents, location_name: "Parents"))
    Label.struct_class = Types::Label

    LabelDetection.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    LabelDetection.add_member(:label, Shapes::ShapeRef.new(shape: Label, location_name: "Label"))
    LabelDetection.struct_class = Types::LabelDetection

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

    ListFacesRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
    ListFacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListFacesRequest.struct_class = Types::ListFacesRequest

    ListFacesResponse.add_member(:faces, Shapes::ShapeRef.new(shape: FaceList, location_name: "Faces"))
    ListFacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListFacesResponse.add_member(:face_model_version, Shapes::ShapeRef.new(shape: String, location_name: "FaceModelVersion"))
    ListFacesResponse.struct_class = Types::ListFacesResponse

    ListStreamProcessorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListStreamProcessorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListStreamProcessorsRequest.struct_class = Types::ListStreamProcessorsRequest

    ListStreamProcessorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListStreamProcessorsResponse.add_member(:stream_processors, Shapes::ShapeRef.new(shape: StreamProcessorList, location_name: "StreamProcessors"))
    ListStreamProcessorsResponse.struct_class = Types::ListStreamProcessorsResponse

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
    ProjectDescription.struct_class = Types::ProjectDescription

    ProjectDescriptions.member = Shapes::ShapeRef.new(shape: ProjectDescription)

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

    Reasons.member = Shapes::ShapeRef.new(shape: Reason)

    RecognizeCelebritiesRequest.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
    RecognizeCelebritiesRequest.struct_class = Types::RecognizeCelebritiesRequest

    RecognizeCelebritiesResponse.add_member(:celebrity_faces, Shapes::ShapeRef.new(shape: CelebrityList, location_name: "CelebrityFaces"))
    RecognizeCelebritiesResponse.add_member(:unrecognized_faces, Shapes::ShapeRef.new(shape: ComparedFaceList, location_name: "UnrecognizedFaces"))
    RecognizeCelebritiesResponse.add_member(:orientation_correction, Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "OrientationCorrection"))
    RecognizeCelebritiesResponse.struct_class = Types::RecognizeCelebritiesResponse

    RegionOfInterest.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    RegionOfInterest.struct_class = Types::RegionOfInterest

    RegionsOfInterest.member = Shapes::ShapeRef.new(shape: RegionOfInterest)

    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceNotReadyException.struct_class = Types::ResourceNotReadyException

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

    SegmentDetection.add_member(:type, Shapes::ShapeRef.new(shape: SegmentType, location_name: "Type"))
    SegmentDetection.add_member(:start_timestamp_millis, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTimestampMillis"))
    SegmentDetection.add_member(:end_timestamp_millis, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTimestampMillis"))
    SegmentDetection.add_member(:duration_millis, Shapes::ShapeRef.new(shape: ULong, location_name: "DurationMillis"))
    SegmentDetection.add_member(:start_timecode_smpte, Shapes::ShapeRef.new(shape: Timecode, location_name: "StartTimecodeSMPTE"))
    SegmentDetection.add_member(:end_timecode_smpte, Shapes::ShapeRef.new(shape: Timecode, location_name: "EndTimecodeSMPTE"))
    SegmentDetection.add_member(:duration_smpte, Shapes::ShapeRef.new(shape: Timecode, location_name: "DurationSMPTE"))
    SegmentDetection.add_member(:technical_cue_segment, Shapes::ShapeRef.new(shape: TechnicalCueSegment, location_name: "TechnicalCueSegment"))
    SegmentDetection.add_member(:shot_segment, Shapes::ShapeRef.new(shape: ShotSegment, location_name: "ShotSegment"))
    SegmentDetection.struct_class = Types::SegmentDetection

    SegmentDetections.member = Shapes::ShapeRef.new(shape: SegmentDetection)

    SegmentTypeInfo.add_member(:type, Shapes::ShapeRef.new(shape: SegmentType, location_name: "Type"))
    SegmentTypeInfo.add_member(:model_version, Shapes::ShapeRef.new(shape: String, location_name: "ModelVersion"))
    SegmentTypeInfo.struct_class = Types::SegmentTypeInfo

    SegmentTypes.member = Shapes::ShapeRef.new(shape: SegmentType)

    SegmentTypesInfo.member = Shapes::ShapeRef.new(shape: SegmentTypeInfo)

    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

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
    StartStreamProcessorRequest.struct_class = Types::StartStreamProcessorRequest

    StartStreamProcessorResponse.struct_class = Types::StartStreamProcessorResponse

    StartTechnicalCueDetectionFilter.add_member(:min_segment_confidence, Shapes::ShapeRef.new(shape: SegmentConfidence, location_name: "MinSegmentConfidence"))
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

    StreamProcessor.add_member(:name, Shapes::ShapeRef.new(shape: StreamProcessorName, location_name: "Name"))
    StreamProcessor.add_member(:status, Shapes::ShapeRef.new(shape: StreamProcessorStatus, location_name: "Status"))
    StreamProcessor.struct_class = Types::StreamProcessor

    StreamProcessorInput.add_member(:kinesis_video_stream, Shapes::ShapeRef.new(shape: KinesisVideoStream, location_name: "KinesisVideoStream"))
    StreamProcessorInput.struct_class = Types::StreamProcessorInput

    StreamProcessorList.member = Shapes::ShapeRef.new(shape: StreamProcessor)

    StreamProcessorOutput.add_member(:kinesis_data_stream, Shapes::ShapeRef.new(shape: KinesisDataStream, location_name: "KinesisDataStream"))
    StreamProcessorOutput.struct_class = Types::StreamProcessorOutput

    StreamProcessorSettings.add_member(:face_search, Shapes::ShapeRef.new(shape: FaceSearchSettings, location_name: "FaceSearch"))
    StreamProcessorSettings.struct_class = Types::StreamProcessorSettings

    Summary.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    Summary.struct_class = Types::Summary

    Sunglasses.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
    Sunglasses.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Sunglasses.struct_class = Types::Sunglasses

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

    Urls.member = Shapes::ShapeRef.new(shape: Url)

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
    end

  end
end
