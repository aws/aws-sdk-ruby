# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Rekognition
  module Types

    # Structure containing the estimated age range, in years, for a face.
    #
    # Rekognition estimates an age-range for faces detected in the input
    # image. Estimated age ranges can overlap; a face of a 5 year old may
    # have an estimated range of 4-6 whilst the face of a 6 year old may
    # have an estimated range of 4-8.
    #
    # @!attribute [rw] low
    #   The lowest estimated age.
    #   @return [Integer]
    #
    # @!attribute [rw] high
    #   The highest estimated age.
    #   @return [Integer]
    #
    class AgeRange < Struct.new(
      :low,
      :high)
      include Aws::Structure
    end

    # Indicates whether or not the face has a beard, and the confidence
    # level in the determination.
    #
    # @!attribute [rw] value
    #   Boolean value that indicates whether the face has beard or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class Beard < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # Identifies the bounding box around the face or text. The `left`
    # (x-coordinate) and `top` (y-coordinate) are coordinates representing
    # the top and left sides of the bounding box. Note that the upper-left
    # corner of the image is the origin (0,0).
    #
    # The `top` and `left` values returned are ratios of the overall image
    # size. For example, if the input image is 700x200 pixels, and the
    # top-left coordinate of the bounding box is 350x50 pixels, the API
    # returns a `left` value of 0.5 (350/700) and a `top` value of 0.25
    # (50/200).
    #
    # The `width` and `height` values represent the dimensions of the
    # bounding box as a ratio of the overall image dimension. For example,
    # if the input image is 700x200 pixels, and the bounding box width is 70
    # pixels, the width returned is 0.1.
    #
    # <note markdown="1"> The bounding box coordinates can have negative values. For example, if
    # Amazon Rekognition is able to detect a face that is at the image edge
    # and is only partially visible, the service can return coordinates that
    # are outside the image bounds and, depending on the image edge, you
    # might get negative values or values greater than 1 for the `left` or
    # `top` values.
    #
    #  </note>
    #
    # @!attribute [rw] width
    #   Width of the bounding box as a ratio of the overall image width.
    #   @return [Float]
    #
    # @!attribute [rw] height
    #   Height of the bounding box as a ratio of the overall image height.
    #   @return [Float]
    #
    # @!attribute [rw] left
    #   Left coordinate of the bounding box as a ratio of overall image
    #   width.
    #   @return [Float]
    #
    # @!attribute [rw] top
    #   Top coordinate of the bounding box as a ratio of overall image
    #   height.
    #   @return [Float]
    #
    class BoundingBox < Struct.new(
      :width,
      :height,
      :left,
      :top)
      include Aws::Structure
    end

    # Provides information about a celebrity recognized by the operation.
    #
    # @!attribute [rw] urls
    #   An array of URLs pointing to additional information about the
    #   celebrity. If there is no additional information about the
    #   celebrity, this list is empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the celebrity.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the celebrity.
    #   @return [String]
    #
    # @!attribute [rw] face
    #   Provides information about the celebrity's face, such as its
    #   location on the image.
    #   @return [Types::ComparedFace]
    #
    # @!attribute [rw] match_confidence
    #   The confidence, in percentage, that Rekognition has that the
    #   recognized face is the celebrity.
    #   @return [Float]
    #
    class Celebrity < Struct.new(
      :urls,
      :name,
      :id,
      :face,
      :match_confidence)
      include Aws::Structure
    end

    # Information about a recognized celebrity.
    #
    # @!attribute [rw] urls
    #   An array of URLs pointing to additional celebrity information.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the celebrity.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the celebrity.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence, in percentage, that Amazon Rekognition has that the
    #   recognized face is the celebrity.
    #   @return [Float]
    #
    # @!attribute [rw] bounding_box
    #   Bounding box around the body of a celebrity.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] face
    #   Face details for the recognized celebrity.
    #   @return [Types::FaceDetail]
    #
    class CelebrityDetail < Struct.new(
      :urls,
      :name,
      :id,
      :confidence,
      :bounding_box,
      :face)
      include Aws::Structure
    end

    # Information about a detected celebrity and the time the celebrity was
    # detected in a stored video. For more information, see
    # GetCelebrityRecognition in the Amazon Rekognition Developer Guide.
    #
    # @!attribute [rw] timestamp
    #   The time, in milliseconds from the start of the video, that the
    #   celebrity was recognized.
    #   @return [Integer]
    #
    # @!attribute [rw] celebrity
    #   Information about a recognized celebrity.
    #   @return [Types::CelebrityDetail]
    #
    class CelebrityRecognition < Struct.new(
      :timestamp,
      :celebrity)
      include Aws::Structure
    end

    # Provides information about a face in a target image that matches the
    # source image face analysed by `CompareFaces`. The `Face` property
    # contains the bounding box of the face in the target image. The
    # `Similarity` property is the confidence that the source image face
    # matches the face in the bounding box.
    #
    # @!attribute [rw] similarity
    #   Level of confidence that the faces match.
    #   @return [Float]
    #
    # @!attribute [rw] face
    #   Provides face metadata (bounding box and confidence that the
    #   bounding box actually contains a face).
    #   @return [Types::ComparedFace]
    #
    class CompareFacesMatch < Struct.new(
      :similarity,
      :face)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CompareFacesRequest
    #   data as a hash:
    #
    #       {
    #         source_image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         target_image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         similarity_threshold: 1.0,
    #       }
    #
    # @!attribute [rw] source_image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #   @return [Types::Image]
    #
    # @!attribute [rw] target_image
    #   The target image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #   @return [Types::Image]
    #
    # @!attribute [rw] similarity_threshold
    #   The minimum level of confidence in the face matches that a match
    #   must meet to be included in the `FaceMatches` array.
    #   @return [Float]
    #
    class CompareFacesRequest < Struct.new(
      :source_image,
      :target_image,
      :similarity_threshold)
      include Aws::Structure
    end

    # @!attribute [rw] source_image_face
    #   The face in the source image that was used for comparison.
    #   @return [Types::ComparedSourceImageFace]
    #
    # @!attribute [rw] face_matches
    #   An array of faces in the target image that match the source image
    #   face. Each `CompareFacesMatch` object provides the bounding box, the
    #   confidence level that the bounding box contains a face, and the
    #   similarity score for the face in the bounding box and the face in
    #   the source image.
    #   @return [Array<Types::CompareFacesMatch>]
    #
    # @!attribute [rw] unmatched_faces
    #   An array of faces in the target image that did not match the source
    #   image face.
    #   @return [Array<Types::ComparedFace>]
    #
    # @!attribute [rw] source_image_orientation_correction
    #   The orientation of the source image (counterclockwise direction). If
    #   your application displays the source image, you can use this value
    #   to correct image orientation. The bounding box coordinates returned
    #   in `SourceImageFace` represent the location of the face before the
    #   image orientation is corrected.
    #
    #   <note markdown="1"> If the source image is in .jpeg format, it might contain
    #   exchangeable image (Exif) metadata that includes the image's
    #   orientation. If the Exif metadata for the source image populates the
    #   orientation field, the value of `OrientationCorrection` is null and
    #   the `SourceImageFace` bounding box coordinates represent the
    #   location of the face after Exif metadata is used to correct the
    #   orientation. Images in .png format don't contain Exif metadata.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] target_image_orientation_correction
    #   The orientation of the target image (in counterclockwise direction).
    #   If your application displays the target image, you can use this
    #   value to correct the orientation of the image. The bounding box
    #   coordinates returned in `FaceMatches` and `UnmatchedFaces` represent
    #   face locations before the image orientation is corrected.
    #
    #   <note markdown="1"> If the target image is in .jpg format, it might contain Exif
    #   metadata that includes the orientation of the image. If the Exif
    #   metadata for the target image populates the orientation field, the
    #   value of `OrientationCorrection` is null and the bounding box
    #   coordinates in `FaceMatches` and `UnmatchedFaces` represent the
    #   location of the face after Exif metadata is used to correct the
    #   orientation. Images in .png format don't contain Exif metadata.
    #
    #    </note>
    #   @return [String]
    #
    class CompareFacesResponse < Struct.new(
      :source_image_face,
      :face_matches,
      :unmatched_faces,
      :source_image_orientation_correction,
      :target_image_orientation_correction)
      include Aws::Structure
    end

    # Provides face metadata for target image faces that are analysed by
    # `CompareFaces` and `RecognizeCelebrities`.
    #
    # @!attribute [rw] bounding_box
    #   Bounding box of the face.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] confidence
    #   Level of confidence that what the bounding box contains is a face.
    #   @return [Float]
    #
    # @!attribute [rw] landmarks
    #   An array of facial landmarks.
    #   @return [Array<Types::Landmark>]
    #
    # @!attribute [rw] pose
    #   Indicates the pose of the face as determined by its pitch, roll, and
    #   yaw.
    #   @return [Types::Pose]
    #
    # @!attribute [rw] quality
    #   Identifies face image brightness and sharpness.
    #   @return [Types::ImageQuality]
    #
    class ComparedFace < Struct.new(
      :bounding_box,
      :confidence,
      :landmarks,
      :pose,
      :quality)
      include Aws::Structure
    end

    # Type that describes the face Amazon Rekognition chose to compare with
    # the faces in the target. This contains a bounding box for the selected
    # face and confidence level that the bounding box contains a face. Note
    # that Amazon Rekognition selects the largest face in the source image
    # for this comparison.
    #
    # @!attribute [rw] bounding_box
    #   Bounding box of the face.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] confidence
    #   Confidence level that the selected bounding box contains a face.
    #   @return [Float]
    #
    class ComparedSourceImageFace < Struct.new(
      :bounding_box,
      :confidence)
      include Aws::Structure
    end

    # Information about a moderation label detection in a stored video.
    #
    # @!attribute [rw] timestamp
    #   Time, in milliseconds from the beginning of the video, that the
    #   moderation label was detected.
    #   @return [Integer]
    #
    # @!attribute [rw] moderation_label
    #   The moderation label detected by in the stored video.
    #   @return [Types::ModerationLabel]
    #
    class ContentModerationDetection < Struct.new(
      :timestamp,
      :moderation_label)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCollectionRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #       }
    #
    # @!attribute [rw] collection_id
    #   ID for the collection that you are creating.
    #   @return [String]
    #
    class CreateCollectionRequest < Struct.new(
      :collection_id)
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   HTTP status code indicating the result of the operation.
    #   @return [Integer]
    #
    # @!attribute [rw] collection_arn
    #   Amazon Resource Name (ARN) of the collection. You can use this to
    #   manage permissions on your resources.
    #   @return [String]
    #
    # @!attribute [rw] face_model_version
    #   Version number of the face detection model associated with the
    #   collection you are creating.
    #   @return [String]
    #
    class CreateCollectionResponse < Struct.new(
      :status_code,
      :collection_arn,
      :face_model_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStreamProcessorRequest
    #   data as a hash:
    #
    #       {
    #         input: { # required
    #           kinesis_video_stream: {
    #             arn: "KinesisVideoArn",
    #           },
    #         },
    #         output: { # required
    #           kinesis_data_stream: {
    #             arn: "KinesisDataArn",
    #           },
    #         },
    #         name: "StreamProcessorName", # required
    #         settings: { # required
    #           face_search: {
    #             collection_id: "CollectionId",
    #             face_match_threshold: 1.0,
    #           },
    #         },
    #         role_arn: "RoleArn", # required
    #       }
    #
    # @!attribute [rw] input
    #   Kinesis video stream stream that provides the source streaming
    #   video. If you are using the AWS CLI, the parameter name is
    #   `StreamProcessorInput`.
    #   @return [Types::StreamProcessorInput]
    #
    # @!attribute [rw] output
    #   Kinesis data stream stream to which Amazon Rekognition Video puts
    #   the analysis results. If you are using the AWS CLI, the parameter
    #   name is `StreamProcessorOutput`.
    #   @return [Types::StreamProcessorOutput]
    #
    # @!attribute [rw] name
    #   An identifier you assign to the stream processor. You can use `Name`
    #   to manage the stream processor. For example, you can get the current
    #   status of the stream processor by calling . `Name` is idempotent.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Face recognition input parameters to be used by the stream
    #   processor. Includes the collection to use for face recognition and
    #   the face attributes to detect.
    #   @return [Types::StreamProcessorSettings]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that allows access to the stream processor.
    #   @return [String]
    #
    class CreateStreamProcessorRequest < Struct.new(
      :input,
      :output,
      :name,
      :settings,
      :role_arn)
      include Aws::Structure
    end

    # @!attribute [rw] stream_processor_arn
    #   ARN for the newly create stream processor.
    #   @return [String]
    #
    class CreateStreamProcessorResponse < Struct.new(
      :stream_processor_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCollectionRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #       }
    #
    # @!attribute [rw] collection_id
    #   ID of the collection to delete.
    #   @return [String]
    #
    class DeleteCollectionRequest < Struct.new(
      :collection_id)
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   HTTP status code that indicates the result of the operation.
    #   @return [Integer]
    #
    class DeleteCollectionResponse < Struct.new(
      :status_code)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFacesRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #         face_ids: ["FaceId"], # required
    #       }
    #
    # @!attribute [rw] collection_id
    #   Collection from which to remove the specific faces.
    #   @return [String]
    #
    # @!attribute [rw] face_ids
    #   An array of face IDs to delete.
    #   @return [Array<String>]
    #
    class DeleteFacesRequest < Struct.new(
      :collection_id,
      :face_ids)
      include Aws::Structure
    end

    # @!attribute [rw] deleted_faces
    #   An array of strings (face IDs) of the faces that were deleted.
    #   @return [Array<String>]
    #
    class DeleteFacesResponse < Struct.new(
      :deleted_faces)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteStreamProcessorRequest
    #   data as a hash:
    #
    #       {
    #         name: "StreamProcessorName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the stream processor you want to delete.
    #   @return [String]
    #
    class DeleteStreamProcessorRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    class DeleteStreamProcessorResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeCollectionRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #       }
    #
    # @!attribute [rw] collection_id
    #   The ID of the collection to describe.
    #   @return [String]
    #
    class DescribeCollectionRequest < Struct.new(
      :collection_id)
      include Aws::Structure
    end

    # @!attribute [rw] face_count
    #   The number of faces that are indexed into the collection. To index
    #   faces into a collection, use .
    #   @return [Integer]
    #
    # @!attribute [rw] face_model_version
    #   The version of the face model that's used by the collection for
    #   face detection.
    #
    #   For more information, see Model Versioning in the Amazon Rekognition
    #   Developer Guide.
    #   @return [String]
    #
    # @!attribute [rw] collection_arn
    #   The Amazon Resource Name (ARN) of the collection.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The number of milliseconds since the Unix epoch time until the
    #   creation of the collection. The Unix epoch time is 00:00:00
    #   Coordinated Universal Time (UTC), Thursday, 1 January 1970.
    #   @return [Time]
    #
    class DescribeCollectionResponse < Struct.new(
      :face_count,
      :face_model_version,
      :collection_arn,
      :creation_timestamp)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStreamProcessorRequest
    #   data as a hash:
    #
    #       {
    #         name: "StreamProcessorName", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the stream processor for which you want information.
    #   @return [String]
    #
    class DescribeStreamProcessorRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of the stream processor.
    #   @return [String]
    #
    # @!attribute [rw] stream_processor_arn
    #   ARN of the stream processor.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the stream processor.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Detailed status message about the stream processor.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   Date and time the stream processor was created
    #   @return [Time]
    #
    # @!attribute [rw] last_update_timestamp
    #   The time, in Unix format, the stream processor was last updated. For
    #   example, when the stream processor moves from a running state to a
    #   failed state, or when the user starts or stops the stream processor.
    #   @return [Time]
    #
    # @!attribute [rw] input
    #   Kinesis video stream that provides the source streaming video.
    #   @return [Types::StreamProcessorInput]
    #
    # @!attribute [rw] output
    #   Kinesis data stream to which Amazon Rekognition Video puts the
    #   analysis results.
    #   @return [Types::StreamProcessorOutput]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that allows access to the stream processor.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Face recognition input parameters that are being used by the stream
    #   processor. Includes the collection to use for face recognition and
    #   the face attributes to detect.
    #   @return [Types::StreamProcessorSettings]
    #
    class DescribeStreamProcessorResponse < Struct.new(
      :name,
      :stream_processor_arn,
      :status,
      :status_message,
      :creation_timestamp,
      :last_update_timestamp,
      :input,
      :output,
      :role_arn,
      :settings)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectFacesRequest
    #   data as a hash:
    #
    #       {
    #         image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         attributes: ["DEFAULT"], # accepts DEFAULT, ALL
    #       }
    #
    # @!attribute [rw] image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #   @return [Types::Image]
    #
    # @!attribute [rw] attributes
    #   An array of facial attributes you want to be returned. This can be
    #   the default list of attributes or all attributes. If you don't
    #   specify a value for `Attributes` or if you specify `["DEFAULT"]`,
    #   the API returns the following subset of facial attributes:
    #   `BoundingBox`, `Confidence`, `Pose`, `Quality` and `Landmarks`. If
    #   you provide `["ALL"]`, all facial attributes are returned but the
    #   operation will take longer to complete.
    #
    #   If you provide both, `["ALL", "DEFAULT"]`, the service uses a
    #   logical AND operator to determine which attributes to return (in
    #   this case, all attributes).
    #   @return [Array<String>]
    #
    class DetectFacesRequest < Struct.new(
      :image,
      :attributes)
      include Aws::Structure
    end

    # @!attribute [rw] face_details
    #   Details of each face found in the image.
    #   @return [Array<Types::FaceDetail>]
    #
    # @!attribute [rw] orientation_correction
    #   The orientation of the input image (counter-clockwise direction). If
    #   your application displays the image, you can use this value to
    #   correct image orientation. The bounding box coordinates returned in
    #   `FaceDetails` represent face locations before the image orientation
    #   is corrected.
    #
    #   <note markdown="1"> If the input image is in .jpeg format, it might contain exchangeable
    #   image (Exif) metadata that includes the image's orientation. If so,
    #   and the Exif metadata for the input image populates the orientation
    #   field, the value of `OrientationCorrection` is null and the
    #   `FaceDetails` bounding box coordinates represent face locations
    #   after Exif metadata is used to correct the image orientation. Images
    #   in .png format don't contain Exif metadata.
    #
    #    </note>
    #   @return [String]
    #
    class DetectFacesResponse < Struct.new(
      :face_details,
      :orientation_correction)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectLabelsRequest
    #   data as a hash:
    #
    #       {
    #         image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         max_labels: 1,
    #         min_confidence: 1.0,
    #       }
    #
    # @!attribute [rw] image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #   @return [Types::Image]
    #
    # @!attribute [rw] max_labels
    #   Maximum number of labels you want the service to return in the
    #   response. The service returns the specified number of highest
    #   confidence labels.
    #   @return [Integer]
    #
    # @!attribute [rw] min_confidence
    #   Specifies the minimum confidence level for the labels to return.
    #   Amazon Rekognition doesn't return any labels with confidence lower
    #   than this specified value.
    #
    #   If `MinConfidence` is not specified, the operation returns labels
    #   with a confidence values greater than or equal to 50 percent.
    #   @return [Float]
    #
    class DetectLabelsRequest < Struct.new(
      :image,
      :max_labels,
      :min_confidence)
      include Aws::Structure
    end

    # @!attribute [rw] labels
    #   An array of labels for the real-world objects detected.
    #   @return [Array<Types::Label>]
    #
    # @!attribute [rw] orientation_correction
    #   The orientation of the input image (counter-clockwise direction). If
    #   your application displays the image, you can use this value to
    #   correct the orientation. If Amazon Rekognition detects that the
    #   input image was rotated (for example, by 90 degrees), it first
    #   corrects the orientation before detecting the labels.
    #
    #   <note markdown="1"> If the input image Exif metadata populates the orientation field,
    #   Amazon Rekognition does not perform orientation correction and the
    #   value of OrientationCorrection will be null.
    #
    #    </note>
    #   @return [String]
    #
    class DetectLabelsResponse < Struct.new(
      :labels,
      :orientation_correction)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectModerationLabelsRequest
    #   data as a hash:
    #
    #       {
    #         image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         min_confidence: 1.0,
    #       }
    #
    # @!attribute [rw] image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #   @return [Types::Image]
    #
    # @!attribute [rw] min_confidence
    #   Specifies the minimum confidence level for the labels to return.
    #   Amazon Rekognition doesn't return any labels with a confidence
    #   level lower than this specified value.
    #
    #   If you don't specify `MinConfidence`, the operation returns labels
    #   with confidence values greater than or equal to 50 percent.
    #   @return [Float]
    #
    class DetectModerationLabelsRequest < Struct.new(
      :image,
      :min_confidence)
      include Aws::Structure
    end

    # @!attribute [rw] moderation_labels
    #   Array of detected Moderation labels and the time, in millseconds
    #   from the start of the video, they were detected.
    #   @return [Array<Types::ModerationLabel>]
    #
    class DetectModerationLabelsResponse < Struct.new(
      :moderation_labels)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectTextRequest
    #   data as a hash:
    #
    #       {
    #         image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] image
    #   The input image as base64-encoded bytes or an Amazon S3 object. If
    #   you use the AWS CLI to call Amazon Rekognition operations, you
    #   can't pass image bytes.
    #   @return [Types::Image]
    #
    class DetectTextRequest < Struct.new(
      :image)
      include Aws::Structure
    end

    # @!attribute [rw] text_detections
    #   An array of text that was detected in the input image.
    #   @return [Array<Types::TextDetection>]
    #
    class DetectTextResponse < Struct.new(
      :text_detections)
      include Aws::Structure
    end

    # The emotions detected on the face, and the confidence level in the
    # determination. For example, HAPPY, SAD, and ANGRY.
    #
    # @!attribute [rw] type
    #   Type of emotion detected.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class Emotion < Struct.new(
      :type,
      :confidence)
      include Aws::Structure
    end

    # Indicates whether or not the eyes on the face are open, and the
    # confidence level in the determination.
    #
    # @!attribute [rw] value
    #   Boolean value that indicates whether the eyes on the face are open.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class EyeOpen < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # Indicates whether or not the face is wearing eye glasses, and the
    # confidence level in the determination.
    #
    # @!attribute [rw] value
    #   Boolean value that indicates whether the face is wearing eye glasses
    #   or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class Eyeglasses < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # Describes the face properties such as the bounding box, face ID, image
    # ID of the input image, and external image ID that you assigned.
    #
    # @!attribute [rw] face_id
    #   Unique identifier that Amazon Rekognition assigns to the face.
    #   @return [String]
    #
    # @!attribute [rw] bounding_box
    #   Bounding box of the face.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] image_id
    #   Unique identifier that Amazon Rekognition assigns to the input
    #   image.
    #   @return [String]
    #
    # @!attribute [rw] external_image_id
    #   Identifier that you assign to all the faces in the input image.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Confidence level that the bounding box contains a face (and not a
    #   different object such as a tree).
    #   @return [Float]
    #
    class Face < Struct.new(
      :face_id,
      :bounding_box,
      :image_id,
      :external_image_id,
      :confidence)
      include Aws::Structure
    end

    # Structure containing attributes of the face that the algorithm
    # detected.
    #
    # A `FaceDetail` object contains either the default facial attributes or
    # all facial attributes. The default attributes are `BoundingBox`,
    # `Confidence`, `Landmarks`, `Pose`, and `Quality`.
    #
    # is the only Amazon Rekognition Video stored video operation that can
    # return a `FaceDetail` object with all attributes. To specify which
    # attributes to return, use the `FaceAttributes` input parameter for .
    # The following Amazon Rekognition Video operations return only the
    # default attributes. The corresponding Start operations don't have a
    # `FaceAttributes` input parameter.
    #
    # * GetCelebrityRecognition
    #
    # * GetPersonTracking
    #
    # * GetFaceSearch
    #
    # The Amazon Rekognition Image and operations can return all facial
    # attributes. To specify which attributes to return, use the
    # `Attributes` input parameter for `DetectFaces`. For `IndexFaces`, use
    # the `DetectAttributes` input parameter.
    #
    # @!attribute [rw] bounding_box
    #   Bounding box of the face. Default attribute.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] age_range
    #   The estimated age range, in years, for the face. Low represents the
    #   lowest estimated age and High represents the highest estimated age.
    #   @return [Types::AgeRange]
    #
    # @!attribute [rw] smile
    #   Indicates whether or not the face is smiling, and the confidence
    #   level in the determination.
    #   @return [Types::Smile]
    #
    # @!attribute [rw] eyeglasses
    #   Indicates whether or not the face is wearing eye glasses, and the
    #   confidence level in the determination.
    #   @return [Types::Eyeglasses]
    #
    # @!attribute [rw] sunglasses
    #   Indicates whether or not the face is wearing sunglasses, and the
    #   confidence level in the determination.
    #   @return [Types::Sunglasses]
    #
    # @!attribute [rw] gender
    #   Gender of the face and the confidence level in the determination.
    #   @return [Types::Gender]
    #
    # @!attribute [rw] beard
    #   Indicates whether or not the face has a beard, and the confidence
    #   level in the determination.
    #   @return [Types::Beard]
    #
    # @!attribute [rw] mustache
    #   Indicates whether or not the face has a mustache, and the confidence
    #   level in the determination.
    #   @return [Types::Mustache]
    #
    # @!attribute [rw] eyes_open
    #   Indicates whether or not the eyes on the face are open, and the
    #   confidence level in the determination.
    #   @return [Types::EyeOpen]
    #
    # @!attribute [rw] mouth_open
    #   Indicates whether or not the mouth on the face is open, and the
    #   confidence level in the determination.
    #   @return [Types::MouthOpen]
    #
    # @!attribute [rw] emotions
    #   The emotions detected on the face, and the confidence level in the
    #   determination. For example, HAPPY, SAD, and ANGRY.
    #   @return [Array<Types::Emotion>]
    #
    # @!attribute [rw] landmarks
    #   Indicates the location of landmarks on the face. Default attribute.
    #   @return [Array<Types::Landmark>]
    #
    # @!attribute [rw] pose
    #   Indicates the pose of the face as determined by its pitch, roll, and
    #   yaw. Default attribute.
    #   @return [Types::Pose]
    #
    # @!attribute [rw] quality
    #   Identifies image brightness and sharpness. Default attribute.
    #   @return [Types::ImageQuality]
    #
    # @!attribute [rw] confidence
    #   Confidence level that the bounding box contains a face (and not a
    #   different object such as a tree). Default attribute.
    #   @return [Float]
    #
    class FaceDetail < Struct.new(
      :bounding_box,
      :age_range,
      :smile,
      :eyeglasses,
      :sunglasses,
      :gender,
      :beard,
      :mustache,
      :eyes_open,
      :mouth_open,
      :emotions,
      :landmarks,
      :pose,
      :quality,
      :confidence)
      include Aws::Structure
    end

    # Information about a face detected in a video analysis request and the
    # time the face was detected in the video.
    #
    # @!attribute [rw] timestamp
    #   Time, in milliseconds from the start of the video, that the face was
    #   detected.
    #   @return [Integer]
    #
    # @!attribute [rw] face
    #   The face properties for the detected face.
    #   @return [Types::FaceDetail]
    #
    class FaceDetection < Struct.new(
      :timestamp,
      :face)
      include Aws::Structure
    end

    # Provides face metadata. In addition, it also provides the confidence
    # in the match of this face with the input face.
    #
    # @!attribute [rw] similarity
    #   Confidence in the match of this face with the input face.
    #   @return [Float]
    #
    # @!attribute [rw] face
    #   Describes the face properties such as the bounding box, face ID,
    #   image ID of the source image, and external image ID that you
    #   assigned.
    #   @return [Types::Face]
    #
    class FaceMatch < Struct.new(
      :similarity,
      :face)
      include Aws::Structure
    end

    # Object containing both the face metadata (stored in the back-end
    # database) and facial attributes that are detected but aren't stored
    # in the database.
    #
    # @!attribute [rw] face
    #   Describes the face properties such as the bounding box, face ID,
    #   image ID of the input image, and external image ID that you
    #   assigned.
    #   @return [Types::Face]
    #
    # @!attribute [rw] face_detail
    #   Structure containing attributes of the face that the algorithm
    #   detected.
    #   @return [Types::FaceDetail]
    #
    class FaceRecord < Struct.new(
      :face,
      :face_detail)
      include Aws::Structure
    end

    # Input face recognition parameters for an Amazon Rekognition stream
    # processor. `FaceRecognitionSettings` is a request parameter for .
    #
    # @note When making an API call, you may pass FaceSearchSettings
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId",
    #         face_match_threshold: 1.0,
    #       }
    #
    # @!attribute [rw] collection_id
    #   The ID of a collection that contains faces that you want to search
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] face_match_threshold
    #   Minimum face match confidence score that must be met to return a
    #   result for a recognized face. Default is 70. 0 is the lowest
    #   confidence. 100 is the highest confidence.
    #   @return [Float]
    #
    class FaceSearchSettings < Struct.new(
      :collection_id,
      :face_match_threshold)
      include Aws::Structure
    end

    # Gender of the face and the confidence level in the determination.
    #
    # @!attribute [rw] value
    #   Gender of the face.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class Gender < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # Information about where text detected by is located on an image.
    #
    # @!attribute [rw] bounding_box
    #   An axis-aligned coarse representation of the detected text's
    #   location on the image.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] polygon
    #   Within the bounding box, a fine-grained polygon around the detected
    #   text.
    #   @return [Array<Types::Point>]
    #
    class Geometry < Struct.new(
      :bounding_box,
      :polygon)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCelebrityInfoRequest
    #   data as a hash:
    #
    #       {
    #         id: "RekognitionUniqueId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID for the celebrity. You get the celebrity ID from a call to
    #   the operation, which recognizes celebrities in an image.
    #   @return [String]
    #
    class GetCelebrityInfoRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] urls
    #   An array of URLs pointing to additional celebrity information.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the celebrity.
    #   @return [String]
    #
    class GetCelebrityInfoResponse < Struct.new(
      :urls,
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCelebrityRecognitionRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #         sort_by: "ID", # accepts ID, TIMESTAMP
    #       }
    #
    # @!attribute [rw] job_id
    #   Job identifier for the required celebrity recognition analysis. You
    #   can get the job identifer from a call to
    #   `StartCelebrityRecognition`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000. If you specify a value greater than
    #   1000, a maximum of 1000 results is returned. The default value is
    #   1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more
    #   recognized celebrities to retrieve), Amazon Rekognition Video
    #   returns a pagination token in the response. You can use this
    #   pagination token to retrieve the next set of celebrities.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Sort to use for celebrities returned in `Celebrities` field. Specify
    #   `ID` to sort by the celebrity identifier, specify `TIMESTAMP` to
    #   sort by the time the celebrity was recognized.
    #   @return [String]
    #
    class GetCelebrityRecognitionRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :sort_by)
      include Aws::Structure
    end

    # @!attribute [rw] job_status
    #   The current status of the celebrity recognition job.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   If the job fails, `StatusMessage` provides a descriptive error
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] video_metadata
    #   Information about a video that Amazon Rekognition Video analyzed.
    #   `Videometadata` is returned in every page of paginated responses
    #   from a Amazon Rekognition Video operation.
    #   @return [Types::VideoMetadata]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Rekognition Video returns this
    #   token that you can use in the subsequent request to retrieve the
    #   next set of celebrities.
    #   @return [String]
    #
    # @!attribute [rw] celebrities
    #   Array of celebrities recognized in the video.
    #   @return [Array<Types::CelebrityRecognition>]
    #
    class GetCelebrityRecognitionResponse < Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :next_token,
      :celebrities)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetContentModerationRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #         sort_by: "NAME", # accepts NAME, TIMESTAMP
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier for the content moderation job. Use `JobId` to
    #   identify the job in a subsequent call to `GetContentModeration`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000. If you specify a value greater than
    #   1000, a maximum of 1000 results is returned. The default value is
    #   1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Rekognition returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of content moderation labels.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Sort to use for elements in the `ModerationLabelDetections` array.
    #   Use `TIMESTAMP` to sort array elements by the time labels are
    #   detected. Use `NAME` to alphabetically group elements for a label
    #   together. Within each label group, the array element are sorted by
    #   detection confidence. The default sort is by `TIMESTAMP`.
    #   @return [String]
    #
    class GetContentModerationRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :sort_by)
      include Aws::Structure
    end

    # @!attribute [rw] job_status
    #   The current status of the content moderation job.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   If the job fails, `StatusMessage` provides a descriptive error
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] video_metadata
    #   Information about a video that Amazon Rekognition analyzed.
    #   `Videometadata` is returned in every page of paginated responses
    #   from `GetContentModeration`.
    #   @return [Types::VideoMetadata]
    #
    # @!attribute [rw] moderation_labels
    #   The detected moderation labels and the time(s) they were detected.
    #   @return [Array<Types::ContentModerationDetection>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Rekognition Video returns this
    #   token that you can use in the subsequent request to retrieve the
    #   next set of moderation labels.
    #   @return [String]
    #
    class GetContentModerationResponse < Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :moderation_labels,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFaceDetectionRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] job_id
    #   Unique identifier for the face detection job. The `JobId` is
    #   returned from `StartFaceDetection`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000. If you specify a value greater than
    #   1000, a maximum of 1000 results is returned. The default value is
    #   1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there are more
    #   faces to retrieve), Amazon Rekognition Video returns a pagination
    #   token in the response. You can use this pagination token to retrieve
    #   the next set of faces.
    #   @return [String]
    #
    class GetFaceDetectionRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] job_status
    #   The current status of the face detection job.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   If the job fails, `StatusMessage` provides a descriptive error
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] video_metadata
    #   Information about a video that Amazon Rekognition Video analyzed.
    #   `Videometadata` is returned in every page of paginated responses
    #   from a Amazon Rekognition video operation.
    #   @return [Types::VideoMetadata]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Rekognition returns this token
    #   that you can use in the subsequent request to retrieve the next set
    #   of faces.
    #   @return [String]
    #
    # @!attribute [rw] faces
    #   An array of faces detected in the video. Each element contains a
    #   detected face's details and the time, in milliseconds from the
    #   start of the video, the face was detected.
    #   @return [Array<Types::FaceDetection>]
    #
    class GetFaceDetectionResponse < Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :next_token,
      :faces)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFaceSearchRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #         sort_by: "INDEX", # accepts INDEX, TIMESTAMP
    #       }
    #
    # @!attribute [rw] job_id
    #   The job identifer for the search request. You get the job identifier
    #   from an initial call to `StartFaceSearch`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000. If you specify a value greater than
    #   1000, a maximum of 1000 results is returned. The default value is
    #   1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more
    #   search results to retrieve), Amazon Rekognition Video returns a
    #   pagination token in the response. You can use this pagination token
    #   to retrieve the next set of search results.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Sort to use for grouping faces in the response. Use `TIMESTAMP` to
    #   group faces by the time that they are recognized. Use `INDEX` to
    #   sort by recognized faces.
    #   @return [String]
    #
    class GetFaceSearchRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :sort_by)
      include Aws::Structure
    end

    # @!attribute [rw] job_status
    #   The current status of the face search job.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   If the job fails, `StatusMessage` provides a descriptive error
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Rekognition Video returns this
    #   token that you can use in the subsequent request to retrieve the
    #   next set of search results.
    #   @return [String]
    #
    # @!attribute [rw] video_metadata
    #   Information about a video that Amazon Rekognition analyzed.
    #   `Videometadata` is returned in every page of paginated responses
    #   from a Amazon Rekognition Video operation.
    #   @return [Types::VideoMetadata]
    #
    # @!attribute [rw] persons
    #   An array of persons, , in the video whose face(s) match the face(s)
    #   in an Amazon Rekognition collection. It also includes time
    #   information for when persons are matched in the video. You specify
    #   the input collection in an initial call to `StartFaceSearch`. Each
    #   `Persons` element includes a time the person was matched, face match
    #   details (`FaceMatches`) for matching faces in the collection, and
    #   person information (`Person`) for the matched person.
    #   @return [Array<Types::PersonMatch>]
    #
    class GetFaceSearchResponse < Struct.new(
      :job_status,
      :status_message,
      :next_token,
      :video_metadata,
      :persons)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLabelDetectionRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #         sort_by: "NAME", # accepts NAME, TIMESTAMP
    #       }
    #
    # @!attribute [rw] job_id
    #   Job identifier for the label detection operation for which you want
    #   results returned. You get the job identifer from an initial call to
    #   `StartlabelDetection`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000. If you specify a value greater than
    #   1000, a maximum of 1000 results is returned. The default value is
    #   1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there are more
    #   labels to retrieve), Amazon Rekognition Video returns a pagination
    #   token in the response. You can use this pagination token to retrieve
    #   the next set of labels.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Sort to use for elements in the `Labels` array. Use `TIMESTAMP` to
    #   sort array elements by the time labels are detected. Use `NAME` to
    #   alphabetically group elements for a label together. Within each
    #   label group, the array element are sorted by detection confidence.
    #   The default sort is by `TIMESTAMP`.
    #   @return [String]
    #
    class GetLabelDetectionRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :sort_by)
      include Aws::Structure
    end

    # @!attribute [rw] job_status
    #   The current status of the label detection job.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   If the job fails, `StatusMessage` provides a descriptive error
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] video_metadata
    #   Information about a video that Amazon Rekognition Video analyzed.
    #   `Videometadata` is returned in every page of paginated responses
    #   from a Amazon Rekognition video operation.
    #   @return [Types::VideoMetadata]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Rekognition Video returns this
    #   token that you can use in the subsequent request to retrieve the
    #   next set of labels.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   An array of labels detected in the video. Each element contains the
    #   detected label and the time, in milliseconds from the start of the
    #   video, that the label was detected.
    #   @return [Array<Types::LabelDetection>]
    #
    class GetLabelDetectionResponse < Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :next_token,
      :labels)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPersonTrackingRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #         sort_by: "INDEX", # accepts INDEX, TIMESTAMP
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier for a job that tracks persons in a video. You get the
    #   `JobId` from a call to `StartPersonTracking`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000. If you specify a value greater than
    #   1000, a maximum of 1000 results is returned. The default value is
    #   1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there are more
    #   persons to retrieve), Amazon Rekognition Video returns a pagination
    #   token in the response. You can use this pagination token to retrieve
    #   the next set of persons.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Sort to use for elements in the `Persons` array. Use `TIMESTAMP` to
    #   sort array elements by the time persons are detected. Use `INDEX` to
    #   sort by the tracked persons. If you sort by `INDEX`, the array
    #   elements for each person are sorted by detection confidence. The
    #   default sort is by `TIMESTAMP`.
    #   @return [String]
    #
    class GetPersonTrackingRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :sort_by)
      include Aws::Structure
    end

    # @!attribute [rw] job_status
    #   The current status of the person tracking job.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   If the job fails, `StatusMessage` provides a descriptive error
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] video_metadata
    #   Information about a video that Amazon Rekognition Video analyzed.
    #   `Videometadata` is returned in every page of paginated responses
    #   from a Amazon Rekognition Video operation.
    #   @return [Types::VideoMetadata]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Rekognition Video returns this
    #   token that you can use in the subsequent request to retrieve the
    #   next set of persons.
    #   @return [String]
    #
    # @!attribute [rw] persons
    #   An array of the persons detected in the video and the times they are
    #   tracked throughout the video. An array element will exist for each
    #   time the person is tracked.
    #   @return [Array<Types::PersonDetection>]
    #
    class GetPersonTrackingResponse < Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :next_token,
      :persons)
      include Aws::Structure
    end

    # Provides the input image either as bytes or an S3 object.
    #
    # You pass image bytes to a Rekognition API operation by using the
    # `Bytes` property. For example, you would use the `Bytes` property to
    # pass an image loaded from a local file system. Image bytes passed by
    # using the `Bytes` property must be base64-encoded. Your code may not
    # need to encode image bytes if you are using an AWS SDK to call
    # Rekognition API operations.
    #
    # For more information, see Analyzing an Image Loaded from a Local File
    # System in the Amazon Rekognition Developer Guide.
    #
    # You pass images stored in an S3 bucket to a Rekognition API operation
    # by using the `S3Object` property. Images stored in an S3 bucket do not
    # need to be base64-encoded.
    #
    # The region for the S3 bucket containing the S3 object must match the
    # region you use for Amazon Rekognition operations.
    #
    # If you use the Amazon CLI to call Amazon Rekognition operations,
    # passing image bytes using the Bytes property is not supported. You
    # must first upload the image to an Amazon S3 bucket and then call the
    # operation using the S3Object property.
    #
    # For Amazon Rekognition to process an S3 object, the user must have
    # permission to access the S3 object. For more information, see Resource
    # Based Policies in the Amazon Rekognition Developer Guide.
    #
    # @note When making an API call, you may pass Image
    #   data as a hash:
    #
    #       {
    #         bytes: "data",
    #         s3_object: {
    #           bucket: "S3Bucket",
    #           name: "S3ObjectName",
    #           version: "S3ObjectVersion",
    #         },
    #       }
    #
    # @!attribute [rw] bytes
    #   Blob of image bytes up to 5 MBs.
    #   @return [String]
    #
    # @!attribute [rw] s3_object
    #   Identifies an S3 object as the image source.
    #   @return [Types::S3Object]
    #
    class Image < Struct.new(
      :bytes,
      :s3_object)
      include Aws::Structure
    end

    # Identifies face image brightness and sharpness.
    #
    # @!attribute [rw] brightness
    #   Value representing brightness of the face. The service returns a
    #   value between 0 and 100 (inclusive). A higher value indicates a
    #   brighter face image.
    #   @return [Float]
    #
    # @!attribute [rw] sharpness
    #   Value representing sharpness of the face. The service returns a
    #   value between 0 and 100 (inclusive). A higher value indicates a
    #   sharper face image.
    #   @return [Float]
    #
    class ImageQuality < Struct.new(
      :brightness,
      :sharpness)
      include Aws::Structure
    end

    # @note When making an API call, you may pass IndexFacesRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #         image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         external_image_id: "ExternalImageId",
    #         detection_attributes: ["DEFAULT"], # accepts DEFAULT, ALL
    #         max_faces: 1,
    #         quality_filter: "NONE", # accepts NONE, AUTO
    #       }
    #
    # @!attribute [rw] collection_id
    #   The ID of an existing collection to which you want to add the faces
    #   that are detected in the input images.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #   @return [Types::Image]
    #
    # @!attribute [rw] external_image_id
    #   ID you want to assign to all the faces detected in the image.
    #   @return [String]
    #
    # @!attribute [rw] detection_attributes
    #   An array of facial attributes that you want to be returned. This can
    #   be the default list of attributes or all attributes. If you don't
    #   specify a value for `Attributes` or if you specify `["DEFAULT"]`,
    #   the API returns the following subset of facial attributes:
    #   `BoundingBox`, `Confidence`, `Pose`, `Quality` and `Landmarks`. If
    #   you provide `["ALL"]`, all facial attributes are returned but the
    #   operation will take longer to complete.
    #
    #   If you provide both, `["ALL", "DEFAULT"]`, the service uses a
    #   logical AND operator to determine which attributes to return (in
    #   this case, all attributes).
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_faces
    #   The maximum number of faces to index. The value of `MaxFaces` must
    #   be greater than or equal to 1. `IndexFaces` returns no more that 100
    #   detected faces in an image, even if you specify a larger value for
    #   `MaxFaces`.
    #
    #   If `IndexFaces` detects more faces than the value of `MaxFaces`, the
    #   faces with the lowest quality are filtered out first. If there are
    #   still more faces than the value of `MaxFaces`, the faces with the
    #   smallest bounding boxes are filtered out (up to the number needed to
    #   satisfy the value of `MaxFaces`). Information about the unindexed
    #   faces is available in the `UnindexedFaces` array.
    #
    #   The faces returned by `IndexFaces` are sorted, in descending order,
    #   by the largest face bounding box size, to the smallest.
    #   @return [Integer]
    #
    # @!attribute [rw] quality_filter
    #   Specifies how much filtering is done to identify faces detected with
    #   low quality. Filtered faces are not indexed. If you specify `AUTO`,
    #   filtering prioritizes the identification of faces that don’t meet
    #   the required quality bar chosen by Amazon Rekognition. The quality
    #   bar is based on a variety of common use cases. Low quality
    #   detections can arise for a number of reasons. For example, an object
    #   misidentified as a face, a face that is too blurry, or a face with a
    #   pose that is too extreme to use. If you specify `NONE`, no filtering
    #   is performed. The default value is NONE.
    #   @return [String]
    #
    class IndexFacesRequest < Struct.new(
      :collection_id,
      :image,
      :external_image_id,
      :detection_attributes,
      :max_faces,
      :quality_filter)
      include Aws::Structure
    end

    # @!attribute [rw] face_records
    #   An array of faces detected and added to the collection. For more
    #   information, see Searching Faces in a Collection in the Amazon
    #   Rekognition Developer Guide.
    #   @return [Array<Types::FaceRecord>]
    #
    # @!attribute [rw] orientation_correction
    #   The orientation of the input image (counterclockwise direction). If
    #   your application displays the image, you can use this value to
    #   correct image orientation. The bounding box coordinates returned in
    #   `FaceRecords` represent face locations before the image orientation
    #   is corrected.
    #
    #   <note markdown="1"> If the input image is in jpeg format, it might contain exchangeable
    #   image (Exif) metadata. If so, and the Exif metadata populates the
    #   orientation field, the value of `OrientationCorrection` is null and
    #   the bounding box coordinates in `FaceRecords` represent face
    #   locations after Exif metadata is used to correct the image
    #   orientation. Images in .png format don't contain Exif metadata.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] face_model_version
    #   Version number of the face detection model associated with the input
    #   collection (`CollectionId`).
    #   @return [String]
    #
    # @!attribute [rw] unindexed_faces
    #   An array of faces that detected in the image but not indexed either
    #   because the quality filter deemed them to be of low-quality or the
    #   `MaxFaces` request parameter filtered them out. To use the quality
    #   filter, you specify the `QualityFilter` request parameter.
    #   @return [Array<Types::UnindexedFace>]
    #
    class IndexFacesResponse < Struct.new(
      :face_records,
      :orientation_correction,
      :face_model_version,
      :unindexed_faces)
      include Aws::Structure
    end

    # The Kinesis data stream Amazon Rekognition to which the analysis
    # results of a Amazon Rekognition stream processor are streamed. For
    # more information, see CreateStreamProcessor in the Amazon Rekognition
    # Developer Guide.
    #
    # @note When making an API call, you may pass KinesisDataStream
    #   data as a hash:
    #
    #       {
    #         arn: "KinesisDataArn",
    #       }
    #
    # @!attribute [rw] arn
    #   ARN of the output Amazon Kinesis Data Streams stream.
    #   @return [String]
    #
    class KinesisDataStream < Struct.new(
      :arn)
      include Aws::Structure
    end

    # Kinesis video stream stream that provides the source streaming video
    # for a Amazon Rekognition Video stream processor. For more information,
    # see CreateStreamProcessor in the Amazon Rekognition Developer Guide.
    #
    # @note When making an API call, you may pass KinesisVideoStream
    #   data as a hash:
    #
    #       {
    #         arn: "KinesisVideoArn",
    #       }
    #
    # @!attribute [rw] arn
    #   ARN of the Kinesis video stream stream that streams the source
    #   video.
    #   @return [String]
    #
    class KinesisVideoStream < Struct.new(
      :arn)
      include Aws::Structure
    end

    # Structure containing details about the detected label, including name,
    # and level of confidence.
    #
    # @!attribute [rw] name
    #   The name (label) of the object.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Level of confidence.
    #   @return [Float]
    #
    class Label < Struct.new(
      :name,
      :confidence)
      include Aws::Structure
    end

    # Information about a label detected in a video analysis request and the
    # time the label was detected in the video.
    #
    # @!attribute [rw] timestamp
    #   Time, in milliseconds from the start of the video, that the label
    #   was detected.
    #   @return [Integer]
    #
    # @!attribute [rw] label
    #   Details about the detected label.
    #   @return [Types::Label]
    #
    class LabelDetection < Struct.new(
      :timestamp,
      :label)
      include Aws::Structure
    end

    # Indicates the location of the landmark on the face.
    #
    # @!attribute [rw] type
    #   Type of the landmark.
    #   @return [String]
    #
    # @!attribute [rw] x
    #   x-coordinate from the top left of the landmark expressed as the
    #   ratio of the width of the image. For example, if the images is
    #   700x200 and the x-coordinate of the landmark is at 350 pixels, this
    #   value is 0.5.
    #   @return [Float]
    #
    # @!attribute [rw] y
    #   y-coordinate from the top left of the landmark expressed as the
    #   ratio of the height of the image. For example, if the images is
    #   700x200 and the y-coordinate of the landmark is at 100 pixels, this
    #   value is 0.5.
    #   @return [Float]
    #
    class Landmark < Struct.new(
      :type,
      :x,
      :y)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCollectionsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Pagination token from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of collection IDs to return.
    #   @return [Integer]
    #
    class ListCollectionsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] collection_ids
    #   An array of collection IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If the result is truncated, the response provides a `NextToken` that
    #   you can use in the subsequent request to fetch the next set of
    #   collection IDs.
    #   @return [String]
    #
    # @!attribute [rw] face_model_versions
    #   Version numbers of the face detection models associated with the
    #   collections in the array `CollectionIds`. For example, the value of
    #   `FaceModelVersions[2]` is the version number for the face detection
    #   model used by the collection in `CollectionId[2]`.
    #   @return [Array<String>]
    #
    class ListCollectionsResponse < Struct.new(
      :collection_ids,
      :next_token,
      :face_model_versions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFacesRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] collection_id
    #   ID of the collection from which to list the faces.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Rekognition returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of faces.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of faces to return.
    #   @return [Integer]
    #
    class ListFacesRequest < Struct.new(
      :collection_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] faces
    #   An array of `Face` objects.
    #   @return [Array<Types::Face>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Rekognition returns this token
    #   that you can use in the subsequent request to retrieve the next set
    #   of faces.
    #   @return [String]
    #
    # @!attribute [rw] face_model_version
    #   Version number of the face detection model associated with the input
    #   collection (`CollectionId`).
    #   @return [String]
    #
    class ListFacesResponse < Struct.new(
      :faces,
      :next_token,
      :face_model_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStreamProcessorsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there are more
    #   stream processors to retrieve), Amazon Rekognition Video returns a
    #   pagination token in the response. You can use this pagination token
    #   to retrieve the next set of stream processors.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of stream processors you want Amazon Rekognition
    #   Video to return in the response. The default is 1000.
    #   @return [Integer]
    #
    class ListStreamProcessorsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Rekognition Video returns this
    #   token that you can use in the subsequent request to retrieve the
    #   next set of stream processors.
    #   @return [String]
    #
    # @!attribute [rw] stream_processors
    #   List of stream processors that you have created.
    #   @return [Array<Types::StreamProcessor>]
    #
    class ListStreamProcessorsResponse < Struct.new(
      :next_token,
      :stream_processors)
      include Aws::Structure
    end

    # Provides information about a single type of moderated content found in
    # an image or video. Each type of moderated content has a label within a
    # hierarchical taxonomy. For more information, see Detecting Unsafe
    # Content in the Amazon Rekognition Developer Guide.
    #
    # @!attribute [rw] confidence
    #   Specifies the confidence that Amazon Rekognition has that the label
    #   has been correctly identified.
    #
    #   If you don't specify the `MinConfidence` parameter in the call to
    #   `DetectModerationLabels`, the operation returns labels with a
    #   confidence value greater than or equal to 50 percent.
    #   @return [Float]
    #
    # @!attribute [rw] name
    #   The label name for the type of content detected in the image.
    #   @return [String]
    #
    # @!attribute [rw] parent_name
    #   The name for the parent label. Labels at the top-level of the
    #   hierarchy have the parent label `""`.
    #   @return [String]
    #
    class ModerationLabel < Struct.new(
      :confidence,
      :name,
      :parent_name)
      include Aws::Structure
    end

    # Indicates whether or not the mouth on the face is open, and the
    # confidence level in the determination.
    #
    # @!attribute [rw] value
    #   Boolean value that indicates whether the mouth on the face is open
    #   or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class MouthOpen < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # Indicates whether or not the face has a mustache, and the confidence
    # level in the determination.
    #
    # @!attribute [rw] value
    #   Boolean value that indicates whether the face has mustache or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class Mustache < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # The Amazon Simple Notification Service topic to which Amazon
    # Rekognition publishes the completion status of a video analysis
    # operation. For more information, see api-video.
    #
    # @note When making an API call, you may pass NotificationChannel
    #   data as a hash:
    #
    #       {
    #         sns_topic_arn: "SNSTopicArn", # required
    #         role_arn: "RoleArn", # required
    #       }
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon SNS topic to which Amazon Rekognition to posts the
    #   completion status.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role that gives Amazon Rekognition publishing
    #   permissions to the Amazon SNS topic.
    #   @return [String]
    #
    class NotificationChannel < Struct.new(
      :sns_topic_arn,
      :role_arn)
      include Aws::Structure
    end

    # Details about a person detected in a video analysis request.
    #
    # @!attribute [rw] index
    #   Identifier for the person detected person within a video. Use to
    #   keep track of the person throughout the video. The identifier is not
    #   stored by Amazon Rekognition.
    #   @return [Integer]
    #
    # @!attribute [rw] bounding_box
    #   Bounding box around the detected person.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] face
    #   Face details for the detected person.
    #   @return [Types::FaceDetail]
    #
    class PersonDetail < Struct.new(
      :index,
      :bounding_box,
      :face)
      include Aws::Structure
    end

    # Details and tracking information for a single time a person is tracked
    # in a video. Amazon Rekognition operations that track persons return an
    # array of `PersonDetection` objects with elements for each time a
    # person is tracked in a video.
    #
    # For more information, see API\_GetPersonTracking in the Amazon
    # Rekognition Developer Guide.
    #
    # @!attribute [rw] timestamp
    #   The time, in milliseconds from the start of the video, that the
    #   person was tracked.
    #   @return [Integer]
    #
    # @!attribute [rw] person
    #   Details about a person tracked in a video.
    #   @return [Types::PersonDetail]
    #
    class PersonDetection < Struct.new(
      :timestamp,
      :person)
      include Aws::Structure
    end

    # Information about a person whose face matches a face(s) in a Amazon
    # Rekognition collection. Includes information about the faces in the
    # Amazon Rekognition collection (), information about the person
    # (PersonDetail) and the timestamp for when the person was detected in a
    # video. An array of `PersonMatch` objects is returned by .
    #
    # @!attribute [rw] timestamp
    #   The time, in milliseconds from the beginning of the video, that the
    #   person was matched in the video.
    #   @return [Integer]
    #
    # @!attribute [rw] person
    #   Information about the matched person.
    #   @return [Types::PersonDetail]
    #
    # @!attribute [rw] face_matches
    #   Information about the faces in the input collection that match the
    #   face of a person in the video.
    #   @return [Array<Types::FaceMatch>]
    #
    class PersonMatch < Struct.new(
      :timestamp,
      :person,
      :face_matches)
      include Aws::Structure
    end

    # The X and Y coordinates of a point on an image. The X and Y values
    # returned are ratios of the overall image size. For example, if the
    # input image is 700x200 and the operation returns X=0.5 and Y=0.25,
    # then the point is at the (350,50) pixel coordinate on the image.
    #
    # An array of `Point` objects, `Polygon`, is returned by . `Polygon`
    # represents a fine-grained polygon around detected text. For more
    # information, see Geometry in the Amazon Rekognition Developer Guide.
    #
    # @!attribute [rw] x
    #   The value of the X coordinate for a point on a `Polygon`.
    #   @return [Float]
    #
    # @!attribute [rw] y
    #   The value of the Y coordinate for a point on a `Polygon`.
    #   @return [Float]
    #
    class Point < Struct.new(
      :x,
      :y)
      include Aws::Structure
    end

    # Indicates the pose of the face as determined by its pitch, roll, and
    # yaw.
    #
    # @!attribute [rw] roll
    #   Value representing the face rotation on the roll axis.
    #   @return [Float]
    #
    # @!attribute [rw] yaw
    #   Value representing the face rotation on the yaw axis.
    #   @return [Float]
    #
    # @!attribute [rw] pitch
    #   Value representing the face rotation on the pitch axis.
    #   @return [Float]
    #
    class Pose < Struct.new(
      :roll,
      :yaw,
      :pitch)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RecognizeCelebritiesRequest
    #   data as a hash:
    #
    #       {
    #         image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #   @return [Types::Image]
    #
    class RecognizeCelebritiesRequest < Struct.new(
      :image)
      include Aws::Structure
    end

    # @!attribute [rw] celebrity_faces
    #   Details about each celebrity found in the image. Amazon Rekognition
    #   can detect a maximum of 15 celebrities in an image.
    #   @return [Array<Types::Celebrity>]
    #
    # @!attribute [rw] unrecognized_faces
    #   Details about each unrecognized face in the image.
    #   @return [Array<Types::ComparedFace>]
    #
    # @!attribute [rw] orientation_correction
    #   The orientation of the input image (counterclockwise direction). If
    #   your application displays the image, you can use this value to
    #   correct the orientation. The bounding box coordinates returned in
    #   `CelebrityFaces` and `UnrecognizedFaces` represent face locations
    #   before the image orientation is corrected.
    #
    #   <note markdown="1"> If the input image is in .jpeg format, it might contain exchangeable
    #   image (Exif) metadata that includes the image's orientation. If so,
    #   and the Exif metadata for the input image populates the orientation
    #   field, the value of `OrientationCorrection` is null and the
    #   `CelebrityFaces` and `UnrecognizedFaces` bounding box coordinates
    #   represent face locations after Exif metadata is used to correct the
    #   image orientation. Images in .png format don't contain Exif
    #   metadata.
    #
    #    </note>
    #   @return [String]
    #
    class RecognizeCelebritiesResponse < Struct.new(
      :celebrity_faces,
      :unrecognized_faces,
      :orientation_correction)
      include Aws::Structure
    end

    # Provides the S3 bucket name and object name.
    #
    # The region for the S3 bucket containing the S3 object must match the
    # region you use for Amazon Rekognition operations.
    #
    # For Amazon Rekognition to process an S3 object, the user must have
    # permission to access the S3 object. For more information, see Resource
    # Based Policies in the Amazon Rekognition Developer Guide.
    #
    # @note When making an API call, you may pass S3Object
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       }
    #
    # @!attribute [rw] bucket
    #   Name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   S3 object key name.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   If the bucket is versioning enabled, you can specify the object
    #   version.
    #   @return [String]
    #
    class S3Object < Struct.new(
      :bucket,
      :name,
      :version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchFacesByImageRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #         image: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         max_faces: 1,
    #         face_match_threshold: 1.0,
    #       }
    #
    # @!attribute [rw] collection_id
    #   ID of the collection to search.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #   @return [Types::Image]
    #
    # @!attribute [rw] max_faces
    #   Maximum number of faces to return. The operation returns the maximum
    #   number of faces with the highest confidence in the match.
    #   @return [Integer]
    #
    # @!attribute [rw] face_match_threshold
    #   (Optional) Specifies the minimum confidence in the face match to
    #   return. For example, don't return any matches where confidence in
    #   matches is less than 70%.
    #   @return [Float]
    #
    class SearchFacesByImageRequest < Struct.new(
      :collection_id,
      :image,
      :max_faces,
      :face_match_threshold)
      include Aws::Structure
    end

    # @!attribute [rw] searched_face_bounding_box
    #   The bounding box around the face in the input image that Amazon
    #   Rekognition used for the search.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] searched_face_confidence
    #   The level of confidence that the `searchedFaceBoundingBox`, contains
    #   a face.
    #   @return [Float]
    #
    # @!attribute [rw] face_matches
    #   An array of faces that match the input face, along with the
    #   confidence in the match.
    #   @return [Array<Types::FaceMatch>]
    #
    # @!attribute [rw] face_model_version
    #   Version number of the face detection model associated with the input
    #   collection (`CollectionId`).
    #   @return [String]
    #
    class SearchFacesByImageResponse < Struct.new(
      :searched_face_bounding_box,
      :searched_face_confidence,
      :face_matches,
      :face_model_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchFacesRequest
    #   data as a hash:
    #
    #       {
    #         collection_id: "CollectionId", # required
    #         face_id: "FaceId", # required
    #         max_faces: 1,
    #         face_match_threshold: 1.0,
    #       }
    #
    # @!attribute [rw] collection_id
    #   ID of the collection the face belongs to.
    #   @return [String]
    #
    # @!attribute [rw] face_id
    #   ID of a face to find matches for in the collection.
    #   @return [String]
    #
    # @!attribute [rw] max_faces
    #   Maximum number of faces to return. The operation returns the maximum
    #   number of faces with the highest confidence in the match.
    #   @return [Integer]
    #
    # @!attribute [rw] face_match_threshold
    #   Optional value specifying the minimum confidence in the face match
    #   to return. For example, don't return any matches where confidence
    #   in matches is less than 70%.
    #   @return [Float]
    #
    class SearchFacesRequest < Struct.new(
      :collection_id,
      :face_id,
      :max_faces,
      :face_match_threshold)
      include Aws::Structure
    end

    # @!attribute [rw] searched_face_id
    #   ID of the face that was searched for matches in a collection.
    #   @return [String]
    #
    # @!attribute [rw] face_matches
    #   An array of faces that matched the input face, along with the
    #   confidence in the match.
    #   @return [Array<Types::FaceMatch>]
    #
    # @!attribute [rw] face_model_version
    #   Version number of the face detection model associated with the input
    #   collection (`CollectionId`).
    #   @return [String]
    #
    class SearchFacesResponse < Struct.new(
      :searched_face_id,
      :face_matches,
      :face_model_version)
      include Aws::Structure
    end

    # Indicates whether or not the face is smiling, and the confidence level
    # in the determination.
    #
    # @!attribute [rw] value
    #   Boolean value that indicates whether the face is smiling or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class Smile < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartCelebrityRecognitionRequest
    #   data as a hash:
    #
    #       {
    #         video: { # required
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         client_request_token: "ClientRequestToken",
    #         notification_channel: {
    #           sns_topic_arn: "SNSTopicArn", # required
    #           role_arn: "RoleArn", # required
    #         },
    #         job_tag: "JobTag",
    #       }
    #
    # @!attribute [rw] video
    #   The video in which you want to recognize celebrities. The video must
    #   be stored in an Amazon S3 bucket.
    #   @return [Types::Video]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartCelebrityRecognition` requests, the
    #   same `JobId` is returned. Use `ClientRequestToken` to prevent the
    #   same job from being accidently started more than once.
    #   @return [String]
    #
    # @!attribute [rw] notification_channel
    #   The Amazon SNS topic ARN that you want Amazon Rekognition Video to
    #   publish the completion status of the celebrity recognition analysis
    #   to.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] job_tag
    #   Unique identifier you specify to identify the job in the completion
    #   status published to the Amazon Simple Notification Service topic.
    #   @return [String]
    #
    class StartCelebrityRecognitionRequest < Struct.new(
      :video,
      :client_request_token,
      :notification_channel,
      :job_tag)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier for the celebrity recognition analysis job. Use
    #   `JobId` to identify the job in a subsequent call to
    #   `GetCelebrityRecognition`.
    #   @return [String]
    #
    class StartCelebrityRecognitionResponse < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartContentModerationRequest
    #   data as a hash:
    #
    #       {
    #         video: { # required
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         min_confidence: 1.0,
    #         client_request_token: "ClientRequestToken",
    #         notification_channel: {
    #           sns_topic_arn: "SNSTopicArn", # required
    #           role_arn: "RoleArn", # required
    #         },
    #         job_tag: "JobTag",
    #       }
    #
    # @!attribute [rw] video
    #   The video in which you want to moderate content. The video must be
    #   stored in an Amazon S3 bucket.
    #   @return [Types::Video]
    #
    # @!attribute [rw] min_confidence
    #   Specifies the minimum confidence that Amazon Rekognition must have
    #   in order to return a moderated content label. Confidence represents
    #   how certain Amazon Rekognition is that the moderated content is
    #   correctly identified. 0 is the lowest confidence. 100 is the highest
    #   confidence. Amazon Rekognition doesn't return any moderated content
    #   labels with a confidence level lower than this specified value.
    #   @return [Float]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartContentModeration` requests, the same
    #   `JobId` is returned. Use `ClientRequestToken` to prevent the same
    #   job from being accidently started more than once.
    #   @return [String]
    #
    # @!attribute [rw] notification_channel
    #   The Amazon SNS topic ARN that you want Amazon Rekognition Video to
    #   publish the completion status of the content moderation analysis to.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] job_tag
    #   Unique identifier you specify to identify the job in the completion
    #   status published to the Amazon Simple Notification Service topic.
    #   @return [String]
    #
    class StartContentModerationRequest < Struct.new(
      :video,
      :min_confidence,
      :client_request_token,
      :notification_channel,
      :job_tag)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier for the content moderation analysis job. Use `JobId`
    #   to identify the job in a subsequent call to `GetContentModeration`.
    #   @return [String]
    #
    class StartContentModerationResponse < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartFaceDetectionRequest
    #   data as a hash:
    #
    #       {
    #         video: { # required
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         client_request_token: "ClientRequestToken",
    #         notification_channel: {
    #           sns_topic_arn: "SNSTopicArn", # required
    #           role_arn: "RoleArn", # required
    #         },
    #         face_attributes: "DEFAULT", # accepts DEFAULT, ALL
    #         job_tag: "JobTag",
    #       }
    #
    # @!attribute [rw] video
    #   The video in which you want to detect faces. The video must be
    #   stored in an Amazon S3 bucket.
    #   @return [Types::Video]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartFaceDetection` requests, the same
    #   `JobId` is returned. Use `ClientRequestToken` to prevent the same
    #   job from being accidently started more than once.
    #   @return [String]
    #
    # @!attribute [rw] notification_channel
    #   The ARN of the Amazon SNS topic to which you want Amazon Rekognition
    #   Video to publish the completion status of the face detection
    #   operation.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] face_attributes
    #   The face attributes you want returned.
    #
    #   `DEFAULT` - The following subset of facial attributes are returned:
    #   BoundingBox, Confidence, Pose, Quality and Landmarks.
    #
    #   `ALL` - All facial attributes are returned.
    #   @return [String]
    #
    # @!attribute [rw] job_tag
    #   Unique identifier you specify to identify the job in the completion
    #   status published to the Amazon Simple Notification Service topic.
    #   @return [String]
    #
    class StartFaceDetectionRequest < Struct.new(
      :video,
      :client_request_token,
      :notification_channel,
      :face_attributes,
      :job_tag)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier for the face detection job. Use `JobId` to identify
    #   the job in a subsequent call to `GetFaceDetection`.
    #   @return [String]
    #
    class StartFaceDetectionResponse < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartFaceSearchRequest
    #   data as a hash:
    #
    #       {
    #         video: { # required
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         client_request_token: "ClientRequestToken",
    #         face_match_threshold: 1.0,
    #         collection_id: "CollectionId", # required
    #         notification_channel: {
    #           sns_topic_arn: "SNSTopicArn", # required
    #           role_arn: "RoleArn", # required
    #         },
    #         job_tag: "JobTag",
    #       }
    #
    # @!attribute [rw] video
    #   The video you want to search. The video must be stored in an Amazon
    #   S3 bucket.
    #   @return [Types::Video]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartFaceSearch` requests, the same
    #   `JobId` is returned. Use `ClientRequestToken` to prevent the same
    #   job from being accidently started more than once.
    #   @return [String]
    #
    # @!attribute [rw] face_match_threshold
    #   The minimum confidence in the person match to return. For example,
    #   don't return any matches where confidence in matches is less than
    #   70%.
    #   @return [Float]
    #
    # @!attribute [rw] collection_id
    #   ID of the collection that contains the faces you want to search for.
    #   @return [String]
    #
    # @!attribute [rw] notification_channel
    #   The ARN of the Amazon SNS topic to which you want Amazon Rekognition
    #   Video to publish the completion status of the search.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] job_tag
    #   Unique identifier you specify to identify the job in the completion
    #   status published to the Amazon Simple Notification Service topic.
    #   @return [String]
    #
    class StartFaceSearchRequest < Struct.new(
      :video,
      :client_request_token,
      :face_match_threshold,
      :collection_id,
      :notification_channel,
      :job_tag)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier for the search job. Use `JobId` to identify the job
    #   in a subsequent call to `GetFaceSearch`.
    #   @return [String]
    #
    class StartFaceSearchResponse < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartLabelDetectionRequest
    #   data as a hash:
    #
    #       {
    #         video: { # required
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         client_request_token: "ClientRequestToken",
    #         min_confidence: 1.0,
    #         notification_channel: {
    #           sns_topic_arn: "SNSTopicArn", # required
    #           role_arn: "RoleArn", # required
    #         },
    #         job_tag: "JobTag",
    #       }
    #
    # @!attribute [rw] video
    #   The video in which you want to detect labels. The video must be
    #   stored in an Amazon S3 bucket.
    #   @return [Types::Video]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartLabelDetection` requests, the same
    #   `JobId` is returned. Use `ClientRequestToken` to prevent the same
    #   job from being accidently started more than once.
    #   @return [String]
    #
    # @!attribute [rw] min_confidence
    #   Specifies the minimum confidence that Amazon Rekognition Video must
    #   have in order to return a detected label. Confidence represents how
    #   certain Amazon Rekognition is that a label is correctly identified.0
    #   is the lowest confidence. 100 is the highest confidence. Amazon
    #   Rekognition Video doesn't return any labels with a confidence level
    #   lower than this specified value.
    #
    #   If you don't specify `MinConfidence`, the operation returns labels
    #   with confidence values greater than or equal to 50 percent.
    #   @return [Float]
    #
    # @!attribute [rw] notification_channel
    #   The Amazon SNS topic ARN you want Amazon Rekognition Video to
    #   publish the completion status of the label detection operation to.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] job_tag
    #   Unique identifier you specify to identify the job in the completion
    #   status published to the Amazon Simple Notification Service topic.
    #   @return [String]
    #
    class StartLabelDetectionRequest < Struct.new(
      :video,
      :client_request_token,
      :min_confidence,
      :notification_channel,
      :job_tag)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier for the label detection job. Use `JobId` to identify
    #   the job in a subsequent call to `GetLabelDetection`.
    #   @return [String]
    #
    class StartLabelDetectionResponse < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartPersonTrackingRequest
    #   data as a hash:
    #
    #       {
    #         video: { # required
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         client_request_token: "ClientRequestToken",
    #         notification_channel: {
    #           sns_topic_arn: "SNSTopicArn", # required
    #           role_arn: "RoleArn", # required
    #         },
    #         job_tag: "JobTag",
    #       }
    #
    # @!attribute [rw] video
    #   The video in which you want to detect people. The video must be
    #   stored in an Amazon S3 bucket.
    #   @return [Types::Video]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartPersonTracking` requests, the same
    #   `JobId` is returned. Use `ClientRequestToken` to prevent the same
    #   job from being accidently started more than once.
    #   @return [String]
    #
    # @!attribute [rw] notification_channel
    #   The Amazon SNS topic ARN you want Amazon Rekognition Video to
    #   publish the completion status of the people detection operation to.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] job_tag
    #   Unique identifier you specify to identify the job in the completion
    #   status published to the Amazon Simple Notification Service topic.
    #   @return [String]
    #
    class StartPersonTrackingRequest < Struct.new(
      :video,
      :client_request_token,
      :notification_channel,
      :job_tag)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier for the person detection job. Use `JobId` to identify
    #   the job in a subsequent call to `GetPersonTracking`.
    #   @return [String]
    #
    class StartPersonTrackingResponse < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartStreamProcessorRequest
    #   data as a hash:
    #
    #       {
    #         name: "StreamProcessorName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the stream processor to start processing.
    #   @return [String]
    #
    class StartStreamProcessorRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    class StartStreamProcessorResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StopStreamProcessorRequest
    #   data as a hash:
    #
    #       {
    #         name: "StreamProcessorName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of a stream processor created by .
    #   @return [String]
    #
    class StopStreamProcessorRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    class StopStreamProcessorResponse < Aws::EmptyStructure; end

    # An object that recognizes faces in a streaming video. An Amazon
    # Rekognition stream processor is created by a call to . The request
    # parameters for `CreateStreamProcessor` describe the Kinesis video
    # stream source for the streaming video, face recognition parameters,
    # and where to stream the analysis resullts.
    #
    # @!attribute [rw] name
    #   Name of the Amazon Rekognition stream processor.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the Amazon Rekognition stream processor.
    #   @return [String]
    #
    class StreamProcessor < Struct.new(
      :name,
      :status)
      include Aws::Structure
    end

    # Information about the source streaming video.
    #
    # @note When making an API call, you may pass StreamProcessorInput
    #   data as a hash:
    #
    #       {
    #         kinesis_video_stream: {
    #           arn: "KinesisVideoArn",
    #         },
    #       }
    #
    # @!attribute [rw] kinesis_video_stream
    #   The Kinesis video stream input stream for the source streaming
    #   video.
    #   @return [Types::KinesisVideoStream]
    #
    class StreamProcessorInput < Struct.new(
      :kinesis_video_stream)
      include Aws::Structure
    end

    # Information about the Amazon Kinesis Data Streams stream to which a
    # Amazon Rekognition Video stream processor streams the results of a
    # video analysis. For more information, see CreateStreamProcessor in the
    # Amazon Rekognition Developer Guide.
    #
    # @note When making an API call, you may pass StreamProcessorOutput
    #   data as a hash:
    #
    #       {
    #         kinesis_data_stream: {
    #           arn: "KinesisDataArn",
    #         },
    #       }
    #
    # @!attribute [rw] kinesis_data_stream
    #   The Amazon Kinesis Data Streams stream to which the Amazon
    #   Rekognition stream processor streams the analysis results.
    #   @return [Types::KinesisDataStream]
    #
    class StreamProcessorOutput < Struct.new(
      :kinesis_data_stream)
      include Aws::Structure
    end

    # Input parameters used to recognize faces in a streaming video analyzed
    # by a Amazon Rekognition stream processor.
    #
    # @note When making an API call, you may pass StreamProcessorSettings
    #   data as a hash:
    #
    #       {
    #         face_search: {
    #           collection_id: "CollectionId",
    #           face_match_threshold: 1.0,
    #         },
    #       }
    #
    # @!attribute [rw] face_search
    #   Face search settings to use on a streaming video.
    #   @return [Types::FaceSearchSettings]
    #
    class StreamProcessorSettings < Struct.new(
      :face_search)
      include Aws::Structure
    end

    # Indicates whether or not the face is wearing sunglasses, and the
    # confidence level in the determination.
    #
    # @!attribute [rw] value
    #   Boolean value that indicates whether the face is wearing sunglasses
    #   or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the determination.
    #   @return [Float]
    #
    class Sunglasses < Struct.new(
      :value,
      :confidence)
      include Aws::Structure
    end

    # Information about a word or line of text detected by .
    #
    # The `DetectedText` field contains the text that Amazon Rekognition
    # detected in the image.
    #
    # Every word and line has an identifier (`Id`). Each word belongs to a
    # line and has a parent identifier (`ParentId`) that identifies the line
    # of text in which the word appears. The word `Id` is also an index for
    # the word within a line of words.
    #
    # For more information, see Detecting Text in the Amazon Rekognition
    # Developer Guide.
    #
    # @!attribute [rw] detected_text
    #   The word or line of text recognized by Amazon Rekognition.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of text that was detected.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier for the detected text. The identifier is only unique
    #   for a single call to `DetectText`.
    #   @return [Integer]
    #
    # @!attribute [rw] parent_id
    #   The Parent identifier for the detected text identified by the value
    #   of `ID`. If the type of detected text is `LINE`, the value of
    #   `ParentId` is `Null`.
    #   @return [Integer]
    #
    # @!attribute [rw] confidence
    #   The confidence that Amazon Rekognition has in the accuracy of the
    #   detected text and the accuracy of the geometry points around the
    #   detected text.
    #   @return [Float]
    #
    # @!attribute [rw] geometry
    #   The location of the detected text on the image. Includes an axis
    #   aligned coarse bounding box surrounding the text and a finer grain
    #   polygon for more accurate spatial information.
    #   @return [Types::Geometry]
    #
    class TextDetection < Struct.new(
      :detected_text,
      :type,
      :id,
      :parent_id,
      :confidence,
      :geometry)
      include Aws::Structure
    end

    # A face detected by but not indexed. Use the `Reasons` response
    # attribute to determine why a face is not indexed.
    #
    # @!attribute [rw] reasons
    #   An array of reasons specifying why a face was not indexed.
    #
    #   * EXTREME\_POSE - The face is at a pose that can't be detected. For
    #     example, the head is turned too far away from the camera.
    #
    #   * EXCEEDS\_MAX\_FACES - The number of faces detected is already
    #     higher than that specified by the `MaxFaces` input parameter for
    #     `IndexFaces`.
    #
    #   * LOW\_BRIGHTNESS - The image is too dark.
    #
    #   * LOW\_SHARPNESS - The image is too blurry.
    #
    #   * LOW\_CONFIDENCE - The face was detected with a low confidence.
    #
    #   * SMALL\_BOUNDING\_BOX - The bounding box around the face is too
    #     small.
    #   @return [Array<String>]
    #
    # @!attribute [rw] face_detail
    #   Structure containing attributes of a face that was detected, but not
    #   indexed, by `IndexFaces`.
    #   @return [Types::FaceDetail]
    #
    class UnindexedFace < Struct.new(
      :reasons,
      :face_detail)
      include Aws::Structure
    end

    # Video file stored in an Amazon S3 bucket. Amazon Rekognition video
    # start operations such as use `Video` to specify a video for analysis.
    # The supported file formats are .mp4, .mov and .avi.
    #
    # @note When making an API call, you may pass Video
    #   data as a hash:
    #
    #       {
    #         s3_object: {
    #           bucket: "S3Bucket",
    #           name: "S3ObjectName",
    #           version: "S3ObjectVersion",
    #         },
    #       }
    #
    # @!attribute [rw] s3_object
    #   The Amazon S3 bucket name and file name for the video.
    #   @return [Types::S3Object]
    #
    class Video < Struct.new(
      :s3_object)
      include Aws::Structure
    end

    # Information about a video that Amazon Rekognition analyzed.
    # `Videometadata` is returned in every page of paginated responses from
    # a Amazon Rekognition video operation.
    #
    # @!attribute [rw] codec
    #   Type of compression used in the analyzed video.
    #   @return [String]
    #
    # @!attribute [rw] duration_millis
    #   Length of the video in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] format
    #   Format of the analyzed video. Possible values are MP4, MOV and AVI.
    #   @return [String]
    #
    # @!attribute [rw] frame_rate
    #   Number of frames per second in the video.
    #   @return [Float]
    #
    # @!attribute [rw] frame_height
    #   Vertical pixel dimension of the video.
    #   @return [Integer]
    #
    # @!attribute [rw] frame_width
    #   Horizontal pixel dimension of the video.
    #   @return [Integer]
    #
    class VideoMetadata < Struct.new(
      :codec,
      :duration_millis,
      :format,
      :frame_rate,
      :frame_height,
      :frame_width)
      include Aws::Structure
    end

  end
end
