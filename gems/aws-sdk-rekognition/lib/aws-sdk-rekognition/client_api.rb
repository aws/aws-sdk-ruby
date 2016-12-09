# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module Rekognition
    # @api private
    module ClientApi

      include Seahorse::Model

      AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
      Attribute = Shapes::StringShape.new(name: 'Attribute')
      Attributes = Shapes::ListShape.new(name: 'Attributes')
      Beard = Shapes::StructureShape.new(name: 'Beard')
      Boolean = Shapes::BooleanShape.new(name: 'Boolean')
      BoundingBox = Shapes::StructureShape.new(name: 'BoundingBox')
      CollectionId = Shapes::StringShape.new(name: 'CollectionId')
      CollectionIdList = Shapes::ListShape.new(name: 'CollectionIdList')
      CompareFacesMatch = Shapes::StructureShape.new(name: 'CompareFacesMatch')
      CompareFacesMatchList = Shapes::ListShape.new(name: 'CompareFacesMatchList')
      CompareFacesRequest = Shapes::StructureShape.new(name: 'CompareFacesRequest')
      CompareFacesResponse = Shapes::StructureShape.new(name: 'CompareFacesResponse')
      ComparedFace = Shapes::StructureShape.new(name: 'ComparedFace')
      ComparedSourceImageFace = Shapes::StructureShape.new(name: 'ComparedSourceImageFace')
      CreateCollectionRequest = Shapes::StructureShape.new(name: 'CreateCollectionRequest')
      CreateCollectionResponse = Shapes::StructureShape.new(name: 'CreateCollectionResponse')
      Degree = Shapes::FloatShape.new(name: 'Degree')
      DeleteCollectionRequest = Shapes::StructureShape.new(name: 'DeleteCollectionRequest')
      DeleteCollectionResponse = Shapes::StructureShape.new(name: 'DeleteCollectionResponse')
      DeleteFacesRequest = Shapes::StructureShape.new(name: 'DeleteFacesRequest')
      DeleteFacesResponse = Shapes::StructureShape.new(name: 'DeleteFacesResponse')
      DetectFacesRequest = Shapes::StructureShape.new(name: 'DetectFacesRequest')
      DetectFacesResponse = Shapes::StructureShape.new(name: 'DetectFacesResponse')
      DetectLabelsRequest = Shapes::StructureShape.new(name: 'DetectLabelsRequest')
      DetectLabelsResponse = Shapes::StructureShape.new(name: 'DetectLabelsResponse')
      Emotion = Shapes::StructureShape.new(name: 'Emotion')
      EmotionName = Shapes::StringShape.new(name: 'EmotionName')
      Emotions = Shapes::ListShape.new(name: 'Emotions')
      ExternalImageId = Shapes::StringShape.new(name: 'ExternalImageId')
      EyeOpen = Shapes::StructureShape.new(name: 'EyeOpen')
      Eyeglasses = Shapes::StructureShape.new(name: 'Eyeglasses')
      Face = Shapes::StructureShape.new(name: 'Face')
      FaceDetail = Shapes::StructureShape.new(name: 'FaceDetail')
      FaceDetailList = Shapes::ListShape.new(name: 'FaceDetailList')
      FaceId = Shapes::StringShape.new(name: 'FaceId')
      FaceIdList = Shapes::ListShape.new(name: 'FaceIdList')
      FaceList = Shapes::ListShape.new(name: 'FaceList')
      FaceMatch = Shapes::StructureShape.new(name: 'FaceMatch')
      FaceMatchList = Shapes::ListShape.new(name: 'FaceMatchList')
      FaceRecord = Shapes::StructureShape.new(name: 'FaceRecord')
      FaceRecordList = Shapes::ListShape.new(name: 'FaceRecordList')
      Float = Shapes::FloatShape.new(name: 'Float')
      Gender = Shapes::StructureShape.new(name: 'Gender')
      GenderType = Shapes::StringShape.new(name: 'GenderType')
      Image = Shapes::StructureShape.new(name: 'Image')
      ImageBlob = Shapes::BlobShape.new(name: 'ImageBlob')
      ImageId = Shapes::StringShape.new(name: 'ImageId')
      ImageQuality = Shapes::StructureShape.new(name: 'ImageQuality')
      ImageTooLargeException = Shapes::StructureShape.new(name: 'ImageTooLargeException')
      IndexFacesRequest = Shapes::StructureShape.new(name: 'IndexFacesRequest')
      IndexFacesResponse = Shapes::StructureShape.new(name: 'IndexFacesResponse')
      InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
      InvalidImageFormatException = Shapes::StructureShape.new(name: 'InvalidImageFormatException')
      InvalidPaginationTokenException = Shapes::StructureShape.new(name: 'InvalidPaginationTokenException')
      InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
      InvalidS3ObjectException = Shapes::StructureShape.new(name: 'InvalidS3ObjectException')
      Label = Shapes::StructureShape.new(name: 'Label')
      Labels = Shapes::ListShape.new(name: 'Labels')
      Landmark = Shapes::StructureShape.new(name: 'Landmark')
      LandmarkType = Shapes::StringShape.new(name: 'LandmarkType')
      Landmarks = Shapes::ListShape.new(name: 'Landmarks')
      ListCollectionsRequest = Shapes::StructureShape.new(name: 'ListCollectionsRequest')
      ListCollectionsResponse = Shapes::StructureShape.new(name: 'ListCollectionsResponse')
      ListFacesRequest = Shapes::StructureShape.new(name: 'ListFacesRequest')
      ListFacesResponse = Shapes::StructureShape.new(name: 'ListFacesResponse')
      MaxFaces = Shapes::IntegerShape.new(name: 'MaxFaces')
      MouthOpen = Shapes::StructureShape.new(name: 'MouthOpen')
      Mustache = Shapes::StructureShape.new(name: 'Mustache')
      OrientationCorrection = Shapes::StringShape.new(name: 'OrientationCorrection')
      PageSize = Shapes::IntegerShape.new(name: 'PageSize')
      PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
      Percent = Shapes::FloatShape.new(name: 'Percent')
      Pose = Shapes::StructureShape.new(name: 'Pose')
      ProvisionedThroughputExceededException = Shapes::StructureShape.new(name: 'ProvisionedThroughputExceededException')
      ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
      ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
      S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
      S3Object = Shapes::StructureShape.new(name: 'S3Object')
      S3ObjectName = Shapes::StringShape.new(name: 'S3ObjectName')
      S3ObjectVersion = Shapes::StringShape.new(name: 'S3ObjectVersion')
      SearchFacesByImageRequest = Shapes::StructureShape.new(name: 'SearchFacesByImageRequest')
      SearchFacesByImageResponse = Shapes::StructureShape.new(name: 'SearchFacesByImageResponse')
      SearchFacesRequest = Shapes::StructureShape.new(name: 'SearchFacesRequest')
      SearchFacesResponse = Shapes::StructureShape.new(name: 'SearchFacesResponse')
      Smile = Shapes::StructureShape.new(name: 'Smile')
      String = Shapes::StringShape.new(name: 'String')
      Sunglasses = Shapes::StructureShape.new(name: 'Sunglasses')
      ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
      UInteger = Shapes::IntegerShape.new(name: 'UInteger')

      Attributes.member = Shapes::ShapeRef.new(shape: Attribute)

      Beard.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
      Beard.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
      Beard.struct_class = Types::Beard

      BoundingBox.add_member(:width, Shapes::ShapeRef.new(shape: Float, location_name: "Width"))
      BoundingBox.add_member(:height, Shapes::ShapeRef.new(shape: Float, location_name: "Height"))
      BoundingBox.add_member(:left, Shapes::ShapeRef.new(shape: Float, location_name: "Left"))
      BoundingBox.add_member(:top, Shapes::ShapeRef.new(shape: Float, location_name: "Top"))
      BoundingBox.struct_class = Types::BoundingBox

      CollectionIdList.member = Shapes::ShapeRef.new(shape: CollectionId)

      CompareFacesMatch.add_member(:similarity, Shapes::ShapeRef.new(shape: Percent, location_name: "Similarity"))
      CompareFacesMatch.add_member(:face, Shapes::ShapeRef.new(shape: ComparedFace, location_name: "Face"))
      CompareFacesMatch.struct_class = Types::CompareFacesMatch

      CompareFacesMatchList.member = Shapes::ShapeRef.new(shape: CompareFacesMatch)

      CompareFacesRequest.add_member(:source_image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "SourceImage"))
      CompareFacesRequest.add_member(:target_image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "TargetImage"))
      CompareFacesRequest.add_member(:similarity_threshold, Shapes::ShapeRef.new(shape: Percent, location_name: "SimilarityThreshold"))
      CompareFacesRequest.struct_class = Types::CompareFacesRequest

      CompareFacesResponse.add_member(:source_image_face, Shapes::ShapeRef.new(shape: ComparedSourceImageFace, location_name: "SourceImageFace"))
      CompareFacesResponse.add_member(:face_matches, Shapes::ShapeRef.new(shape: CompareFacesMatchList, location_name: "FaceMatches"))
      CompareFacesResponse.struct_class = Types::CompareFacesResponse

      ComparedFace.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
      ComparedFace.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
      ComparedFace.struct_class = Types::ComparedFace

      ComparedSourceImageFace.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
      ComparedSourceImageFace.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
      ComparedSourceImageFace.struct_class = Types::ComparedSourceImageFace

      CreateCollectionRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
      CreateCollectionRequest.struct_class = Types::CreateCollectionRequest

      CreateCollectionResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: UInteger, location_name: "StatusCode"))
      CreateCollectionResponse.add_member(:collection_arn, Shapes::ShapeRef.new(shape: String, location_name: "CollectionArn"))
      CreateCollectionResponse.struct_class = Types::CreateCollectionResponse

      DeleteCollectionRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
      DeleteCollectionRequest.struct_class = Types::DeleteCollectionRequest

      DeleteCollectionResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: UInteger, location_name: "StatusCode"))
      DeleteCollectionResponse.struct_class = Types::DeleteCollectionResponse

      DeleteFacesRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
      DeleteFacesRequest.add_member(:face_ids, Shapes::ShapeRef.new(shape: FaceIdList, required: true, location_name: "FaceIds"))
      DeleteFacesRequest.struct_class = Types::DeleteFacesRequest

      DeleteFacesResponse.add_member(:deleted_faces, Shapes::ShapeRef.new(shape: FaceIdList, location_name: "DeletedFaces"))
      DeleteFacesResponse.struct_class = Types::DeleteFacesResponse

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
      DetectLabelsResponse.struct_class = Types::DetectLabelsResponse

      Emotion.add_member(:type, Shapes::ShapeRef.new(shape: EmotionName, location_name: "Type"))
      Emotion.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
      Emotion.struct_class = Types::Emotion

      Emotions.member = Shapes::ShapeRef.new(shape: Emotion)

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

      FaceIdList.member = Shapes::ShapeRef.new(shape: FaceId)

      FaceList.member = Shapes::ShapeRef.new(shape: Face)

      FaceMatch.add_member(:similarity, Shapes::ShapeRef.new(shape: Percent, location_name: "Similarity"))
      FaceMatch.add_member(:face, Shapes::ShapeRef.new(shape: Face, location_name: "Face"))
      FaceMatch.struct_class = Types::FaceMatch

      FaceMatchList.member = Shapes::ShapeRef.new(shape: FaceMatch)

      FaceRecord.add_member(:face, Shapes::ShapeRef.new(shape: Face, location_name: "Face"))
      FaceRecord.add_member(:face_detail, Shapes::ShapeRef.new(shape: FaceDetail, location_name: "FaceDetail"))
      FaceRecord.struct_class = Types::FaceRecord

      FaceRecordList.member = Shapes::ShapeRef.new(shape: FaceRecord)

      Gender.add_member(:value, Shapes::ShapeRef.new(shape: GenderType, location_name: "Value"))
      Gender.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
      Gender.struct_class = Types::Gender

      Image.add_member(:bytes, Shapes::ShapeRef.new(shape: ImageBlob, location_name: "Bytes"))
      Image.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
      Image.struct_class = Types::Image

      ImageQuality.add_member(:brightness, Shapes::ShapeRef.new(shape: Float, location_name: "Brightness"))
      ImageQuality.add_member(:sharpness, Shapes::ShapeRef.new(shape: Float, location_name: "Sharpness"))
      ImageQuality.struct_class = Types::ImageQuality

      IndexFacesRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
      IndexFacesRequest.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
      IndexFacesRequest.add_member(:external_image_id, Shapes::ShapeRef.new(shape: ExternalImageId, location_name: "ExternalImageId"))
      IndexFacesRequest.add_member(:detection_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "DetectionAttributes"))
      IndexFacesRequest.struct_class = Types::IndexFacesRequest

      IndexFacesResponse.add_member(:face_records, Shapes::ShapeRef.new(shape: FaceRecordList, location_name: "FaceRecords"))
      IndexFacesResponse.add_member(:orientation_correction, Shapes::ShapeRef.new(shape: OrientationCorrection, location_name: "OrientationCorrection"))
      IndexFacesResponse.struct_class = Types::IndexFacesResponse

      Label.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
      Label.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
      Label.struct_class = Types::Label

      Labels.member = Shapes::ShapeRef.new(shape: Label)

      Landmark.add_member(:type, Shapes::ShapeRef.new(shape: LandmarkType, location_name: "Type"))
      Landmark.add_member(:x, Shapes::ShapeRef.new(shape: Float, location_name: "X"))
      Landmark.add_member(:y, Shapes::ShapeRef.new(shape: Float, location_name: "Y"))
      Landmark.struct_class = Types::Landmark

      Landmarks.member = Shapes::ShapeRef.new(shape: Landmark)

      ListCollectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
      ListCollectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
      ListCollectionsRequest.struct_class = Types::ListCollectionsRequest

      ListCollectionsResponse.add_member(:collection_ids, Shapes::ShapeRef.new(shape: CollectionIdList, location_name: "CollectionIds"))
      ListCollectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
      ListCollectionsResponse.struct_class = Types::ListCollectionsResponse

      ListFacesRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
      ListFacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
      ListFacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
      ListFacesRequest.struct_class = Types::ListFacesRequest

      ListFacesResponse.add_member(:faces, Shapes::ShapeRef.new(shape: FaceList, location_name: "Faces"))
      ListFacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
      ListFacesResponse.struct_class = Types::ListFacesResponse

      MouthOpen.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
      MouthOpen.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
      MouthOpen.struct_class = Types::MouthOpen

      Mustache.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
      Mustache.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
      Mustache.struct_class = Types::Mustache

      Pose.add_member(:roll, Shapes::ShapeRef.new(shape: Degree, location_name: "Roll"))
      Pose.add_member(:yaw, Shapes::ShapeRef.new(shape: Degree, location_name: "Yaw"))
      Pose.add_member(:pitch, Shapes::ShapeRef.new(shape: Degree, location_name: "Pitch"))
      Pose.struct_class = Types::Pose

      S3Object.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "Bucket"))
      S3Object.add_member(:name, Shapes::ShapeRef.new(shape: S3ObjectName, location_name: "Name"))
      S3Object.add_member(:version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "Version"))
      S3Object.struct_class = Types::S3Object

      SearchFacesByImageRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
      SearchFacesByImageRequest.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
      SearchFacesByImageRequest.add_member(:max_faces, Shapes::ShapeRef.new(shape: MaxFaces, location_name: "MaxFaces"))
      SearchFacesByImageRequest.add_member(:face_match_threshold, Shapes::ShapeRef.new(shape: Percent, location_name: "FaceMatchThreshold"))
      SearchFacesByImageRequest.struct_class = Types::SearchFacesByImageRequest

      SearchFacesByImageResponse.add_member(:searched_face_bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "SearchedFaceBoundingBox"))
      SearchFacesByImageResponse.add_member(:searched_face_confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "SearchedFaceConfidence"))
      SearchFacesByImageResponse.add_member(:face_matches, Shapes::ShapeRef.new(shape: FaceMatchList, location_name: "FaceMatches"))
      SearchFacesByImageResponse.struct_class = Types::SearchFacesByImageResponse

      SearchFacesRequest.add_member(:collection_id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "CollectionId"))
      SearchFacesRequest.add_member(:face_id, Shapes::ShapeRef.new(shape: FaceId, required: true, location_name: "FaceId"))
      SearchFacesRequest.add_member(:max_faces, Shapes::ShapeRef.new(shape: MaxFaces, location_name: "MaxFaces"))
      SearchFacesRequest.add_member(:face_match_threshold, Shapes::ShapeRef.new(shape: Percent, location_name: "FaceMatchThreshold"))
      SearchFacesRequest.struct_class = Types::SearchFacesRequest

      SearchFacesResponse.add_member(:searched_face_id, Shapes::ShapeRef.new(shape: FaceId, location_name: "SearchedFaceId"))
      SearchFacesResponse.add_member(:face_matches, Shapes::ShapeRef.new(shape: FaceMatchList, location_name: "FaceMatches"))
      SearchFacesResponse.struct_class = Types::SearchFacesResponse

      Smile.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
      Smile.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
      Smile.struct_class = Types::Smile

      Sunglasses.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
      Sunglasses.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
      Sunglasses.struct_class = Types::Sunglasses


      # @api private
      API = Seahorse::Model::Api.new.tap do |api|

        api.version = "2016-06-27"

        api.metadata = {
          "endpointPrefix" => "rekognition",
          "jsonVersion" => "1.1",
          "protocol" => "json",
          "serviceFullName" => "Amazon Rekognition",
          "signatureVersion" => "v4",
          "targetPrefix" => "RekognitionService",
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
      end

    end
  end
end
